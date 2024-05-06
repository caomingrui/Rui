export type ParseTemplateThis = {
    template: string[];
    originTemplate: string;
    data: any;
    listIndex: number | null;


    hasFunBindInForContent: (s: string) => boolean;
    calcMatchData: (params: string[]) => any;
    getFunBindParams: (itemParams: string[]) => any[];
    init: (str: string, data: any, listIndex?: number) => void;
    parseTemplateParam: (template: string) => string[];
    getFirstParam: (str?: string) => string;
    getMatchData: () => any;
};


export type ElementDict = {
    match: (elem: RuiElement, _data: any) => boolean;
    collectCallback: (content: {
        actions: ElementDict,
        payload: { el: RuiElement, child: any[] } & any
    }) => void
}


type ElementAttr = {
    // 修饰符标识
    __childs?: ElementDict
    // id
    __KEY: string
    // 组件标识
    __type?: Symbol
    // flags 响应式标识
    __is_template?: number
    // v-for
    __v_for?: boolean
    // 列表索引
    listIndex?: number
    // text 指向的容器id
    __removeTarget_key?: string
}

export type RuiElement = ElementAttr & Element;


export type RuiText = ElementAttr & Text