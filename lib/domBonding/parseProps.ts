import { matchTemplate } from ".";
import { initializeDirect } from "../utils/directPlugins";
import { initializeEvent } from "./event";

export function parseProps(container: any, props_s: string, isFirst = true) {
    let props_list = props_s.split('"')
        .filter(l => l);

    // 是否存在响应式数据
    let isResponsiveElem = false;
    // console.log(props_s,container, container.__KEY, isFirst,'========>>')
    for (let i = 0; i < props_list.length; i+=2) {
        let key = props_list[i].substring(0, props_list[i].indexOf('=')).trim();
        let value = props_list[i + 1].trim();
        let match = matchTemplate(container.__KEY, value, container.listIndex);
        const { fn: matchEvent, data: matchText } = match || {};
        let firstKey = key.slice(0, 1), twoKey = key.slice(0, 2);
        // match event
        if (firstKey === '@' && matchEvent) {
            isFirst && initializeEvent(container, key.slice(1), matchEvent);
        }
        // match event
        else if (twoKey === 'on' && matchEvent) {
            isFirst && initializeEvent(container, key.slice(2), matchEvent);
        }
        // attr
        else {
            let v = value, k = key;
            let data = matchText;
            if (matchEvent) {
                data = matchEvent();
            }

            if (twoKey === 'v-') {
                initializeDirect(container, key, data, value, isFirst);
                isResponsiveElem = true;
                continue;
            }

            if (firstKey === ':') {
                k = key.slice(1);
                v = data;
                isResponsiveElem = true;
            }

            if (!isFirst) {
                let old = container.getAttribute(k);
                if (old === v) continue;
            }
            // console.log(container, props_s, k, v, isFirst, matchEvent);
            container.setAttribute(k, v);
        }
    }

    return isResponsiveElem;
}