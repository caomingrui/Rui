import { matchTemplate } from ".";
import { initializeDirect } from "../utils/directPlugins";
import { initializeEvent } from "./event";


export function getPropsValue(props_string: string) {
    let props_list = props_string.split('"')
        .filter(l => l);
    let value = {
        
    };

    for (let i = 0; i < props_list.length; i+=2) {
        let k = props_list[i].substring(0, props_list[i].indexOf('=')).trim();
        let v = props_list[i + 1].trim();
        let n1 = k.slice(0, 1), n2 = k.slice(0, 2);
        // value[k] = v;

        // dict
        if (n2 === 'v-') {
            let dicts = value.dict || (value.dict = {});
            dicts[k.slice(2)] = v;
        } else {
            let dicts = value.attr || (value.attr = {});
            dicts[k] = v;
        } 
    }

    return value;
}


export function parseProps(container: any, props_s: string, isFirst = true) {
    let props_list = props_s.split('"')
        .filter(l => l);

    // 是否存在响应式数据
    let isResponsiveElem = false;
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
            container.setAttribute(k, v);
        }
    }

    return isResponsiveElem;
}