import { DOM, actionContent, addElementFlags, getElementForInProgress, getElementInProgress, matchParent, matchTemplate, setElementForInProgress, setElementInProgress } from "../domBonding/index.js";
import { UpdateForListFlags } from "../proxyBonding/flages.js";
import { renderList } from "../proxyBonding/index.js";
import { Stack } from "./index.js";


// const baseDictOptions = {
//     init (container) {
//         if (!container.__childs) {

//         }
//     }
// }

export const directPlugins = {
    'v-if': (container: any, data: any, originValue: string, isFirstRender: boolean) => {
        // let parentNode = container.parentNode;
        // if (!data) {
        //     let anchor = document.createTextNode('');
        //     if (!parentNode) {
        //         // BUG 不需要异步渲染， 同步成 for
        //         promise.then(() => {
        //             container.__v_anchor = anchor;
        //             container.parentNode.replaceChild(anchor, container);
        //         })
        //     } else {
        //         container.__v_anchor = anchor;
        //         parentNode.replaceChild(anchor, container);
        //     }
        // } else {
        //     if (!isFirstRender) {
        //         if (container.__v_anchor) {
        //             container.__v_anchor.parentNode.insertBefore(container, container.__v_anchor);
        //         }
        //         else if (container.__v_replace) {
        //             container.parentNode.insertBefore(container.__v_replace, container);
        //         }
        //     }
        // }

        if (!container.__childs) {
            const ifDict = {
                collectCallback: function({ payload }: any) {
                    container.__payload = payload;
                },
                match: function(this: any, elem: any, data: any) {
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
        console.log(container)
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
            console.log(container.previousSibling, container)
            const { el, child, ...args } = container.__payload;
            let copyElement = getElementInProgress();
            try {
                
                setElementInProgress(el);
                [args].concat(child).forEach(c  => {
                    const { tag, props, id, parent, text, index } = c;
                    DOM.createElement(
                        tag,
                        props,
                        id,
                        parent,
                        text,
                        index
                    )
                })
            } catch (error) {}
            finally {
                console.log(getElementInProgress(), args, container.__KEY)
                let d = getElementInProgress();
                let e = matchParent(args.id, d);
                console.log(e);
                let anchor = document.createTextNode('');
                anchor.__v_replace = e;
                e.__v_anchor = anchor;
                // e.parentNode.replaceChild(anchor, e);
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
                    const { tag, props, id, parent, text, index } = c;
                    DOM.createElement(
                        tag,
                        props,
                        id,
                        parent,
                        text,
                        index
                    )
                })
            } catch (error) {}
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
                match: function(this: any, elem: any, data: any) {
                    if (elem.__v_show) {
                        return true;
                    }
                    return false;
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
                    const { tag, props, id, parent, text, index } = c;
                    DOM.createElement(
                        tag,
                        props,
                        id,
                        parent,
                        text,
                        index
                    )
                })
            } catch (error) {}
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
    'v-for': (container: any, data: any, originValue: string) => {
        let [key, val] = originValue.split('in').map(l => l.trim());
        console.log(data, container)
        // (item, index) =>
        // if (key.indexOf(',') != -1) {

        // } else {
        //     let data = matchTemplate(container.__KEY, val);
        //     if (data && data.data) {
        //         container.__v_for = { data: data.data, key, val };
        //         container.__v_for_container = true;
        //         addElementFlags(container, UpdateForListFlags);
        //     }
        // }
        let list = matchTemplate(container.__KEY, val);
        if (!list) return;

        if (!container.__childs) {
            const forDict = {
                collectCallback: function({ payload }: any) {
                    container.__payload = payload;
                    const { el, child, ...args } = payload;
                    let newChild = el.__v_originChild = child.slice();
                    console.log(container)
                    let copyElement = getElementInProgress();
                    try {
                        setElementInProgress(el);
                        actionContent.push({ key, val, id: el.__KEY, type: 'for' });
                        console.log(newChild, [args].concat(child))
                        let d = renderList(newChild, list.data, key)
                        console.log(d);
                        [args].concat(d).forEach(c => {
                            const { tag, props, id, parent, text, index } = c;
                            DOM.createElement(
                                tag,
                                props,
                                id,
                                parent,
                                text,
                                index
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
                    if (elem.__v_for_container) {
                        return true;
                    }
                    return false;
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