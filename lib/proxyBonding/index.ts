import { CycleCallbacks } from '..';
import { DOM, actionContent, getActionElementId, getElementIdToTemplateId, getElementInProgress } from '../domBonding';
import { Responsive, wasmPacth, wasmParse, wasmRender } from '../paseHtmleTemplate/wasm';
import type { 
    ReactiveEffectType,
    ListTemplateListType,
    ComponentMapType,
    Dep,
    ListTemplateDepType,
    ElementType
} from '../types/proxyBonding';
import { ParseTemplate, generateRandomHash, isPromise, runWithCycleCallback } from '../utils';
import scheduler, { promise } from '../utils/scheduler';


export const targetMap: WeakMap<
    Object,
    Map<string, Set<ReactiveEffectType>>
> = new WeakMap();
(window as any).map = targetMap
export const componentMap: Map<
    string,
    ComponentMapType
> = new Map();

export const ComponentKey = Symbol('RuiComponent');

let activeEffect: null | ReactiveEffectType = null;

export const baseHandlers = {
    get: (target: any, key: any, receiver: any) => {
        const res = Reflect.get(target, key, receiver);
        if (key === '__KEY') return res;
        track(target, key, res);
        return res;
    },
    set: (target: any, key: any, value: any) => {
        if (target[key] != value) {
            target[key] = value;
            trigger(target, key)
        }
        return true;
    }
}


function track(target: any, key: any, value: any) {
    let actionElementId = getActionElementId();
    
    if (activeEffect && actionElementId) {
        let depsMap = targetMap.get(target);
        if (!depsMap) {
            targetMap.set(target, (depsMap = new Map()));
        }
        let dep = depsMap.get(key);
        if (!dep) {
            depsMap.set(key, (dep = new Set()));
        }
        dep.add(activeEffect);
        const clearUp = (clone: ReactiveEffectType) => {
            if (!dep || !depsMap) return;
            dep.delete(clone);
            if (!dep.size) {
                depsMap.delete(key);
                if (!depsMap.size) {
                    targetMap.delete(target);
                }
            }
        }
        let fn = clearUp.bind(null, activeEffect)
        /**
         * 列表项中使用使用非 item项 提供的数据源建立关联, 更新时直接通知列表变更
         * 比如 列表中使用 {name}, 那么getter会收集 name -> item 的关联
         * actionContent 就是循环块上下文
         */
        let data = actionContent[actionContent.length - 1] || {};
        if (data.type === 'for') {
            activeEffect.addDeps({
                target,
                key,
                value,
                content: data,
                id: data.id,
                clearUp: fn
            })
        } else {
            activeEffect.addDeps({
                target,
                key,
                value,
                content: {},
                id: actionElementId,
                clearUp: fn
            })
        }

    }
}


function trigger(target: any, key: string) {
    let depsMap = targetMap.get(target);
    if (!depsMap) return;
    let dep = depsMap.get(key);
    if (!dep) return;
    dep.forEach((effect) => {
        scheduler(effect, key);
    })
}


const ReactiveEffect = function (
    this: ReactiveEffectType,
    fn: (deps: Dep[]) => void,
    scope: Dep[] = [],
)  {
    // 依赖
    this.deps = scope;

    // 变更
    this.updateDeps = [];

    this.parent = null;

    this.run = function () {
        try {
            let parent = activeEffect
            while (parent) {
                if (parent === this) {
                    return;
                }
                parent = parent.parent;
            }
            this.parent = activeEffect;

            activeEffect = this;
            fn(this.updateDeps);
        } finally {
            activeEffect = this.parent;
            promise.then(() => this.clearUpdateDeps())
        }
    }

    this.addDeps = function (dep) {

        let bool = this.deps.find(l => {
            return ( l.id === dep.id ) &&
                ( l.content.val === dep.content.val ) &&
                ( l.key === dep.key );
        })
        if (!bool) {
            this.deps.push(dep);
        }
    }

    this.addUpdateDeps = function (depKey) {
        let dep = this.deps.filter(l => l.key === depKey);
        if (dep) {
            dep.forEach(d => {
                if (!this.updateDeps.find(l => l.id === d.id)) {
                    this.updateDeps.push(d);
                }
            })

        }
    }


    this.clearUpdateDeps = function () {
        this.updateDeps = [];
    }
} as any as {
    new (fn: (deps: Dep[]) => void, scope: Dep[]): ReactiveEffectType;
}



export function patchList(container: any, oldList: any[], newList: any[]) {
    let l1 = oldList.length, l2 = newList.length;
    let locateMap = new Map();
    let oldChildren = [...container.childNodes]
    let n1 = l1 - 1, n2 = l2 - 1, index = 0;
    while (index <= n1 && index <= n2) {
        if (oldList[index].id === newList[index].id) {
            console.log('复用', index)
        } else {
            break;
        }
        index ++;
    }

    while (index <= n1 && index <= n2) {
        if (oldList[n1].id === newList[n2].id) {
            console.log('复用 END', index);
            n1--;
            n2--;
        } else {
            break;
        }
    }

    if (index > n1) {
        if (index <= n2) {
            let anchor = n2 < l2 - 1? n1 + 1: null;
            while (index <= n2) {
                console.log('add',newList[index], anchor, n2, n1, index);
                locateMap.set(index, {
                    flags: 'ADD',
                    achor: oldChildren[index]
                })
                index++;
            }
        }
    } else if (index > n2) {
        while (index <= n1) {
            console.log('DEL', index)
            DOM.removeElement(oldChildren[index]);
            index++;
        }
    }
    else {
        const hashMap = new Map();
        for (let i = index; i <= n2; i++) {
            let newKey = newList[i].id;
            if (newKey != null) {
                hashMap.set(newKey, i);
            }
        }


        let moved = false;
        let lastNewIndexSoFar = 0;
        let patched = 0;
        const toBePatched = n2 - index + 1

        // 新列表中 剩余未处理|未命中的元素 映射old 元素索引关联
        let newIndexToOldIndexMap = Array(toBePatched).fill(0);

        // 匹配旧剩余列表
        for (let i = index; i <= n1; i++) {
            let oldChild = oldList[i];
            /**
             * 当新列表剩余元素都被匹配完时
             * 判定剩余的 old 元素都可以被删除
             */
            if (patched >= toBePatched) {
                console.log('DEL', i)
                DOM.removeElement(oldChildren[i]);
                continue
            }

            let newIndex, oldKey = oldChild.id;
            if (oldKey != null) {
                newIndex = hashMap.get(oldKey)
            } else {
                // 不存在key 遍历剩余新列表元素尝试复用
                for (let j = index; j <= n2; j++) {
                    if (oldChild.id === newList[j]) {
                        newIndex = j;
                        break;
                    }
                }
            }

            // 旧元素没有命中 直接卸载
            if (newIndex === void 0) {
                console.log('DEL', i)
                DOM.removeElement(oldChildren[i]);
            }
            // 命中
            else {
                newIndexToOldIndexMap[newIndex - index] = i + 1;
                // 判断是否需要换位处理
                if (newIndex >= lastNewIndexSoFar) {
                    lastNewIndexSoFar = newIndex;
                } else {
                    moved = true;
                }

                patched++;
            }
        }


        for (let i = toBePatched - 1; i >= 0; i--) {
            let newIndex = index + i;

            // 新增
            if (newIndexToOldIndexMap[i] === 0) {
                console.log(newList[newIndex]);
            } else {
                let ind = newIndexToOldIndexMap[i];
                console.log(newList[ind - 1], ind, i);
            }
        }
    }
    return locateMap;
}


export function renderList(child: any[], list: any[], for_param: string, startIndex = 0) {
    let id = getElementIdToTemplateId(child[0].id);

    let parent = child[0].parent;
    const templateData = componentMap.get(id);
    if (!templateData) return [];
    let deps: ListTemplateListType;
    if (templateData.listDeps.has(parent)) {
        // @ts-ignore
        deps = templateData.listDeps.get(parent);
    } else {
        deps = {
            list: [],
            add(dep: ListTemplateDepType) {
                if (!this.has(dep)) {
                    this.list.push(dep);
                }
            },
            has({ text, lineIndex }: ListTemplateDepType) {
                return !!this.list.find(l => l.text === text && l.lineIndex === lineIndex);
            }
        };
        templateData.listDeps.set(parent, deps);
    }
    const render = (da: any, index: number) => {
        let temIndex = 0;
        const map = new Map();
        let newChild: ElementType[] = [];
        for (let i = 0; i < child.length; i++) {
            let data = {...child[i], listIndex: index - startIndex, flags: da.flags};
            let parseTemplate = Object.create(ParseTemplate);
            if (i === 0) {
                data.achor = da.achor;
            }
            let text = data.text;
            if (!map.has(data.id)) {
                let newId = `${id}@@${index}-${temIndex}`;
                map.set(data.id, newId);
                data.id = newId;
                temIndex += 1;
            }
            if (data.parent != parent) {
                data.parent = map.get(data.parent);
            }

            if (!deps) continue;
            let dep = {
                text,
                lineIndex: i,
                listIndex: index,
            }

            if (data.tag === 'template') {
                if (deps.has(dep)) {
                    data.isResponsiveElem = true;
                    newChild.push(data);
                    continue
                }
                parseTemplate.init(text, da);
                if (parseTemplate.getFirstParam(text) === for_param) {
                    data.tag = 'text';
                    data.originTag = 'template'
                    data.text = parseTemplate.getMatchData().toString();
                } else {
                    deps.add(dep);
                    data.isResponsiveElem = true;
                }
            }
            newChild.push(data);
        }
        return newChild;
    }
    return list.map((res, index) => render(res, index + startIndex)).flat()
}



const proxyErrorHandlers = {
    get: function (target: any, prop: any, receiver: any) {
        const originalMethod = Reflect.get(target, prop, receiver);

        if (typeof originalMethod === 'function') {
            return function (...args: any[]) {
                try {
                    if (isPromise(originalMethod)) {
                        return originalMethod
                            .catch((e: Error) => {
                                console.error(`FUNCTION _>:${originalMethod.name} ERROR: `, e);
                                return Promise.reject(e);
                            });
                    }
                    // @ts-ignore
                    return originalMethod.apply(this, args);
                } catch (e) {
                    console.error(`FUNCTION _>:${originalMethod.name} ERROR: `, e);
                    return Promise.reject(e);
                }
            };
        } else {
            return originalMethod;
        }
    },
}


export function viewRender(
    template: string,
    data: any,
    methods: Record<string, any>,
    components: Record<string, any> | null = null,
    onCycleCallbacks?: CycleCallbacks
) {
    if (data.__KEY) return data.__KEY;
    let templateID = data.__KEY;
    
    templateID = generateRandomHash(16);
    
    const componentMess: any = {
        data,
        methods: new Proxy(methods, proxyErrorHandlers),
        onCycleCallbacks,
        elem: null,
        components,
        scope: []
    }
    
    let elementInProgress = getElementInProgress();
    
    if (elementInProgress) {
        componentMess.elem = elementInProgress;
    }
    componentMap.set(templateID, componentMess);
    data.__KEY = templateID;
    

    let oldStack: Responsive[] | null = null,
        prevStack: Responsive[] | null = null;
    // wasm
    let stack = wasmParse(template.trim(), templateID)
    console.log(stack);

    function updateComponent(updates: Dep[]) {
        console.log("本轮updates ==> ", prevStack, updates, getElementInProgress());
        if (updates.length) {
            // @ts-ignore
            componentMap.set('_lastUpdate', [...updates]);
        }
        if (oldStack === null) {
            // wasm
            prevStack = wasmRender(stack.stack[0]);
        }
        // diff
        else {
            // wasm
            prevStack && wasmPacth(prevStack, updates.map(l => l.id).join('>>>'));
            
            onCycleCallbacks && runWithCycleCallback(onCycleCallbacks, 'useUpdated');
        }
        oldStack = prevStack;
        
    }

    let effect = new ReactiveEffect(updateComponent, componentMess.scope);
    effect.run();

    return data.__KEY;
}