import { ComponentKey, baseHandlers, targetMap, viewRender } from "./proxyBonding";
import { isFunction, isObject } from "./utils";

export function reaction<T>(data: T) {
    if (!data) throw new Error("data is not")
    if (!isObject) throw new Error("reaction data must be an object");

    if (targetMap.has(data)) return targetMap.get(data);

    return new Proxy(data, baseHandlers);
}


export function doWatch(source: any, callback: any) {
    const getter = () => {}
}




type ComponrntProps = {
    data: any;
    methods: any;
    onMount: (cb: (...args: any[]) => void) => void;
    components?: Record<string, any>;
    init: (initData: Record<string, any> | (() => ComponrntProps)) => ComponrntProps
}

export function Component(callback: (
    instance: ComponrntProps, 
    props: any
) => string): Function {
    let instance: ComponrntProps = {
        data: {},
        methods: {},
        onMount: (cb: (...args: any[]) => void) => {
            cb && cb();
        },
        init(initData) {
            let methodsObj: any = {}, proxy = initData;
            if (isFunction(initData)) {
                // @ts-ignore
                let {data, methods = {}, components = {}} = initData();
                this.data = proxy = data;
                this.methods = methodsObj = methods;
                this.components = components;
                console.log(components)
            } else {
                this.data = initData;
            }
            
            this.methods = new Proxy(methodsObj, {
                set: (target, key, value) => {
                    target[key] = value;
                    return true;
                }
            })
            return this as ComponrntProps
        }
    };

    const h = (props: any) => viewRender(
        callback(instance, props),
        instance.data,
        instance.methods,
        instance.components
    );
    h.__type = ComponentKey
    return h;
}
