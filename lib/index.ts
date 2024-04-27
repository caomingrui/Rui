import { baseHandlers, targetMap, viewRender } from "./proxyBonding";
import { isObject } from "./utils";

export function reaction<T>(data: T) {
    if (!data) throw new Error("data is not")
    if (!isObject) throw new Error("reaction data must be an object");

    if (targetMap.has(data)) return targetMap.get(data);

    return new Proxy(data, baseHandlers);
}


export function doWatch(source: any, callback: any) {
    const getter = () => {}
}


export function Component(callback: (instance: any, props: any) => string): Function {
    let instance = {
        data: {},
        methods: {},
        init(proxy: any) {
            this.data = proxy;
            let o: any = {};
            this.methods = new Proxy(o, {
                set: (target, key, value) => {
                    if (target[key] != value) {
                        target[key] = value;
                    }
                    return true;
                }
            })
            return {
                data: proxy,
                methods: this.methods,
                onMount: (cb: (...args: any[]) => void) => {
                    cb && cb();
                },
            }
        }
    };

    return (props: any) => viewRender(
        callback(instance, props),
        instance.data,
        instance.methods
    )
}