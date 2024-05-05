/** Exported memory */
export declare const memory: WebAssembly.Memory;
/**
 * assembly/index/wasmParse
 * @param html_s `~lib/string/String`
 * @param templateKEY `~lib/string/String`
 * @returns `~lib/array/Array<assembly/index/CreateElement>`
 */
export declare function wasmParse(html_s: string, templateKEY: string): Array<__Internref5>;
/**
 * assembly/index/wasmRender
 * @param elems `~lib/array/Array<assembly/index/CreateElement>`
 * @returns `~lib/array/Array<assembly/index/Responsive>`
 */
export declare function wasmRender(elems: Array<__Internref5>): Array<__Internref10>;
/**
 * assembly/index/wasmPatch
 * @param current `~lib/array/Array<assembly/index/Responsive>`
 * @param updatesStr `~lib/string/String`
 */
export declare function wasmPatch(current: Array<__Internref10>, updatesStr: string): void;
/**
 * assembly/index/sum
 * @param d `~lib/array/Array<assembly/index/CreateElement>`
 * @returns `~lib/string/String`
 */
export declare function sum(d: Array<__Internref5>): string;
/** assembly/index/CreateElement */
declare class __Internref5 extends Number {
  private __nominal5: symbol;
  private __nominal0: symbol;
}
/** assembly/index/Responsive */
declare class __Internref10 extends Number {
  private __nominal10: symbol;
  private __nominal0: symbol;
}
