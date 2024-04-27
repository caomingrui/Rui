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