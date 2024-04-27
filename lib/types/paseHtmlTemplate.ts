export type ParseTemplateThis = {
    template: string[];
    originTemplate: string;
    data: any;
    starIndex: number;
    init: (str: string, data: any, starIndex?: number) => void;
    parseTemplateParam: (template: string) => string[];
    getFirstParam: (str?: string) => string;
    getMatchData: () => any;
};