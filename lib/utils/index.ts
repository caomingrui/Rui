import type { ParseTemplateThis } from '../types/paseHtmlTemplate'


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


export const Stack = {
    stack: [],
    length: 0,

    push(data: any) {
        this.length += 1;
        // @ts-ignore
        this.stack.push(data)
    },

    getLast() {
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
    init(this: ParseTemplateThis, str: string, data: any, starIndex: number = 0) {
        this.template = this.parseTemplateParam(str);
        this.originTemplate = str;
        this.data = data;
        this.starIndex = starIndex;
    },

    parseTemplateParam(template: string) {
        return template.split('.').filter(l => l.trim());
    },

    getFirstParam(this: ParseTemplateThis, str: string = '') {
        if (str === this.originTemplate) {
            return this.template[0];
        }
        return this.parseTemplateParam(str)[0];
    },

    // { a.b.c }
    getMatchData(this: ParseTemplateThis) {
        return this.template
            .slice(this.starIndex)
            .reduce((obj, item) => {
                if (!obj) {
                    return this.data[item];
                }
                return obj[item];
            }, null);
    }
}



export function generateRandomHash(length: number) {
    const randomBytes = new Uint8Array(length);
    crypto.getRandomValues(randomBytes);
    const hashArray = Array.from(randomBytes);
    return hashArray.map(b => b.toString(16).padStart(2, '0')).join('');
}