import { 
    JumpUpdateForChildFlags, 
    NoFlags,
    UpdateTextFlags,
    UpdateAttributeFlags
} from "../proxyBonding/flages";
import { isFunction, isNumber, ParseTemplate, runWithCycleCallback, Stack } from "../utils";
import {  
    ComponentKey,
    componentMap, 
    patchList, 
    renderList,
} from "../proxyBonding";
import { parseProps } from "./parseProps";
import type {
    ElementType,
    ListTemplateDepType,
    Dep,
    ForContent,
    ComponentMapType
} from '../types/proxyBonding';


let elementInProgress: null | any = null;
let elementForInProgress: null | any = null;


export let actionElementId: string | null = null;
export let actionContent: ForContent[] = [];

export const getElementInProgress = () => elementInProgress;
export const setElementInProgress = (newElementInProgress: any) => (elementInProgress = newElementInProgress);

export const getActionElementId = () => actionElementId;
export const setActionElementId = (id: string) => (actionElementId = id);


const for_list = Object.create(Stack);
for_list.isForChild = function(data: ElementType) {
    if (!data) return false;
    let first = this.getLast();

    if (!first) return false;
    // 子节点收集完毕
    if (data.parent === first.parent) {
        let el = first.el;
        elementForInProgress = el;
        let { child } = this.stack.pop();
        let { data, key, val } = el.__v_for;
        // let cloneActiveEffect = activeEffect;
        el.__v_originChild = child.slice();
        // 过滤for child循环收集依赖
        try {
            // activeEffect = null;
            actionContent.push({ key, val, id: el.__KEY, type: 'for' });
            renderList(child, data, key).forEach(c => {
                DOM.createForChild(el, c);
            });
        }
        finally {
            actionContent.pop();
            // activeEffect = cloneActiveEffect;
        }
        return false;
    }
    first.child.push(data);
    return true;
}
for_list.match_v_for = function(elem: any, data: ElementType) {
    if (elem.__v_for_container) {
        this.push({...data, el: elem, child: []});
        return true;
    }
    return false;
}

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
            elementInProgress.__type = ComponentKey;
            data.insertElem = elementInProgress;
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
            insertElem.appendChild(elem);

            runWithCycleCallback(onCycleCallbacks, 'useMounted');
        }
    },

    createElement(
        tag: string,
        props: string,
        id: string,
        parent: string  | null,
        text: string,
        index: number
    ) {
        const records = { tag, props, id, parent, text, index };
        if (!parent) {
            let elem = createVNodeElm(tag, props,  text, id, 'NULL');
            // elementInProgress.parentNode.insertBefore(elem, elementInProgress);
            elementInProgress.appendChild(elem);
            elementInProgress = elem;
        } else {
            //  收集v-for子节点
            if (for_list.isForChild(records)) return JumpUpdateForChildFlags;
            if (elementInProgress.__KEY === parent) {
                let elem = createVNodeElm(tag, props, text, id, parent);
                if (!elem) return;
                // v-for
                if (for_list.match_v_for(elem, records)) {
                    elementInProgress.appendChild(elem);
                    return elem.__is_template;
                } else {
                    elementInProgress.appendChild(elem);
                    elementInProgress = elem;
                }
            }
            else {
                let parentElem = matchParent(parent);
                let elem = createVNodeElm(tag, props, text, id, parent);
                if (!elem) return;
                // v-for
                if (for_list.match_v_for(elem, records)) {
                    elementInProgress = parentElem;
                    parentElem.appendChild(elem);
                    return elem.__is_template;
                } else {
                    elementInProgress = elem;
                    parentElem.appendChild(elem);
                }
            }
        }
        return elementInProgress.__is_template;
    },

    createForChild(container: any, data: any) {
        let { tag, props, id, parent, text, listIndex, achor } = data;
        if (elementForInProgress.__KEY === parent) {
            let elem = createVNodeElm(tag, props, text, id, parent, listIndex);
            if (!elem) return;
            elementForInProgress.appendChild(elem);
            elementForInProgress = elem;
        }
        else {
            let parentElem = matchParent(parent, elementForInProgress);
            let elem = createVNodeElm(tag, props, text, id, parent, listIndex);
            if (!elem) return;
            if (achor) {
                parentElem.insertBefore(elem, achor);
            } else {
                parentElem.appendChild(elem);
            }
            elementForInProgress = elem;
        }
    },

    updateForChild(container: any, data: ElementType, deps: ListTemplateDepType[], indexMess: [number, number]) {
        let { text, isResponsiveElem, id, props, originTag, flags, listIndex } = data;
        let childNodes;

        switch (flags) {
            case 'ADD':
                DOM.createForChild(elementForInProgress, data);
                return;
        }
        debugger
        if (elementForInProgress.__KEY === id) {
            childNodes = elementForInProgress;
        } else {
            if (elementForInProgress.childNodes.length) {
                childNodes = elementForInProgress = elementForInProgress.childNodes[0];
            } else {
                let next = elementForInProgress, nextSibling;
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
                    else if (getElementIdToTemplateId(nextSibling?.__KEY || '') != getElementIdToTemplateId(elementForInProgress?.__KEY)) {
                        next = nextSibling;
                        nextSibling = null;
                    }
                }
                childNodes = elementForInProgress = nextSibling;
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
        el.parentNode.removeChild(el);
    },

    updateList(elementId: string, depsStr: string) {
        let deps = depsStr.split('>>>');
        console.log('update list -------------------->>>>', deps)
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
                })
                elementForInProgress = activeEl.childNodes[0] || {};
                // BUG 不优雅
                let star = Number(elementForInProgress.__KEY.split('@@')[1].split('-')[0])
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

function matchParent(parentId: string, elem = elementInProgress): Element {
    if (elem.__KEY === parentId) {
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
            // 解析bind 上下文参数 
            } else if (parseTemplate.hasFunBindInForContent(params, for_param)) {
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
            elem = createElement(tag, id, parent);
            break;
    }

    if (!elem) return elem;
    elem.__KEY = id;
    if (listIndex != null) {
        elem.listIndex = listIndex
    }

    let responsiveElemState = parseProps(elem, props);
    if (responsiveElemState) {
        elemSetTemplate(elem, id, UpdateAttributeFlags);
    }
    return elem;
}


function createElement(tagName: string, id: string, parent: string) {
    let Component = matchChildTag(id, tagName);
    if (isFunction(Component) && Component.__type === ComponentKey) {
        try {
            const parentElem = matchParent(parent, !!actionContent.length? elementForInProgress: elementInProgress );
            elementInProgress = parentElem;
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