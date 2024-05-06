import { matchTemplate } from ".";
import { initializeDirect } from "../utils/directPlugins";
import { initializeEvent } from "./event";

export type PropsType = {
    dict?: Record<string, {
        data: any;
        // 原始值
        origin: string
    }>;
    bind?: Record<string, any>;
    attr?: Record<string, any>;
    events?: Record<string, any>;
}

export function getPropsValue(
    props_string: string,
    elemKey: string,
    listIndex: number | null = null
): PropsType {
    let props_list = props_string.split('"')
        .filter(l => l);
    const value: PropsType = {};
    for (let i = 0; i < props_list.length; i+=2) {
        let k = props_list[i].substring(0, props_list[i].indexOf('=')).trim();
        if (k === '' || ( i + 1) >= props_list.length) continue;
        let v = props_list[i + 1].trim();
        let n1 = k.slice(0,1), n2 = k.slice(0, 2);

        let match = matchTemplate(elemKey, v, listIndex);

        if (n1 === '@' || n2 === 'on') {
            let events = value.events || (value.events = {});
            let index = n1 === '@'? 1: 2
            events[k.slice(index)] = match?.fn;
        }
        else {
            let data = match?.data;
            if (match?.fn) {
                data = match.fn();
            }
            if (n2 === 'v-') {
                let dicts = value.dict || (value.dict = {});
                dicts[k.slice(2)] = { data, origin: v };
            }
            else if (n1 === ':') {
                let bind = value.bind || (value.bind = {});
                bind[k.slice(1)] = data;
            } else {
                let attr = value.attr || (value.attr = {});
                attr[k] = data;
            }
        }
    }

    return value;
}



export function parseProps(
    container: any, 
    props_s: string | PropsType,
    isFirst = true
): boolean {
    let props: PropsType = {};
    if (typeof props_s === 'string') {
        props = getPropsValue(props_s, container.__KEY, container.listIndex);
    } else {
        props = props_s;
    }
    let isResponsiveElem = false;
    const callback = (type: keyof PropsType, cb: (name: string, val: any) => void) => {
        const data = props[type];
        if (!data) return;
        for (let i in data) {
            cb(i, data[i])
        }
    }

    for (const type in props) {

        switch(type) {
            case 'events': {
                if (!isFirst) break;
                callback(type, (methodsName, methodsCb) => {
                    initializeEvent(container, methodsName, methodsCb);
                });
                break;
            }
            case 'dict': {
                isResponsiveElem = true;
                callback(type, (key, { data, origin }) => {
                    initializeDirect(container, `v-${key}`, data, origin, isFirst);
                })
                
                break;
            }
            // @ts-ignore
            case 'bind': isResponsiveElem = true;
            default: {
                callback('attr', (k, v) => {
                    if (!isFirst) {
                        let old = container.getAttribute(k);
                        if (old === v) return;
                    }
        
                    container.setAttribute(k, v);
                })
                break;
            }
        }
    }

    return isResponsiveElem;
}