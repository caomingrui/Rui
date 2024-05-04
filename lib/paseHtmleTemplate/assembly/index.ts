import * as DOM from "./DOM";

const NoFlags = /*                                     */ 0b000000000000000000;
const UpdateTextFlags = /*                             */ 0b000000000000000001;
const UpdateAttributeFlags = /*                        */ 0b000000000000000010;

const UpdateForListFlags = /*                           */ 0b000000000000000100;
const UpdateForListTextFlags = /*                       */ 0b000000000000001000;
const UpdateForListAndAttributeFlags = /*               */ 0b000000000000000110;
// v-for 子节点 跳出标识
const JumpUpdateForChildFlags = /*                     */ 0b000000000000010000;
const UpdateComponentFlags = /*                        */ 0b000000000000100000;

let i: i32 = 0;
class CreateElement {

  public KEY: string = '__defaultKEY';
  public text: string | null = null;
  constructor(
      public tagName: string | null = null,
      public props: string = '',
      public child: CreateElement[] = [],
      public elementKEY: string = '__defaultKEY',
  ) {
    this.setKEY(elementKEY + '@@' + i.toString());
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


function createText(templateKEY: string, text: string): CreateElement {
  let e = new CreateElement("text", '', [], templateKEY);
  e.setText(text);
  return e;
}

function createTemplate(templateKEY: string, tem: string): CreateElement {
  let e = new CreateElement("template", '', [], templateKEY);
  e.setText(tem);
  return e;
}

class ParseIdentifier {
  constructor(
      public leftOpen: string = '<',
      public tagClose: string = '>',
      public rightOpen: string = '</',

      public templateLeft: string = '{',
      public templateRight: string = '}',
      public NULL: string = ' ',

      public LEFT: number = 1,
      public MIDDLE: number = 2,
      public RIGHT: number = 3,
  ) {}
}

class ElementStack {
  stack: CreateElement[] = [];
  index: i32 = 0;

  push (element: CreateElement): void {
    this.index += 1;
    this.stack.push(element);
  }

  pop(): CreateElement {
    this.index -= 1;
    return this.stack.pop();
  }

  lastStack(): CreateElement{
    let ind = this.index - 1 >=0 ? this.index - 1: 0;
    return this.stack[ind];
  }

  getLength(): i32 {
    return this.index;
  }
}

export function wasmParse(html_s: string, templateKEY: string): ElementStack {
  const Identifier = new ParseIdentifier();
  const stack = new ElementStack();
  let element = new CreateElement(null, '', [], templateKEY);

  let len = html_s.length;
  let elId: i32 = 0;
  let tag: null | string = null;
  let attr: null | string = null;
  let templateName: null | string = null;
  let child_text: string = "";
  let child_s: null | CreateElement[] = null;
  let openOrCloseState: number = Identifier.LEFT;

  for (let i = 0; i < len; i ++) {
    let char = unchecked(html_s.substring(i, i + 1));
    let nextChar = unchecked(html_s.substring(i + 1, i + 2));
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
        attr += (char === "'"? '"': char);
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
      child_text += char;
    }
  }

  return stack;
}



class Responsive {
  constructor(
      public type: string,
      public data: CreateElement
  ) {}
}

class LastElement {
  constructor(
      public tagName: string = '',
      public props: string = '',
      public KEY: string = '',
      public parent: string = '',
      public text: string = '',
      public index: i32 = 0
  ) {}

  update(
      tagName: string = '',
      props: string = '',
      KEY: string = '',
      parent: string = '',
      text: string = '',
      index: i32 = 0,
  ): void {
    this.tagName = tagName;
    this.props = props;
    this.KEY = KEY;
    this.parent = parent;
    this.text = text;
    this.index = index;
  }
}

let lastElement: LastElement = new LastElement();
function dfs(
    data: CreateElement,
    parent: string | null,
    index: i32,
    change: Responsive[]
): void {
  let tagName = unchecked(data.tagName);
  let props = unchecked(data.props);
  let child = unchecked(data.child);
  let KEY = unchecked(data.KEY);
  let text = unchecked(data.text)

  let len = child.length;
  let elemFlags = DOM.createElement(tagName || '', props, KEY, parent, text || '', index);

  let primaryFlags = elemFlags & (
      UpdateTextFlags | UpdateAttributeFlags |
      UpdateForListFlags | JumpUpdateForChildFlags | UpdateComponentFlags
  );

  lastElement.update(tagName || '', props, KEY, parent || '', text || '', index);

  switch(primaryFlags) {
    case UpdateTextFlags:
      change.push(new Responsive('text', data));
      break;
    case UpdateAttributeFlags:
      change.push(new Responsive('attr', data));
      break;
    case UpdateForListAndAttributeFlags:
    case UpdateForListFlags:
      change.push(new Responsive('list', data));
      break;
    case UpdateComponentFlags:
      change.push(new Responsive('component', data));
      break;
    case JumpUpdateForChildFlags:
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

export function wasmRender(elem: CreateElement): Responsive[] {
  let change: Responsive[] = [];
  DOM.startComponent(elem.KEY);
  dfs(elem, null, 0, change);
  DOM.endComponent(lastElement.tagName || '');
  return change;
}


export function wasmPatch(current: Responsive[], updatesStr: string): void {
  let updates = updatesStr.split('>>>').filter(l => !!l);
  return diff2(current, updates);
}


function diff2(current: Responsive[], updates: string[]): void {
  let len: i32 = current.length;
  for (let i = 0; i < len; i++) {
    let records = unchecked(current[i]);
    let type = records.type;
    let data = unchecked(records.data);
    let KEY = unchecked(data.KEY)

    if (updates.includes(KEY)) {

      if (type === 'text') {
        DOM.updateText(KEY, data.text || '');
        continue
      }
      else if (type === 'attr') {
        DOM.updateAttribute(KEY, data.props);
        continue
      }
      else if (type === 'list') {
        let l: string[] = [];
        for (let key= 0; key < updates.length; key ++) {
          if (updates[key] === KEY) {
            l.push(updates[key])
          }
        }
        DOM.updateList(KEY, l.join('>>>'));
        continue
      }
      else if (type === 'component') {
        DOM.updateComponent(KEY, data.props);
        continue
      }
      // switch(type) {
      //   case "text":
      //     DOM.updateText(KEY, data.text || '');
      //     break;
      //   case "attr":
      //     DOM.updateAttribute(KEY, data.props);
      //     break;
      //   case "list":
      //     let l: string[] = [];
      //     for (let key= 0; key < updates.length; key ++) {
      //       if (updates[key] === KEY) {
      //         l.push(updates[key])
      //       }
      //     }
      //     DOM.updateList(KEY, l.join('>>>'));
      //     break;
      //   case "component":
      //     DOM.updateComponent(KEY, data.props);
      //     break;
      //   default:
      //     break;
      // }
    }
  }
}

export const sum= (n : i32): i32 => {
  return n + 1;
}