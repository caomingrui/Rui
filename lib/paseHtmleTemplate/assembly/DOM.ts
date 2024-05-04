

export declare function startComponent(elementId: string): void;
export declare function endComponent(elementId: string): void;
export declare function createElement(
    tag: string,
    props: string,
    id: string,
    parent: string  | null,
    text: string,
    index: number,
): i32

export declare function updateText(elementId: string, param: string): void;
export declare function updateAttribute(elementId: string, param: string): void;

export declare function updateList(elementId: string, _depsStr: string): void;
export declare function updateComponent(id: string, props: string): void;