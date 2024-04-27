export type ForContent = { key: string, val: string, id: string }
export type Dep = {
    target: any,
    key: string,
    value: any,
    content: Partial<ForContent>,
    id: string
}

export type ListTemplateDepType = {
    text: string
    lineIndex: number
    listIndex: number
}

export type ElementType = {
    tag: string
    props: string
    id: string
    parent: string
    text: string
    index: number

    isResponsiveElem?: boolean
    originTag?: string
    flags?: string
    listIndex?: number
}

export type ListTemplateListType = {
    list: ListTemplateDepType[]
    add: (dep: ListTemplateDepType) => void
    has: (dep: ListTemplateDepType) => boolean
}

export type ReactiveEffectType = {
    deps: Dep[]
    updateDeps: Dep[],
    run: () => void
    addDeps: (dep: Dep) => void
    addUpdateDeps: (depKey: string) => void
    clearUpdateDeps: () => void
}


export type ComponentMapType = {
    data: any
    methods: any
    elem: any
    deps: Set<any>
    listDeps: Map<string, ListTemplateListType>
}