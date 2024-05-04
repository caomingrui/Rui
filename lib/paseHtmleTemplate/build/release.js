import { 
  startComponent,
  createElement,
  endComponent,
  updateText,
  updateAttribute,
  updateComponent
 } from "../../domBonding";
async function instantiate(module, imports = {}) {
  const __module0 = imports.DOM;
  const adaptedImports = {
    env: Object.assign(Object.create(globalThis), imports.env || {}, {
      abort(message, fileName, lineNumber, columnNumber) {
        // ~lib/builtins/abort(~lib/string/String | null?, ~lib/string/String | null?, u32?, u32?) => void
        message = __liftString(message >>> 0);
        fileName = __liftString(fileName >>> 0);
        lineNumber = lineNumber >>> 0;
        columnNumber = columnNumber >>> 0;
        (() => {
          // @external.js
          throw Error(`${message} in ${fileName}:${lineNumber}:${columnNumber}`);
        })();
      },
    }),
    DOM: Object.assign(Object.create(__module0), {
      startComponent(elementId) {
        // assembly/DOM/startComponent(~lib/string/String) => void
        elementId = __liftString(elementId >>> 0);
        __module0.startComponent(elementId);
      },
      createElement(tag, props, id, parent, text, index) {
        // assembly/DOM/createElement(~lib/string/String, ~lib/string/String, ~lib/string/String, ~lib/string/String | null, ~lib/string/String, f64) => i32
        tag = __liftString(tag >>> 0);
        props = __liftString(props >>> 0);
        id = __liftString(id >>> 0);
        parent = __liftString(parent >>> 0);
        text = __liftString(text >>> 0);
        return __module0.createElement(tag, props, id, parent, text, index);
      },
      endComponent(elementId) {
        // assembly/DOM/endComponent(~lib/string/String) => void
        elementId = __liftString(elementId >>> 0);
        __module0.endComponent(elementId);
      },
      updateText(elementId, param) {
        // assembly/DOM/updateText(~lib/string/String, ~lib/string/String) => void
        elementId = __liftString(elementId >>> 0);
        param = __liftString(param >>> 0);
        __module0.updateText(elementId, param);
      },
      updateAttribute(elementId, param) {
        // assembly/DOM/updateAttribute(~lib/string/String, ~lib/string/String) => void
        elementId = __liftString(elementId >>> 0);
        param = __liftString(param >>> 0);
        __module0.updateAttribute(elementId, param);
      },
      updateList(elementId, _depsStr) {
        // assembly/DOM/updateList(~lib/string/String, ~lib/string/String) => void
        elementId = __liftString(elementId >>> 0);
        _depsStr = __liftString(_depsStr >>> 0);
        __module0.updateList(elementId, _depsStr);
      },
      updateComponent(id, props) {
        // assembly/DOM/updateComponent(~lib/string/String, ~lib/string/String) => void
        id = __liftString(id >>> 0);
        props = __liftString(props >>> 0);
        __module0.updateComponent(id, props);
      },
    }),
  };
  const { exports } = await WebAssembly.instantiate(module, adaptedImports);
  const memory = exports.memory || imports.env.memory;
  const adaptedExports = Object.setPrototypeOf({
    wasmParse(html_s, templateKEY) {
      // assembly/index/wasmParse(~lib/string/String, ~lib/string/String) => assembly/index/ElementStack
      html_s = __retain(__lowerString(html_s) || __notnull());
      templateKEY = __lowerString(templateKEY) || __notnull();
      try {
        return __liftRecord6(exports.wasmParse(html_s, templateKEY) >>> 0);
      } finally {
        __release(html_s);
      }
    },
    wasmRender(elem) {
      // assembly/index/wasmRender(assembly/index/CreateElement) => ~lib/array/Array<assembly/index/Responsive>
      elem = __lowerInternref(elem) || __notnull();
      return __liftArray(pointer => __liftInternref(__getU32(pointer)), 2, exports.wasmRender(elem) >>> 0);
    },
    wasmPatch(current, updatesStr) {
      // assembly/index/wasmPatch(~lib/array/Array<assembly/index/Responsive>, ~lib/string/String) => void
      current = __retain(__lowerArray((pointer, value) => { __setU32(pointer, __lowerInternref(value) || __notnull()); }, 12, 2, current) || __notnull());
      updatesStr = __lowerString(updatesStr) || __notnull();
      try {
        exports.wasmPatch(current, updatesStr);
      } finally {
        __release(current);
      }
    },
    sum: {
      // assembly/index/sum: (i32) => i32
      valueOf() { return this.value; },
      get value() {
        return __liftInternref(exports.sum.value >>> 0);
      }
    },
  }, exports);
  function __liftRecord6(pointer) {
    // assembly/index/ElementStack
    // Hint: Opt-out from lifting as a record by providing an empty constructor
    if (!pointer) return null;
    return {
      stack: __liftArray(pointer => __liftInternref(__getU32(pointer)), 2, __getU32(pointer + 0)),
      index: __getI32(pointer + 4),
    };
  }
  function __liftString(pointer) {
    if (!pointer) return null;
    const
      end = pointer + new Uint32Array(memory.buffer)[pointer - 4 >>> 2] >>> 1,
      memoryU16 = new Uint16Array(memory.buffer);
    let
      start = pointer >>> 1,
      string = "";
    while (end - start > 1024) string += String.fromCharCode(...memoryU16.subarray(start, start += 1024));
    return string + String.fromCharCode(...memoryU16.subarray(start, end));
  }
  function __lowerString(value) {
    if (value == null) return 0;
    const
      length = value.length,
      pointer = exports.__new(length << 1, 2) >>> 0,
      memoryU16 = new Uint16Array(memory.buffer);
    for (let i = 0; i < length; ++i) memoryU16[(pointer >>> 1) + i] = value.charCodeAt(i);
    return pointer;
  }
  function __liftArray(liftElement, align, pointer) {
    if (!pointer) return null;
    const
      dataStart = __getU32(pointer + 4),
      length = __dataview.getUint32(pointer + 12, true),
      values = new Array(length);
    for (let i = 0; i < length; ++i) values[i] = liftElement(dataStart + (i << align >>> 0));
    return values;
  }
  function __lowerArray(lowerElement, id, align, values) {
    if (values == null) return 0;
    const
      length = values.length,
      buffer = exports.__pin(exports.__new(length << align, 1)) >>> 0,
      header = exports.__pin(exports.__new(16, id)) >>> 0;
    __setU32(header + 0, buffer);
    __dataview.setUint32(header + 4, buffer, true);
    __dataview.setUint32(header + 8, length << align, true);
    __dataview.setUint32(header + 12, length, true);
    for (let i = 0; i < length; ++i) lowerElement(buffer + (i << align >>> 0), values[i]);
    exports.__unpin(buffer);
    exports.__unpin(header);
    return header;
  }
  class Internref extends Number {}
  const registry = new FinalizationRegistry(__release);
  function __liftInternref(pointer) {
    if (!pointer) return null;
    const sentinel = new Internref(__retain(pointer));
    registry.register(sentinel, pointer);
    return sentinel;
  }
  function __lowerInternref(value) {
    if (value == null) return 0;
    if (value instanceof Internref) return value.valueOf();
    throw TypeError("internref expected");
  }
  const refcounts = new Map();
  function __retain(pointer) {
    if (pointer) {
      const refcount = refcounts.get(pointer);
      if (refcount) refcounts.set(pointer, refcount + 1);
      else refcounts.set(exports.__pin(pointer), 1);
    }
    return pointer;
  }
  function __release(pointer) {
    if (pointer) {
      const refcount = refcounts.get(pointer);
      if (refcount === 1) exports.__unpin(pointer), refcounts.delete(pointer);
      else if (refcount) refcounts.set(pointer, refcount - 1);
      else throw Error(`invalid refcount '${refcount}' for reference '${pointer}'`);
    }
  }
  function __notnull() {
    throw TypeError("value must not be null");
  }
  let __dataview = new DataView(memory.buffer);
  function __setU32(pointer, value) {
    try {
      __dataview.setUint32(pointer, value, true);
    } catch {
      __dataview = new DataView(memory.buffer);
      __dataview.setUint32(pointer, value, true);
    }
  }
  function __getI32(pointer) {
    try {
      return __dataview.getInt32(pointer, true);
    } catch {
      __dataview = new DataView(memory.buffer);
      return __dataview.getInt32(pointer, true);
    }
  }
  function __getU32(pointer) {
    try {
      return __dataview.getUint32(pointer, true);
    } catch {
      __dataview = new DataView(memory.buffer);
      return __dataview.getUint32(pointer, true);
    }
  }
  return adaptedExports;
}

export const {
  memory,
  wasmParse,
  wasmRender,
  wasmPatch,
  sum,
} = await (async url => instantiate(
  await (async () => {
    try { return await globalThis.WebAssembly.compileStreaming(globalThis.fetch(url)); }
    catch { return globalThis.WebAssembly.compile(await (await import("node:fs/promises")).readFile(url)); }
  })(), {
    DOM: __maybeDefault({
      startComponent,
      createElement,
      endComponent,
      updateText,
      updateAttribute,
      updateComponent
    }),
  }
))(new URL("release.wasm", import.meta.url));
function __maybeDefault(module) {
  return typeof module.default === "object" && Object.keys(module).length == 1
    ? module.default
    : module;
}
