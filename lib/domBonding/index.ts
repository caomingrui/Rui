import { 
    JumpUpdateForChildFlags, 
    NoFlags,
    UpdateTextFlags,
    UpdateAttributeFlags
} from "../proxyBonding/flages";
import { isFunction, isNumber, isTextElement, ParseTemplate, runWithCycleCallback, Stack } from "../utils";
import {  
    ComponentKey,
    componentMap, 
    patchList, 
    renderList,
} from "../proxyBonding";
import { PropsType, getPropsValue, parseProps } from "./parseProps";
import type {
    ElementType,
    ListTemplateDepType,
    Dep,
    ForContent,
    ComponentMapType
} from '../types/proxyBonding';


let elementInProgress: null | any = null;

export let actionElementId: string | null = null;
export let actionContent: ForContent[] = [];

export const getElementInProgress = () => elementInProgress;
export const setElementInProgress = (newElementInProgress: any) => (elementInProgress = newElementInProgress);

export const getActionElementId = () => actionElementId;
export const setActionElementId = (id: string | null) => (actionElementId = id);

// dict context
const Context = Object.setPrototypeOf({
    collectContextChild: function(data: any) {
        if (!data) return false;
        let context = this.getLast();
        if (!context) return false;
        const { parent } = data;
        const { actions, payload } = context;
        // 节点收集完毕
        if (parent === payload.parent) { 
            let context = this.stack.pop();
            actions.collectCallback(context); 
        }
        
        if (this.stack.length) {
            payload.child.push(data);
            return true;
        }
        
        return false;
    },
    
    matchDictContext: function(elem: any, data: any) {
        // dict 标识
        const actions = elem.__childs;
        if (actions && actions.match(elem, data)) {
            this.push({
                actions,
                payload: {...data, el: elem, child: []}
            });
            return true;
        }
        return false;
    }
}, Stack);

export const DOM = {
    
    startComponent(elementId: string) {
        let componentId = getElementIdToTemplateId(elementId);
        let componentRecord = componentMap.get(componentId);
        let starElement = document.createDocumentFragment();

        if (!componentRecord) return;

        const data: ComponentMapType = {
            ...componentRecord,
            elem: starElement,
            deps: new Set(),
            listDeps: new Map(),
        }
        // 组件首次插入
        if (!elementInProgress) {
            elementInProgress = starElement;
            data.insertElem = document.body;
        } else {
            const achor: any = document.createTextNode("");
            achor.__type = ComponentKey;
            achor.__KEY = elementId;
            // console.log(elementInProgress, elementId, '?????');
            if (isTextElement(elementInProgress)) {
                elementInProgress.parentNode.insertBefore(achor, elementInProgress.nextSibling);
            } else {
                elementInProgress.appendChild(achor);
            }
            
            elementInProgress.__type = ComponentKey;
            
            data.insertElem = achor;
            // elementInProgress.__type = ComponentKey;
            // data.insertElem = elementInProgress;
        }

        componentMap.set(componentId, data);

        runWithCycleCallback(data.onCycleCallbacks, 'useBefored');
    },

    endComponent(
        tag: string,
        props: string,
        id: string,
        parent: string  | null,
        text: string,
        index: number
    ) {
        if (elementInProgress.__KEY != id) {
            this.createElement(tag, props, id, parent, text, index);
        }
        let componentId = getElementIdToTemplateId(id);
        let componentRecord = componentMap.get(componentId);
        if (componentRecord) {
            const {
                insertElem,
                onCycleCallbacks,
                elem,
            } = componentRecord;
            !isTextElement(insertElem) && insertElem.appendChild(elem);

            runWithCycleCallback(onCycleCallbacks, 'useMounted');
        }
    },

    createElement(
        tag: string,
        props: string,
        id: string,
        parent: string  | null,
        text: string,
        index: number | null
    ) {
        const records = { tag, props, id, parent, text, index };
        if (!parent) {
            let elem = createVNodeElm(tag, props,  text, id, 'NULL', index);
            // elementInProgress.parentNode.insertBefore(elem, elementInProgress);
            if (isTextElement(elementInProgress)) {
                elementInProgress.parentNode.insertBefore(elem, elementInProgress);
            } else {
                elementInProgress.appendChild(elem);
            }
            elementInProgress = elem;
        } else {
            //  收集修饰符子节点
            if (Context.collectContextChild(records)) return JumpUpdateForChildFlags;
            if (elementInProgress.__KEY === parent) {
                let elem = createVNodeElm(tag, props, text, id, parent, index);
                if (!elem) return;
                // dict
                if (Context.matchDictContext(elem, records)) {
                    elementInProgress.appendChild(elem);
                    return elem.__is_template;
                } else {
                    elementInProgress.appendChild(elem);
                    elementInProgress = elem;
                }
            }
            else {
                let parentElem = matchParent(parent);
                let elem = createVNodeElm(tag, props, text, id, parent, index);
                if (!elem) return;
                // dict
                if (Context.matchDictContext(elem, records)) {
                    elementInProgress = parentElem;
                    parentElem.appendChild(elem);
                    return elem.__is_template;
                } else {
                    if (elementInProgress.__KEY === id && isTextElement(elementInProgress)) {
                        parentElem.insertBefore(elem, elementInProgress);
                    } else {
                        parentElem.appendChild(elem);
                    }
                    elementInProgress = elem;
                }
            }
        }
        return elementInProgress.__is_template;
    },

    // createForChild(container: any, data: any) {
    //     let { tag, props, id, parent, text, listIndex, achor } = data;
    //     if (elementInProgress.__KEY === parent) {
    //         let elem = createVNodeElm(tag, props, text, id, parent, listIndex);
    //         if (!elem) return;
    //         // if () {}
    //         elementInProgress.appendChild(elem);
    //         elementInProgress = elem;
    //     }
    //     else {
    //         let elem = createVNodeElm(tag, props, text, id, parent, listIndex);
    //         if (!elem) return;
    //         let parentElem = matchParent(parent, elementInProgress);
    //         if (elementInProgress.__KEY === id && isTextElement(elementInProgress)) {
    //             parentElem.insertBefore(elem, elementInProgress);
    //             return;
    //         }
            
            
    //         if (achor) {
    //             parentElem.insertBefore(elem, achor);
    //         } else {
    //             parentElem.appendChild(elem);
    //         }
    //         elementInProgress = elem;
    //     }
    // },

    updateForChild(container: any, data: ElementType, deps: ListTemplateDepType[], indexMess: [number, number]) {
        let { text, isResponsiveElem, id, props, originTag, flags, listIndex, tag, parent } = data;
        let childNodes;

        switch (flags) {
            case 'ADD':
                // DOM.createForChild(elementInProgress, data);
                DOM.createElement(tag, props, id, parent, text, listIndex || null)
                return;
        }
        if (elementInProgress.__KEY === id) {
            childNodes = elementInProgress;
        } else {
            if (elementInProgress.childNodes.length) {
                childNodes = elementInProgress = elementInProgress.childNodes[0];
            } else {
                let originComponnentKey = getElementIdToTemplateId(elementInProgress.__KEY);
                let next = elementInProgress, nextSibling;
                while (!nextSibling && next) {
                    nextSibling = next.nextSibling || next.nextElementSibling;

                    if (!nextSibling) {
                        if (next.parentNode === container) {
                            nextSibling = next;
                        } else {
                            next = next.parentNode;
                        }
                    }
                    // id 不同，跳过子组件
                    else if (getElementIdToTemplateId(nextSibling.__KEY) != originComponnentKey) {
                        next = nextSibling;
                        nextSibling = null;
                    }
                }
                childNodes = elementInProgress = nextSibling;
            }
        }
        // 更新下标
        if (listIndex != null) {
            childNodes.listIndex = listIndex;
        }

        // 更新 Attr
        if (props && childNodes.__KEY === id) parseProps(childNodes, props, false);

        if (originTag === 'template') {
            // item 属性更新
            if (text != childNodes.nodeValue) {
                childNodes.nodeValue = text;
            }
        }
        // 模板更改
        if (!isResponsiveElem) return;
        const [originChildIndex, index] = indexMess;
        for (let i = 0; i < deps.length; i++) {
            let { text: depName, lineIndex: depLineIndex, } = deps[i];
            if (text === depName && (index % originChildIndex === depLineIndex)) {
                let data = componentMap.get(getElementIdToTemplateId(id));
                if (data) {
                    childNodes.nodeValue = data.data[depName];
                }
            }
        }
    },

    updateText(elementId: string, param: string) {
        let templateID = getElementIdToTemplateId(elementId);
        let data = componentMap.get(templateID);
        if (data) {
            let activeEl = [...data.deps].find(l => l.__KEY === elementId);
            activeEl.nodeValue = data.data[param];
        }
    },

    updateAttribute(elementId: string, param: string) {
        let templateID = getElementIdToTemplateId(elementId);
        let data = componentMap.get(templateID);
        if (data) {
            let activeEl = [...data.deps].find(l => l.__KEY === elementId);
            parseProps(activeEl, param, false);
        }
    },

    removeElement(el: any) {
        let list: string[] = [];
        const dfs = (c: any) => {
            if (!c) return;
            
            if (c.nextSibling && isTextElement(c.nextSibling) && c.nextSibling.__removeTarget_key === c.__KEY) {
                list.unshift(c.__KEY);
            } 
            else if (c.previousSibling && isTextElement(c.previousSibling) && c.previousSibling.__KEY === c.__KEY) {
                list.unshift(c.__KEY);
            }
            
            let e = c.children;
            for (let i = 0; i < e.length; i++) {
                let d = e[i];
                dfs(d);
            }
        }
        
        dfs(el);
        el.parentNode.removeChild(el);
        list.forEach(l => {
            let id = getElementIdToTemplateId(l);
            let data = componentMap.get(id);
            if (data) {
                data.scope.forEach(l => l.clearUp())
                runWithCycleCallback(data.onCycleCallbacks, 'useUnmounted');
                componentMap.delete(id);
            }
        })
    },

    updateList(elementId: string, depsStr: string) {
        // let deps = depsStr.split('>>>');
        let templateID = getElementIdToTemplateId(elementId);
        let data = componentMap.get(templateID);
        if (data) {
            let activeEl = [...data.deps].find(l => l.__KEY === elementId);
            let originChild = activeEl.__v_originChild;
            let lastUpdates = componentMap.get('_lastUpdate') as any as Dep[];
            let { data: oldList, key, val } = activeEl.__v_for;
            let newList = data.data[val];
            actionContent.push({key, val, id: elementId, type: 'for'});
            try {
                let locateMap = patchList(activeEl, oldList, newList);
                newList = newList.map((res: Record<string, any>, ind: number) => {
                    let map = locateMap.get(ind) || {};
                    return {...res, ...map}
                });
                // BUG
                elementInProgress = activeEl.previousSibling.childNodes[0] || {};
                // BUG 不优雅
                let star = Number(elementInProgress.__KEY.split('@@')[1].split('-')[0])
                let forDeps = data.listDeps.get(elementId);
                if (!forDeps) return;
                let deps = forDeps.list
                    .filter(l => lastUpdates.find(d => d.key === l.text));
                renderList(originChild, newList, key, star).forEach((c, ind) => {
                    DOM.updateForChild(activeEl, c, deps, [originChild.length, ind]);
                });
            }
            finally {
                actionContent.pop();
                activeEl.__v_for.data = newList;
            }
        }
    },

    replaceElement() {},

    find() {}
}

export function matchParent(parentId: string, elem = elementInProgress): Element {
    if (elem.__KEY === parentId) {
        return elem;
    }
    // 是否匹配 组件插入位置的text节点
    else if (
        elem.nextSibling && 
        isTextElement(elem.nextSibling) &&
        parentId === elem.nextSibling.__KEY
    ) {
        return elem;
    }
    else {
        return matchParent(parentId, elem.parentElement);
    }
}



export function addElementFlags(element: any, flags: number) {
    if (!isNumber(element.__is_template)) {
        element.__is_template = NoFlags;
    }
    element.__is_template |= flags;
    return element;
}




export function getElementIdToTemplateId(elemId: string) {
    return elemId.split('@@')[0];
}


export function matchTemplateString(id: string, params: string) {
    let match = matchTemplate(id, params);
    let innerText = `[ERROR]: ${params} is not match!!`;
    if (!match) return innerText;

    if(match.fn) {
        innerText = match.fn();
    } else {
        innerText = match.data.toString() || '';
    }

    return innerText;
}



export function matchTemplate(
    id: string,
    params: string,
    listIndex: null | number = null
) {
    let templateID = getElementIdToTemplateId(id);
    if (!templateID) return null;
    let com_proxy = componentMap.get(templateID);
    let parseTemplate = Object.create(ParseTemplate);

    if (com_proxy) {
        const fn = (proxy: any, methods: any) => {
            actionElementId = id;
            let match = parseTemplate.getMatchData();
            if(isFunction(match)) {
                return {
                    fn: () => {
                        let data = match.call(methods);
                        actionElementId = null;
                        return data;
                    }
                }
            }
            return { data: match };
        }

        const {
            data,
            methods
        } = com_proxy;

        let firstParams = parseTemplate.getFirstParam(params);
        // for 上下文
        if (actionContent.length && listIndex != null) {
            let { key: for_param, val, } = actionContent[actionContent.length - 1] || {};
            if (firstParams === for_param) {
                parseTemplate.init(params, { [for_param]: data[val][listIndex] });
                return fn(data, methods);
            }
            // 解析bind 上下文参数 
            else if (parseTemplate.hasFunBindInForContent(params, for_param)) {
                parseTemplate.init(params, { [for_param]: data[val][listIndex], ...methods });
                return fn(data, methods);
            }
        }

        if (firstParams in data) {
            parseTemplate.init(params, data);
            return fn(data, methods);
        }

        if (firstParams in methods) {
            parseTemplate.init(params, methods);
            return fn(methods, methods);
        }

    }
    return null;
}



export function createVNodeElm(
    tag: string,
    props: string,
    text: string,
    id: string,
    parent: string,
    listIndex: null | number = null
) {
    let elem: any;
    let prveProps = getPropsValue(props);
    
    switch (tag) {
        case "text":
            elem = document.createTextNode(text);
            break;
        case "template":
            let innerText = matchTemplateString(id, text);
            elem = document.createTextNode(innerText);
            elemSetTemplate(elem, id, UpdateTextFlags);
            break;
        default:
            elem = createElementComponent(tag, id, parent, prveProps);
            break;
    }

    if (!elem) return elem;
    elem.__KEY = id;
    if (listIndex != null) {
        elem.listIndex = listIndex
    }

    if (elementInProgress.__KEY != id) {
        let responsiveElemState = parseProps(elem, props);
        if (responsiveElemState) {
            elemSetTemplate(elem, id, UpdateAttributeFlags);
        }
    }
    
    return elem;
}


function createElementComponent(tagName: string, id: string, parent: string, props: PropsType) {
    let Component = matchChildTag(id, tagName);
    if (props.dict && id != elementInProgress.__KEY) {
        return document.createTextNode('');
    }
    if (isFunction(Component) && Component.__type === ComponentKey) {
        try {
            if (!(elementInProgress.__KEY === id && isTextElement(elementInProgress))) {
                const parentElem = matchParent(parent, elementInProgress);
                elementInProgress = parentElem;
            }
            
            actionContent.push({ type: 'component', key: id, val: 'null', id: 'null' });
            Component();
        }
        catch (error) {
            console.error(error);
        }
        finally {
            actionContent.pop()
            return null;
        }
    } else {
        return document.createElement(tagName);
    }
}


export function matchChildTag(id: string, tagName: string) {
    let templateID = getElementIdToTemplateId(id);
    if (!templateID || !tagName) return null;
    let data  = componentMap.get(templateID);
    if (data && data.components) {
        let components = data.components;
        return tagName in components? components[tagName]: tagName ;
    }
    return tagName;
}


function elemSetTemplate(element: HTMLElement | Text, id: string, flags: number) {
    addElementFlags(element, flags);
    let templateID = getElementIdToTemplateId(id);
    const templateData = componentMap.get(templateID);
    if (templateData) {
        templateData.deps.add(element);
    }
}