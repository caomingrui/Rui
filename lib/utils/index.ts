import { CycleCallbackFunctions, CycleCallbacks } from '..';
import type { ParseTemplateThis } from '../types/paseHtmlTemplate'
import { promise } from './scheduler';


export function isObject<T>(obj: T): boolean {
    return Object.prototype.toString.call(obj) === "[object Object]"
}

export function isFunction<T>(fun: T): boolean {
    return typeof fun === "function"
}

export function isPromise<T>(promise: T): boolean {
    return Object.prototype.toString.call(promise) === "[object Promise]"
}

export function isNumber<T>(number: T): boolean {
    return typeof number === "number";
}


export function isTextElement(elem: Element): boolean {
    return elem.nodeType === 3
}

export const Stack = {
    stack: [],
    length: 0,

    push(data: any) {
        console.log(data)
        
        // @ts-ignore
        this.stack.push(data);
        this.length = this.stack.length;
    },

    getLast() {
        this.length = this.stack.length;
        return this.stack[this.length - 1 && 0];
    },

    getFirst() {
        return this.stack[0];
    }
}

/**
 * 处理模板{}
 */
export const ParseTemplate = {
    init(this: ParseTemplateThis, str: string, data: any, listIndex: number | null = null) {
        this.template = this.parseTemplateParam(str);
        this.originTemplate = str;
        this.data = data;
        this.listIndex = listIndex;
        // this.type = ''
    },

    parseTemplateParam(template: string): string[] {
        return template.split('.').filter(l => l.trim());
    },

    getFirstParam(this: ParseTemplateThis, str: string = '') {
        if (str === this.originTemplate) {
            return this.template[0];
        }
        return this.parseTemplateParam(str)[0];
    },

    hasFunBindInForContent(this: ParseTemplateThis, template: string) {
        return template.includes('bind(');
    },

    getFunBindParams(this: ParseTemplateThis) {
        let s = this.originTemplate;
        let len = s.length;
        let [methodName, bindParams] = s.slice(0, len - 1).split('.bind(');
        
        let method = this.data[methodName];
        let data = bindParams.split(',').slice(1).map(res => this.calcMatchData(res.split('.')))
        return function <T>(this: T) {
                let _this = this;
                return method.apply(_this, data);
            }
    },

    calcMatchData(this: ParseTemplateThis, params: string[]) {
        return params
        .reduce((obj, item) => {
            let param = item.trim();
            if (!obj) return this.data[param];
            
            return obj[param];
        }, null);
    },

    // { a.b.c }
    getMatchData(this: ParseTemplateThis) {
        let isFunBind = this.hasFunBindInForContent(this.originTemplate);
        if (isFunBind) return this.getFunBindParams([]);
        
        return this.calcMatchData(this.template);
    }
}



export function generateRandomHash(length: number) {
    const randomBytes = new Uint8Array(length);
    crypto.getRandomValues(randomBytes);
    const hashArray = Array.from(randomBytes);
    return hashArray.map(b => b.toString(16).padStart(2, '0')).join('');
}



export function runWithCycleCallback(onCycleCallbacks: CycleCallbacks, funName: CycleCallbackFunctions) {
    if (
        onCycleCallbacks && 
        onCycleCallbacks.hasOwnProperty(funName)
    ) {
        let cb = onCycleCallbacks[funName];
        if (cb && isFunction(cb)) {
            promise.then(cb).catch(rej => {
                console.error(`[${funName}] ==>`,rej);
            });
        }
    }
}