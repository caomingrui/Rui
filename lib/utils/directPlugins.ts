import { addElementFlags, matchTemplate } from "../domBonding/index.js";
import { UpdateForListFlags } from "../proxyBonding/flages.js";
import { promise } from "./scheduler.js";

export const directPlugins = {
    'v-if': (container: any, data: any, originValue: string, isFirstRender: boolean) => {
        let parentNode = container.parentNode;
        if (!data) {
            let anchor = document.createTextNode('');
            if (!parentNode) {
                // BUG 不需要异步渲染， 同步成 for
                promise.then(() => {
                    container.__v_anchor = anchor;
                    container.parentNode.replaceChild(anchor, container);
                })
            } else {
                container.__v_anchor = anchor;
                parentNode.replaceChild(anchor, container);
            }
        } else {
            if (!isFirstRender) {
                if (container.__v_anchor) {
                    container.__v_anchor.parentNode.insertBefore(container, container.__v_anchor);
                }
                else if (container.__v_replace) {
                    container.parentNode.insertBefore(container.__v_replace, container);
                }
            }
        }
    },
    'v-show': (container: HTMLElement, isShow: any) => {
        if (!isShow) {
            container.style.display = 'none';
        } else {
            container.style.display = '';
        }
    },
    'v-for': (container: any, data: any, originValue: string) => {
        let [key, val] = originValue.split('in').map(l => l.trim());
        // (item, index) =>
        if (key.indexOf(',') != -1) {

        } else {
            let data = matchTemplate(container.__KEY, val);
            if (data && data.data) {
                container.__v_for = { data: data.data, key, val };
                container.__v_for_container = true;
                addElementFlags(container, UpdateForListFlags);
            }
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
            directPlugins[directKey](container, data, originValue, isFirstRender);
            break;
        default:
            console.log('自定义指令', directKey);
    }
}