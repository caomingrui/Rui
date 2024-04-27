import { DOM } from "../domBonding";
import { 
    JumpUpdateForChildFlags, 
    UpdateAttributeFlags, 
    UpdateForListAndAttributeFlags, 
    UpdateForListFlags, 
    UpdateTextFlags
} from "../proxyBonding/flages";

let i = 0;
class CreateElement {
    tagName: string | null
    props: string
    child: CreateElement[]
    KEY: string = '__defaultKEY';
    text: null | string = null;
    constructor(
        tagName: string | null = null,
        props: string = '',
        child: CreateElement[] = [],
        elementKEY = '__defaultKEY',
    ) {
        this.tagName = tagName;
        this.props = props;
        this.child = child;
        this.setKEY(elementKEY + '@@' + i);
        i += 1;
    }

    handleChangeTagName(name: string): void {
        this.tagName = name;
    }

    handleSetProps(props: string | null): void {
        props && (this.props = props);
    }

    pushChildList(c: CreateElement[]): void {
        this.child = this.child.concat(c);
    }

    pushSingleChild(c: CreateElement): void {
        this.child.push(c);
    }


    setKEY(k: string): void {
        this.KEY = k;
    }

    setText(text: string): void {
        this.text = text;
    }
}


function createText(templateKEY: string, text: string) {
    let e = new CreateElement("text", '', [], templateKEY);
    e.setText(text);
    return e;
}

function createTemplate(templateKEY: string, tem: string) {
    let e = new CreateElement("template", '', [], templateKEY);
    e.setText(tem);
    return e;
}

class ParseIdentifier {
    leftOpen = '<'
    tagClose = '>'
    rightOpen = '</'

    templateLeft = '{'
    templateRight = '}'
    NULL = ' '

    LEFT = 1
    MIDDLE = 2
    RIGHT = 3
}

class ElementStack {
    stack: CreateElement[] = [];
    index = 0;

    push (element: CreateElement) {
        // id += 1;
        this.index += 1;
        // element.setKEY(id)
        this.stack.push(element);
    }

    pop() {
        this.index -= 1;
        return this.stack.pop();
    }

    lastStack(){
        let ind = this.index - 1 >=0 ? this.index - 1: 0;
        return this.stack[ind];
    }

    getLength() {
        return this.index;
    }
}

export function wasmParse(html_s: string, templateKEY: string): ElementStack {
    const Identifier = new ParseIdentifier();
    const stack = new ElementStack();
    let element = new CreateElement(null, '', [], templateKEY);

    let len = html_s.length;
    let elId: number = 0;
    let tag: null | string = null;
    let attr: null | string = null;
    let templateName: null | string = null;
    let child_text = "";
    let child_s: null | CreateElement[] = null;
    let openOrCloseState = Identifier.LEFT;

    for (let i = 0; i < len; i ++) {
        let char = html_s.substring(i, i + 1);
        let nextChar = html_s.substring(i + 1, i + 2);
        // 左闭合
        if (char != Identifier.tagClose && openOrCloseState === Identifier.LEFT) {

            if (tag != null) {
                if (char != Identifier.NULL) {
                    tag += char;
                } else {
                    let element = stack.lastStack();
                    element.handleChangeTagName(tag);
                    attr = "";
                    tag = null;
                }
            }

            if (attr != null) {
                attr += char;
            }
        }

        if (templateName != null && char != Identifier.templateLeft && char != Identifier.templateRight) {
            templateName += char;
        }

        if (char === Identifier.templateLeft) {
            templateName = "";
        } else if (char === Identifier.templateRight) {
            let tem = templateName? templateName.trim(): "";
            // stack.lastStack().handleChangeTagName(tem);

            if (child_text != "") {
                child_s && child_s.push(
                    createText(templateKEY, child_text)
                );
                child_text = "";
            }
            child_s && child_s.push(
                createTemplate(templateKEY, tem)
            )

            templateName = null;
        }

        if (char === Identifier.leftOpen) {
            if (char + nextChar === Identifier.rightOpen) {
                openOrCloseState = Identifier.RIGHT;
                templateName = null;

                if (child_s) {
                    element.pushChildList(child_s);
                    child_s = []
                }

                if (child_text != "" && child_text.trim() != '') {
                    let lastStack = stack.lastStack();
                    lastStack.pushSingleChild(
                        createText(templateKEY, child_text.trim())
                    );
                    child_text = ""
                }
            } else {
                openOrCloseState = Identifier.LEFT;
                if (child_text != "" && child_text.trim() != '') {
                    let element = stack.lastStack();
                    element.pushSingleChild(
                        createText(templateKEY, child_text.trim())
                    );
                    child_text = ""
                }
            }

            if (openOrCloseState === Identifier.LEFT) {
                tag = "";
                elId += 1;
                element = new CreateElement(null, '', [], templateKEY);

                if (child_text.trim() != '') {
                    child_s && child_s.push(
                        createText(templateKEY, child_text)
                    );
                }
                child_text = "";
                if (child_s) {
                    let lastStack = stack.lastStack();
                    lastStack.pushChildList(child_s);
                    child_s = null
                }

                if (child_text.trim() === '') child_text = '';
                stack.push(element);
            }
        }
        else if (char === Identifier.tagClose) {
            if (openOrCloseState === Identifier.LEFT) {
                openOrCloseState = Identifier.MIDDLE;
                child_s = [];
                let element = stack.lastStack();
                if (tag) {
                    element.handleChangeTagName(tag);
                    tag = null;
                }
                element.handleSetProps(attr);
            } else {
                openOrCloseState = Identifier.MIDDLE;
                if (child_s == null) continue;
                if (stack.getLength() === 1) { continue; }
                let lastStack = stack.pop();
                let newStack = stack.lastStack();
                if (child_text) {
                    if (child_text.trim() != '') {
                        child_s.push(
                            createText(templateKEY, child_text)
                        );
                    }
                    child_text = "";
                }
                if (lastStack) {
                    lastStack.pushChildList(child_s);
                    newStack.pushSingleChild(lastStack);
                }
                child_s = [];
            }
            attr = null
        } else if (
            openOrCloseState === Identifier.MIDDLE &&
            templateName == null &&
            char != Identifier.templateLeft &&
            char != Identifier.templateRight
        ) {
            // if (!isOnlyNewlines(char)) {
            child_text += char;
            // }
        }
    }

    return stack;
}



export class Responsive {
    type
    data
    constructor(type: string, data: CreateElement) {
        this.type = type;
        this.data = data
    }
}

// let lastList = null;
function dfs(
    data: CreateElement,
    parent: string | null,
    index: number,
    change: Responsive[]
) {
    const {
        tagName,
        props,
        child,
        KEY,
        text
    } = data;

    let len = child.length;
    let elemFlags = DOM.createElement(tagName || '', props, KEY, parent, text || '', index);

    let primaryFlags = elemFlags & (UpdateTextFlags | UpdateAttributeFlags | UpdateForListFlags | JumpUpdateForChildFlags);
    // if (lastList && lastList.parent === parent) {
    //     console.log('child', data, lastList, parent, 'JumpUpdateForChildFlags--JumpUpdateForChildFlags');
    //     // DOM.find(lastList.KEY);
    //     lastList = null;
    // }

    // console.log(primaryFlags, UpdateForListFlags, lastList, data, parent, '==============================>>>')
    switch(primaryFlags) {
        case UpdateTextFlags:
            change.push(new Responsive('text', data));
            break;
        case UpdateAttributeFlags:
            change.push(new Responsive('attr', data));
            break;
        case UpdateForListAndAttributeFlags:
        case UpdateForListFlags:
            // lastList = {...data, parent};
            change.push(new Responsive('list', data));
            break;
        case JumpUpdateForChildFlags:

            // if (lastList) {
            //
            //     if (lastList.parent === parent) {
            //         // console.log('child', data, lastList, parent, 'JumpUpdateForChildFlags--JumpUpdateForChildFlags');
            //         // lastList = null;
            //     }
            // }
            break;
        default:
            break;
    }

    for (let i = 0; i < len; i ++) {
        dfs(
            child[i],
            KEY,
            i,
            change
        );
    }
}

export function wasmRender(elem: CreateElement) {
    let change: Responsive[] = [];
    // first render
    dfs(elem, null, 0, change);
    return change;
}


export function wasmPacth(current: Responsive[], updatesStr: string) {
    let updates = updatesStr.split('>>>').filter(l => l);
    return diff2(current, updates);
}


function diff2(current: Responsive[], updates: string[]) {
    let len = current.length;
    console.log(current, updates, 'diff')
    for (let i = 0; i < len; i++) {
        let { type, data } = current[i];

        if (updates.includes(data.KEY)) {

            switch(type) {
                case "text":
                    DOM.updateText(data.KEY, data.text || '');
                    break;
                case "attr":
                    DOM.updateAttribute(data.KEY, data.props);
                    break;
                case "list":
                    DOM.updateList(data.KEY, updates.filter(l => l != data.KEY).join('>>>'));
                    break;
            }
        }
    }
}