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


enum CycleCallbackFunctionEnum {
    useBefored = "useBefored",
    useMounted = "useMounted",
    useUpdated = "useUpdated",
    useUnmounted = "useUnmounted",
}

type ComponentCycleCallback = {
    [k in CycleCallbackFunctions]: (cb: () => void) => void;
};


type ComponrntProps<Optional extends boolean = true> = {
    data: any;
    methods: any;
    components?: Record<string, any>;
    init: (initData: Record<string, any> | (() => ComponrntProps)) => ComponrntProps
} & (Optional extends true ? ComponentCycleCallback : Partial<ComponentCycleCallback>);


export type CycleCallbackFunctions = keyof typeof CycleCallbackFunctionEnum

 export type CycleCallbacks = {
    -readonly [k in CycleCallbackFunctions]?: () => void
}

export function Component(callback: (
    instance: ComponrntProps, 
    props: any
) => string): Function {
    let cycleCallbacks: CycleCallbacks = {};

    let instance: ComponrntProps<false> = {
        data: {},
        methods: {},
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

    let funs = Object.keys(CycleCallbackFunctionEnum) as CycleCallbackFunctions[];
    funs.forEach(fun => {
        instance[fun] = function(cb: () => void) {
            cycleCallbacks[fun] = cb;
        }
    })

    const h = (props: any) => viewRender(
        callback((instance as ComponrntProps), props),
        instance.data,
        instance.methods,
        instance.components,
        cycleCallbacks
    );
    h.__type = ComponentKey
    return h;
}
