import { 
    DOM, 
    actionContent, 
    addElementFlags, 
    getElementInProgress, 
    matchParent, 
    matchTemplate, 
    setElementInProgress 
} from "../domBonding";
import { UpdateForListFlags } from "../proxyBonding/flages.js";
import { renderList } from "../proxyBonding";
import { Stack } from "./index.js";

export const directPlugins = {
    'v-if': (container: any, data: any, _originValue: string, _isFirstRender: boolean) => {

        if (!container.__childs) {
            const ifDict = {
                collectCallback: function({ payload }: any) {
                    container.__payload = payload;
                },
                match: function(this: any, elem: any, _data: any) {
                    if (elem.__v_if) {
                        return true;
                    }
                    return false;
                }
            };
            Object.setPrototypeOf(ifDict, Stack);
            container.__v_if = true;
            container.__childs = ifDict;
        }
        if (!data) {
            if ( 
                container.previousSibling &&
                container.__KEY === container.previousSibling.__KEY
            ) {
                let anchor = container.previousSibling.__v_anchor
                container.previousSibling.parentNode.replaceChild(anchor, container.previousSibling);
            }
        } else {
            if (container.previousSibling) {
                let el = container.previousSibling.__v_replace
                container.previousSibling.parentNode.replaceChild(el, container.previousSibling);
                return;
            }
            const { el, child, ...args } = container.__payload;
            let copyElement = getElementInProgress();
            try {
                
                setElementInProgress(el);
                [args].concat(child).forEach(c  => {
                    const { tag, props, id, parent, text, listIndex } = c;
                    DOM.createElement(
                        tag,
                        props,
                        id,
                        parent,
                        text,
                        listIndex
                    )
                })
            } catch (error) {
                console.error(error);
            }
            finally {
                let d = getElementInProgress();
                let e = matchParent(args.id, d);
                let anchor: any = document.createTextNode('');
                anchor.__v_replace = e;
                e.__v_anchor = anchor;
                setElementInProgress(copyElement);
            }
        }
    },
    // 新增销毁
    'v-if-new': (container: any, data: boolean) => {
        if (!container.__childs) {
            const data = {
                collectCallback: function({ payload }: any) {
                    container.__payload = payload;
                },
                match: function(this: any, elem: any) {
                    if (elem.__v_if_new) {
                        return true;
                    }
                    return false;
                }
            };
            container.__v_if_new = true;
            container.__childs = data;
            
        }

        if (!data) {
            if ( 
                container.previousSibling &&
                (
                    container.__KEY === container.previousSibling.__KEY ||
                    container.__removeTarget_key === container.previousSibling.__KEY
                )
            ) {
                DOM.removeElement(container.previousSibling);
            }
        } else {
            const {
                el,
                child,
                ...args
            } = container.__payload;
            let copyElement = getElementInProgress();
            try {
                setElementInProgress(el);
                [args].concat(child).forEach(c  => {
                    const { tag, props, id, parent, text, listIndex } = c;
                    DOM.createElement(
                        tag,
                        props,
                        id,
                        parent,
                        text,
                        listIndex
                    )
                })
            } catch (error) {
                console.error(error);
            }
            finally {
                let elementInProgress = getElementInProgress();
                /**
                 * 向上匹配，查找下一个元素为 插入位置container textNode
                 */
                let next = elementInProgress, nextSibling = null;
                while (!nextSibling && next) {
                    nextSibling = next.nextSibling;
                    if (!nextSibling) {
                        if (next.parentNode === container) {
                            nextSibling = next;
                        } else {
                            next = next.parentNode;
                        }
                    } else if(nextSibling === container) {
                        break;
                    }
                }
                // 记录需要删除组件的 key
                container.__removeTarget_key = next.__KEY;
                setElementInProgress(copyElement);
            }
        }
    },
    'v-show': (container: any, isShow: boolean) => {
        if (!container.__childs) {
            const ifDict = {
                collectCallback: function({ payload }: any) {
                    container.__payload = payload;
                },
                match: function(this: any, elem: any, _data: any) {
                    return !!elem.__v_show;

                }
            };
            container.__v_show = true;
            container.__childs = ifDict;
        }
        if (!isShow) {
            const targetElement = container.previousSibling;
            if ( 
                targetElement &&
                (
                    container.__KEY === targetElement.__KEY ||
                    container.__removeTarget_key === targetElement.__KEY
                )
            ) {
                targetElement.style.display = 'none';
                container.__isShow = false;
            }
        } else {
            if (container.__isShow === false) {
                container.previousSibling.style.display = '';
                return;
            }
            const {
                el,
                child,
                ...args
            } = container.__payload;
            let copyElement = getElementInProgress();
            try {
                setElementInProgress(el);
                [args].concat(child).forEach(c  => {
                    const { tag, props, id, parent, text, listIndex } = c;
                    DOM.createElement(
                        tag,
                        props,
                        id,
                        parent,
                        text,
                        listIndex
                    )
                })
            } catch (error) {
                console.error(error)
            }
            finally {
                let elementInProgress = getElementInProgress();
                /**
                 * 向上匹配，查找下一个元素为 插入位置container textNode
                 */
                let next = elementInProgress, nextSibling = null;
                while (!nextSibling && next) {
                    nextSibling = next.nextSibling;
                    if (!nextSibling) {
                        if (next.parentNode === container) {
                            nextSibling = next;
                        } else {
                            next = next.parentNode;
                        }
                    } else if(nextSibling === container) {
                        break;
                    }
                }
                // 记录需要删除组件的 key
                container.__removeTarget_key = next.__KEY;
                container.__isShow = true;
                setElementInProgress(copyElement);
            }
        }
    },
    'v-for': (container: any, _data: any, originValue: string) => {
        let [key, val] = originValue.split('in').map(l => l.trim());
        let list = matchTemplate(container.__KEY, val);
        if (!list) return;

        if (!container.__childs) {
            const forDict = {
                collectCallback: function({ payload }: any) {
                    container.__payload = payload;
                    const { el, child, ...args } = payload;
                    let newChild = el.__v_originChild = child.slice();
                    if (!newChild.length) return
                    let copyElement = getElementInProgress();
                    try {
                        setElementInProgress(el);
                        actionContent.push({ key, val, id: el.__KEY, type: 'for' });
                        let d = renderList(newChild, list.data, key);
                        [args].concat(d).forEach(c => {
                            const { tag, props, id, parent, text, listIndex } = c;
                            DOM.createElement(
                                tag,
                                props,
                                id,
                                parent,
                                text,
                                listIndex
                            )
                        });
                    } catch (error) {
                        console.error(error)
                    }
                    finally {
                        actionContent.pop();
                        setElementInProgress(copyElement);
                    }
                },
                match: function(this: any, elem: any) {
                    return !!elem.__v_for_container;
                }
            };
            container.__v_for_container = true;
            container.__childs = forDict;
            container.__v_for = { data: list.data, key, val };
            addElementFlags(container, UpdateForListFlags);
        }
        
    }
}


export function initializeDirect(
    container: HTMLElement,
    directKey: string,
    data: any,
    originValue: string,
    isFirstRender: boolean
) {
    switch (directKey) {
        case 'v-if':
        case 'v-show':
        case 'v-for':
        case 'v-if-new':
            directPlugins[directKey](container, data, originValue, isFirstRender);
            break;
        default:
            console.log('自定义指令', directKey);
    }
}