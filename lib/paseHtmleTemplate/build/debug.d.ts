/** Exported memory */
export declare const memory: WebAssembly.Memory;
/**
 * assembly/index/wasmParse
 * @param html_s `~lib/string/String`
 * @param templateKEY `~lib/string/String`
 * @returns `assembly/index/ElementStack`
 */
export declare function wasmParse(html_s: string, templateKEY: string): __Record6<never>;
/**
 * assembly/index/wasmRender
 * @param elem `assembly/index/CreateElement`
 * @returns `~lib/array/Array<assembly/index/Responsive>`
 */
export declare function wasmRender(elem: __Internref7): Array<__Internref11>;
/**
 * assembly/index/wasmPatch
 * @param current `~lib/array/Array<assembly/index/Responsive>`
 * @param updatesStr `~lib/string/String`
 */
export declare function wasmPatch(current: Array<__Internref11>, updatesStr: string): void;
/** assembly/index/sum */
export declare const sum: {
  /** @type `(i32) => i32` */
  get value(): __Internref5
};
/** assembly/index/CreateElement */
declare class __Internref7 extends Number {
  private __nominal7: symbol;
  private __nominal0: symbol;
}
/** assembly/index/ElementStack */
declare interface __Record6<TOmittable> {
  /** @type `~lib/array/Array<assembly/index/CreateElement>` */
  stack: Array<__Internref7>;
  /** @type `i32` */
  index: number | TOmittable;
}
/** assembly/index/Responsive */
declare class __Internref11 extends Number {
  private __nominal11: symbol;
  private __nominal0: symbol;
}
/** ~lib/function/Function<%28i32%29=>i32> */
declare class __Internref5 extends Number {
  private __nominal5: symbol;
  private __nominal0: symbol;
}
