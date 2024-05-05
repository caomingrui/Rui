import {getElementInProgress, setActionElementId, setElementInProgress} from "./domBonding";
import { ComponentKey, ReactiveEffect, baseHandlers, targetMap, viewRender } from "./proxyBonding";
import { ReactiveEffectType } from "./types/proxyBonding";
import { isFunction, isObject } from "./utils";

export function reaction<T>(data: T) {
    if (!data) throw new Error("data is not")
    if (!isObject) throw new Error("reaction data must be an object");

    if (targetMap.has(data)) return targetMap.get(data);

    return new Proxy(data, baseHandlers);
}

type Callback = () => unknown;

export function useWatch(
    source: Callback | Callback[], 
    callback: (newV: unknown, oldV: unknown) => void
): ReactiveEffectType {
    
    const getter = () => {
        if (isFunction(source)) {
            // @ts-ignore
            return source();
        }
        else if (Array.isArray(source)) {
            return source.map(fn => {
                if (isFunction(fn)) {
                    return fn()
                }
            })
        }
    }

    let oldValue: unknown = getter();
    let scheduler = function () {
        if (callback) {
            let newValue = getter();
            callback(newValue, oldValue);
            oldValue = newValue;
        }
        else {
            effect.run();
        }
    }
    const effect = new ReactiveEffect(() => {
        try {
            setActionElementId('watcher');
            return getter();
        }
        catch(error) { console.error(error) }
        finally {
            setActionElementId(null);
        }
    }, scheduler);

    effect.run();
    return effect;
}


// 合并 proxy
export function merge(...args: Record<string, any>[]) {
    if (!args.length) return {};
    setActionElementId(null);
    const initProxy = args.reduce((o, b) => {
        if (!isObject(b)) throw new Error(`[merge data ${b} must be an object]`);
        return {...o, ...b}
    }, {});
    
    let handler: ProxyHandler<Record<any, any>> = {
        get: (_target, key) => {
            let proxy = args.find(l => key in l) || args[0];
            return Reflect.get(proxy, key);
        },
        set: (_target, key: string, value) => {
            let proxy = args.find(l => key in l) || args[0];
            if (proxy[key] != value) {
                proxy[key] = value;
            }
            return true;
        }
    }
    return new Proxy(initProxy, handler)
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


type ComponentProps<Optional extends boolean = true> = {
    data: any;
    methods: any;
    components?: Record<string, any>;
    init: (initData: Record<string, any> | (() => ComponentProps)) => ComponentProps
} & (Optional extends true ? ComponentCycleCallback : Partial<ComponentCycleCallback>);


export type CycleCallbackFunctions = keyof typeof CycleCallbackFunctionEnum

 export type CycleCallbacks = {
    -readonly [k in CycleCallbackFunctions]?: () => void
}

export function Component(callback: (
    instance: ComponentProps,
    props: any
) => string): Function {
    let cycleCallbacks: CycleCallbacks = {};

    let instance: ComponentProps<false> = {
        data: {},
        methods: {},
        init(initData) {
            let methodsObj: any = {};
            if (isFunction(initData)) {
                // @ts-ignore
                let {data, methods = {}, components = {}} = initData();
                this.data = data;
                this.methods = methodsObj = methods;
                this.components = components;
            } else {
                this.data = initData;
            }
            
            this.methods = new Proxy(methodsObj, {
                set: (target, key, value) => {
                    target[key] = value;
                    return true;
                }
            })
            return this as ComponentProps
        }
    };

    let funs = Object.keys(CycleCallbackFunctionEnum) as CycleCallbackFunctions[];
    funs.forEach(fun => {
        instance[fun] = function(cb: () => void) {
            cycleCallbacks[fun] = cb;
        }
    })

    const h = (props: unknown) => {
        const proxyProps = props? new Proxy(props, {
            get: (_target, key) => Reflect.get(_target, key),
            set: (_target: any, _key: string, _value) => {
                _target[_key] = _value;
                return true;
            }
        }): {};
        return viewRender(
            callback((instance as ComponentProps), proxyProps),
            instance.data,
            instance.methods,
            instance.components,
            proxyProps,
            cycleCallbacks
        );
    }
    h.__type = ComponentKey
    return h;
}


function CreateProject(elem: Element) {
    this.rootEl = elem;

    this.render = function (fn) {
        let elementInProgress = getElementInProgress();
        try {
            setElementInProgress(elem);
            fn();
        }
        catch (e) {
            console.log(`ERROR [render]::`, e);
        }
        finally {
            setElementInProgress(elementInProgress);
        }
    }
}

export function createRoot(elem: Element, options) {
    if (!elem) throw new Error('elem is null');
    return new CreateProject(elem);
}