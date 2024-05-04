(module
 (type $0 (func (param i32 i32)))
 (type $1 (func (param i32) (result i32)))
 (type $2 (func (param i32 i32) (result i32)))
 (type $3 (func (param i32 i32 i32) (result i32)))
 (type $4 (func (param i32)))
 (type $5 (func))
 (type $6 (func (param i32 i32 i32)))
 (type $7 (func (param i32 i32 i32 i32)))
 (type $8 (func (param i32 f64)))
 (type $9 (func (param i32) (result f64)))
 (type $10 (func (param i32 i32 i32 i32 i32) (result i32)))
 (type $11 (func (param i32 i32 i64) (result i32)))
 (type $12 (func (result i32)))
 (type $13 (func (param i32 i64 i32)))
 (type $14 (func (param i64 i32) (result i32)))
 (type $15 (func (param i32 i64 i32 i32)))
 (type $16 (func (param i32 i32 i32 i32 i32 f64) (result i32)))
 (type $17 (func (param i32 i32 i32 i32 i32 i32 i32) (result i32)))
 (type $18 (func (param i32 i32 i32 i32 i32 i32 i32 f64 f64 f64) (result i32)))
 (type $19 (func (param i32 i32 i32 i32 i32 i32 i32)))
 (type $20 (func (param i32 i32 i32 i32) (result i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (import "DOM" "startComponent" (func $assembly/DOM/startComponent (param i32)))
 (import "DOM" "createElement" (func $assembly/DOM/createElement (param i32 i32 i32 i32 i32 f64) (result i32)))
 (import "DOM" "endComponent" (func $assembly/DOM/endComponent (param i32)))
 (import "DOM" "updateText" (func $assembly/DOM/updateText (param i32 i32)))
 (import "DOM" "updateAttribute" (func $assembly/DOM/updateAttribute (param i32 i32)))
 (import "DOM" "updateList" (func $assembly/DOM/updateList (param i32 i32)))
 (import "DOM" "updateComponent" (func $assembly/DOM/updateComponent (param i32 i32)))
 (global $assembly/index/NoFlags i32 (i32.const 0))
 (global $assembly/index/UpdateTextFlags i32 (i32.const 1))
 (global $assembly/index/UpdateAttributeFlags i32 (i32.const 2))
 (global $assembly/index/UpdateForListFlags i32 (i32.const 4))
 (global $assembly/index/UpdateForListTextFlags i32 (i32.const 8))
 (global $assembly/index/UpdateForListAndAttributeFlags i32 (i32.const 6))
 (global $assembly/index/JumpUpdateForChildFlags i32 (i32.const 16))
 (global $assembly/index/UpdateComponentFlags i32 (i32.const 32))
 (global $assembly/index/i (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/total (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/threshold (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/state (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/visitCount (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/pinSpace (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/iter (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/toSpace (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/white (mut i32) (i32.const 0))
 (global $~lib/shared/runtime/Runtime.Stub i32 (i32.const 0))
 (global $~lib/shared/runtime/Runtime.Minimal i32 (i32.const 1))
 (global $~lib/shared/runtime/Runtime.Incremental i32 (i32.const 2))
 (global $~lib/rt/itcms/fromSpace (mut i32) (i32.const 0))
 (global $~lib/rt/tlsf/ROOT (mut i32) (i32.const 0))
 (global $~lib/native/ASC_LOW_MEMORY_LIMIT i32 (i32.const 0))
 (global $assembly/index/lastElement (mut i32) (i32.const 0))
 (global $assembly/index/sum i32 (i32.const 464))
 (global $~lib/native/ASC_SHRINK_LEVEL i32 (i32.const 0))
 (global $~lib/native/ASC_RUNTIME i32 (i32.const 2))
 (global $~lib/builtins/i32.MAX_VALUE i32 (i32.const 2147483647))
 (global $~argumentsLength (mut i32) (i32.const 0))
 (global $~lib/rt/__rtti_base i32 (i32.const 3568))
 (global $~lib/memory/__data_end i32 (i32.const 3632))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 36400))
 (global $~lib/memory/__heap_base i32 (i32.const 36400))
 (memory $0 1)
 (data $0 (i32.const 12) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00(\00\00\00A\00l\00l\00o\00c\00a\00t\00i\00o\00n\00 \00t\00o\00o\00 \00l\00a\00r\00g\00e\00\00\00\00\00")
 (data $1 (i32.const 76) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00 \00\00\00~\00l\00i\00b\00/\00r\00t\00/\00i\00t\00c\00m\00s\00.\00t\00s\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $2 (i32.const 144) "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $3 (i32.const 176) "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $4 (i32.const 204) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00$\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e\00\00\00\00\00\00\00\00\00")
 (data $5 (i32.const 268) ",\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\14\00\00\00~\00l\00i\00b\00/\00r\00t\00.\00t\00s\00\00\00\00\00\00\00\00\00")
 (data $6 (i32.const 320) "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $7 (i32.const 348) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00t\00l\00s\00f\00.\00t\00s\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $8 (i32.const 412) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $9 (i32.const 444) "\1c\00\00\00\00\00\00\00\00\00\00\00\05\00\00\00\08\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00")
 (data $10 (i32.const 476) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\02\00\00\00<\00\00\00\00\00\00\00\00\00\00\00")
 (data $11 (i32.const 508) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\02\00\00\00>\00\00\00\00\00\00\00\00\00\00\00")
 (data $12 (i32.const 540) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\04\00\00\00<\00/\00\00\00\00\00\00\00\00\00")
 (data $13 (i32.const 572) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\02\00\00\00{\00\00\00\00\00\00\00\00\00\00\00")
 (data $14 (i32.const 604) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\02\00\00\00}\00\00\00\00\00\00\00\00\00\00\00")
 (data $15 (i32.const 636) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\02\00\00\00 \00\00\00\00\00\00\00\00\00\00\00")
 (data $16 (i32.const 668) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $17 (i32.const 700) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\04\00\00\00@\00@\00\00\00\00\00\00\00\00\00")
 (data $18 (i32.const 732) "|\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00d\00\00\00t\00o\00S\00t\00r\00i\00n\00g\00(\00)\00 \00r\00a\00d\00i\00x\00 \00a\00r\00g\00u\00m\00e\00n\00t\00 \00m\00u\00s\00t\00 \00b\00e\00 \00b\00e\00t\00w\00e\00e\00n\00 \002\00 \00a\00n\00d\00 \003\006\00\00\00\00\00\00\00\00\00")
 (data $19 (i32.const 860) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00&\00\00\00~\00l\00i\00b\00/\00u\00t\00i\00l\00/\00n\00u\00m\00b\00e\00r\00.\00t\00s\00\00\00\00\00\00\00")
 (data $20 (i32.const 924) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\02\00\00\000\00\00\00\00\00\00\00\00\00\00\00")
 (data $21 (i32.const 956) "0\000\000\001\000\002\000\003\000\004\000\005\000\006\000\007\000\008\000\009\001\000\001\001\001\002\001\003\001\004\001\005\001\006\001\007\001\008\001\009\002\000\002\001\002\002\002\003\002\004\002\005\002\006\002\007\002\008\002\009\003\000\003\001\003\002\003\003\003\004\003\005\003\006\003\007\003\008\003\009\004\000\004\001\004\002\004\003\004\004\004\005\004\006\004\007\004\008\004\009\005\000\005\001\005\002\005\003\005\004\005\005\005\006\005\007\005\008\005\009\006\000\006\001\006\002\006\003\006\004\006\005\006\006\006\007\006\008\006\009\007\000\007\001\007\002\007\003\007\004\007\005\007\006\007\007\007\008\007\009\008\000\008\001\008\002\008\003\008\004\008\005\008\006\008\007\008\008\008\009\009\000\009\001\009\002\009\003\009\004\009\005\009\006\009\007\009\008\009\009\00")
 (data $22 (i32.const 1356) "\1c\04\00\00\00\00\00\00\00\00\00\00\02\00\00\00\00\04\00\000\000\000\001\000\002\000\003\000\004\000\005\000\006\000\007\000\008\000\009\000\00a\000\00b\000\00c\000\00d\000\00e\000\00f\001\000\001\001\001\002\001\003\001\004\001\005\001\006\001\007\001\008\001\009\001\00a\001\00b\001\00c\001\00d\001\00e\001\00f\002\000\002\001\002\002\002\003\002\004\002\005\002\006\002\007\002\008\002\009\002\00a\002\00b\002\00c\002\00d\002\00e\002\00f\003\000\003\001\003\002\003\003\003\004\003\005\003\006\003\007\003\008\003\009\003\00a\003\00b\003\00c\003\00d\003\00e\003\00f\004\000\004\001\004\002\004\003\004\004\004\005\004\006\004\007\004\008\004\009\004\00a\004\00b\004\00c\004\00d\004\00e\004\00f\005\000\005\001\005\002\005\003\005\004\005\005\005\006\005\007\005\008\005\009\005\00a\005\00b\005\00c\005\00d\005\00e\005\00f\006\000\006\001\006\002\006\003\006\004\006\005\006\006\006\007\006\008\006\009\006\00a\006\00b\006\00c\006\00d\006\00e\006\00f\007\000\007\001\007\002\007\003\007\004\007\005\007\006\007\007\007\008\007\009\007\00a\007\00b\007\00c\007\00d\007\00e\007\00f\008\000\008\001\008\002\008\003\008\004\008\005\008\006\008\007\008\008\008\009\008\00a\008\00b\008\00c\008\00d\008\00e\008\00f\009\000\009\001\009\002\009\003\009\004\009\005\009\006\009\007\009\008\009\009\009\00a\009\00b\009\00c\009\00d\009\00e\009\00f\00a\000\00a\001\00a\002\00a\003\00a\004\00a\005\00a\006\00a\007\00a\008\00a\009\00a\00a\00a\00b\00a\00c\00a\00d\00a\00e\00a\00f\00b\000\00b\001\00b\002\00b\003\00b\004\00b\005\00b\006\00b\007\00b\008\00b\009\00b\00a\00b\00b\00b\00c\00b\00d\00b\00e\00b\00f\00c\000\00c\001\00c\002\00c\003\00c\004\00c\005\00c\006\00c\007\00c\008\00c\009\00c\00a\00c\00b\00c\00c\00c\00d\00c\00e\00c\00f\00d\000\00d\001\00d\002\00d\003\00d\004\00d\005\00d\006\00d\007\00d\008\00d\009\00d\00a\00d\00b\00d\00c\00d\00d\00d\00e\00d\00f\00e\000\00e\001\00e\002\00e\003\00e\004\00e\005\00e\006\00e\007\00e\008\00e\009\00e\00a\00e\00b\00e\00c\00e\00d\00e\00e\00e\00f\00f\000\00f\001\00f\002\00f\003\00f\004\00f\005\00f\006\00f\007\00f\008\00f\009\00f\00a\00f\00b\00f\00c\00f\00d\00f\00e\00f\00f\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $23 (i32.const 2412) "\\\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00H\00\00\000\001\002\003\004\005\006\007\008\009\00a\00b\00c\00d\00e\00f\00g\00h\00i\00j\00k\00l\00m\00n\00o\00p\00q\00r\00s\00t\00u\00v\00w\00x\00y\00z\00\00\00\00\00")
 (data $24 (i32.const 2508) ",\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\18\00\00\00_\00_\00d\00e\00f\00a\00u\00l\00t\00K\00E\00Y\00\00\00\00\00")
 (data $25 (i32.const 2556) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $26 (i32.const 2588) ",\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\1a\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s\00\00\00")
 (data $27 (i32.const 2636) "|\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00^\00\00\00E\00l\00e\00m\00e\00n\00t\00 \00t\00y\00p\00e\00 \00m\00u\00s\00t\00 \00b\00e\00 \00n\00u\00l\00l\00a\00b\00l\00e\00 \00i\00f\00 \00a\00r\00r\00a\00y\00 \00i\00s\00 \00h\00o\00l\00e\00y\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $28 (i32.const 2764) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\02\00\00\00\'\00\00\00\00\00\00\00\00\00\00\00")
 (data $29 (i32.const 2796) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\02\00\00\00\"\00\00\00\00\00\00\00\00\00\00\00")
 (data $30 (i32.const 2828) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\08\00\00\00t\00e\00x\00t\00\00\00\00\00")
 (data $31 (i32.const 2860) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $32 (i32.const 2892) ",\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\1c\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00l\00e\00n\00g\00t\00h\00")
 (data $33 (i32.const 2940) ",\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\10\00\00\00t\00e\00m\00p\00l\00a\00t\00e\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $34 (i32.const 2988) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $35 (i32.const 3020) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $36 (i32.const 3052) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $37 (i32.const 3084) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $38 (i32.const 3116) ",\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\1c\00\00\00A\00r\00r\00a\00y\00 \00i\00s\00 \00e\00m\00p\00t\00y\00")
 (data $39 (i32.const 3164) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $40 (i32.const 3196) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $41 (i32.const 3228) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\08\00\00\00a\00t\00t\00r\00\00\00\00\00")
 (data $42 (i32.const 3260) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\08\00\00\00l\00i\00s\00t\00\00\00\00\00")
 (data $43 (i32.const 3292) ",\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\12\00\00\00c\00o\00m\00p\00o\00n\00e\00n\00t\00\00\00\00\00\00\00\00\00\00\00")
 (data $44 (i32.const 3340) "\1c\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00\06\00\00\00>\00>\00>\00\00\00\00\00\00\00")
 (data $45 (i32.const 3372) "\1c\00\00\00\00\00\00\00\00\00\00\00\0e\00\00\00\08\00\00\00\02\00\00\00\00\00\00\00\00\00\00\00")
 (data $46 (i32.const 3404) "\1c\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data $47 (i32.const 3436) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00*\00\00\00O\00b\00j\00e\00c\00t\00 \00a\00l\00r\00e\00a\00d\00y\00 \00p\00i\00n\00n\00e\00d\00\00\00")
 (data $48 (i32.const 3500) "<\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00(\00\00\00O\00b\00j\00e\00c\00t\00 \00i\00s\00 \00n\00o\00t\00 \00p\00i\00n\00n\00e\00d\00\00\00\00\00")
 (data $49 (i32.const 3568) "\0f\00\00\00 \00\00\00 \00\00\00 \00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02A\00\00\00\00\00\00\02\t\00\00\00\00\00\00\02A\00\00\02A\00\00\00\00\00\00")
 (table $0 3 3 funcref)
 (elem $0 (i32.const 1) $start:assembly/index~anonymous|0 $assembly/index/wasmPatch~anonymous|0)
 (export "sum" (global $assembly/index/sum))
 (export "__new" (func $~lib/rt/itcms/__new))
 (export "__pin" (func $~lib/rt/itcms/__pin))
 (export "__unpin" (func $~lib/rt/itcms/__unpin))
 (export "__collect" (func $~lib/rt/itcms/__collect))
 (export "__rtti_base" (global $~lib/rt/__rtti_base))
 (export "memory" (memory $0))
 (export "wasmParse" (func $export:assembly/index/wasmParse))
 (export "wasmRender" (func $export:assembly/index/wasmRender))
 (export "wasmPatch" (func $export:assembly/index/wasmPatch))
 (start $~start)
 (func $~lib/rt/itcms/Object#set:nextWithColor (param $this i32) (param $nextWithColor i32)
  local.get $this
  local.get $nextWithColor
  i32.store offset=4
 )
 (func $~lib/rt/itcms/Object#set:prev (param $this i32) (param $prev i32)
  local.get $this
  local.get $prev
  i32.store offset=8
 )
 (func $~lib/rt/itcms/initLazy (param $space i32) (result i32)
  local.get $space
  local.get $space
  call $~lib/rt/itcms/Object#set:nextWithColor
  local.get $space
  local.get $space
  call $~lib/rt/itcms/Object#set:prev
  local.get $space
  return
 )
 (func $~lib/rt/itcms/Object#get:nextWithColor (param $this i32) (result i32)
  local.get $this
  i32.load offset=4
 )
 (func $~lib/rt/itcms/Object#get:next (param $this i32) (result i32)
  local.get $this
  call $~lib/rt/itcms/Object#get:nextWithColor
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  return
 )
 (func $~lib/rt/itcms/Object#get:color (param $this i32) (result i32)
  local.get $this
  call $~lib/rt/itcms/Object#get:nextWithColor
  i32.const 3
  i32.and
  return
 )
 (func $~lib/rt/itcms/visitRoots (param $cookie i32)
  (local $pn i32)
  (local $iter i32)
  local.get $cookie
  call $~lib/rt/__visit_globals
  global.get $~lib/rt/itcms/pinSpace
  local.set $pn
  local.get $pn
  call $~lib/rt/itcms/Object#get:next
  local.set $iter
  loop $while-continue|0
   local.get $iter
   local.get $pn
   i32.ne
   if
    i32.const 1
    drop
    local.get $iter
    call $~lib/rt/itcms/Object#get:color
    i32.const 3
    i32.eq
    i32.eqz
    if
     i32.const 0
     i32.const 96
     i32.const 160
     i32.const 16
     call $~lib/builtins/abort
     unreachable
    end
    local.get $iter
    i32.const 20
    i32.add
    local.get $cookie
    call $~lib/rt/__visit_members
    local.get $iter
    call $~lib/rt/itcms/Object#get:next
    local.set $iter
    br $while-continue|0
   end
  end
 )
 (func $~lib/rt/itcms/Object#set:color (param $this i32) (param $color i32)
  local.get $this
  local.get $this
  call $~lib/rt/itcms/Object#get:nextWithColor
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  local.get $color
  i32.or
  call $~lib/rt/itcms/Object#set:nextWithColor
 )
 (func $~lib/rt/itcms/Object#get:prev (param $this i32) (result i32)
  local.get $this
  i32.load offset=8
 )
 (func $~lib/rt/itcms/Object#set:next (param $this i32) (param $obj i32)
  local.get $this
  local.get $obj
  local.get $this
  call $~lib/rt/itcms/Object#get:nextWithColor
  i32.const 3
  i32.and
  i32.or
  call $~lib/rt/itcms/Object#set:nextWithColor
 )
 (func $~lib/rt/itcms/Object#unlink (param $this i32)
  (local $next i32)
  (local $prev i32)
  local.get $this
  call $~lib/rt/itcms/Object#get:next
  local.set $next
  local.get $next
  i32.const 0
  i32.eq
  if
   i32.const 1
   drop
   local.get $this
   call $~lib/rt/itcms/Object#get:prev
   i32.const 0
   i32.eq
   if (result i32)
    local.get $this
    global.get $~lib/memory/__heap_base
    i32.lt_u
   else
    i32.const 0
   end
   i32.eqz
   if
    i32.const 0
    i32.const 96
    i32.const 128
    i32.const 18
    call $~lib/builtins/abort
    unreachable
   end
   return
  end
  local.get $this
  call $~lib/rt/itcms/Object#get:prev
  local.set $prev
  i32.const 1
  drop
  local.get $prev
  i32.eqz
  if
   i32.const 0
   i32.const 96
   i32.const 132
   i32.const 16
   call $~lib/builtins/abort
   unreachable
  end
  local.get $next
  local.get $prev
  call $~lib/rt/itcms/Object#set:prev
  local.get $prev
  local.get $next
  call $~lib/rt/itcms/Object#set:next
 )
 (func $~lib/rt/itcms/Object#get:rtId (param $this i32) (result i32)
  local.get $this
  i32.load offset=12
 )
 (func $~lib/shared/typeinfo/Typeinfo#get:flags (param $this i32) (result i32)
  local.get $this
  i32.load
 )
 (func $~lib/rt/__typeinfo (param $id i32) (result i32)
  (local $ptr i32)
  global.get $~lib/rt/__rtti_base
  local.set $ptr
  local.get $id
  local.get $ptr
  i32.load
  i32.gt_u
  if
   i32.const 224
   i32.const 288
   i32.const 21
   i32.const 28
   call $~lib/builtins/abort
   unreachable
  end
  local.get $ptr
  i32.const 4
  i32.add
  local.get $id
  i32.const 4
  i32.mul
  i32.add
  call $~lib/shared/typeinfo/Typeinfo#get:flags
  return
 )
 (func $~lib/rt/itcms/Object#get:isPointerfree (param $this i32) (result i32)
  (local $rtId i32)
  local.get $this
  call $~lib/rt/itcms/Object#get:rtId
  local.set $rtId
  local.get $rtId
  i32.const 2
  i32.le_u
  if (result i32)
   i32.const 1
  else
   local.get $rtId
   call $~lib/rt/__typeinfo
   i32.const 32
   i32.and
   i32.const 0
   i32.ne
  end
  return
 )
 (func $~lib/rt/itcms/Object#linkTo (param $this i32) (param $list i32) (param $withColor i32)
  (local $prev i32)
  local.get $list
  call $~lib/rt/itcms/Object#get:prev
  local.set $prev
  local.get $this
  local.get $list
  local.get $withColor
  i32.or
  call $~lib/rt/itcms/Object#set:nextWithColor
  local.get $this
  local.get $prev
  call $~lib/rt/itcms/Object#set:prev
  local.get $prev
  local.get $this
  call $~lib/rt/itcms/Object#set:next
  local.get $list
  local.get $this
  call $~lib/rt/itcms/Object#set:prev
 )
 (func $~lib/rt/itcms/Object#makeGray (param $this i32)
  (local $1 i32)
  local.get $this
  global.get $~lib/rt/itcms/iter
  i32.eq
  if
   local.get $this
   call $~lib/rt/itcms/Object#get:prev
   local.tee $1
   i32.eqz
   if (result i32)
    i32.const 0
    i32.const 96
    i32.const 148
    i32.const 30
    call $~lib/builtins/abort
    unreachable
   else
    local.get $1
   end
   global.set $~lib/rt/itcms/iter
  end
  local.get $this
  call $~lib/rt/itcms/Object#unlink
  local.get $this
  global.get $~lib/rt/itcms/toSpace
  local.get $this
  call $~lib/rt/itcms/Object#get:isPointerfree
  if (result i32)
   global.get $~lib/rt/itcms/white
   i32.eqz
  else
   i32.const 2
  end
  call $~lib/rt/itcms/Object#linkTo
 )
 (func $~lib/rt/itcms/__visit (param $ptr i32) (param $cookie i32)
  (local $obj i32)
  local.get $ptr
  i32.eqz
  if
   return
  end
  local.get $ptr
  i32.const 20
  i32.sub
  local.set $obj
  i32.const 0
  drop
  local.get $obj
  call $~lib/rt/itcms/Object#get:color
  global.get $~lib/rt/itcms/white
  i32.eq
  if
   local.get $obj
   call $~lib/rt/itcms/Object#makeGray
   global.get $~lib/rt/itcms/visitCount
   i32.const 1
   i32.add
   global.set $~lib/rt/itcms/visitCount
  end
 )
 (func $~lib/rt/itcms/visitStack (param $cookie i32)
  (local $ptr i32)
  global.get $~lib/memory/__stack_pointer
  local.set $ptr
  loop $while-continue|0
   local.get $ptr
   global.get $~lib/memory/__heap_base
   i32.lt_u
   if
    local.get $ptr
    i32.load
    local.get $cookie
    call $~lib/rt/itcms/__visit
    local.get $ptr
    i32.const 4
    i32.add
    local.set $ptr
    br $while-continue|0
   end
  end
 )
 (func $~lib/rt/common/BLOCK#get:mmInfo (param $this i32) (result i32)
  local.get $this
  i32.load
 )
 (func $~lib/rt/itcms/Object#get:size (param $this i32) (result i32)
  i32.const 4
  local.get $this
  call $~lib/rt/common/BLOCK#get:mmInfo
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  i32.add
  return
 )
 (func $~lib/rt/tlsf/Root#set:flMap (param $this i32) (param $flMap i32)
  local.get $this
  local.get $flMap
  i32.store
 )
 (func $~lib/rt/common/BLOCK#set:mmInfo (param $this i32) (param $mmInfo i32)
  local.get $this
  local.get $mmInfo
  i32.store
 )
 (func $~lib/rt/tlsf/Block#set:prev (param $this i32) (param $prev i32)
  local.get $this
  local.get $prev
  i32.store offset=4
 )
 (func $~lib/rt/tlsf/Block#set:next (param $this i32) (param $next i32)
  local.get $this
  local.get $next
  i32.store offset=8
 )
 (func $~lib/rt/tlsf/Block#get:prev (param $this i32) (result i32)
  local.get $this
  i32.load offset=4
 )
 (func $~lib/rt/tlsf/Block#get:next (param $this i32) (result i32)
  local.get $this
  i32.load offset=8
 )
 (func $~lib/rt/tlsf/Root#get:flMap (param $this i32) (result i32)
  local.get $this
  i32.load
 )
 (func $~lib/rt/tlsf/removeBlock (param $root i32) (param $block i32)
  (local $blockInfo i32)
  (local $size i32)
  (local $fl i32)
  (local $sl i32)
  (local $6 i32)
  (local $7 i32)
  (local $boundedSize i32)
  (local $prev i32)
  (local $next i32)
  (local $root|11 i32)
  (local $fl|12 i32)
  (local $sl|13 i32)
  (local $root|14 i32)
  (local $fl|15 i32)
  (local $sl|16 i32)
  (local $head i32)
  (local $root|18 i32)
  (local $fl|19 i32)
  (local $slMap i32)
  (local $root|21 i32)
  (local $fl|22 i32)
  (local $slMap|23 i32)
  local.get $block
  call $~lib/rt/common/BLOCK#get:mmInfo
  local.set $blockInfo
  i32.const 1
  drop
  local.get $blockInfo
  i32.const 1
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 368
   i32.const 268
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $blockInfo
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  local.set $size
  i32.const 1
  drop
  local.get $size
  i32.const 12
  i32.ge_u
  i32.eqz
  if
   i32.const 0
   i32.const 368
   i32.const 270
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $size
  i32.const 256
  i32.lt_u
  if
   i32.const 0
   local.set $fl
   local.get $size
   i32.const 4
   i32.shr_u
   local.set $sl
  else
   local.get $size
   local.tee $6
   i32.const 1073741820
   local.tee $7
   local.get $6
   local.get $7
   i32.lt_u
   select
   local.set $boundedSize
   i32.const 31
   local.get $boundedSize
   i32.clz
   i32.sub
   local.set $fl
   local.get $boundedSize
   local.get $fl
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 1
   i32.const 4
   i32.shl
   i32.xor
   local.set $sl
   local.get $fl
   i32.const 8
   i32.const 1
   i32.sub
   i32.sub
   local.set $fl
  end
  i32.const 1
  drop
  local.get $fl
  i32.const 23
  i32.lt_u
  if (result i32)
   local.get $sl
   i32.const 16
   i32.lt_u
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 368
   i32.const 284
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $block
  call $~lib/rt/tlsf/Block#get:prev
  local.set $prev
  local.get $block
  call $~lib/rt/tlsf/Block#get:next
  local.set $next
  local.get $prev
  if
   local.get $prev
   local.get $next
   call $~lib/rt/tlsf/Block#set:next
  end
  local.get $next
  if
   local.get $next
   local.get $prev
   call $~lib/rt/tlsf/Block#set:prev
  end
  local.get $block
  block $~lib/rt/tlsf/GETHEAD|inlined.0 (result i32)
   local.get $root
   local.set $root|11
   local.get $fl
   local.set $fl|12
   local.get $sl
   local.set $sl|13
   local.get $root|11
   local.get $fl|12
   i32.const 4
   i32.shl
   local.get $sl|13
   i32.add
   i32.const 2
   i32.shl
   i32.add
   i32.load offset=96
   br $~lib/rt/tlsf/GETHEAD|inlined.0
  end
  i32.eq
  if
   local.get $root
   local.set $root|14
   local.get $fl
   local.set $fl|15
   local.get $sl
   local.set $sl|16
   local.get $next
   local.set $head
   local.get $root|14
   local.get $fl|15
   i32.const 4
   i32.shl
   local.get $sl|16
   i32.add
   i32.const 2
   i32.shl
   i32.add
   local.get $head
   i32.store offset=96
   local.get $next
   i32.eqz
   if
    block $~lib/rt/tlsf/GETSL|inlined.0 (result i32)
     local.get $root
     local.set $root|18
     local.get $fl
     local.set $fl|19
     local.get $root|18
     local.get $fl|19
     i32.const 2
     i32.shl
     i32.add
     i32.load offset=4
     br $~lib/rt/tlsf/GETSL|inlined.0
    end
    local.set $slMap
    local.get $root
    local.set $root|21
    local.get $fl
    local.set $fl|22
    local.get $slMap
    i32.const 1
    local.get $sl
    i32.shl
    i32.const -1
    i32.xor
    i32.and
    local.tee $slMap
    local.set $slMap|23
    local.get $root|21
    local.get $fl|22
    i32.const 2
    i32.shl
    i32.add
    local.get $slMap|23
    i32.store offset=4
    local.get $slMap
    i32.eqz
    if
     local.get $root
     local.get $root
     call $~lib/rt/tlsf/Root#get:flMap
     i32.const 1
     local.get $fl
     i32.shl
     i32.const -1
     i32.xor
     i32.and
     call $~lib/rt/tlsf/Root#set:flMap
    end
   end
  end
 )
 (func $~lib/rt/tlsf/insertBlock (param $root i32) (param $block i32)
  (local $blockInfo i32)
  (local $block|3 i32)
  (local $right i32)
  (local $rightInfo i32)
  (local $block|6 i32)
  (local $block|7 i32)
  (local $left i32)
  (local $leftInfo i32)
  (local $size i32)
  (local $fl i32)
  (local $sl i32)
  (local $13 i32)
  (local $14 i32)
  (local $boundedSize i32)
  (local $root|16 i32)
  (local $fl|17 i32)
  (local $sl|18 i32)
  (local $head i32)
  (local $root|20 i32)
  (local $fl|21 i32)
  (local $sl|22 i32)
  (local $head|23 i32)
  (local $root|24 i32)
  (local $fl|25 i32)
  (local $root|26 i32)
  (local $fl|27 i32)
  (local $slMap i32)
  i32.const 1
  drop
  local.get $block
  i32.eqz
  if
   i32.const 0
   i32.const 368
   i32.const 201
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $block
  call $~lib/rt/common/BLOCK#get:mmInfo
  local.set $blockInfo
  i32.const 1
  drop
  local.get $blockInfo
  i32.const 1
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 368
   i32.const 203
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  block $~lib/rt/tlsf/GETRIGHT|inlined.0 (result i32)
   local.get $block
   local.set $block|3
   local.get $block|3
   i32.const 4
   i32.add
   local.get $block|3
   call $~lib/rt/common/BLOCK#get:mmInfo
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.add
   br $~lib/rt/tlsf/GETRIGHT|inlined.0
  end
  local.set $right
  local.get $right
  call $~lib/rt/common/BLOCK#get:mmInfo
  local.set $rightInfo
  local.get $rightInfo
  i32.const 1
  i32.and
  if
   local.get $root
   local.get $right
   call $~lib/rt/tlsf/removeBlock
   local.get $block
   local.get $blockInfo
   i32.const 4
   i32.add
   local.get $rightInfo
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.add
   local.tee $blockInfo
   call $~lib/rt/common/BLOCK#set:mmInfo
   block $~lib/rt/tlsf/GETRIGHT|inlined.1 (result i32)
    local.get $block
    local.set $block|6
    local.get $block|6
    i32.const 4
    i32.add
    local.get $block|6
    call $~lib/rt/common/BLOCK#get:mmInfo
    i32.const 3
    i32.const -1
    i32.xor
    i32.and
    i32.add
    br $~lib/rt/tlsf/GETRIGHT|inlined.1
   end
   local.set $right
   local.get $right
   call $~lib/rt/common/BLOCK#get:mmInfo
   local.set $rightInfo
  end
  local.get $blockInfo
  i32.const 2
  i32.and
  if
   block $~lib/rt/tlsf/GETFREELEFT|inlined.0 (result i32)
    local.get $block
    local.set $block|7
    local.get $block|7
    i32.const 4
    i32.sub
    i32.load
    br $~lib/rt/tlsf/GETFREELEFT|inlined.0
   end
   local.set $left
   local.get $left
   call $~lib/rt/common/BLOCK#get:mmInfo
   local.set $leftInfo
   i32.const 1
   drop
   local.get $leftInfo
   i32.const 1
   i32.and
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 221
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
   local.get $root
   local.get $left
   call $~lib/rt/tlsf/removeBlock
   local.get $left
   local.set $block
   local.get $block
   local.get $leftInfo
   i32.const 4
   i32.add
   local.get $blockInfo
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.add
   local.tee $blockInfo
   call $~lib/rt/common/BLOCK#set:mmInfo
  end
  local.get $right
  local.get $rightInfo
  i32.const 2
  i32.or
  call $~lib/rt/common/BLOCK#set:mmInfo
  local.get $blockInfo
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  local.set $size
  i32.const 1
  drop
  local.get $size
  i32.const 12
  i32.ge_u
  i32.eqz
  if
   i32.const 0
   i32.const 368
   i32.const 233
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  drop
  local.get $block
  i32.const 4
  i32.add
  local.get $size
  i32.add
  local.get $right
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 368
   i32.const 234
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $right
  i32.const 4
  i32.sub
  local.get $block
  i32.store
  local.get $size
  i32.const 256
  i32.lt_u
  if
   i32.const 0
   local.set $fl
   local.get $size
   i32.const 4
   i32.shr_u
   local.set $sl
  else
   local.get $size
   local.tee $13
   i32.const 1073741820
   local.tee $14
   local.get $13
   local.get $14
   i32.lt_u
   select
   local.set $boundedSize
   i32.const 31
   local.get $boundedSize
   i32.clz
   i32.sub
   local.set $fl
   local.get $boundedSize
   local.get $fl
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 1
   i32.const 4
   i32.shl
   i32.xor
   local.set $sl
   local.get $fl
   i32.const 8
   i32.const 1
   i32.sub
   i32.sub
   local.set $fl
  end
  i32.const 1
  drop
  local.get $fl
  i32.const 23
  i32.lt_u
  if (result i32)
   local.get $sl
   i32.const 16
   i32.lt_u
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 368
   i32.const 251
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  block $~lib/rt/tlsf/GETHEAD|inlined.1 (result i32)
   local.get $root
   local.set $root|16
   local.get $fl
   local.set $fl|17
   local.get $sl
   local.set $sl|18
   local.get $root|16
   local.get $fl|17
   i32.const 4
   i32.shl
   local.get $sl|18
   i32.add
   i32.const 2
   i32.shl
   i32.add
   i32.load offset=96
   br $~lib/rt/tlsf/GETHEAD|inlined.1
  end
  local.set $head
  local.get $block
  i32.const 0
  call $~lib/rt/tlsf/Block#set:prev
  local.get $block
  local.get $head
  call $~lib/rt/tlsf/Block#set:next
  local.get $head
  if
   local.get $head
   local.get $block
   call $~lib/rt/tlsf/Block#set:prev
  end
  local.get $root
  local.set $root|20
  local.get $fl
  local.set $fl|21
  local.get $sl
  local.set $sl|22
  local.get $block
  local.set $head|23
  local.get $root|20
  local.get $fl|21
  i32.const 4
  i32.shl
  local.get $sl|22
  i32.add
  i32.const 2
  i32.shl
  i32.add
  local.get $head|23
  i32.store offset=96
  local.get $root
  local.get $root
  call $~lib/rt/tlsf/Root#get:flMap
  i32.const 1
  local.get $fl
  i32.shl
  i32.or
  call $~lib/rt/tlsf/Root#set:flMap
  local.get $root
  local.set $root|26
  local.get $fl
  local.set $fl|27
  block $~lib/rt/tlsf/GETSL|inlined.1 (result i32)
   local.get $root
   local.set $root|24
   local.get $fl
   local.set $fl|25
   local.get $root|24
   local.get $fl|25
   i32.const 2
   i32.shl
   i32.add
   i32.load offset=4
   br $~lib/rt/tlsf/GETSL|inlined.1
  end
  i32.const 1
  local.get $sl
  i32.shl
  i32.or
  local.set $slMap
  local.get $root|26
  local.get $fl|27
  i32.const 2
  i32.shl
  i32.add
  local.get $slMap
  i32.store offset=4
 )
 (func $~lib/rt/tlsf/addMemory (param $root i32) (param $start i32) (param $endU64 i64) (result i32)
  (local $end i32)
  (local $root|4 i32)
  (local $tail i32)
  (local $tailInfo i32)
  (local $size i32)
  (local $leftSize i32)
  (local $left i32)
  (local $root|10 i32)
  (local $tail|11 i32)
  local.get $endU64
  i32.wrap_i64
  local.set $end
  i32.const 1
  drop
  local.get $start
  i64.extend_i32_u
  local.get $endU64
  i64.le_u
  i32.eqz
  if
   i32.const 0
   i32.const 368
   i32.const 382
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $start
  i32.const 4
  i32.add
  i32.const 15
  i32.add
  i32.const 15
  i32.const -1
  i32.xor
  i32.and
  i32.const 4
  i32.sub
  local.set $start
  local.get $end
  i32.const 15
  i32.const -1
  i32.xor
  i32.and
  local.set $end
  block $~lib/rt/tlsf/GETTAIL|inlined.0 (result i32)
   local.get $root
   local.set $root|4
   local.get $root|4
   i32.load offset=1568
   br $~lib/rt/tlsf/GETTAIL|inlined.0
  end
  local.set $tail
  i32.const 0
  local.set $tailInfo
  local.get $tail
  if
   i32.const 1
   drop
   local.get $start
   local.get $tail
   i32.const 4
   i32.add
   i32.ge_u
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 389
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
   local.get $start
   i32.const 16
   i32.sub
   local.get $tail
   i32.eq
   if
    local.get $start
    i32.const 16
    i32.sub
    local.set $start
    local.get $tail
    call $~lib/rt/common/BLOCK#get:mmInfo
    local.set $tailInfo
   else
   end
  else
   i32.const 1
   drop
   local.get $start
   local.get $root
   i32.const 1572
   i32.add
   i32.ge_u
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 402
    i32.const 5
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $end
  local.get $start
  i32.sub
  local.set $size
  local.get $size
  i32.const 4
  i32.const 12
  i32.add
  i32.const 4
  i32.add
  i32.lt_u
  if
   i32.const 0
   return
  end
  local.get $size
  i32.const 2
  i32.const 4
  i32.mul
  i32.sub
  local.set $leftSize
  local.get $start
  local.set $left
  local.get $left
  local.get $leftSize
  i32.const 1
  i32.or
  local.get $tailInfo
  i32.const 2
  i32.and
  i32.or
  call $~lib/rt/common/BLOCK#set:mmInfo
  local.get $left
  i32.const 0
  call $~lib/rt/tlsf/Block#set:prev
  local.get $left
  i32.const 0
  call $~lib/rt/tlsf/Block#set:next
  local.get $start
  i32.const 4
  i32.add
  local.get $leftSize
  i32.add
  local.set $tail
  local.get $tail
  i32.const 0
  i32.const 2
  i32.or
  call $~lib/rt/common/BLOCK#set:mmInfo
  local.get $root
  local.set $root|10
  local.get $tail
  local.set $tail|11
  local.get $root|10
  local.get $tail|11
  i32.store offset=1568
  local.get $root
  local.get $left
  call $~lib/rt/tlsf/insertBlock
  i32.const 1
  return
 )
 (func $~lib/rt/tlsf/initialize
  (local $rootOffset i32)
  (local $pagesBefore i32)
  (local $pagesNeeded i32)
  (local $root i32)
  (local $root|4 i32)
  (local $tail i32)
  (local $fl i32)
  (local $root|7 i32)
  (local $fl|8 i32)
  (local $slMap i32)
  (local $sl i32)
  (local $root|11 i32)
  (local $fl|12 i32)
  (local $sl|13 i32)
  (local $head i32)
  (local $memStart i32)
  i32.const 0
  drop
  global.get $~lib/memory/__heap_base
  i32.const 15
  i32.add
  i32.const 15
  i32.const -1
  i32.xor
  i32.and
  local.set $rootOffset
  memory.size
  local.set $pagesBefore
  local.get $rootOffset
  i32.const 1572
  i32.add
  i32.const 65535
  i32.add
  i32.const 65535
  i32.const -1
  i32.xor
  i32.and
  i32.const 16
  i32.shr_u
  local.set $pagesNeeded
  local.get $pagesNeeded
  local.get $pagesBefore
  i32.gt_s
  if (result i32)
   local.get $pagesNeeded
   local.get $pagesBefore
   i32.sub
   memory.grow
   i32.const 0
   i32.lt_s
  else
   i32.const 0
  end
  if
   unreachable
  end
  local.get $rootOffset
  local.set $root
  local.get $root
  i32.const 0
  call $~lib/rt/tlsf/Root#set:flMap
  local.get $root
  local.set $root|4
  i32.const 0
  local.set $tail
  local.get $root|4
  local.get $tail
  i32.store offset=1568
  i32.const 0
  local.set $fl
  loop $for-loop|0
   local.get $fl
   i32.const 23
   i32.lt_u
   if
    local.get $root
    local.set $root|7
    local.get $fl
    local.set $fl|8
    i32.const 0
    local.set $slMap
    local.get $root|7
    local.get $fl|8
    i32.const 2
    i32.shl
    i32.add
    local.get $slMap
    i32.store offset=4
    i32.const 0
    local.set $sl
    loop $for-loop|1
     local.get $sl
     i32.const 16
     i32.lt_u
     if
      local.get $root
      local.set $root|11
      local.get $fl
      local.set $fl|12
      local.get $sl
      local.set $sl|13
      i32.const 0
      local.set $head
      local.get $root|11
      local.get $fl|12
      i32.const 4
      i32.shl
      local.get $sl|13
      i32.add
      i32.const 2
      i32.shl
      i32.add
      local.get $head
      i32.store offset=96
      local.get $sl
      i32.const 1
      i32.add
      local.set $sl
      br $for-loop|1
     end
    end
    local.get $fl
    i32.const 1
    i32.add
    local.set $fl
    br $for-loop|0
   end
  end
  local.get $rootOffset
  i32.const 1572
  i32.add
  local.set $memStart
  i32.const 0
  drop
  local.get $root
  local.get $memStart
  memory.size
  i64.extend_i32_s
  i64.const 16
  i64.shl
  call $~lib/rt/tlsf/addMemory
  drop
  local.get $root
  global.set $~lib/rt/tlsf/ROOT
 )
 (func $~lib/rt/tlsf/checkUsedBlock (param $ptr i32) (result i32)
  (local $block i32)
  local.get $ptr
  i32.const 4
  i32.sub
  local.set $block
  local.get $ptr
  i32.const 0
  i32.ne
  if (result i32)
   local.get $ptr
   i32.const 15
   i32.and
   i32.eqz
  else
   i32.const 0
  end
  if (result i32)
   local.get $block
   call $~lib/rt/common/BLOCK#get:mmInfo
   i32.const 1
   i32.and
   i32.eqz
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 368
   i32.const 562
   i32.const 3
   call $~lib/builtins/abort
   unreachable
  end
  local.get $block
  return
 )
 (func $~lib/rt/tlsf/freeBlock (param $root i32) (param $block i32)
  i32.const 0
  drop
  local.get $block
  local.get $block
  call $~lib/rt/common/BLOCK#get:mmInfo
  i32.const 1
  i32.or
  call $~lib/rt/common/BLOCK#set:mmInfo
  local.get $root
  local.get $block
  call $~lib/rt/tlsf/insertBlock
 )
 (func $~lib/rt/tlsf/__free (param $ptr i32)
  local.get $ptr
  global.get $~lib/memory/__heap_base
  i32.lt_u
  if
   return
  end
  global.get $~lib/rt/tlsf/ROOT
  i32.eqz
  if
   call $~lib/rt/tlsf/initialize
  end
  global.get $~lib/rt/tlsf/ROOT
  local.get $ptr
  call $~lib/rt/tlsf/checkUsedBlock
  call $~lib/rt/tlsf/freeBlock
 )
 (func $~lib/rt/itcms/free (param $obj i32)
  local.get $obj
  global.get $~lib/memory/__heap_base
  i32.lt_u
  if
   local.get $obj
   i32.const 0
   call $~lib/rt/itcms/Object#set:nextWithColor
   local.get $obj
   i32.const 0
   call $~lib/rt/itcms/Object#set:prev
  else
   global.get $~lib/rt/itcms/total
   local.get $obj
   call $~lib/rt/itcms/Object#get:size
   i32.sub
   global.set $~lib/rt/itcms/total
   i32.const 0
   drop
   local.get $obj
   i32.const 4
   i32.add
   call $~lib/rt/tlsf/__free
  end
 )
 (func $~lib/rt/itcms/step (result i32)
  (local $obj i32)
  (local $1 i32)
  (local $black i32)
  (local $from i32)
  block $break|0
   block $case2|0
    block $case1|0
     block $case0|0
      global.get $~lib/rt/itcms/state
      local.set $1
      local.get $1
      i32.const 0
      i32.eq
      br_if $case0|0
      local.get $1
      i32.const 1
      i32.eq
      br_if $case1|0
      local.get $1
      i32.const 2
      i32.eq
      br_if $case2|0
      br $break|0
     end
     i32.const 1
     global.set $~lib/rt/itcms/state
     i32.const 0
     global.set $~lib/rt/itcms/visitCount
     i32.const 0
     call $~lib/rt/itcms/visitRoots
     global.get $~lib/rt/itcms/toSpace
     global.set $~lib/rt/itcms/iter
     global.get $~lib/rt/itcms/visitCount
     i32.const 1
     i32.mul
     return
    end
    global.get $~lib/rt/itcms/white
    i32.eqz
    local.set $black
    global.get $~lib/rt/itcms/iter
    call $~lib/rt/itcms/Object#get:next
    local.set $obj
    loop $while-continue|1
     local.get $obj
     global.get $~lib/rt/itcms/toSpace
     i32.ne
     if
      local.get $obj
      global.set $~lib/rt/itcms/iter
      local.get $obj
      call $~lib/rt/itcms/Object#get:color
      local.get $black
      i32.ne
      if
       local.get $obj
       local.get $black
       call $~lib/rt/itcms/Object#set:color
       i32.const 0
       global.set $~lib/rt/itcms/visitCount
       local.get $obj
       i32.const 20
       i32.add
       i32.const 0
       call $~lib/rt/__visit_members
       global.get $~lib/rt/itcms/visitCount
       i32.const 1
       i32.mul
       return
      end
      local.get $obj
      call $~lib/rt/itcms/Object#get:next
      local.set $obj
      br $while-continue|1
     end
    end
    i32.const 0
    global.set $~lib/rt/itcms/visitCount
    i32.const 0
    call $~lib/rt/itcms/visitRoots
    global.get $~lib/rt/itcms/iter
    call $~lib/rt/itcms/Object#get:next
    local.set $obj
    local.get $obj
    global.get $~lib/rt/itcms/toSpace
    i32.eq
    if
     i32.const 0
     call $~lib/rt/itcms/visitStack
     global.get $~lib/rt/itcms/iter
     call $~lib/rt/itcms/Object#get:next
     local.set $obj
     loop $while-continue|2
      local.get $obj
      global.get $~lib/rt/itcms/toSpace
      i32.ne
      if
       local.get $obj
       call $~lib/rt/itcms/Object#get:color
       local.get $black
       i32.ne
       if
        local.get $obj
        local.get $black
        call $~lib/rt/itcms/Object#set:color
        local.get $obj
        i32.const 20
        i32.add
        i32.const 0
        call $~lib/rt/__visit_members
       end
       local.get $obj
       call $~lib/rt/itcms/Object#get:next
       local.set $obj
       br $while-continue|2
      end
     end
     global.get $~lib/rt/itcms/fromSpace
     local.set $from
     global.get $~lib/rt/itcms/toSpace
     global.set $~lib/rt/itcms/fromSpace
     local.get $from
     global.set $~lib/rt/itcms/toSpace
     local.get $black
     global.set $~lib/rt/itcms/white
     local.get $from
     call $~lib/rt/itcms/Object#get:next
     global.set $~lib/rt/itcms/iter
     i32.const 2
     global.set $~lib/rt/itcms/state
    end
    global.get $~lib/rt/itcms/visitCount
    i32.const 1
    i32.mul
    return
   end
   global.get $~lib/rt/itcms/iter
   local.set $obj
   local.get $obj
   global.get $~lib/rt/itcms/toSpace
   i32.ne
   if
    local.get $obj
    call $~lib/rt/itcms/Object#get:next
    global.set $~lib/rt/itcms/iter
    i32.const 1
    drop
    local.get $obj
    call $~lib/rt/itcms/Object#get:color
    global.get $~lib/rt/itcms/white
    i32.eqz
    i32.eq
    i32.eqz
    if
     i32.const 0
     i32.const 96
     i32.const 229
     i32.const 20
     call $~lib/builtins/abort
     unreachable
    end
    local.get $obj
    call $~lib/rt/itcms/free
    i32.const 10
    return
   end
   global.get $~lib/rt/itcms/toSpace
   global.get $~lib/rt/itcms/toSpace
   call $~lib/rt/itcms/Object#set:nextWithColor
   global.get $~lib/rt/itcms/toSpace
   global.get $~lib/rt/itcms/toSpace
   call $~lib/rt/itcms/Object#set:prev
   i32.const 0
   global.set $~lib/rt/itcms/state
   br $break|0
  end
  i32.const 0
  return
 )
 (func $~lib/rt/itcms/interrupt
  (local $budget i32)
  i32.const 0
  drop
  i32.const 0
  drop
  i32.const 1024
  i32.const 200
  i32.mul
  i32.const 100
  i32.div_u
  local.set $budget
  loop $do-loop|0
   local.get $budget
   call $~lib/rt/itcms/step
   i32.sub
   local.set $budget
   global.get $~lib/rt/itcms/state
   i32.const 0
   i32.eq
   if
    i32.const 0
    drop
    global.get $~lib/rt/itcms/total
    i64.extend_i32_u
    i32.const 200
    i64.extend_i32_u
    i64.mul
    i64.const 100
    i64.div_u
    i32.wrap_i64
    i32.const 1024
    i32.add
    global.set $~lib/rt/itcms/threshold
    i32.const 0
    drop
    return
   end
   local.get $budget
   i32.const 0
   i32.gt_s
   br_if $do-loop|0
  end
  i32.const 0
  drop
  global.get $~lib/rt/itcms/total
  i32.const 1024
  global.get $~lib/rt/itcms/total
  global.get $~lib/rt/itcms/threshold
  i32.sub
  i32.const 1024
  i32.lt_u
  i32.mul
  i32.add
  global.set $~lib/rt/itcms/threshold
  i32.const 0
  drop
 )
 (func $~lib/rt/tlsf/computeSize (param $size i32) (result i32)
  local.get $size
  i32.const 12
  i32.le_u
  if (result i32)
   i32.const 12
  else
   local.get $size
   i32.const 4
   i32.add
   i32.const 15
   i32.add
   i32.const 15
   i32.const -1
   i32.xor
   i32.and
   i32.const 4
   i32.sub
  end
  return
 )
 (func $~lib/rt/tlsf/prepareSize (param $size i32) (result i32)
  local.get $size
  i32.const 1073741820
  i32.gt_u
  if
   i32.const 32
   i32.const 368
   i32.const 461
   i32.const 29
   call $~lib/builtins/abort
   unreachable
  end
  local.get $size
  call $~lib/rt/tlsf/computeSize
  return
 )
 (func $~lib/rt/tlsf/roundSize (param $size i32) (result i32)
  local.get $size
  i32.const 536870910
  i32.lt_u
  if (result i32)
   local.get $size
   i32.const 1
   i32.const 27
   local.get $size
   i32.clz
   i32.sub
   i32.shl
   i32.add
   i32.const 1
   i32.sub
  else
   local.get $size
  end
  return
 )
 (func $~lib/rt/tlsf/searchBlock (param $root i32) (param $size i32) (result i32)
  (local $fl i32)
  (local $sl i32)
  (local $requestSize i32)
  (local $root|5 i32)
  (local $fl|6 i32)
  (local $slMap i32)
  (local $head i32)
  (local $flMap i32)
  (local $root|10 i32)
  (local $fl|11 i32)
  (local $root|12 i32)
  (local $fl|13 i32)
  (local $sl|14 i32)
  (local $root|15 i32)
  (local $fl|16 i32)
  (local $sl|17 i32)
  local.get $size
  i32.const 256
  i32.lt_u
  if
   i32.const 0
   local.set $fl
   local.get $size
   i32.const 4
   i32.shr_u
   local.set $sl
  else
   local.get $size
   call $~lib/rt/tlsf/roundSize
   local.set $requestSize
   i32.const 4
   i32.const 8
   i32.mul
   i32.const 1
   i32.sub
   local.get $requestSize
   i32.clz
   i32.sub
   local.set $fl
   local.get $requestSize
   local.get $fl
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 1
   i32.const 4
   i32.shl
   i32.xor
   local.set $sl
   local.get $fl
   i32.const 8
   i32.const 1
   i32.sub
   i32.sub
   local.set $fl
  end
  i32.const 1
  drop
  local.get $fl
  i32.const 23
  i32.lt_u
  if (result i32)
   local.get $sl
   i32.const 16
   i32.lt_u
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 368
   i32.const 334
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  block $~lib/rt/tlsf/GETSL|inlined.2 (result i32)
   local.get $root
   local.set $root|5
   local.get $fl
   local.set $fl|6
   local.get $root|5
   local.get $fl|6
   i32.const 2
   i32.shl
   i32.add
   i32.load offset=4
   br $~lib/rt/tlsf/GETSL|inlined.2
  end
  i32.const 0
  i32.const -1
  i32.xor
  local.get $sl
  i32.shl
  i32.and
  local.set $slMap
  i32.const 0
  local.set $head
  local.get $slMap
  i32.eqz
  if
   local.get $root
   call $~lib/rt/tlsf/Root#get:flMap
   i32.const 0
   i32.const -1
   i32.xor
   local.get $fl
   i32.const 1
   i32.add
   i32.shl
   i32.and
   local.set $flMap
   local.get $flMap
   i32.eqz
   if
    i32.const 0
    local.set $head
   else
    local.get $flMap
    i32.ctz
    local.set $fl
    block $~lib/rt/tlsf/GETSL|inlined.3 (result i32)
     local.get $root
     local.set $root|10
     local.get $fl
     local.set $fl|11
     local.get $root|10
     local.get $fl|11
     i32.const 2
     i32.shl
     i32.add
     i32.load offset=4
     br $~lib/rt/tlsf/GETSL|inlined.3
    end
    local.set $slMap
    i32.const 1
    drop
    local.get $slMap
    i32.eqz
    if
     i32.const 0
     i32.const 368
     i32.const 347
     i32.const 18
     call $~lib/builtins/abort
     unreachable
    end
    block $~lib/rt/tlsf/GETHEAD|inlined.2 (result i32)
     local.get $root
     local.set $root|12
     local.get $fl
     local.set $fl|13
     local.get $slMap
     i32.ctz
     local.set $sl|14
     local.get $root|12
     local.get $fl|13
     i32.const 4
     i32.shl
     local.get $sl|14
     i32.add
     i32.const 2
     i32.shl
     i32.add
     i32.load offset=96
     br $~lib/rt/tlsf/GETHEAD|inlined.2
    end
    local.set $head
   end
  else
   block $~lib/rt/tlsf/GETHEAD|inlined.3 (result i32)
    local.get $root
    local.set $root|15
    local.get $fl
    local.set $fl|16
    local.get $slMap
    i32.ctz
    local.set $sl|17
    local.get $root|15
    local.get $fl|16
    i32.const 4
    i32.shl
    local.get $sl|17
    i32.add
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=96
    br $~lib/rt/tlsf/GETHEAD|inlined.3
   end
   local.set $head
  end
  local.get $head
  return
 )
 (func $~lib/rt/tlsf/growMemory (param $root i32) (param $size i32)
  (local $pagesBefore i32)
  (local $root|3 i32)
  (local $pagesNeeded i32)
  (local $5 i32)
  (local $6 i32)
  (local $pagesWanted i32)
  (local $pagesAfter i32)
  i32.const 0
  drop
  local.get $size
  i32.const 256
  i32.ge_u
  if
   local.get $size
   call $~lib/rt/tlsf/roundSize
   local.set $size
  end
  memory.size
  local.set $pagesBefore
  local.get $size
  i32.const 4
  local.get $pagesBefore
  i32.const 16
  i32.shl
  i32.const 4
  i32.sub
  block $~lib/rt/tlsf/GETTAIL|inlined.1 (result i32)
   local.get $root
   local.set $root|3
   local.get $root|3
   i32.load offset=1568
   br $~lib/rt/tlsf/GETTAIL|inlined.1
  end
  i32.ne
  i32.shl
  i32.add
  local.set $size
  local.get $size
  i32.const 65535
  i32.add
  i32.const 65535
  i32.const -1
  i32.xor
  i32.and
  i32.const 16
  i32.shr_u
  local.set $pagesNeeded
  local.get $pagesBefore
  local.tee $5
  local.get $pagesNeeded
  local.tee $6
  local.get $5
  local.get $6
  i32.gt_s
  select
  local.set $pagesWanted
  local.get $pagesWanted
  memory.grow
  i32.const 0
  i32.lt_s
  if
   local.get $pagesNeeded
   memory.grow
   i32.const 0
   i32.lt_s
   if
    unreachable
   end
  end
  memory.size
  local.set $pagesAfter
  local.get $root
  local.get $pagesBefore
  i32.const 16
  i32.shl
  local.get $pagesAfter
  i64.extend_i32_s
  i64.const 16
  i64.shl
  call $~lib/rt/tlsf/addMemory
  drop
 )
 (func $~lib/rt/tlsf/prepareBlock (param $root i32) (param $block i32) (param $size i32)
  (local $blockInfo i32)
  (local $remaining i32)
  (local $spare i32)
  (local $block|6 i32)
  (local $block|7 i32)
  local.get $block
  call $~lib/rt/common/BLOCK#get:mmInfo
  local.set $blockInfo
  i32.const 1
  drop
  local.get $size
  i32.const 4
  i32.add
  i32.const 15
  i32.and
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 368
   i32.const 361
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $blockInfo
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  local.get $size
  i32.sub
  local.set $remaining
  local.get $remaining
  i32.const 4
  i32.const 12
  i32.add
  i32.ge_u
  if
   local.get $block
   local.get $size
   local.get $blockInfo
   i32.const 2
   i32.and
   i32.or
   call $~lib/rt/common/BLOCK#set:mmInfo
   local.get $block
   i32.const 4
   i32.add
   local.get $size
   i32.add
   local.set $spare
   local.get $spare
   local.get $remaining
   i32.const 4
   i32.sub
   i32.const 1
   i32.or
   call $~lib/rt/common/BLOCK#set:mmInfo
   local.get $root
   local.get $spare
   call $~lib/rt/tlsf/insertBlock
  else
   local.get $block
   local.get $blockInfo
   i32.const 1
   i32.const -1
   i32.xor
   i32.and
   call $~lib/rt/common/BLOCK#set:mmInfo
   block $~lib/rt/tlsf/GETRIGHT|inlined.3 (result i32)
    local.get $block
    local.set $block|7
    local.get $block|7
    i32.const 4
    i32.add
    local.get $block|7
    call $~lib/rt/common/BLOCK#get:mmInfo
    i32.const 3
    i32.const -1
    i32.xor
    i32.and
    i32.add
    br $~lib/rt/tlsf/GETRIGHT|inlined.3
   end
   block $~lib/rt/tlsf/GETRIGHT|inlined.2 (result i32)
    local.get $block
    local.set $block|6
    local.get $block|6
    i32.const 4
    i32.add
    local.get $block|6
    call $~lib/rt/common/BLOCK#get:mmInfo
    i32.const 3
    i32.const -1
    i32.xor
    i32.and
    i32.add
    br $~lib/rt/tlsf/GETRIGHT|inlined.2
   end
   call $~lib/rt/common/BLOCK#get:mmInfo
   i32.const 2
   i32.const -1
   i32.xor
   i32.and
   call $~lib/rt/common/BLOCK#set:mmInfo
  end
 )
 (func $~lib/rt/tlsf/allocateBlock (param $root i32) (param $size i32) (result i32)
  (local $payloadSize i32)
  (local $block i32)
  local.get $size
  call $~lib/rt/tlsf/prepareSize
  local.set $payloadSize
  local.get $root
  local.get $payloadSize
  call $~lib/rt/tlsf/searchBlock
  local.set $block
  local.get $block
  i32.eqz
  if
   local.get $root
   local.get $payloadSize
   call $~lib/rt/tlsf/growMemory
   local.get $root
   local.get $payloadSize
   call $~lib/rt/tlsf/searchBlock
   local.set $block
   i32.const 1
   drop
   local.get $block
   i32.eqz
   if
    i32.const 0
    i32.const 368
    i32.const 499
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
  end
  i32.const 1
  drop
  local.get $block
  call $~lib/rt/common/BLOCK#get:mmInfo
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  local.get $payloadSize
  i32.ge_u
  i32.eqz
  if
   i32.const 0
   i32.const 368
   i32.const 501
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $root
  local.get $block
  call $~lib/rt/tlsf/removeBlock
  local.get $root
  local.get $block
  local.get $payloadSize
  call $~lib/rt/tlsf/prepareBlock
  i32.const 0
  drop
  local.get $block
  return
 )
 (func $~lib/rt/tlsf/__alloc (param $size i32) (result i32)
  global.get $~lib/rt/tlsf/ROOT
  i32.eqz
  if
   call $~lib/rt/tlsf/initialize
  end
  global.get $~lib/rt/tlsf/ROOT
  local.get $size
  call $~lib/rt/tlsf/allocateBlock
  i32.const 4
  i32.add
  return
 )
 (func $~lib/rt/itcms/Object#set:rtId (param $this i32) (param $rtId i32)
  local.get $this
  local.get $rtId
  i32.store offset=12
 )
 (func $~lib/rt/itcms/Object#set:rtSize (param $this i32) (param $rtSize i32)
  local.get $this
  local.get $rtSize
  i32.store offset=16
 )
 (func $~lib/rt/itcms/__new (param $size i32) (param $id i32) (result i32)
  (local $obj i32)
  (local $ptr i32)
  local.get $size
  i32.const 1073741804
  i32.ge_u
  if
   i32.const 32
   i32.const 96
   i32.const 261
   i32.const 31
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/rt/itcms/total
  global.get $~lib/rt/itcms/threshold
  i32.ge_u
  if
   call $~lib/rt/itcms/interrupt
  end
  i32.const 16
  local.get $size
  i32.add
  call $~lib/rt/tlsf/__alloc
  i32.const 4
  i32.sub
  local.set $obj
  local.get $obj
  local.get $id
  call $~lib/rt/itcms/Object#set:rtId
  local.get $obj
  local.get $size
  call $~lib/rt/itcms/Object#set:rtSize
  local.get $obj
  global.get $~lib/rt/itcms/fromSpace
  global.get $~lib/rt/itcms/white
  call $~lib/rt/itcms/Object#linkTo
  global.get $~lib/rt/itcms/total
  local.get $obj
  call $~lib/rt/itcms/Object#get:size
  i32.add
  global.set $~lib/rt/itcms/total
  local.get $obj
  i32.const 20
  i32.add
  local.set $ptr
  local.get $ptr
  i32.const 0
  local.get $size
  memory.fill
  local.get $ptr
  return
 )
 (func $~lib/rt/itcms/__link (param $parentPtr i32) (param $childPtr i32) (param $expectMultiple i32)
  (local $child i32)
  (local $parent i32)
  (local $parentColor i32)
  local.get $childPtr
  i32.eqz
  if
   return
  end
  i32.const 1
  drop
  local.get $parentPtr
  i32.eqz
  if
   i32.const 0
   i32.const 96
   i32.const 295
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $childPtr
  i32.const 20
  i32.sub
  local.set $child
  local.get $child
  call $~lib/rt/itcms/Object#get:color
  global.get $~lib/rt/itcms/white
  i32.eq
  if
   local.get $parentPtr
   i32.const 20
   i32.sub
   local.set $parent
   local.get $parent
   call $~lib/rt/itcms/Object#get:color
   local.set $parentColor
   local.get $parentColor
   global.get $~lib/rt/itcms/white
   i32.eqz
   i32.eq
   if
    local.get $expectMultiple
    if
     local.get $parent
     call $~lib/rt/itcms/Object#makeGray
    else
     local.get $child
     call $~lib/rt/itcms/Object#makeGray
    end
   else
    local.get $parentColor
    i32.const 3
    i32.eq
    if (result i32)
     global.get $~lib/rt/itcms/state
     i32.const 1
     i32.eq
    else
     i32.const 0
    end
    if
     local.get $child
     call $~lib/rt/itcms/Object#makeGray
    end
   end
  end
 )
 (func $assembly/index/LastElement#set:tagName (param $this i32) (param $tagName i32)
  local.get $this
  local.get $tagName
  i32.store
  local.get $this
  local.get $tagName
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $assembly/index/LastElement#set:props (param $this i32) (param $props i32)
  local.get $this
  local.get $props
  i32.store offset=4
  local.get $this
  local.get $props
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $assembly/index/LastElement#set:KEY (param $this i32) (param $KEY i32)
  local.get $this
  local.get $KEY
  i32.store offset=8
  local.get $this
  local.get $KEY
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $assembly/index/LastElement#set:parent (param $this i32) (param $parent i32)
  local.get $this
  local.get $parent
  i32.store offset=12
  local.get $this
  local.get $parent
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $assembly/index/LastElement#set:text (param $this i32) (param $text i32)
  local.get $this
  local.get $text
  i32.store offset=16
  local.get $this
  local.get $text
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $assembly/index/LastElement#set:index (param $this i32) (param $index i32)
  local.get $this
  local.get $index
  i32.store offset=20
 )
 (func $start:assembly/index~anonymous|0 (param $n i32) (result i32)
  local.get $n
  i32.const 1
  i32.add
  return
 )
 (func $assembly/index/ParseIdentifier#set:leftOpen (param $this i32) (param $leftOpen i32)
  local.get $this
  local.get $leftOpen
  i32.store
  local.get $this
  local.get $leftOpen
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $assembly/index/ParseIdentifier#set:tagClose (param $this i32) (param $tagClose i32)
  local.get $this
  local.get $tagClose
  i32.store offset=4
  local.get $this
  local.get $tagClose
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $assembly/index/ParseIdentifier#set:rightOpen (param $this i32) (param $rightOpen i32)
  local.get $this
  local.get $rightOpen
  i32.store offset=8
  local.get $this
  local.get $rightOpen
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $assembly/index/ParseIdentifier#set:templateLeft (param $this i32) (param $templateLeft i32)
  local.get $this
  local.get $templateLeft
  i32.store offset=12
  local.get $this
  local.get $templateLeft
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $assembly/index/ParseIdentifier#set:templateRight (param $this i32) (param $templateRight i32)
  local.get $this
  local.get $templateRight
  i32.store offset=16
  local.get $this
  local.get $templateRight
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $assembly/index/ParseIdentifier#set:NULL (param $this i32) (param $NULL i32)
  local.get $this
  local.get $NULL
  i32.store offset=20
  local.get $this
  local.get $NULL
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $assembly/index/ParseIdentifier#set:LEFT (param $this i32) (param $LEFT f64)
  local.get $this
  local.get $LEFT
  f64.store offset=24
 )
 (func $assembly/index/ParseIdentifier#set:MIDDLE (param $this i32) (param $MIDDLE f64)
  local.get $this
  local.get $MIDDLE
  f64.store offset=32
 )
 (func $assembly/index/ParseIdentifier#set:RIGHT (param $this i32) (param $RIGHT f64)
  local.get $this
  local.get $RIGHT
  f64.store offset=40
 )
 (func $~lib/rt/__newBuffer (param $size i32) (param $id i32) (param $data i32) (result i32)
  (local $buffer i32)
  local.get $size
  local.get $id
  call $~lib/rt/itcms/__new
  local.set $buffer
  local.get $data
  if
   local.get $buffer
   local.get $data
   local.get $size
   memory.copy
  end
  local.get $buffer
  return
 )
 (func $assembly/index/ElementStack#set:stack (param $this i32) (param $stack i32)
  local.get $this
  local.get $stack
  i32.store
  local.get $this
  local.get $stack
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $assembly/index/ElementStack#set:index (param $this i32) (param $index i32)
  local.get $this
  local.get $index
  i32.store offset=4
 )
 (func $~lib/rt/common/OBJECT#get:rtSize (param $this i32) (result i32)
  local.get $this
  i32.load offset=16
 )
 (func $~lib/string/String#get:length (param $this i32) (result i32)
  local.get $this
  i32.const 20
  i32.sub
  call $~lib/rt/common/OBJECT#get:rtSize
  i32.const 1
  i32.shr_u
  return
 )
 (func $~lib/util/number/decimalCount32 (param $value i32) (result i32)
  local.get $value
  i32.const 100000
  i32.lt_u
  if
   local.get $value
   i32.const 100
   i32.lt_u
   if
    i32.const 1
    local.get $value
    i32.const 10
    i32.ge_u
    i32.add
    return
   else
    i32.const 3
    local.get $value
    i32.const 10000
    i32.ge_u
    i32.add
    local.get $value
    i32.const 1000
    i32.ge_u
    i32.add
    return
   end
   unreachable
  else
   local.get $value
   i32.const 10000000
   i32.lt_u
   if
    i32.const 6
    local.get $value
    i32.const 1000000
    i32.ge_u
    i32.add
    return
   else
    i32.const 8
    local.get $value
    i32.const 1000000000
    i32.ge_u
    i32.add
    local.get $value
    i32.const 100000000
    i32.ge_u
    i32.add
    return
   end
   unreachable
  end
  unreachable
 )
 (func $~lib/util/number/utoa32_dec_lut (param $buffer i32) (param $num i32) (param $offset i32)
  (local $t i32)
  (local $r i32)
  (local $d1 i32)
  (local $d2 i32)
  (local $digits1 i64)
  (local $digits2 i64)
  (local $t|9 i32)
  (local $d1|10 i32)
  (local $digits i32)
  (local $digits|12 i32)
  (local $digit i32)
  loop $while-continue|0
   local.get $num
   i32.const 10000
   i32.ge_u
   if
    local.get $num
    i32.const 10000
    i32.div_u
    local.set $t
    local.get $num
    i32.const 10000
    i32.rem_u
    local.set $r
    local.get $t
    local.set $num
    local.get $r
    i32.const 100
    i32.div_u
    local.set $d1
    local.get $r
    i32.const 100
    i32.rem_u
    local.set $d2
    i32.const 956
    local.get $d1
    i32.const 2
    i32.shl
    i32.add
    i64.load32_u
    local.set $digits1
    i32.const 956
    local.get $d2
    i32.const 2
    i32.shl
    i32.add
    i64.load32_u
    local.set $digits2
    local.get $offset
    i32.const 4
    i32.sub
    local.set $offset
    local.get $buffer
    local.get $offset
    i32.const 1
    i32.shl
    i32.add
    local.get $digits1
    local.get $digits2
    i64.const 32
    i64.shl
    i64.or
    i64.store
    br $while-continue|0
   end
  end
  local.get $num
  i32.const 100
  i32.ge_u
  if
   local.get $num
   i32.const 100
   i32.div_u
   local.set $t|9
   local.get $num
   i32.const 100
   i32.rem_u
   local.set $d1|10
   local.get $t|9
   local.set $num
   local.get $offset
   i32.const 2
   i32.sub
   local.set $offset
   i32.const 956
   local.get $d1|10
   i32.const 2
   i32.shl
   i32.add
   i32.load
   local.set $digits
   local.get $buffer
   local.get $offset
   i32.const 1
   i32.shl
   i32.add
   local.get $digits
   i32.store
  end
  local.get $num
  i32.const 10
  i32.ge_u
  if
   local.get $offset
   i32.const 2
   i32.sub
   local.set $offset
   i32.const 956
   local.get $num
   i32.const 2
   i32.shl
   i32.add
   i32.load
   local.set $digits|12
   local.get $buffer
   local.get $offset
   i32.const 1
   i32.shl
   i32.add
   local.get $digits|12
   i32.store
  else
   local.get $offset
   i32.const 1
   i32.sub
   local.set $offset
   i32.const 48
   local.get $num
   i32.add
   local.set $digit
   local.get $buffer
   local.get $offset
   i32.const 1
   i32.shl
   i32.add
   local.get $digit
   i32.store16
  end
 )
 (func $~lib/util/number/utoa_hex_lut (param $buffer i32) (param $num i64) (param $offset i32)
  loop $while-continue|0
   local.get $offset
   i32.const 2
   i32.ge_u
   if
    local.get $offset
    i32.const 2
    i32.sub
    local.set $offset
    local.get $buffer
    local.get $offset
    i32.const 1
    i32.shl
    i32.add
    i32.const 1376
    local.get $num
    i32.wrap_i64
    i32.const 255
    i32.and
    i32.const 2
    i32.shl
    i32.add
    i32.load
    i32.store
    local.get $num
    i64.const 8
    i64.shr_u
    local.set $num
    br $while-continue|0
   end
  end
  local.get $offset
  i32.const 1
  i32.and
  if
   local.get $buffer
   i32.const 1376
   local.get $num
   i32.wrap_i64
   i32.const 6
   i32.shl
   i32.add
   i32.load16_u
   i32.store16
  end
 )
 (func $~lib/util/number/ulog_base (param $num i64) (param $base i32) (result i32)
  (local $value i32)
  (local $b64 i64)
  (local $b i64)
  (local $e i32)
  block $~lib/util/number/isPowerOf2<i32>|inlined.0 (result i32)
   local.get $base
   local.set $value
   local.get $value
   i32.popcnt
   i32.const 1
   i32.eq
   br $~lib/util/number/isPowerOf2<i32>|inlined.0
  end
  if
   i32.const 63
   local.get $num
   i64.clz
   i32.wrap_i64
   i32.sub
   i32.const 31
   local.get $base
   i32.clz
   i32.sub
   i32.div_u
   i32.const 1
   i32.add
   return
  end
  local.get $base
  i64.extend_i32_s
  local.set $b64
  local.get $b64
  local.set $b
  i32.const 1
  local.set $e
  loop $while-continue|0
   local.get $num
   local.get $b
   i64.ge_u
   if
    local.get $num
    local.get $b
    i64.div_u
    local.set $num
    local.get $b
    local.get $b
    i64.mul
    local.set $b
    local.get $e
    i32.const 1
    i32.shl
    local.set $e
    br $while-continue|0
   end
  end
  loop $while-continue|1
   local.get $num
   i64.const 1
   i64.ge_u
   if
    local.get $num
    local.get $b64
    i64.div_u
    local.set $num
    local.get $e
    i32.const 1
    i32.add
    local.set $e
    br $while-continue|1
   end
  end
  local.get $e
  i32.const 1
  i32.sub
  return
 )
 (func $~lib/util/number/utoa64_any_core (param $buffer i32) (param $num i64) (param $offset i32) (param $radix i32)
  (local $base i64)
  (local $shift i64)
  (local $mask i64)
  (local $q i64)
  local.get $radix
  i64.extend_i32_s
  local.set $base
  local.get $radix
  local.get $radix
  i32.const 1
  i32.sub
  i32.and
  i32.const 0
  i32.eq
  if
   local.get $radix
   i32.ctz
   i32.const 7
   i32.and
   i64.extend_i32_s
   local.set $shift
   local.get $base
   i64.const 1
   i64.sub
   local.set $mask
   loop $do-loop|0
    local.get $offset
    i32.const 1
    i32.sub
    local.set $offset
    local.get $buffer
    local.get $offset
    i32.const 1
    i32.shl
    i32.add
    i32.const 2432
    local.get $num
    local.get $mask
    i64.and
    i32.wrap_i64
    i32.const 1
    i32.shl
    i32.add
    i32.load16_u
    i32.store16
    local.get $num
    local.get $shift
    i64.shr_u
    local.set $num
    local.get $num
    i64.const 0
    i64.ne
    br_if $do-loop|0
   end
  else
   loop $do-loop|1
    local.get $offset
    i32.const 1
    i32.sub
    local.set $offset
    local.get $num
    local.get $base
    i64.div_u
    local.set $q
    local.get $buffer
    local.get $offset
    i32.const 1
    i32.shl
    i32.add
    i32.const 2432
    local.get $num
    local.get $q
    local.get $base
    i64.mul
    i64.sub
    i32.wrap_i64
    i32.const 1
    i32.shl
    i32.add
    i32.load16_u
    i32.store16
    local.get $q
    local.set $num
    local.get $num
    i64.const 0
    i64.ne
    br_if $do-loop|1
   end
  end
 )
 (func $~lib/number/I32#toString (param $this i32) (param $radix i32) (result i32)
  local.get $this
  local.get $radix
  call $~lib/util/number/itoa32
  return
 )
 (func $assembly/index/CreateElement#set:KEY (param $this i32) (param $KEY i32)
  local.get $this
  local.get $KEY
  i32.store
  local.get $this
  local.get $KEY
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $assembly/index/CreateElement#set:tagName (param $this i32) (param $tagName i32)
  local.get $this
  local.get $tagName
  i32.store offset=8
  local.get $this
  local.get $tagName
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $assembly/index/CreateElement#set:props (param $this i32) (param $props i32)
  local.get $this
  local.get $props
  i32.store offset=12
  local.get $this
  local.get $props
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $assembly/index/CreateElement#set:child (param $this i32) (param $child i32)
  local.get $this
  local.get $child
  i32.store offset=16
  local.get $this
  local.get $child
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $assembly/index/CreateElement#set:elementKEY (param $this i32) (param $elementKEY i32)
  local.get $this
  local.get $elementKEY
  i32.store offset=20
  local.get $this
  local.get $elementKEY
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $assembly/index/CreateElement#set:text (param $this i32) (param $text i32)
  local.get $this
  local.get $text
  i32.store offset=4
  local.get $this
  local.get $text
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $assembly/index/ParseIdentifier#get:LEFT (param $this i32) (result f64)
  local.get $this
  f64.load offset=24
 )
 (func $assembly/index/ParseIdentifier#get:tagClose (param $this i32) (result i32)
  local.get $this
  i32.load offset=4
 )
 (func $~lib/util/string/compareImpl (param $str1 i32) (param $index1 i32) (param $str2 i32) (param $index2 i32) (param $len i32) (result i32)
  (local $ptr1 i32)
  (local $ptr2 i32)
  (local $7 i32)
  (local $a i32)
  (local $b i32)
  local.get $str1
  local.get $index1
  i32.const 1
  i32.shl
  i32.add
  local.set $ptr1
  local.get $str2
  local.get $index2
  i32.const 1
  i32.shl
  i32.add
  local.set $ptr2
  i32.const 0
  i32.const 2
  i32.lt_s
  drop
  local.get $len
  i32.const 4
  i32.ge_u
  if (result i32)
   local.get $ptr1
   i32.const 7
   i32.and
   local.get $ptr2
   i32.const 7
   i32.and
   i32.or
   i32.eqz
  else
   i32.const 0
  end
  if
   block $do-break|0
    loop $do-loop|0
     local.get $ptr1
     i64.load
     local.get $ptr2
     i64.load
     i64.ne
     if
      br $do-break|0
     end
     local.get $ptr1
     i32.const 8
     i32.add
     local.set $ptr1
     local.get $ptr2
     i32.const 8
     i32.add
     local.set $ptr2
     local.get $len
     i32.const 4
     i32.sub
     local.set $len
     local.get $len
     i32.const 4
     i32.ge_u
     br_if $do-loop|0
    end
   end
  end
  loop $while-continue|1
   local.get $len
   local.tee $7
   i32.const 1
   i32.sub
   local.set $len
   local.get $7
   if
    local.get $ptr1
    i32.load16_u
    local.set $a
    local.get $ptr2
    i32.load16_u
    local.set $b
    local.get $a
    local.get $b
    i32.ne
    if
     local.get $a
     local.get $b
     i32.sub
     return
    end
    local.get $ptr1
    i32.const 2
    i32.add
    local.set $ptr1
    local.get $ptr2
    i32.const 2
    i32.add
    local.set $ptr2
    br $while-continue|1
   end
  end
  i32.const 0
  return
 )
 (func $assembly/index/ParseIdentifier#get:NULL (param $this i32) (result i32)
  local.get $this
  i32.load offset=20
 )
 (func $assembly/index/ElementStack#get:index (param $this i32) (result i32)
  local.get $this
  i32.load offset=4
 )
 (func $assembly/index/ElementStack#get:stack (param $this i32) (result i32)
  local.get $this
  i32.load
 )
 (func $~lib/array/Array<assembly/index/CreateElement>#get:length_ (param $this i32) (result i32)
  local.get $this
  i32.load offset=12
 )
 (func $~lib/array/Array<assembly/index/CreateElement>#get:dataStart (param $this i32) (result i32)
  local.get $this
  i32.load offset=4
 )
 (func $assembly/index/ParseIdentifier#get:templateLeft (param $this i32) (result i32)
  local.get $this
  i32.load offset=12
 )
 (func $assembly/index/ParseIdentifier#get:templateRight (param $this i32) (result i32)
  local.get $this
  i32.load offset=16
 )
 (func $~lib/util/string/isSpace (param $c i32) (result i32)
  (local $1 i32)
  local.get $c
  i32.const 5760
  i32.lt_u
  if
   local.get $c
   i32.const 128
   i32.or
   i32.const 160
   i32.eq
   if (result i32)
    i32.const 1
   else
    local.get $c
    i32.const 9
    i32.sub
    i32.const 13
    i32.const 9
    i32.sub
    i32.le_u
   end
   return
  end
  local.get $c
  i32.const 8192
  i32.sub
  i32.const 8202
  i32.const 8192
  i32.sub
  i32.le_u
  if
   i32.const 1
   return
  end
  block $break|0
   block $case6|0
    block $case5|0
     block $case4|0
      block $case3|0
       block $case2|0
        block $case1|0
         block $case0|0
          local.get $c
          local.set $1
          local.get $1
          i32.const 5760
          i32.eq
          br_if $case0|0
          local.get $1
          i32.const 8232
          i32.eq
          br_if $case1|0
          local.get $1
          i32.const 8233
          i32.eq
          br_if $case2|0
          local.get $1
          i32.const 8239
          i32.eq
          br_if $case3|0
          local.get $1
          i32.const 8287
          i32.eq
          br_if $case4|0
          local.get $1
          i32.const 12288
          i32.eq
          br_if $case5|0
          local.get $1
          i32.const 65279
          i32.eq
          br_if $case6|0
          br $break|0
         end
        end
       end
      end
     end
    end
   end
   i32.const 1
   return
  end
  i32.const 0
  return
 )
 (func $~lib/arraybuffer/ArrayBufferView#get:byteLength (param $this i32) (result i32)
  local.get $this
  i32.load offset=8
 )
 (func $~lib/arraybuffer/ArrayBufferView#get:buffer (param $this i32) (result i32)
  local.get $this
  i32.load
 )
 (func $~lib/rt/itcms/Object#get:rtSize (param $this i32) (result i32)
  local.get $this
  i32.load offset=16
 )
 (func $~lib/rt/itcms/__renew (param $oldPtr i32) (param $size i32) (result i32)
  (local $oldObj i32)
  (local $newPtr i32)
  (local $4 i32)
  (local $5 i32)
  local.get $oldPtr
  i32.const 20
  i32.sub
  local.set $oldObj
  local.get $size
  local.get $oldObj
  call $~lib/rt/common/BLOCK#get:mmInfo
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  i32.const 16
  i32.sub
  i32.le_u
  if
   local.get $oldObj
   local.get $size
   call $~lib/rt/itcms/Object#set:rtSize
   local.get $oldPtr
   return
  end
  local.get $size
  local.get $oldObj
  call $~lib/rt/itcms/Object#get:rtId
  call $~lib/rt/itcms/__new
  local.set $newPtr
  local.get $newPtr
  local.get $oldPtr
  local.get $size
  local.tee $4
  local.get $oldObj
  call $~lib/rt/itcms/Object#get:rtSize
  local.tee $5
  local.get $4
  local.get $5
  i32.lt_u
  select
  memory.copy
  local.get $newPtr
  return
 )
 (func $~lib/array/Array<assembly/index/CreateElement>#set:length_ (param $this i32) (param $length_ i32)
  local.get $this
  local.get $length_
  i32.store offset=12
 )
 (func $assembly/index/ParseIdentifier#get:leftOpen (param $this i32) (result i32)
  local.get $this
  i32.load
 )
 (func $assembly/index/ParseIdentifier#get:rightOpen (param $this i32) (result i32)
  local.get $this
  i32.load offset=8
 )
 (func $assembly/index/ParseIdentifier#get:RIGHT (param $this i32) (result f64)
  local.get $this
  f64.load offset=40
 )
 (func $assembly/index/CreateElement#get:child (param $this i32) (result i32)
  local.get $this
  i32.load offset=16
 )
 (func $assembly/index/ParseIdentifier#get:MIDDLE (param $this i32) (result f64)
  local.get $this
  f64.load offset=32
 )
 (func $assembly/index/CreateElement#get:KEY (param $this i32) (result i32)
  local.get $this
  i32.load
 )
 (func $assembly/index/CreateElement#get:tagName (param $this i32) (result i32)
  local.get $this
  i32.load offset=8
 )
 (func $assembly/index/CreateElement#get:props (param $this i32) (result i32)
  local.get $this
  i32.load offset=12
 )
 (func $assembly/index/CreateElement#get:text (param $this i32) (result i32)
  local.get $this
  i32.load offset=4
 )
 (func $assembly/index/Responsive#set:type (param $this i32) (param $type i32)
  local.get $this
  local.get $type
  i32.store
  local.get $this
  local.get $type
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $assembly/index/Responsive#set:data (param $this i32) (param $data i32)
  local.get $this
  local.get $data
  i32.store offset=4
  local.get $this
  local.get $data
  i32.const 0
  call $~lib/rt/itcms/__link
 )
 (func $~lib/array/Array<assembly/index/Responsive>#get:length_ (param $this i32) (result i32)
  local.get $this
  i32.load offset=12
 )
 (func $~lib/array/Array<assembly/index/Responsive>#get:dataStart (param $this i32) (result i32)
  local.get $this
  i32.load offset=4
 )
 (func $~lib/array/Array<assembly/index/Responsive>#set:length_ (param $this i32) (param $length_ i32)
  local.get $this
  local.get $length_
  i32.store offset=12
 )
 (func $assembly/index/LastElement#get:tagName (param $this i32) (result i32)
  local.get $this
  i32.load
 )
 (func $~lib/array/Array<~lib/string/String>#get:length_ (param $this i32) (result i32)
  local.get $this
  i32.load offset=12
 )
 (func $~lib/array/Array<~lib/string/String>#set:length_ (param $this i32) (param $length_ i32)
  local.get $this
  local.get $length_
  i32.store offset=12
 )
 (func $~lib/array/Array<~lib/string/String>#get:dataStart (param $this i32) (result i32)
  local.get $this
  i32.load offset=4
 )
 (func $assembly/index/Responsive#get:type (param $this i32) (result i32)
  local.get $this
  i32.load
 )
 (func $assembly/index/Responsive#get:data (param $this i32) (result i32)
  local.get $this
  i32.load offset=4
 )
 (func $~lib/rt/itcms/__pin (param $ptr i32) (result i32)
  (local $obj i32)
  local.get $ptr
  if
   local.get $ptr
   i32.const 20
   i32.sub
   local.set $obj
   local.get $obj
   call $~lib/rt/itcms/Object#get:color
   i32.const 3
   i32.eq
   if
    i32.const 3456
    i32.const 96
    i32.const 338
    i32.const 7
    call $~lib/builtins/abort
    unreachable
   end
   local.get $obj
   call $~lib/rt/itcms/Object#unlink
   local.get $obj
   global.get $~lib/rt/itcms/pinSpace
   i32.const 3
   call $~lib/rt/itcms/Object#linkTo
  end
  local.get $ptr
  return
 )
 (func $~lib/rt/itcms/__unpin (param $ptr i32)
  (local $obj i32)
  local.get $ptr
  i32.eqz
  if
   return
  end
  local.get $ptr
  i32.const 20
  i32.sub
  local.set $obj
  local.get $obj
  call $~lib/rt/itcms/Object#get:color
  i32.const 3
  i32.ne
  if
   i32.const 3520
   i32.const 96
   i32.const 352
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/rt/itcms/state
  i32.const 1
  i32.eq
  if
   local.get $obj
   call $~lib/rt/itcms/Object#makeGray
  else
   local.get $obj
   call $~lib/rt/itcms/Object#unlink
   local.get $obj
   global.get $~lib/rt/itcms/fromSpace
   global.get $~lib/rt/itcms/white
   call $~lib/rt/itcms/Object#linkTo
  end
 )
 (func $~lib/rt/itcms/__collect
  i32.const 0
  drop
  global.get $~lib/rt/itcms/state
  i32.const 0
  i32.gt_s
  if
   loop $while-continue|0
    global.get $~lib/rt/itcms/state
    i32.const 0
    i32.ne
    if
     call $~lib/rt/itcms/step
     drop
     br $while-continue|0
    end
   end
  end
  call $~lib/rt/itcms/step
  drop
  loop $while-continue|1
   global.get $~lib/rt/itcms/state
   i32.const 0
   i32.ne
   if
    call $~lib/rt/itcms/step
    drop
    br $while-continue|1
   end
  end
  global.get $~lib/rt/itcms/total
  i64.extend_i32_u
  i32.const 200
  i64.extend_i32_u
  i64.mul
  i64.const 100
  i64.div_u
  i32.wrap_i64
  i32.const 1024
  i32.add
  global.set $~lib/rt/itcms/threshold
  i32.const 0
  drop
  i32.const 0
  drop
 )
 (func $~lib/rt/__visit_globals (param $0 i32)
  (local $1 i32)
  global.get $assembly/index/lastElement
  local.tee $1
  if
   local.get $1
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  i32.const 224
  local.get $0
  call $~lib/rt/itcms/__visit
  i32.const 2912
  local.get $0
  call $~lib/rt/itcms/__visit
  i32.const 3136
  local.get $0
  call $~lib/rt/itcms/__visit
  i32.const 2656
  local.get $0
  call $~lib/rt/itcms/__visit
  i32.const 32
  local.get $0
  call $~lib/rt/itcms/__visit
  i32.const 3456
  local.get $0
  call $~lib/rt/itcms/__visit
  i32.const 3520
  local.get $0
  call $~lib/rt/itcms/__visit
  i32.const 1376
  local.get $0
  call $~lib/rt/itcms/__visit
  i32.const 2432
  local.get $0
  call $~lib/rt/itcms/__visit
 )
 (func $~lib/arraybuffer/ArrayBufferView~visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  i32.load
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
 )
 (func $~lib/object/Object~visit (param $0 i32) (param $1 i32)
 )
 (func $assembly/index/LastElement~visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  i32.load
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load offset=4
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load offset=8
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load offset=12
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load offset=16
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
 )
 (func $~lib/function/Function<%28i32%29=>i32>#get:_env (param $this i32) (result i32)
  local.get $this
  i32.load offset=4
 )
 (func $~lib/function/Function<%28i32%29=>i32>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  local.get $1
  call $~lib/function/Function<%28i32%29=>i32>#__visit
 )
 (func $assembly/index/ElementStack~visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  i32.load
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
 )
 (func $assembly/index/CreateElement~visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  i32.load
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load offset=4
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load offset=8
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load offset=12
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load offset=16
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load offset=20
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
 )
 (func $~lib/array/Array<assembly/index/CreateElement>#get:buffer (param $this i32) (result i32)
  local.get $this
  i32.load
 )
 (func $~lib/array/Array<assembly/index/CreateElement>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  local.get $1
  call $~lib/array/Array<assembly/index/CreateElement>#__visit
 )
 (func $assembly/index/ParseIdentifier~visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  i32.load
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load offset=4
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load offset=8
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load offset=12
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load offset=16
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load offset=20
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
 )
 (func $~lib/array/Array<i32>#get:buffer (param $this i32) (result i32)
  local.get $this
  i32.load
 )
 (func $~lib/array/Array<i32>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  local.get $1
  call $~lib/array/Array<i32>#__visit
 )
 (func $assembly/index/Responsive~visit (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  i32.load
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load offset=4
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/itcms/__visit
  end
 )
 (func $~lib/array/Array<assembly/index/Responsive>#get:buffer (param $this i32) (result i32)
  local.get $this
  i32.load
 )
 (func $~lib/array/Array<assembly/index/Responsive>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  local.get $1
  call $~lib/array/Array<assembly/index/Responsive>#__visit
 )
 (func $~lib/array/Array<~lib/string/String>#get:buffer (param $this i32) (result i32)
  local.get $this
  i32.load
 )
 (func $~lib/array/Array<~lib/string/String>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  local.get $1
  call $~lib/array/Array<~lib/string/String>#__visit
 )
 (func $~lib/function/Function<%28~lib/string/String%2Ci32%2C~lib/array/Array<~lib/string/String>%29=>bool>#get:_env (param $this i32) (result i32)
  local.get $this
  i32.load offset=4
 )
 (func $~lib/function/Function<%28~lib/string/String%2Ci32%2C~lib/array/Array<~lib/string/String>%29=>bool>~visit (param $0 i32) (param $1 i32)
  local.get $0
  local.get $1
  call $~lib/object/Object~visit
  local.get $0
  local.get $1
  call $~lib/function/Function<%28~lib/string/String%2Ci32%2C~lib/array/Array<~lib/string/String>%29=>bool>#__visit
 )
 (func $~lib/rt/__visit_members (param $0 i32) (param $1 i32)
  block $invalid
   block $~lib/function/Function<%28~lib/string/String%2Ci32%2C~lib/array/Array<~lib/string/String>%29=>bool>
    block $~lib/array/Array<~lib/string/String>
     block $~lib/array/Array<assembly/index/Responsive>
      block $assembly/index/Responsive
       block $~lib/array/Array<i32>
        block $assembly/index/ParseIdentifier
         block $~lib/array/Array<assembly/index/CreateElement>
          block $assembly/index/CreateElement
           block $assembly/index/ElementStack
            block $~lib/function/Function<%28i32%29=>i32>
             block $assembly/index/LastElement
              block $~lib/arraybuffer/ArrayBufferView
               block $~lib/string/String
                block $~lib/arraybuffer/ArrayBuffer
                 block $~lib/object/Object
                  local.get $0
                  i32.const 8
                  i32.sub
                  i32.load
                  br_table $~lib/object/Object $~lib/arraybuffer/ArrayBuffer $~lib/string/String $~lib/arraybuffer/ArrayBufferView $assembly/index/LastElement $~lib/function/Function<%28i32%29=>i32> $assembly/index/ElementStack $assembly/index/CreateElement $~lib/array/Array<assembly/index/CreateElement> $assembly/index/ParseIdentifier $~lib/array/Array<i32> $assembly/index/Responsive $~lib/array/Array<assembly/index/Responsive> $~lib/array/Array<~lib/string/String> $~lib/function/Function<%28~lib/string/String%2Ci32%2C~lib/array/Array<~lib/string/String>%29=>bool> $invalid
                 end
                 return
                end
                return
               end
               return
              end
              local.get $0
              local.get $1
              call $~lib/arraybuffer/ArrayBufferView~visit
              return
             end
             local.get $0
             local.get $1
             call $assembly/index/LastElement~visit
             return
            end
            local.get $0
            local.get $1
            call $~lib/function/Function<%28i32%29=>i32>~visit
            return
           end
           local.get $0
           local.get $1
           call $assembly/index/ElementStack~visit
           return
          end
          local.get $0
          local.get $1
          call $assembly/index/CreateElement~visit
          return
         end
         local.get $0
         local.get $1
         call $~lib/array/Array<assembly/index/CreateElement>~visit
         return
        end
        local.get $0
        local.get $1
        call $assembly/index/ParseIdentifier~visit
        return
       end
       local.get $0
       local.get $1
       call $~lib/array/Array<i32>~visit
       return
      end
      local.get $0
      local.get $1
      call $assembly/index/Responsive~visit
      return
     end
     local.get $0
     local.get $1
     call $~lib/array/Array<assembly/index/Responsive>~visit
     return
    end
    local.get $0
    local.get $1
    call $~lib/array/Array<~lib/string/String>~visit
    return
   end
   local.get $0
   local.get $1
   call $~lib/function/Function<%28~lib/string/String%2Ci32%2C~lib/array/Array<~lib/string/String>%29=>bool>~visit
   return
  end
  unreachable
 )
 (func $~start
  call $start:assembly/index
 )
 (func $~stack_check
  global.get $~lib/memory/__stack_pointer
  global.get $~lib/memory/__data_end
  i32.lt_s
  if
   i32.const 36432
   i32.const 36480
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $assembly/index/LastElement#constructor (param $this i32) (param $tagName i32) (param $props i32) (param $KEY i32) (param $parent i32) (param $text i32) (param $index i32) (result i32)
  (local $7 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 24
   i32.const 4
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store
  end
  local.get $this
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  local.get $7
  local.get $tagName
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=8
  local.get $7
  call $assembly/index/LastElement#set:tagName
  local.get $this
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  local.get $7
  local.get $props
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=8
  local.get $7
  call $assembly/index/LastElement#set:props
  local.get $this
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  local.get $7
  local.get $KEY
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=8
  local.get $7
  call $assembly/index/LastElement#set:KEY
  local.get $this
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  local.get $7
  local.get $parent
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=8
  local.get $7
  call $assembly/index/LastElement#set:parent
  local.get $this
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  local.get $7
  local.get $text
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=8
  local.get $7
  call $assembly/index/LastElement#set:text
  local.get $this
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  local.get $7
  local.get $index
  call $assembly/index/LastElement#set:index
  local.get $this
  local.set $7
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $7
 )
 (func $start:assembly/index
  (local $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 20
  memory.fill
  memory.size
  i32.const 16
  i32.shl
  global.get $~lib/memory/__heap_base
  i32.sub
  i32.const 1
  i32.shr_u
  global.set $~lib/rt/itcms/threshold
  i32.const 144
  call $~lib/rt/itcms/initLazy
  global.set $~lib/rt/itcms/pinSpace
  i32.const 176
  call $~lib/rt/itcms/initLazy
  global.set $~lib/rt/itcms/toSpace
  i32.const 320
  call $~lib/rt/itcms/initLazy
  global.set $~lib/rt/itcms/fromSpace
  i32.const 0
  i32.const 432
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 432
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  local.get $0
  i32.const 432
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=8
  local.get $0
  i32.const 432
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=12
  local.get $0
  i32.const 432
  local.set $0
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=16
  local.get $0
  i32.const 0
  call $assembly/index/LastElement#constructor
  global.set $assembly/index/lastElement
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $assembly/index/ParseIdentifier#constructor (param $this i32) (param $leftOpen i32) (param $tagClose i32) (param $rightOpen i32) (param $templateLeft i32) (param $templateRight i32) (param $NULL i32) (param $LEFT f64) (param $MIDDLE f64) (param $RIGHT f64) (result i32)
  (local $10 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 48
   i32.const 9
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store
  end
  local.get $this
  local.set $10
  global.get $~lib/memory/__stack_pointer
  local.get $10
  i32.store offset=4
  local.get $10
  local.get $leftOpen
  local.set $10
  global.get $~lib/memory/__stack_pointer
  local.get $10
  i32.store offset=8
  local.get $10
  call $assembly/index/ParseIdentifier#set:leftOpen
  local.get $this
  local.set $10
  global.get $~lib/memory/__stack_pointer
  local.get $10
  i32.store offset=4
  local.get $10
  local.get $tagClose
  local.set $10
  global.get $~lib/memory/__stack_pointer
  local.get $10
  i32.store offset=8
  local.get $10
  call $assembly/index/ParseIdentifier#set:tagClose
  local.get $this
  local.set $10
  global.get $~lib/memory/__stack_pointer
  local.get $10
  i32.store offset=4
  local.get $10
  local.get $rightOpen
  local.set $10
  global.get $~lib/memory/__stack_pointer
  local.get $10
  i32.store offset=8
  local.get $10
  call $assembly/index/ParseIdentifier#set:rightOpen
  local.get $this
  local.set $10
  global.get $~lib/memory/__stack_pointer
  local.get $10
  i32.store offset=4
  local.get $10
  local.get $templateLeft
  local.set $10
  global.get $~lib/memory/__stack_pointer
  local.get $10
  i32.store offset=8
  local.get $10
  call $assembly/index/ParseIdentifier#set:templateLeft
  local.get $this
  local.set $10
  global.get $~lib/memory/__stack_pointer
  local.get $10
  i32.store offset=4
  local.get $10
  local.get $templateRight
  local.set $10
  global.get $~lib/memory/__stack_pointer
  local.get $10
  i32.store offset=8
  local.get $10
  call $assembly/index/ParseIdentifier#set:templateRight
  local.get $this
  local.set $10
  global.get $~lib/memory/__stack_pointer
  local.get $10
  i32.store offset=4
  local.get $10
  local.get $NULL
  local.set $10
  global.get $~lib/memory/__stack_pointer
  local.get $10
  i32.store offset=8
  local.get $10
  call $assembly/index/ParseIdentifier#set:NULL
  local.get $this
  local.set $10
  global.get $~lib/memory/__stack_pointer
  local.get $10
  i32.store offset=4
  local.get $10
  local.get $LEFT
  call $assembly/index/ParseIdentifier#set:LEFT
  local.get $this
  local.set $10
  global.get $~lib/memory/__stack_pointer
  local.get $10
  i32.store offset=4
  local.get $10
  local.get $MIDDLE
  call $assembly/index/ParseIdentifier#set:MIDDLE
  local.get $this
  local.set $10
  global.get $~lib/memory/__stack_pointer
  local.get $10
  i32.store offset=4
  local.get $10
  local.get $RIGHT
  call $assembly/index/ParseIdentifier#set:RIGHT
  local.get $this
  local.set $10
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $10
 )
 (func $assembly/index/ElementStack#constructor (param $this i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.const 6
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store
  end
  global.get $~lib/memory/__stack_pointer
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=4
  local.get $3
  call $~lib/object/Object#constructor
  local.tee $this
  i32.store
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=4
  local.get $3
  i32.const 0
  i32.const 2
  i32.const 8
  i32.const 688
  call $~lib/rt/__newArray
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=8
  local.get $3
  call $assembly/index/ElementStack#set:stack
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=4
  local.get $3
  i32.const 0
  call $assembly/index/ElementStack#set:index
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $~lib/string/String#concat (param $this i32) (param $other i32) (result i32)
  (local $thisSize i32)
  (local $otherSize i32)
  (local $outSize i32)
  (local $out i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $this
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store
  local.get $6
  call $~lib/string/String#get:length
  i32.const 1
  i32.shl
  local.set $thisSize
  local.get $other
  local.set $6
  global.get $~lib/memory/__stack_pointer
  local.get $6
  i32.store
  local.get $6
  call $~lib/string/String#get:length
  i32.const 1
  i32.shl
  local.set $otherSize
  local.get $thisSize
  local.get $otherSize
  i32.add
  local.set $outSize
  local.get $outSize
  i32.const 0
  i32.eq
  if
   i32.const 432
   local.set $6
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $6
   return
  end
  global.get $~lib/memory/__stack_pointer
  local.get $outSize
  i32.const 2
  call $~lib/rt/itcms/__new
  local.tee $out
  i32.store offset=4
  local.get $out
  local.get $this
  local.get $thisSize
  memory.copy
  local.get $out
  local.get $thisSize
  i32.add
  local.get $other
  local.get $otherSize
  memory.copy
  local.get $out
  local.set $6
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $6
  return
 )
 (func $~lib/string/String.__concat (param $left i32) (param $right i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $left
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  local.get $right
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  call $~lib/string/String#concat
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
  return
 )
 (func $assembly/index/CreateElement#setKEY (param $this i32) (param $k i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  local.get $k
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  call $assembly/index/CreateElement#set:KEY
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $assembly/index/CreateElement#constructor (param $this i32) (param $tagName i32) (param $props i32) (param $child i32) (param $elementKEY i32) (result i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 28
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 28
  memory.fill
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 24
   i32.const 7
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store
  end
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=4
  local.get $5
  local.get $tagName
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=8
  local.get $5
  call $assembly/index/CreateElement#set:tagName
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=4
  local.get $5
  local.get $props
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=8
  local.get $5
  call $assembly/index/CreateElement#set:props
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=4
  local.get $5
  local.get $child
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=8
  local.get $5
  call $assembly/index/CreateElement#set:child
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=4
  local.get $5
  local.get $elementKEY
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=8
  local.get $5
  call $assembly/index/CreateElement#set:elementKEY
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=4
  local.get $5
  i32.const 2528
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=8
  local.get $5
  call $assembly/index/CreateElement#set:KEY
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=4
  local.get $5
  i32.const 0
  call $assembly/index/CreateElement#set:text
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=4
  local.get $5
  local.get $elementKEY
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=20
  local.get $5
  i32.const 720
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=24
  local.get $5
  call $~lib/string/String.__concat
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=12
  local.get $5
  global.get $assembly/index/i
  i32.const 10
  call $~lib/number/I32#toString
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=16
  local.get $5
  call $~lib/string/String.__concat
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=8
  local.get $5
  call $assembly/index/CreateElement#setKEY
  global.get $assembly/index/i
  i32.const 1
  i32.add
  global.set $assembly/index/i
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  i32.const 28
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $5
 )
 (func $~lib/string/String#substring (param $this i32) (param $start i32) (param $end i32) (result i32)
  (local $len i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $finalStart i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $finalEnd i32)
  (local $14 i32)
  (local $15 i32)
  (local $fromPos i32)
  (local $17 i32)
  (local $18 i32)
  (local $toPos i32)
  (local $size i32)
  (local $out i32)
  (local $22 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $this
  local.set $22
  global.get $~lib/memory/__stack_pointer
  local.get $22
  i32.store
  local.get $22
  call $~lib/string/String#get:length
  local.set $len
  local.get $start
  local.tee $4
  i32.const 0
  local.tee $5
  local.get $4
  local.get $5
  i32.gt_s
  select
  local.tee $6
  local.get $len
  local.tee $7
  local.get $6
  local.get $7
  i32.lt_s
  select
  local.set $finalStart
  local.get $end
  local.tee $9
  i32.const 0
  local.tee $10
  local.get $9
  local.get $10
  i32.gt_s
  select
  local.tee $11
  local.get $len
  local.tee $12
  local.get $11
  local.get $12
  i32.lt_s
  select
  local.set $finalEnd
  local.get $finalStart
  local.tee $14
  local.get $finalEnd
  local.tee $15
  local.get $14
  local.get $15
  i32.lt_s
  select
  i32.const 1
  i32.shl
  local.set $fromPos
  local.get $finalStart
  local.tee $17
  local.get $finalEnd
  local.tee $18
  local.get $17
  local.get $18
  i32.gt_s
  select
  i32.const 1
  i32.shl
  local.set $toPos
  local.get $toPos
  local.get $fromPos
  i32.sub
  local.set $size
  local.get $size
  i32.eqz
  if
   i32.const 432
   local.set $22
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $22
   return
  end
  local.get $fromPos
  i32.eqz
  if (result i32)
   local.get $toPos
   local.get $len
   i32.const 1
   i32.shl
   i32.eq
  else
   i32.const 0
  end
  if
   local.get $this
   local.set $22
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $22
   return
  end
  global.get $~lib/memory/__stack_pointer
  local.get $size
  i32.const 2
  call $~lib/rt/itcms/__new
  local.tee $out
  i32.store offset=4
  local.get $out
  local.get $this
  local.get $fromPos
  i32.add
  local.get $size
  memory.copy
  local.get $out
  local.set $22
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $22
  return
 )
 (func $~lib/string/String.__eq (param $left i32) (param $right i32) (result i32)
  (local $leftLength i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $left
  local.get $right
  i32.eq
  if
   i32.const 1
   local.set $3
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $3
   return
  end
  local.get $left
  i32.const 0
  i32.eq
  if (result i32)
   i32.const 1
  else
   local.get $right
   i32.const 0
   i32.eq
  end
  if
   i32.const 0
   local.set $3
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $3
   return
  end
  local.get $left
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  call $~lib/string/String#get:length
  local.set $leftLength
  local.get $leftLength
  local.get $right
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  call $~lib/string/String#get:length
  i32.ne
  if
   i32.const 0
   local.set $3
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $3
   return
  end
  local.get $left
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  i32.const 0
  local.get $right
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=4
  local.get $3
  i32.const 0
  local.get $leftLength
  call $~lib/util/string/compareImpl
  i32.eqz
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
  return
 )
 (func $~lib/string/String.__ne (param $left i32) (param $right i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $left
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  local.get $right
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  call $~lib/string/String.__eq
  i32.eqz
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
  return
 )
 (func $~lib/array/Array<assembly/index/CreateElement>#__get (param $this i32) (param $index i32) (result i32)
  (local $value i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $index
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  call $~lib/array/Array<assembly/index/CreateElement>#get:length_
  i32.ge_u
  if
   i32.const 224
   i32.const 2608
   i32.const 114
   i32.const 42
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  call $~lib/array/Array<assembly/index/CreateElement>#get:dataStart
  local.get $index
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.tee $value
  i32.store offset=4
  i32.const 1
  drop
  i32.const 0
  i32.eqz
  drop
  local.get $value
  i32.eqz
  if
   i32.const 2656
   i32.const 2608
   i32.const 118
   i32.const 40
   call $~lib/builtins/abort
   unreachable
  end
  local.get $value
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
  return
 )
 (func $assembly/index/ElementStack#lastStack (param $this i32) (result i32)
  (local $ind i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  call $assembly/index/ElementStack#get:index
  i32.const 1
  i32.sub
  i32.const 0
  i32.ge_s
  if (result i32)
   local.get $this
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store
   local.get $2
   call $assembly/index/ElementStack#get:index
   i32.const 1
   i32.sub
  else
   i32.const 0
  end
  local.set $ind
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  call $assembly/index/ElementStack#get:stack
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  local.get $ind
  call $~lib/array/Array<assembly/index/CreateElement>#__get
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
  return
 )
 (func $assembly/index/CreateElement#handleChangeTagName (param $this i32) (param $name i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  local.get $name
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  call $assembly/index/CreateElement#set:tagName
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/string/String#trim (param $this i32) (result i32)
  (local $len i32)
  (local $size i32)
  (local $offset i32)
  (local $out i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store
  local.get $5
  call $~lib/string/String#get:length
  local.set $len
  local.get $len
  i32.const 1
  i32.shl
  local.set $size
  loop $while-continue|0
   local.get $size
   if (result i32)
    local.get $this
    local.get $size
    i32.add
    i32.const 2
    i32.sub
    i32.load16_u
    call $~lib/util/string/isSpace
   else
    i32.const 0
   end
   if
    local.get $size
    i32.const 2
    i32.sub
    local.set $size
    br $while-continue|0
   end
  end
  i32.const 0
  local.set $offset
  loop $while-continue|1
   local.get $offset
   local.get $size
   i32.lt_u
   if (result i32)
    local.get $this
    local.get $offset
    i32.add
    i32.load16_u
    call $~lib/util/string/isSpace
   else
    i32.const 0
   end
   if
    local.get $offset
    i32.const 2
    i32.add
    local.set $offset
    local.get $size
    i32.const 2
    i32.sub
    local.set $size
    br $while-continue|1
   end
  end
  local.get $size
  i32.eqz
  if
   i32.const 432
   local.set $5
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $5
   return
  end
  local.get $offset
  i32.eqz
  if (result i32)
   local.get $size
   local.get $len
   i32.const 1
   i32.shl
   i32.eq
  else
   i32.const 0
  end
  if
   local.get $this
   local.set $5
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $5
   return
  end
  global.get $~lib/memory/__stack_pointer
  local.get $size
  i32.const 2
  call $~lib/rt/itcms/__new
  local.tee $out
  i32.store offset=4
  local.get $out
  local.get $this
  local.get $offset
  i32.add
  local.get $size
  memory.copy
  local.get $out
  local.set $5
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $5
  return
 )
 (func $assembly/index/CreateElement#setText (param $this i32) (param $text i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  local.get $text
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  call $assembly/index/CreateElement#set:text
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $assembly/index/createText (param $templateKEY i32) (param $text i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $e i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 20
  memory.fill
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 2848
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store
  local.get $5
  i32.const 432
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=4
  local.get $5
  i32.const 0
  i32.const 2
  i32.const 8
  i32.const 2880
  call $~lib/rt/__newArray
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=8
  local.get $5
  local.get $templateKEY
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=12
  local.get $5
  call $assembly/index/CreateElement#constructor
  local.tee $e
  i32.store offset=16
  local.get $e
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store
  local.get $5
  local.get $text
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=4
  local.get $5
  call $assembly/index/CreateElement#setText
  local.get $e
  local.set $5
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $5
  return
 )
 (func $~lib/array/ensureCapacity (param $array i32) (param $newSize i32) (param $alignLog2 i32) (param $canGrow i32)
  (local $oldCapacity i32)
  (local $oldData i32)
  (local $6 i32)
  (local $7 i32)
  (local $newCapacity i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $newData i32)
  (local $14 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $array
  local.set $14
  global.get $~lib/memory/__stack_pointer
  local.get $14
  i32.store
  local.get $14
  call $~lib/arraybuffer/ArrayBufferView#get:byteLength
  local.set $oldCapacity
  local.get $newSize
  local.get $oldCapacity
  local.get $alignLog2
  i32.shr_u
  i32.gt_u
  if
   local.get $newSize
   i32.const 1073741820
   local.get $alignLog2
   i32.shr_u
   i32.gt_u
   if
    i32.const 2912
    i32.const 2608
    i32.const 19
    i32.const 48
    call $~lib/builtins/abort
    unreachable
   end
   local.get $array
   local.set $14
   global.get $~lib/memory/__stack_pointer
   local.get $14
   i32.store
   local.get $14
   call $~lib/arraybuffer/ArrayBufferView#get:buffer
   local.set $oldData
   local.get $newSize
   local.tee $6
   i32.const 8
   local.tee $7
   local.get $6
   local.get $7
   i32.gt_u
   select
   local.get $alignLog2
   i32.shl
   local.set $newCapacity
   local.get $canGrow
   if
    local.get $oldCapacity
    i32.const 1
    i32.shl
    local.tee $9
    i32.const 1073741820
    local.tee $10
    local.get $9
    local.get $10
    i32.lt_u
    select
    local.tee $11
    local.get $newCapacity
    local.tee $12
    local.get $11
    local.get $12
    i32.gt_u
    select
    local.set $newCapacity
   end
   local.get $oldData
   local.get $newCapacity
   call $~lib/rt/itcms/__renew
   local.set $newData
   i32.const 2
   global.get $~lib/shared/runtime/Runtime.Incremental
   i32.ne
   drop
   local.get $newData
   local.get $oldData
   i32.ne
   if
    local.get $array
    local.get $newData
    i32.store
    local.get $array
    local.get $newData
    i32.store offset=4
    local.get $array
    local.get $newData
    i32.const 0
    call $~lib/rt/itcms/__link
   end
   local.get $array
   local.get $newCapacity
   i32.store offset=8
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/array/Array<assembly/index/CreateElement>#push (param $this i32) (param $value i32) (result i32)
  (local $oldLen i32)
  (local $len i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store
  local.get $4
  call $~lib/array/Array<assembly/index/CreateElement>#get:length_
  local.set $oldLen
  local.get $oldLen
  i32.const 1
  i32.add
  local.set $len
  local.get $this
  local.get $len
  i32.const 2
  i32.const 1
  call $~lib/array/ensureCapacity
  i32.const 1
  drop
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store
  local.get $4
  call $~lib/array/Array<assembly/index/CreateElement>#get:dataStart
  local.get $oldLen
  i32.const 2
  i32.shl
  i32.add
  local.get $value
  i32.store
  local.get $this
  local.get $value
  i32.const 1
  call $~lib/rt/itcms/__link
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store
  local.get $4
  local.get $len
  call $~lib/array/Array<assembly/index/CreateElement>#set:length_
  local.get $len
  local.set $4
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
  return
 )
 (func $assembly/index/createTemplate (param $templateKEY i32) (param $tem i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $e i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 20
  memory.fill
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 2960
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store
  local.get $5
  i32.const 432
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=4
  local.get $5
  i32.const 0
  i32.const 2
  i32.const 8
  i32.const 3008
  call $~lib/rt/__newArray
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=8
  local.get $5
  local.get $templateKEY
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=12
  local.get $5
  call $assembly/index/CreateElement#constructor
  local.tee $e
  i32.store offset=16
  local.get $e
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store
  local.get $5
  local.get $tem
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=4
  local.get $5
  call $assembly/index/CreateElement#setText
  local.get $e
  local.set $5
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $5
  return
 )
 (func $~lib/array/Array<assembly/index/CreateElement>#concat (param $this i32) (param $other i32) (result i32)
  (local $thisLen i32)
  (local $otherLen i32)
  (local $outLen i32)
  (local $out i32)
  (local $outStart i32)
  (local $thisSize i32)
  (local $thisStart i32)
  (local $offset i32)
  (local $ref i32)
  (local $otherStart i32)
  (local $otherSize i32)
  (local $offset|13 i32)
  (local $ref|14 i32)
  (local $15 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $this
  local.set $15
  global.get $~lib/memory/__stack_pointer
  local.get $15
  i32.store
  local.get $15
  call $~lib/array/Array<assembly/index/CreateElement>#get:length_
  local.set $thisLen
  local.get $other
  local.set $15
  global.get $~lib/memory/__stack_pointer
  local.get $15
  i32.store
  local.get $15
  call $~lib/array/Array<assembly/index/CreateElement>#get:length_
  local.set $otherLen
  local.get $thisLen
  local.get $otherLen
  i32.add
  local.set $outLen
  local.get $outLen
  i32.const 1073741820
  i32.const 2
  i32.shr_u
  i32.gt_u
  if
   i32.const 2912
   i32.const 2608
   i32.const 224
   i32.const 60
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $outLen
  i32.const 2
  i32.const 8
  i32.const 0
  call $~lib/rt/__newArray
  local.tee $out
  i32.store offset=4
  local.get $out
  local.set $15
  global.get $~lib/memory/__stack_pointer
  local.get $15
  i32.store
  local.get $15
  call $~lib/array/Array<assembly/index/CreateElement>#get:dataStart
  local.set $outStart
  local.get $thisLen
  i32.const 2
  i32.shl
  local.set $thisSize
  i32.const 1
  drop
  local.get $this
  local.set $15
  global.get $~lib/memory/__stack_pointer
  local.get $15
  i32.store
  local.get $15
  call $~lib/array/Array<assembly/index/CreateElement>#get:dataStart
  local.set $thisStart
  i32.const 0
  local.set $offset
  loop $for-loop|0
   local.get $offset
   local.get $thisSize
   i32.lt_u
   if
    local.get $thisStart
    local.get $offset
    i32.add
    i32.load
    local.set $ref
    local.get $outStart
    local.get $offset
    i32.add
    local.get $ref
    i32.store
    local.get $out
    local.get $ref
    i32.const 1
    call $~lib/rt/itcms/__link
    local.get $offset
    i32.const 4
    i32.add
    local.set $offset
    br $for-loop|0
   end
  end
  local.get $outStart
  local.get $thisSize
  i32.add
  local.set $outStart
  local.get $other
  local.set $15
  global.get $~lib/memory/__stack_pointer
  local.get $15
  i32.store
  local.get $15
  call $~lib/array/Array<assembly/index/CreateElement>#get:dataStart
  local.set $otherStart
  local.get $otherLen
  i32.const 2
  i32.shl
  local.set $otherSize
  i32.const 0
  local.set $offset|13
  loop $for-loop|1
   local.get $offset|13
   local.get $otherSize
   i32.lt_u
   if
    local.get $otherStart
    local.get $offset|13
    i32.add
    i32.load
    local.set $ref|14
    local.get $outStart
    local.get $offset|13
    i32.add
    local.get $ref|14
    i32.store
    local.get $out
    local.get $ref|14
    i32.const 1
    call $~lib/rt/itcms/__link
    local.get $offset|13
    i32.const 4
    i32.add
    local.set $offset|13
    br $for-loop|1
   end
  end
  local.get $out
  local.set $15
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $15
  return
 )
 (func $assembly/index/CreateElement#pushChildList (param $this i32) (param $c i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 20
  memory.fill
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=16
  local.get $2
  call $assembly/index/CreateElement#get:child
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=8
  local.get $2
  local.get $c
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=12
  local.get $2
  call $~lib/array/Array<assembly/index/CreateElement>#concat
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  call $assembly/index/CreateElement#set:child
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $assembly/index/CreateElement#pushSingleChild (param $this i32) (param $c i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=8
  local.get $2
  call $assembly/index/CreateElement#get:child
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  local.get $c
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  call $~lib/array/Array<assembly/index/CreateElement>#push
  drop
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $assembly/index/ElementStack#push (param $this i32) (param $element i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  call $assembly/index/ElementStack#get:index
  i32.const 1
  i32.add
  call $assembly/index/ElementStack#set:index
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=8
  local.get $2
  call $assembly/index/ElementStack#get:stack
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  local.get $element
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  local.get $2
  call $~lib/array/Array<assembly/index/CreateElement>#push
  drop
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $assembly/index/CreateElement#handleSetProps (param $this i32) (param $props i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  local.get $props
  if (result i32)
   local.get $this
   local.set $3
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store
   local.get $3
   global.get $~lib/memory/__stack_pointer
   local.get $props
   local.tee $2
   i32.store offset=8
   local.get $2
   local.set $3
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=4
   local.get $3
   call $assembly/index/CreateElement#set:props
   local.get $2
  else
   i32.const 0
  end
  drop
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $assembly/index/ElementStack#getLength (param $this i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  call $assembly/index/ElementStack#get:index
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
  return
 )
 (func $~lib/array/Array<assembly/index/CreateElement>#pop (param $this i32) (result i32)
  (local $len i32)
  (local $val i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  call $~lib/array/Array<assembly/index/CreateElement>#get:length_
  local.set $len
  local.get $len
  i32.const 1
  i32.lt_s
  if
   i32.const 3136
   i32.const 2608
   i32.const 271
   i32.const 18
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  call $~lib/array/Array<assembly/index/CreateElement>#get:dataStart
  local.get $len
  i32.const 1
  i32.sub
  local.tee $len
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.tee $val
  i32.store offset=4
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  local.get $len
  call $~lib/array/Array<assembly/index/CreateElement>#set:length_
  local.get $val
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
  return
 )
 (func $assembly/index/ElementStack#pop (param $this i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  call $assembly/index/ElementStack#get:index
  i32.const 1
  i32.sub
  call $assembly/index/ElementStack#set:index
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $1
  call $assembly/index/ElementStack#get:stack
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  call $~lib/array/Array<assembly/index/CreateElement>#pop
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
  return
 )
 (func $assembly/index/wasmParse (param $html_s i32) (param $templateKEY i32) (result i32)
  (local $Identifier i32)
  (local $stack i32)
  (local $4 i32)
  (local $5 i32)
  (local $element i32)
  (local $len i32)
  (local $elId i32)
  (local $tag i32)
  (local $attr i32)
  (local $templateName i32)
  (local $child_text i32)
  (local $child_s i32)
  (local $openOrCloseState f64)
  (local $i i32)
  (local $char i32)
  (local $nextChar i32)
  (local $element|18 i32)
  (local $tem i32)
  (local $20 i32)
  (local $21 i32)
  (local $lastStack i32)
  (local $element|23 i32)
  (local $24 i32)
  (local $25 i32)
  (local $lastStack|26 i32)
  (local $27 i32)
  (local $28 i32)
  (local $element|29 i32)
  (local $lastStack|30 i32)
  (local $newStack i32)
  (local $32 i32)
  (local $33 i32)
  (local $34 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 96
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 96
  memory.fill
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 496
  local.set $34
  global.get $~lib/memory/__stack_pointer
  local.get $34
  i32.store
  local.get $34
  i32.const 528
  local.set $34
  global.get $~lib/memory/__stack_pointer
  local.get $34
  i32.store offset=4
  local.get $34
  i32.const 560
  local.set $34
  global.get $~lib/memory/__stack_pointer
  local.get $34
  i32.store offset=8
  local.get $34
  i32.const 592
  local.set $34
  global.get $~lib/memory/__stack_pointer
  local.get $34
  i32.store offset=12
  local.get $34
  i32.const 624
  local.set $34
  global.get $~lib/memory/__stack_pointer
  local.get $34
  i32.store offset=16
  local.get $34
  i32.const 656
  local.set $34
  global.get $~lib/memory/__stack_pointer
  local.get $34
  i32.store offset=20
  local.get $34
  f64.const 1
  f64.const 2
  f64.const 3
  call $assembly/index/ParseIdentifier#constructor
  local.tee $Identifier
  i32.store offset=24
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  call $assembly/index/ElementStack#constructor
  local.tee $stack
  i32.store offset=28
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 0
  i32.const 432
  local.set $34
  global.get $~lib/memory/__stack_pointer
  local.get $34
  i32.store
  local.get $34
  i32.const 0
  i32.const 2
  i32.const 8
  i32.const 2576
  call $~lib/rt/__newArray
  local.set $34
  global.get $~lib/memory/__stack_pointer
  local.get $34
  i32.store offset=4
  local.get $34
  local.get $templateKEY
  local.set $34
  global.get $~lib/memory/__stack_pointer
  local.get $34
  i32.store offset=8
  local.get $34
  call $assembly/index/CreateElement#constructor
  local.tee $element
  i32.store offset=32
  local.get $html_s
  local.set $34
  global.get $~lib/memory/__stack_pointer
  local.get $34
  i32.store
  local.get $34
  call $~lib/string/String#get:length
  local.set $len
  i32.const 0
  local.set $elId
  i32.const 0
  local.set $tag
  i32.const 0
  local.set $attr
  i32.const 0
  local.set $templateName
  global.get $~lib/memory/__stack_pointer
  i32.const 432
  local.tee $child_text
  i32.store offset=36
  i32.const 0
  local.set $child_s
  local.get $Identifier
  local.set $34
  global.get $~lib/memory/__stack_pointer
  local.get $34
  i32.store
  local.get $34
  call $assembly/index/ParseIdentifier#get:LEFT
  local.set $openOrCloseState
  i32.const 0
  local.set $i
  loop $for-loop|0
   local.get $i
   local.get $len
   i32.lt_s
   if
    block $for-continue|0
     global.get $~lib/memory/__stack_pointer
     local.get $html_s
     local.set $34
     global.get $~lib/memory/__stack_pointer
     local.get $34
     i32.store
     local.get $34
     local.get $i
     local.get $i
     i32.const 1
     i32.add
     call $~lib/string/String#substring
     local.tee $char
     i32.store offset=40
     global.get $~lib/memory/__stack_pointer
     local.get $html_s
     local.set $34
     global.get $~lib/memory/__stack_pointer
     local.get $34
     i32.store
     local.get $34
     local.get $i
     i32.const 1
     i32.add
     local.get $i
     i32.const 2
     i32.add
     call $~lib/string/String#substring
     local.tee $nextChar
     i32.store offset=44
     local.get $char
     local.set $34
     global.get $~lib/memory/__stack_pointer
     local.get $34
     i32.store
     local.get $34
     local.get $Identifier
     local.set $34
     global.get $~lib/memory/__stack_pointer
     local.get $34
     i32.store offset=8
     local.get $34
     call $assembly/index/ParseIdentifier#get:tagClose
     local.set $34
     global.get $~lib/memory/__stack_pointer
     local.get $34
     i32.store offset=4
     local.get $34
     call $~lib/string/String.__ne
     if (result i32)
      local.get $openOrCloseState
      local.get $Identifier
      local.set $34
      global.get $~lib/memory/__stack_pointer
      local.get $34
      i32.store
      local.get $34
      call $assembly/index/ParseIdentifier#get:LEFT
      f64.eq
     else
      i32.const 0
     end
     if
      local.get $tag
      local.set $34
      global.get $~lib/memory/__stack_pointer
      local.get $34
      i32.store
      local.get $34
      i32.const 0
      call $~lib/string/String.__ne
      if
       local.get $char
       local.set $34
       global.get $~lib/memory/__stack_pointer
       local.get $34
       i32.store
       local.get $34
       local.get $Identifier
       local.set $34
       global.get $~lib/memory/__stack_pointer
       local.get $34
       i32.store offset=8
       local.get $34
       call $assembly/index/ParseIdentifier#get:NULL
       local.set $34
       global.get $~lib/memory/__stack_pointer
       local.get $34
       i32.store offset=4
       local.get $34
       call $~lib/string/String.__ne
       if
        global.get $~lib/memory/__stack_pointer
        local.get $tag
        local.set $34
        global.get $~lib/memory/__stack_pointer
        local.get $34
        i32.store
        local.get $34
        local.get $char
        local.set $34
        global.get $~lib/memory/__stack_pointer
        local.get $34
        i32.store offset=4
        local.get $34
        call $~lib/string/String.__concat
        local.tee $tag
        i32.store offset=48
       else
        global.get $~lib/memory/__stack_pointer
        local.get $stack
        local.set $34
        global.get $~lib/memory/__stack_pointer
        local.get $34
        i32.store
        local.get $34
        call $assembly/index/ElementStack#lastStack
        local.tee $element|18
        i32.store offset=52
        local.get $element|18
        local.set $34
        global.get $~lib/memory/__stack_pointer
        local.get $34
        i32.store
        local.get $34
        local.get $tag
        local.set $34
        global.get $~lib/memory/__stack_pointer
        local.get $34
        i32.store offset=4
        local.get $34
        call $assembly/index/CreateElement#handleChangeTagName
        global.get $~lib/memory/__stack_pointer
        i32.const 432
        local.tee $attr
        i32.store offset=56
        i32.const 0
        local.set $tag
       end
      end
      local.get $attr
      local.set $34
      global.get $~lib/memory/__stack_pointer
      local.get $34
      i32.store
      local.get $34
      i32.const 0
      call $~lib/string/String.__ne
      if
       global.get $~lib/memory/__stack_pointer
       local.get $attr
       local.set $34
       global.get $~lib/memory/__stack_pointer
       local.get $34
       i32.store
       local.get $34
       local.get $char
       local.set $34
       global.get $~lib/memory/__stack_pointer
       local.get $34
       i32.store offset=8
       local.get $34
       i32.const 2784
       local.set $34
       global.get $~lib/memory/__stack_pointer
       local.get $34
       i32.store offset=12
       local.get $34
       call $~lib/string/String.__eq
       if (result i32)
        i32.const 2816
       else
        local.get $char
       end
       local.set $34
       global.get $~lib/memory/__stack_pointer
       local.get $34
       i32.store offset=4
       local.get $34
       call $~lib/string/String.__concat
       local.tee $attr
       i32.store offset=56
      end
     end
     local.get $templateName
     local.set $34
     global.get $~lib/memory/__stack_pointer
     local.get $34
     i32.store
     local.get $34
     i32.const 0
     call $~lib/string/String.__ne
     if (result i32)
      local.get $char
      local.set $34
      global.get $~lib/memory/__stack_pointer
      local.get $34
      i32.store
      local.get $34
      local.get $Identifier
      local.set $34
      global.get $~lib/memory/__stack_pointer
      local.get $34
      i32.store offset=8
      local.get $34
      call $assembly/index/ParseIdentifier#get:templateLeft
      local.set $34
      global.get $~lib/memory/__stack_pointer
      local.get $34
      i32.store offset=4
      local.get $34
      call $~lib/string/String.__ne
     else
      i32.const 0
     end
     if (result i32)
      local.get $char
      local.set $34
      global.get $~lib/memory/__stack_pointer
      local.get $34
      i32.store
      local.get $34
      local.get $Identifier
      local.set $34
      global.get $~lib/memory/__stack_pointer
      local.get $34
      i32.store offset=8
      local.get $34
      call $assembly/index/ParseIdentifier#get:templateRight
      local.set $34
      global.get $~lib/memory/__stack_pointer
      local.get $34
      i32.store offset=4
      local.get $34
      call $~lib/string/String.__ne
     else
      i32.const 0
     end
     if
      global.get $~lib/memory/__stack_pointer
      local.get $templateName
      local.set $34
      global.get $~lib/memory/__stack_pointer
      local.get $34
      i32.store
      local.get $34
      local.get $char
      local.set $34
      global.get $~lib/memory/__stack_pointer
      local.get $34
      i32.store offset=4
      local.get $34
      call $~lib/string/String.__concat
      local.tee $templateName
      i32.store offset=60
     end
     local.get $char
     local.set $34
     global.get $~lib/memory/__stack_pointer
     local.get $34
     i32.store
     local.get $34
     local.get $Identifier
     local.set $34
     global.get $~lib/memory/__stack_pointer
     local.get $34
     i32.store offset=8
     local.get $34
     call $assembly/index/ParseIdentifier#get:templateLeft
     local.set $34
     global.get $~lib/memory/__stack_pointer
     local.get $34
     i32.store offset=4
     local.get $34
     call $~lib/string/String.__eq
     if
      global.get $~lib/memory/__stack_pointer
      i32.const 432
      local.tee $templateName
      i32.store offset=60
     else
      local.get $char
      local.set $34
      global.get $~lib/memory/__stack_pointer
      local.get $34
      i32.store
      local.get $34
      local.get $Identifier
      local.set $34
      global.get $~lib/memory/__stack_pointer
      local.get $34
      i32.store offset=8
      local.get $34
      call $assembly/index/ParseIdentifier#get:templateRight
      local.set $34
      global.get $~lib/memory/__stack_pointer
      local.get $34
      i32.store offset=4
      local.get $34
      call $~lib/string/String.__eq
      if
       global.get $~lib/memory/__stack_pointer
       local.get $templateName
       if (result i32)
        local.get $templateName
        local.set $34
        global.get $~lib/memory/__stack_pointer
        local.get $34
        i32.store
        local.get $34
        call $~lib/string/String#trim
       else
        i32.const 432
       end
       local.tee $tem
       i32.store offset=64
       local.get $child_text
       local.set $34
       global.get $~lib/memory/__stack_pointer
       local.get $34
       i32.store
       local.get $34
       i32.const 432
       local.set $34
       global.get $~lib/memory/__stack_pointer
       local.get $34
       i32.store offset=4
       local.get $34
       call $~lib/string/String.__ne
       if
        local.get $child_s
        if (result i32)
         local.get $child_s
         local.set $34
         global.get $~lib/memory/__stack_pointer
         local.get $34
         i32.store
         local.get $34
         local.get $templateKEY
         local.set $34
         global.get $~lib/memory/__stack_pointer
         local.get $34
         i32.store offset=8
         local.get $34
         local.get $child_text
         local.set $34
         global.get $~lib/memory/__stack_pointer
         local.get $34
         i32.store offset=12
         local.get $34
         call $assembly/index/createText
         local.set $34
         global.get $~lib/memory/__stack_pointer
         local.get $34
         i32.store offset=4
         local.get $34
         call $~lib/array/Array<assembly/index/CreateElement>#push
        else
         i32.const 0
        end
        drop
        global.get $~lib/memory/__stack_pointer
        i32.const 432
        local.tee $child_text
        i32.store offset=36
       end
       local.get $child_s
       if (result i32)
        local.get $child_s
        local.set $34
        global.get $~lib/memory/__stack_pointer
        local.get $34
        i32.store
        local.get $34
        local.get $templateKEY
        local.set $34
        global.get $~lib/memory/__stack_pointer
        local.get $34
        i32.store offset=8
        local.get $34
        local.get $tem
        local.set $34
        global.get $~lib/memory/__stack_pointer
        local.get $34
        i32.store offset=12
        local.get $34
        call $assembly/index/createTemplate
        local.set $34
        global.get $~lib/memory/__stack_pointer
        local.get $34
        i32.store offset=4
        local.get $34
        call $~lib/array/Array<assembly/index/CreateElement>#push
       else
        i32.const 0
       end
       drop
       i32.const 0
       local.set $templateName
      end
     end
     local.get $char
     local.set $34
     global.get $~lib/memory/__stack_pointer
     local.get $34
     i32.store
     local.get $34
     local.get $Identifier
     local.set $34
     global.get $~lib/memory/__stack_pointer
     local.get $34
     i32.store offset=8
     local.get $34
     call $assembly/index/ParseIdentifier#get:leftOpen
     local.set $34
     global.get $~lib/memory/__stack_pointer
     local.get $34
     i32.store offset=4
     local.get $34
     call $~lib/string/String.__eq
     if
      local.get $char
      local.set $34
      global.get $~lib/memory/__stack_pointer
      local.get $34
      i32.store offset=8
      local.get $34
      local.get $nextChar
      local.set $34
      global.get $~lib/memory/__stack_pointer
      local.get $34
      i32.store offset=12
      local.get $34
      call $~lib/string/String.__concat
      local.set $34
      global.get $~lib/memory/__stack_pointer
      local.get $34
      i32.store
      local.get $34
      local.get $Identifier
      local.set $34
      global.get $~lib/memory/__stack_pointer
      local.get $34
      i32.store offset=8
      local.get $34
      call $assembly/index/ParseIdentifier#get:rightOpen
      local.set $34
      global.get $~lib/memory/__stack_pointer
      local.get $34
      i32.store offset=4
      local.get $34
      call $~lib/string/String.__eq
      if
       local.get $Identifier
       local.set $34
       global.get $~lib/memory/__stack_pointer
       local.get $34
       i32.store
       local.get $34
       call $assembly/index/ParseIdentifier#get:RIGHT
       local.set $openOrCloseState
       i32.const 0
       local.set $templateName
       local.get $child_s
       if
        local.get $element
        local.set $34
        global.get $~lib/memory/__stack_pointer
        local.get $34
        i32.store
        local.get $34
        local.get $child_s
        local.set $34
        global.get $~lib/memory/__stack_pointer
        local.get $34
        i32.store offset=4
        local.get $34
        call $assembly/index/CreateElement#pushChildList
        global.get $~lib/memory/__stack_pointer
        i32.const 0
        i32.const 2
        i32.const 8
        i32.const 3040
        call $~lib/rt/__newArray
        local.tee $child_s
        i32.store offset=68
       end
       local.get $child_text
       local.set $34
       global.get $~lib/memory/__stack_pointer
       local.get $34
       i32.store
       local.get $34
       i32.const 432
       local.set $34
       global.get $~lib/memory/__stack_pointer
       local.get $34
       i32.store offset=4
       local.get $34
       call $~lib/string/String.__ne
       if (result i32)
        local.get $child_text
        local.set $34
        global.get $~lib/memory/__stack_pointer
        local.get $34
        i32.store offset=8
        local.get $34
        call $~lib/string/String#trim
        local.set $34
        global.get $~lib/memory/__stack_pointer
        local.get $34
        i32.store
        local.get $34
        i32.const 432
        local.set $34
        global.get $~lib/memory/__stack_pointer
        local.get $34
        i32.store offset=4
        local.get $34
        call $~lib/string/String.__ne
       else
        i32.const 0
       end
       if
        global.get $~lib/memory/__stack_pointer
        local.get $stack
        local.set $34
        global.get $~lib/memory/__stack_pointer
        local.get $34
        i32.store
        local.get $34
        call $assembly/index/ElementStack#lastStack
        local.tee $lastStack
        i32.store offset=72
        local.get $lastStack
        local.set $34
        global.get $~lib/memory/__stack_pointer
        local.get $34
        i32.store
        local.get $34
        local.get $templateKEY
        local.set $34
        global.get $~lib/memory/__stack_pointer
        local.get $34
        i32.store offset=8
        local.get $34
        local.get $child_text
        local.set $34
        global.get $~lib/memory/__stack_pointer
        local.get $34
        i32.store offset=16
        local.get $34
        call $~lib/string/String#trim
        local.set $34
        global.get $~lib/memory/__stack_pointer
        local.get $34
        i32.store offset=12
        local.get $34
        call $assembly/index/createText
        local.set $34
        global.get $~lib/memory/__stack_pointer
        local.get $34
        i32.store offset=4
        local.get $34
        call $assembly/index/CreateElement#pushSingleChild
        global.get $~lib/memory/__stack_pointer
        i32.const 432
        local.tee $child_text
        i32.store offset=36
       end
      else
       local.get $Identifier
       local.set $34
       global.get $~lib/memory/__stack_pointer
       local.get $34
       i32.store
       local.get $34
       call $assembly/index/ParseIdentifier#get:LEFT
       local.set $openOrCloseState
       local.get $child_text
       local.set $34
       global.get $~lib/memory/__stack_pointer
       local.get $34
       i32.store
       local.get $34
       i32.const 432
       local.set $34
       global.get $~lib/memory/__stack_pointer
       local.get $34
       i32.store offset=4
       local.get $34
       call $~lib/string/String.__ne
       if (result i32)
        local.get $child_text
        local.set $34
        global.get $~lib/memory/__stack_pointer
        local.get $34
        i32.store offset=8
        local.get $34
        call $~lib/string/String#trim
        local.set $34
        global.get $~lib/memory/__stack_pointer
        local.get $34
        i32.store
        local.get $34
        i32.const 432
        local.set $34
        global.get $~lib/memory/__stack_pointer
        local.get $34
        i32.store offset=4
        local.get $34
        call $~lib/string/String.__ne
       else
        i32.const 0
       end
       if
        global.get $~lib/memory/__stack_pointer
        local.get $stack
        local.set $34
        global.get $~lib/memory/__stack_pointer
        local.get $34
        i32.store
        local.get $34
        call $assembly/index/ElementStack#lastStack
        local.tee $element|23
        i32.store offset=76
        local.get $element|23
        local.set $34
        global.get $~lib/memory/__stack_pointer
        local.get $34
        i32.store
        local.get $34
        local.get $templateKEY
        local.set $34
        global.get $~lib/memory/__stack_pointer
        local.get $34
        i32.store offset=8
        local.get $34
        local.get $child_text
        local.set $34
        global.get $~lib/memory/__stack_pointer
        local.get $34
        i32.store offset=16
        local.get $34
        call $~lib/string/String#trim
        local.set $34
        global.get $~lib/memory/__stack_pointer
        local.get $34
        i32.store offset=12
        local.get $34
        call $assembly/index/createText
        local.set $34
        global.get $~lib/memory/__stack_pointer
        local.get $34
        i32.store offset=4
        local.get $34
        call $assembly/index/CreateElement#pushSingleChild
        global.get $~lib/memory/__stack_pointer
        i32.const 432
        local.tee $child_text
        i32.store offset=36
       end
      end
      local.get $openOrCloseState
      local.get $Identifier
      local.set $34
      global.get $~lib/memory/__stack_pointer
      local.get $34
      i32.store
      local.get $34
      call $assembly/index/ParseIdentifier#get:LEFT
      f64.eq
      if
       global.get $~lib/memory/__stack_pointer
       i32.const 432
       local.tee $tag
       i32.store offset=48
       local.get $elId
       i32.const 1
       i32.add
       local.set $elId
       global.get $~lib/memory/__stack_pointer
       i32.const 0
       i32.const 0
       i32.const 432
       local.set $34
       global.get $~lib/memory/__stack_pointer
       local.get $34
       i32.store
       local.get $34
       i32.const 0
       i32.const 2
       i32.const 8
       i32.const 3072
       call $~lib/rt/__newArray
       local.set $34
       global.get $~lib/memory/__stack_pointer
       local.get $34
       i32.store offset=4
       local.get $34
       local.get $templateKEY
       local.set $34
       global.get $~lib/memory/__stack_pointer
       local.get $34
       i32.store offset=8
       local.get $34
       call $assembly/index/CreateElement#constructor
       local.tee $element
       i32.store offset=32
       local.get $child_text
       local.set $34
       global.get $~lib/memory/__stack_pointer
       local.get $34
       i32.store offset=8
       local.get $34
       call $~lib/string/String#trim
       local.set $34
       global.get $~lib/memory/__stack_pointer
       local.get $34
       i32.store
       local.get $34
       i32.const 432
       local.set $34
       global.get $~lib/memory/__stack_pointer
       local.get $34
       i32.store offset=4
       local.get $34
       call $~lib/string/String.__ne
       if
        local.get $child_s
        if (result i32)
         local.get $child_s
         local.set $34
         global.get $~lib/memory/__stack_pointer
         local.get $34
         i32.store
         local.get $34
         local.get $templateKEY
         local.set $34
         global.get $~lib/memory/__stack_pointer
         local.get $34
         i32.store offset=8
         local.get $34
         local.get $child_text
         local.set $34
         global.get $~lib/memory/__stack_pointer
         local.get $34
         i32.store offset=12
         local.get $34
         call $assembly/index/createText
         local.set $34
         global.get $~lib/memory/__stack_pointer
         local.get $34
         i32.store offset=4
         local.get $34
         call $~lib/array/Array<assembly/index/CreateElement>#push
        else
         i32.const 0
        end
        drop
       end
       global.get $~lib/memory/__stack_pointer
       i32.const 432
       local.tee $child_text
       i32.store offset=36
       local.get $child_s
       if
        global.get $~lib/memory/__stack_pointer
        local.get $stack
        local.set $34
        global.get $~lib/memory/__stack_pointer
        local.get $34
        i32.store
        local.get $34
        call $assembly/index/ElementStack#lastStack
        local.tee $lastStack|26
        i32.store offset=80
        local.get $lastStack|26
        local.set $34
        global.get $~lib/memory/__stack_pointer
        local.get $34
        i32.store
        local.get $34
        local.get $child_s
        local.set $34
        global.get $~lib/memory/__stack_pointer
        local.get $34
        i32.store offset=4
        local.get $34
        call $assembly/index/CreateElement#pushChildList
        i32.const 0
        local.set $child_s
       end
       local.get $child_text
       local.set $34
       global.get $~lib/memory/__stack_pointer
       local.get $34
       i32.store offset=8
       local.get $34
       call $~lib/string/String#trim
       local.set $34
       global.get $~lib/memory/__stack_pointer
       local.get $34
       i32.store
       local.get $34
       i32.const 432
       local.set $34
       global.get $~lib/memory/__stack_pointer
       local.get $34
       i32.store offset=4
       local.get $34
       call $~lib/string/String.__eq
       if
        global.get $~lib/memory/__stack_pointer
        i32.const 432
        local.tee $child_text
        i32.store offset=36
       end
       local.get $stack
       local.set $34
       global.get $~lib/memory/__stack_pointer
       local.get $34
       i32.store
       local.get $34
       local.get $element
       local.set $34
       global.get $~lib/memory/__stack_pointer
       local.get $34
       i32.store offset=4
       local.get $34
       call $assembly/index/ElementStack#push
      end
     else
      local.get $char
      local.set $34
      global.get $~lib/memory/__stack_pointer
      local.get $34
      i32.store
      local.get $34
      local.get $Identifier
      local.set $34
      global.get $~lib/memory/__stack_pointer
      local.get $34
      i32.store offset=8
      local.get $34
      call $assembly/index/ParseIdentifier#get:tagClose
      local.set $34
      global.get $~lib/memory/__stack_pointer
      local.get $34
      i32.store offset=4
      local.get $34
      call $~lib/string/String.__eq
      if
       local.get $openOrCloseState
       local.get $Identifier
       local.set $34
       global.get $~lib/memory/__stack_pointer
       local.get $34
       i32.store
       local.get $34
       call $assembly/index/ParseIdentifier#get:LEFT
       f64.eq
       if
        local.get $Identifier
        local.set $34
        global.get $~lib/memory/__stack_pointer
        local.get $34
        i32.store
        local.get $34
        call $assembly/index/ParseIdentifier#get:MIDDLE
        local.set $openOrCloseState
        global.get $~lib/memory/__stack_pointer
        i32.const 0
        i32.const 2
        i32.const 8
        i32.const 3104
        call $~lib/rt/__newArray
        local.tee $child_s
        i32.store offset=68
        global.get $~lib/memory/__stack_pointer
        local.get $stack
        local.set $34
        global.get $~lib/memory/__stack_pointer
        local.get $34
        i32.store
        local.get $34
        call $assembly/index/ElementStack#lastStack
        local.tee $element|29
        i32.store offset=84
        local.get $tag
        if
         local.get $element|29
         local.set $34
         global.get $~lib/memory/__stack_pointer
         local.get $34
         i32.store
         local.get $34
         local.get $tag
         local.set $34
         global.get $~lib/memory/__stack_pointer
         local.get $34
         i32.store offset=4
         local.get $34
         call $assembly/index/CreateElement#handleChangeTagName
         i32.const 0
         local.set $tag
        end
        local.get $element|29
        local.set $34
        global.get $~lib/memory/__stack_pointer
        local.get $34
        i32.store
        local.get $34
        local.get $attr
        local.set $34
        global.get $~lib/memory/__stack_pointer
        local.get $34
        i32.store offset=4
        local.get $34
        call $assembly/index/CreateElement#handleSetProps
       else
        local.get $Identifier
        local.set $34
        global.get $~lib/memory/__stack_pointer
        local.get $34
        i32.store
        local.get $34
        call $assembly/index/ParseIdentifier#get:MIDDLE
        local.set $openOrCloseState
        local.get $child_s
        i32.const 0
        i32.eq
        if
         br $for-continue|0
        end
        local.get $stack
        local.set $34
        global.get $~lib/memory/__stack_pointer
        local.get $34
        i32.store
        local.get $34
        call $assembly/index/ElementStack#getLength
        i32.const 1
        i32.eq
        if
         br $for-continue|0
        end
        global.get $~lib/memory/__stack_pointer
        local.get $stack
        local.set $34
        global.get $~lib/memory/__stack_pointer
        local.get $34
        i32.store
        local.get $34
        call $assembly/index/ElementStack#pop
        local.tee $lastStack|30
        i32.store offset=88
        global.get $~lib/memory/__stack_pointer
        local.get $stack
        local.set $34
        global.get $~lib/memory/__stack_pointer
        local.get $34
        i32.store
        local.get $34
        call $assembly/index/ElementStack#lastStack
        local.tee $newStack
        i32.store offset=92
        local.get $child_text
        if
         local.get $child_text
         local.set $34
         global.get $~lib/memory/__stack_pointer
         local.get $34
         i32.store offset=8
         local.get $34
         call $~lib/string/String#trim
         local.set $34
         global.get $~lib/memory/__stack_pointer
         local.get $34
         i32.store
         local.get $34
         i32.const 432
         local.set $34
         global.get $~lib/memory/__stack_pointer
         local.get $34
         i32.store offset=4
         local.get $34
         call $~lib/string/String.__ne
         if
          local.get $child_s
          local.set $34
          global.get $~lib/memory/__stack_pointer
          local.get $34
          i32.store
          local.get $34
          local.get $templateKEY
          local.set $34
          global.get $~lib/memory/__stack_pointer
          local.get $34
          i32.store offset=8
          local.get $34
          local.get $child_text
          local.set $34
          global.get $~lib/memory/__stack_pointer
          local.get $34
          i32.store offset=12
          local.get $34
          call $assembly/index/createText
          local.set $34
          global.get $~lib/memory/__stack_pointer
          local.get $34
          i32.store offset=4
          local.get $34
          call $~lib/array/Array<assembly/index/CreateElement>#push
          drop
         end
         global.get $~lib/memory/__stack_pointer
         i32.const 432
         local.tee $child_text
         i32.store offset=36
        end
        local.get $lastStack|30
        if
         local.get $lastStack|30
         local.set $34
         global.get $~lib/memory/__stack_pointer
         local.get $34
         i32.store
         local.get $34
         local.get $child_s
         local.set $34
         global.get $~lib/memory/__stack_pointer
         local.get $34
         i32.store offset=4
         local.get $34
         call $assembly/index/CreateElement#pushChildList
         local.get $newStack
         local.set $34
         global.get $~lib/memory/__stack_pointer
         local.get $34
         i32.store
         local.get $34
         local.get $lastStack|30
         local.set $34
         global.get $~lib/memory/__stack_pointer
         local.get $34
         i32.store offset=4
         local.get $34
         call $assembly/index/CreateElement#pushSingleChild
        end
        global.get $~lib/memory/__stack_pointer
        i32.const 0
        i32.const 2
        i32.const 8
        i32.const 3184
        call $~lib/rt/__newArray
        local.tee $child_s
        i32.store offset=68
       end
       i32.const 0
       local.set $attr
      else
       local.get $openOrCloseState
       local.get $Identifier
       local.set $34
       global.get $~lib/memory/__stack_pointer
       local.get $34
       i32.store
       local.get $34
       call $assembly/index/ParseIdentifier#get:MIDDLE
       f64.eq
       if (result i32)
        local.get $templateName
        local.set $34
        global.get $~lib/memory/__stack_pointer
        local.get $34
        i32.store
        local.get $34
        i32.const 0
        call $~lib/string/String.__eq
       else
        i32.const 0
       end
       if (result i32)
        local.get $char
        local.set $34
        global.get $~lib/memory/__stack_pointer
        local.get $34
        i32.store
        local.get $34
        local.get $Identifier
        local.set $34
        global.get $~lib/memory/__stack_pointer
        local.get $34
        i32.store offset=8
        local.get $34
        call $assembly/index/ParseIdentifier#get:templateLeft
        local.set $34
        global.get $~lib/memory/__stack_pointer
        local.get $34
        i32.store offset=4
        local.get $34
        call $~lib/string/String.__ne
       else
        i32.const 0
       end
       if (result i32)
        local.get $char
        local.set $34
        global.get $~lib/memory/__stack_pointer
        local.get $34
        i32.store
        local.get $34
        local.get $Identifier
        local.set $34
        global.get $~lib/memory/__stack_pointer
        local.get $34
        i32.store offset=8
        local.get $34
        call $assembly/index/ParseIdentifier#get:templateRight
        local.set $34
        global.get $~lib/memory/__stack_pointer
        local.get $34
        i32.store offset=4
        local.get $34
        call $~lib/string/String.__ne
       else
        i32.const 0
       end
       if
        global.get $~lib/memory/__stack_pointer
        local.get $child_text
        local.set $34
        global.get $~lib/memory/__stack_pointer
        local.get $34
        i32.store
        local.get $34
        local.get $char
        local.set $34
        global.get $~lib/memory/__stack_pointer
        local.get $34
        i32.store offset=4
        local.get $34
        call $~lib/string/String.__concat
        local.tee $child_text
        i32.store offset=36
       end
      end
     end
    end
    local.get $i
    i32.const 1
    i32.add
    local.set $i
    br $for-loop|0
   end
  end
  local.get $stack
  local.set $34
  global.get $~lib/memory/__stack_pointer
  i32.const 96
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $34
  return
 )
 (func $~lib/array/Array<assembly/index/CreateElement>#get:length (param $this i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  call $~lib/array/Array<assembly/index/CreateElement>#get:length_
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
  return
 )
 (func $assembly/index/LastElement#update (param $this i32) (param $tagName i32) (param $props i32) (param $KEY i32) (param $parent i32) (param $text i32) (param $index i32)
  (local $7 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $this
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store
  local.get $7
  local.get $tagName
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  local.get $7
  call $assembly/index/LastElement#set:tagName
  local.get $this
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store
  local.get $7
  local.get $props
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  local.get $7
  call $assembly/index/LastElement#set:props
  local.get $this
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store
  local.get $7
  local.get $KEY
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  local.get $7
  call $assembly/index/LastElement#set:KEY
  local.get $this
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store
  local.get $7
  local.get $parent
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  local.get $7
  call $assembly/index/LastElement#set:parent
  local.get $this
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store
  local.get $7
  local.get $text
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store offset=4
  local.get $7
  call $assembly/index/LastElement#set:text
  local.get $this
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store
  local.get $7
  local.get $index
  call $assembly/index/LastElement#set:index
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $assembly/index/Responsive#constructor (param $this i32) (param $type i32) (param $data i32) (result i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.const 11
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store
  end
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=4
  local.get $3
  local.get $type
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=8
  local.get $3
  call $assembly/index/Responsive#set:type
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=4
  local.get $3
  local.get $data
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=8
  local.get $3
  call $assembly/index/Responsive#set:data
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $~lib/array/Array<assembly/index/Responsive>#push (param $this i32) (param $value i32) (result i32)
  (local $oldLen i32)
  (local $len i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store
  local.get $4
  call $~lib/array/Array<assembly/index/Responsive>#get:length_
  local.set $oldLen
  local.get $oldLen
  i32.const 1
  i32.add
  local.set $len
  local.get $this
  local.get $len
  i32.const 2
  i32.const 1
  call $~lib/array/ensureCapacity
  i32.const 1
  drop
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store
  local.get $4
  call $~lib/array/Array<assembly/index/Responsive>#get:dataStart
  local.get $oldLen
  i32.const 2
  i32.shl
  i32.add
  local.get $value
  i32.store
  local.get $this
  local.get $value
  i32.const 1
  call $~lib/rt/itcms/__link
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store
  local.get $4
  local.get $len
  call $~lib/array/Array<assembly/index/Responsive>#set:length_
  local.get $len
  local.set $4
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
  return
 )
 (func $assembly/index/dfs (param $data i32) (param $parent i32) (param $index i32) (param $change i32)
  (local $tagName i32)
  (local $props i32)
  (local $child i32)
  (local $KEY i32)
  (local $text i32)
  (local $len i32)
  (local $elemFlags i32)
  (local $primaryFlags i32)
  (local $12 i32)
  (local $i i32)
  (local $14 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 44
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 44
  memory.fill
  global.get $~lib/memory/__stack_pointer
  local.get $data
  local.set $14
  global.get $~lib/memory/__stack_pointer
  local.get $14
  i32.store
  local.get $14
  call $assembly/index/CreateElement#get:tagName
  local.tee $tagName
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $data
  local.set $14
  global.get $~lib/memory/__stack_pointer
  local.get $14
  i32.store
  local.get $14
  call $assembly/index/CreateElement#get:props
  local.tee $props
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $data
  local.set $14
  global.get $~lib/memory/__stack_pointer
  local.get $14
  i32.store
  local.get $14
  call $assembly/index/CreateElement#get:child
  local.tee $child
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  local.get $data
  local.set $14
  global.get $~lib/memory/__stack_pointer
  local.get $14
  i32.store
  local.get $14
  call $assembly/index/CreateElement#get:KEY
  local.tee $KEY
  i32.store offset=16
  global.get $~lib/memory/__stack_pointer
  local.get $data
  local.set $14
  global.get $~lib/memory/__stack_pointer
  local.get $14
  i32.store
  local.get $14
  call $assembly/index/CreateElement#get:text
  local.tee $text
  i32.store offset=20
  local.get $child
  local.set $14
  global.get $~lib/memory/__stack_pointer
  local.get $14
  i32.store
  local.get $14
  call $~lib/array/Array<assembly/index/CreateElement>#get:length
  local.set $len
  local.get $tagName
  if (result i32)
   local.get $tagName
  else
   i32.const 432
  end
  local.set $14
  global.get $~lib/memory/__stack_pointer
  local.get $14
  i32.store
  local.get $14
  local.get $props
  local.set $14
  global.get $~lib/memory/__stack_pointer
  local.get $14
  i32.store offset=24
  local.get $14
  local.get $KEY
  local.set $14
  global.get $~lib/memory/__stack_pointer
  local.get $14
  i32.store offset=28
  local.get $14
  local.get $parent
  local.set $14
  global.get $~lib/memory/__stack_pointer
  local.get $14
  i32.store offset=32
  local.get $14
  local.get $text
  if (result i32)
   local.get $text
  else
   i32.const 432
  end
  local.set $14
  global.get $~lib/memory/__stack_pointer
  local.get $14
  i32.store offset=36
  local.get $14
  local.get $index
  f64.convert_i32_s
  call $assembly/DOM/createElement
  local.set $elemFlags
  local.get $elemFlags
  global.get $assembly/index/UpdateTextFlags
  global.get $assembly/index/UpdateAttributeFlags
  i32.or
  global.get $assembly/index/UpdateForListFlags
  i32.or
  global.get $assembly/index/JumpUpdateForChildFlags
  i32.or
  global.get $assembly/index/UpdateComponentFlags
  i32.or
  i32.and
  local.set $primaryFlags
  global.get $assembly/index/lastElement
  local.set $14
  global.get $~lib/memory/__stack_pointer
  local.get $14
  i32.store
  local.get $14
  local.get $tagName
  if (result i32)
   local.get $tagName
  else
   i32.const 432
  end
  local.set $14
  global.get $~lib/memory/__stack_pointer
  local.get $14
  i32.store offset=24
  local.get $14
  local.get $props
  local.set $14
  global.get $~lib/memory/__stack_pointer
  local.get $14
  i32.store offset=28
  local.get $14
  local.get $KEY
  local.set $14
  global.get $~lib/memory/__stack_pointer
  local.get $14
  i32.store offset=32
  local.get $14
  local.get $parent
  if (result i32)
   local.get $parent
  else
   i32.const 432
  end
  local.set $14
  global.get $~lib/memory/__stack_pointer
  local.get $14
  i32.store offset=36
  local.get $14
  local.get $text
  if (result i32)
   local.get $text
  else
   i32.const 432
  end
  local.set $14
  global.get $~lib/memory/__stack_pointer
  local.get $14
  i32.store offset=40
  local.get $14
  local.get $index
  call $assembly/index/LastElement#update
  block $break|0
   block $case6|0
    block $case5|0
     block $case4|0
      block $case3|0
       block $case2|0
        block $case1|0
         block $case0|0
          local.get $primaryFlags
          local.set $12
          local.get $12
          global.get $assembly/index/UpdateTextFlags
          i32.eq
          br_if $case0|0
          local.get $12
          global.get $assembly/index/UpdateAttributeFlags
          i32.eq
          br_if $case1|0
          local.get $12
          global.get $assembly/index/UpdateForListAndAttributeFlags
          i32.eq
          br_if $case2|0
          local.get $12
          global.get $assembly/index/UpdateForListFlags
          i32.eq
          br_if $case3|0
          local.get $12
          global.get $assembly/index/UpdateComponentFlags
          i32.eq
          br_if $case4|0
          local.get $12
          global.get $assembly/index/JumpUpdateForChildFlags
          i32.eq
          br_if $case5|0
          br $case6|0
         end
         local.get $change
         local.set $14
         global.get $~lib/memory/__stack_pointer
         local.get $14
         i32.store
         local.get $14
         i32.const 0
         i32.const 2848
         local.set $14
         global.get $~lib/memory/__stack_pointer
         local.get $14
         i32.store offset=28
         local.get $14
         local.get $data
         local.set $14
         global.get $~lib/memory/__stack_pointer
         local.get $14
         i32.store offset=32
         local.get $14
         call $assembly/index/Responsive#constructor
         local.set $14
         global.get $~lib/memory/__stack_pointer
         local.get $14
         i32.store offset=24
         local.get $14
         call $~lib/array/Array<assembly/index/Responsive>#push
         drop
         br $break|0
        end
        local.get $change
        local.set $14
        global.get $~lib/memory/__stack_pointer
        local.get $14
        i32.store
        local.get $14
        i32.const 0
        i32.const 3248
        local.set $14
        global.get $~lib/memory/__stack_pointer
        local.get $14
        i32.store offset=28
        local.get $14
        local.get $data
        local.set $14
        global.get $~lib/memory/__stack_pointer
        local.get $14
        i32.store offset=32
        local.get $14
        call $assembly/index/Responsive#constructor
        local.set $14
        global.get $~lib/memory/__stack_pointer
        local.get $14
        i32.store offset=24
        local.get $14
        call $~lib/array/Array<assembly/index/Responsive>#push
        drop
        br $break|0
       end
      end
      local.get $change
      local.set $14
      global.get $~lib/memory/__stack_pointer
      local.get $14
      i32.store
      local.get $14
      i32.const 0
      i32.const 3280
      local.set $14
      global.get $~lib/memory/__stack_pointer
      local.get $14
      i32.store offset=28
      local.get $14
      local.get $data
      local.set $14
      global.get $~lib/memory/__stack_pointer
      local.get $14
      i32.store offset=32
      local.get $14
      call $assembly/index/Responsive#constructor
      local.set $14
      global.get $~lib/memory/__stack_pointer
      local.get $14
      i32.store offset=24
      local.get $14
      call $~lib/array/Array<assembly/index/Responsive>#push
      drop
      br $break|0
     end
     local.get $change
     local.set $14
     global.get $~lib/memory/__stack_pointer
     local.get $14
     i32.store
     local.get $14
     i32.const 0
     i32.const 3312
     local.set $14
     global.get $~lib/memory/__stack_pointer
     local.get $14
     i32.store offset=28
     local.get $14
     local.get $data
     local.set $14
     global.get $~lib/memory/__stack_pointer
     local.get $14
     i32.store offset=32
     local.get $14
     call $assembly/index/Responsive#constructor
     local.set $14
     global.get $~lib/memory/__stack_pointer
     local.get $14
     i32.store offset=24
     local.get $14
     call $~lib/array/Array<assembly/index/Responsive>#push
     drop
     br $break|0
    end
    br $break|0
   end
   br $break|0
  end
  i32.const 0
  local.set $i
  loop $for-loop|1
   local.get $i
   local.get $len
   i32.lt_s
   if
    local.get $child
    local.set $14
    global.get $~lib/memory/__stack_pointer
    local.get $14
    i32.store offset=32
    local.get $14
    local.get $i
    call $~lib/array/Array<assembly/index/CreateElement>#__get
    local.set $14
    global.get $~lib/memory/__stack_pointer
    local.get $14
    i32.store
    local.get $14
    local.get $KEY
    local.set $14
    global.get $~lib/memory/__stack_pointer
    local.get $14
    i32.store offset=24
    local.get $14
    local.get $i
    local.get $change
    local.set $14
    global.get $~lib/memory/__stack_pointer
    local.get $14
    i32.store offset=28
    local.get $14
    call $assembly/index/dfs
    local.get $i
    i32.const 1
    i32.add
    local.set $i
    br $for-loop|1
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 44
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $assembly/index/wasmRender (param $elem i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $change i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 2
  i32.const 12
  i32.const 3216
  call $~lib/rt/__newArray
  local.tee $change
  i32.store
  local.get $elem
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=8
  local.get $5
  call $assembly/index/CreateElement#get:KEY
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=4
  local.get $5
  call $assembly/DOM/startComponent
  local.get $elem
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=4
  local.get $5
  i32.const 0
  i32.const 0
  local.get $change
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=8
  local.get $5
  call $assembly/index/dfs
  global.get $~lib/memory/__stack_pointer
  global.get $assembly/index/lastElement
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=8
  local.get $5
  call $assembly/index/LastElement#get:tagName
  local.tee $4
  i32.store offset=12
  local.get $4
  if (result i32)
   local.get $4
  else
   i32.const 432
  end
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store offset=4
  local.get $5
  call $assembly/DOM/endComponent
  local.get $change
  local.set $5
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $5
  return
 )
 (func $~lib/array/Array<~lib/string/String>#__set (param $this i32) (param $index i32) (param $value i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $index
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  call $~lib/array/Array<~lib/string/String>#get:length_
  i32.ge_u
  if
   local.get $index
   i32.const 0
   i32.lt_s
   if
    i32.const 224
    i32.const 2608
    i32.const 130
    i32.const 22
    call $~lib/builtins/abort
    unreachable
   end
   local.get $this
   local.get $index
   i32.const 1
   i32.add
   i32.const 2
   i32.const 1
   call $~lib/array/ensureCapacity
   local.get $this
   local.set $3
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store
   local.get $3
   local.get $index
   i32.const 1
   i32.add
   call $~lib/array/Array<~lib/string/String>#set:length_
  end
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  call $~lib/array/Array<~lib/string/String>#get:dataStart
  local.get $index
  i32.const 2
  i32.shl
  i32.add
  local.get $value
  i32.store
  i32.const 1
  drop
  local.get $this
  local.get $value
  i32.const 1
  call $~lib/rt/itcms/__link
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/string/String#indexOf (param $this i32) (param $search i32) (param $start i32) (result i32)
  (local $searchLen i32)
  (local $len i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $searchStart i32)
  (local $10 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $search
  local.set $10
  global.get $~lib/memory/__stack_pointer
  local.get $10
  i32.store
  local.get $10
  call $~lib/string/String#get:length
  local.set $searchLen
  local.get $searchLen
  i32.eqz
  if
   i32.const 0
   local.set $10
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $10
   return
  end
  local.get $this
  local.set $10
  global.get $~lib/memory/__stack_pointer
  local.get $10
  i32.store
  local.get $10
  call $~lib/string/String#get:length
  local.set $len
  local.get $len
  i32.eqz
  if
   i32.const -1
   local.set $10
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $10
   return
  end
  local.get $start
  local.tee $5
  i32.const 0
  local.tee $6
  local.get $5
  local.get $6
  i32.gt_s
  select
  local.tee $7
  local.get $len
  local.tee $8
  local.get $7
  local.get $8
  i32.lt_s
  select
  local.set $searchStart
  local.get $len
  local.get $searchLen
  i32.sub
  local.set $len
  loop $for-loop|0
   local.get $searchStart
   local.get $len
   i32.le_s
   if
    local.get $this
    local.set $10
    global.get $~lib/memory/__stack_pointer
    local.get $10
    i32.store
    local.get $10
    local.get $searchStart
    local.get $search
    local.set $10
    global.get $~lib/memory/__stack_pointer
    local.get $10
    i32.store offset=4
    local.get $10
    i32.const 0
    local.get $searchLen
    call $~lib/util/string/compareImpl
    i32.eqz
    if
     local.get $searchStart
     local.set $10
     global.get $~lib/memory/__stack_pointer
     i32.const 8
     i32.add
     global.set $~lib/memory/__stack_pointer
     local.get $10
     return
    end
    local.get $searchStart
    i32.const 1
    i32.add
    local.set $searchStart
    br $for-loop|0
   end
  end
  i32.const -1
  local.set $10
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $10
  return
 )
 (func $~lib/array/Array<~lib/string/String>#push (param $this i32) (param $value i32) (result i32)
  (local $oldLen i32)
  (local $len i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store
  local.get $4
  call $~lib/array/Array<~lib/string/String>#get:length_
  local.set $oldLen
  local.get $oldLen
  i32.const 1
  i32.add
  local.set $len
  local.get $this
  local.get $len
  i32.const 2
  i32.const 1
  call $~lib/array/ensureCapacity
  i32.const 1
  drop
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store
  local.get $4
  call $~lib/array/Array<~lib/string/String>#get:dataStart
  local.get $oldLen
  i32.const 2
  i32.shl
  i32.add
  local.get $value
  i32.store
  local.get $this
  local.get $value
  i32.const 1
  call $~lib/rt/itcms/__link
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store
  local.get $4
  local.get $len
  call $~lib/array/Array<~lib/string/String>#set:length_
  local.get $len
  local.set $4
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
  return
 )
 (func $~lib/string/String#split (param $this i32) (param $separator i32) (param $limit i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $length i32)
  (local $sepLen i32)
  (local $7 i32)
  (local $8 i32)
  (local $result i32)
  (local $resultStart i32)
  (local $i i32)
  (local $charStr i32)
  (local $result|13 i32)
  (local $result|14 i32)
  (local $end i32)
  (local $start i32)
  (local $i|17 i32)
  (local $len i32)
  (local $out i32)
  (local $len|20 i32)
  (local $out|21 i32)
  (local $22 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 40
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 40
  memory.fill
  local.get $limit
  i32.eqz
  if
   i32.const 0
   i32.const 2
   i32.const 13
   i32.const 0
   call $~lib/rt/__newArray
   local.set $22
   global.get $~lib/memory/__stack_pointer
   i32.const 40
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $22
   return
  end
  local.get $separator
  i32.const 0
  i32.eq
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 1
   i32.const 2
   i32.const 13
   i32.const 0
   call $~lib/rt/__newArray
   local.tee $3
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.load offset=4
   local.tee $4
   i32.store offset=4
   local.get $3
   i32.const 0
   local.get $this
   call $~lib/array/Array<~lib/string/String>#__set
   local.get $3
   local.set $22
   global.get $~lib/memory/__stack_pointer
   i32.const 40
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $22
   return
  end
  local.get $this
  local.set $22
  global.get $~lib/memory/__stack_pointer
  local.get $22
  i32.store offset=8
  local.get $22
  call $~lib/string/String#get:length
  local.set $length
  local.get $separator
  local.set $22
  global.get $~lib/memory/__stack_pointer
  local.get $22
  i32.store offset=8
  local.get $22
  call $~lib/string/String#get:length
  local.set $sepLen
  local.get $limit
  i32.const 0
  i32.lt_s
  if
   global.get $~lib/builtins/i32.MAX_VALUE
   local.set $limit
  end
  local.get $sepLen
  i32.eqz
  if
   local.get $length
   i32.eqz
   if
    i32.const 0
    i32.const 2
    i32.const 13
    i32.const 0
    call $~lib/rt/__newArray
    local.set $22
    global.get $~lib/memory/__stack_pointer
    i32.const 40
    i32.add
    global.set $~lib/memory/__stack_pointer
    local.get $22
    return
   end
   local.get $length
   local.tee $7
   local.get $limit
   local.tee $8
   local.get $7
   local.get $8
   i32.lt_s
   select
   local.set $length
   global.get $~lib/memory/__stack_pointer
   local.get $length
   i32.const 2
   i32.const 13
   i32.const 0
   call $~lib/rt/__newArray
   local.tee $result
   i32.store offset=12
   local.get $result
   local.set $22
   global.get $~lib/memory/__stack_pointer
   local.get $22
   i32.store offset=8
   local.get $22
   call $~lib/array/Array<~lib/string/String>#get:dataStart
   local.set $resultStart
   i32.const 0
   local.set $i
   loop $for-loop|0
    local.get $i
    local.get $length
    i32.lt_s
    if
     global.get $~lib/memory/__stack_pointer
     i32.const 2
     i32.const 2
     call $~lib/rt/itcms/__new
     local.tee $charStr
     i32.store offset=16
     local.get $charStr
     local.get $this
     local.get $i
     i32.const 1
     i32.shl
     i32.add
     i32.load16_u
     i32.store16
     local.get $resultStart
     local.get $i
     i32.const 2
     i32.shl
     i32.add
     local.get $charStr
     i32.store
     local.get $result
     local.get $charStr
     i32.const 1
     call $~lib/rt/itcms/__link
     local.get $i
     i32.const 1
     i32.add
     local.set $i
     br $for-loop|0
    end
   end
   local.get $result
   local.set $22
   global.get $~lib/memory/__stack_pointer
   i32.const 40
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $22
   return
  else
   local.get $length
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 1
    i32.const 2
    i32.const 13
    i32.const 0
    call $~lib/rt/__newArray
    local.tee $result|13
    i32.store offset=20
    local.get $result|13
    local.set $22
    global.get $~lib/memory/__stack_pointer
    local.get $22
    i32.store offset=8
    local.get $22
    call $~lib/array/Array<~lib/string/String>#get:dataStart
    i32.const 432
    i32.store
    local.get $result|13
    local.set $22
    global.get $~lib/memory/__stack_pointer
    i32.const 40
    i32.add
    global.set $~lib/memory/__stack_pointer
    local.get $22
    return
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 2
  i32.const 13
  i32.const 0
  call $~lib/rt/__newArray
  local.tee $result|14
  i32.store offset=24
  i32.const 0
  local.set $end
  i32.const 0
  local.set $start
  i32.const 0
  local.set $i|17
  loop $while-continue|1
   local.get $this
   local.set $22
   global.get $~lib/memory/__stack_pointer
   local.get $22
   i32.store offset=8
   local.get $22
   local.get $separator
   local.set $22
   global.get $~lib/memory/__stack_pointer
   local.get $22
   i32.store offset=28
   local.get $22
   local.get $start
   call $~lib/string/String#indexOf
   local.tee $end
   i32.const -1
   i32.xor
   if
    local.get $end
    local.get $start
    i32.sub
    local.set $len
    local.get $len
    i32.const 0
    i32.gt_s
    if
     global.get $~lib/memory/__stack_pointer
     local.get $len
     i32.const 1
     i32.shl
     i32.const 2
     call $~lib/rt/itcms/__new
     local.tee $out
     i32.store offset=32
     local.get $out
     local.get $this
     local.get $start
     i32.const 1
     i32.shl
     i32.add
     local.get $len
     i32.const 1
     i32.shl
     memory.copy
     local.get $result|14
     local.set $22
     global.get $~lib/memory/__stack_pointer
     local.get $22
     i32.store offset=8
     local.get $22
     local.get $out
     local.set $22
     global.get $~lib/memory/__stack_pointer
     local.get $22
     i32.store offset=28
     local.get $22
     call $~lib/array/Array<~lib/string/String>#push
     drop
    else
     local.get $result|14
     local.set $22
     global.get $~lib/memory/__stack_pointer
     local.get $22
     i32.store offset=8
     local.get $22
     i32.const 432
     local.set $22
     global.get $~lib/memory/__stack_pointer
     local.get $22
     i32.store offset=28
     local.get $22
     call $~lib/array/Array<~lib/string/String>#push
     drop
    end
    local.get $i|17
    i32.const 1
    i32.add
    local.tee $i|17
    local.get $limit
    i32.eq
    if
     local.get $result|14
     local.set $22
     global.get $~lib/memory/__stack_pointer
     i32.const 40
     i32.add
     global.set $~lib/memory/__stack_pointer
     local.get $22
     return
    end
    local.get $end
    local.get $sepLen
    i32.add
    local.set $start
    br $while-continue|1
   end
  end
  local.get $start
  i32.eqz
  if
   local.get $result|14
   local.set $22
   global.get $~lib/memory/__stack_pointer
   local.get $22
   i32.store offset=8
   local.get $22
   local.get $this
   local.set $22
   global.get $~lib/memory/__stack_pointer
   local.get $22
   i32.store offset=28
   local.get $22
   call $~lib/array/Array<~lib/string/String>#push
   drop
   local.get $result|14
   local.set $22
   global.get $~lib/memory/__stack_pointer
   i32.const 40
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $22
   return
  end
  local.get $length
  local.get $start
  i32.sub
  local.set $len|20
  local.get $len|20
  i32.const 0
  i32.gt_s
  if
   global.get $~lib/memory/__stack_pointer
   local.get $len|20
   i32.const 1
   i32.shl
   i32.const 2
   call $~lib/rt/itcms/__new
   local.tee $out|21
   i32.store offset=36
   local.get $out|21
   local.get $this
   local.get $start
   i32.const 1
   i32.shl
   i32.add
   local.get $len|20
   i32.const 1
   i32.shl
   memory.copy
   local.get $result|14
   local.set $22
   global.get $~lib/memory/__stack_pointer
   local.get $22
   i32.store offset=8
   local.get $22
   local.get $out|21
   local.set $22
   global.get $~lib/memory/__stack_pointer
   local.get $22
   i32.store offset=28
   local.get $22
   call $~lib/array/Array<~lib/string/String>#push
   drop
  else
   local.get $result|14
   local.set $22
   global.get $~lib/memory/__stack_pointer
   local.get $22
   i32.store offset=8
   local.get $22
   i32.const 432
   local.set $22
   global.get $~lib/memory/__stack_pointer
   local.get $22
   i32.store offset=28
   local.get $22
   call $~lib/array/Array<~lib/string/String>#push
   drop
  end
  local.get $result|14
  local.set $22
  global.get $~lib/memory/__stack_pointer
  i32.const 40
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $22
  return
 )
 (func $~lib/string/String#split@varargs (param $this i32) (param $separator i32) (param $limit i32) (result i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  block $2of2
   block $1of2
    block $0of2
     block $outOfRange
      global.get $~argumentsLength
      br_table $0of2 $1of2 $2of2 $outOfRange
     end
     unreachable
    end
    i32.const 0
    local.set $separator
   end
   global.get $~lib/builtins/i32.MAX_VALUE
   local.set $limit
  end
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  local.get $separator
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=4
  local.get $3
  local.get $limit
  call $~lib/string/String#split
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $~lib/string/String.__not (param $str i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $str
  i32.const 0
  i32.eq
  if (result i32)
   i32.const 1
  else
   local.get $str
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   local.get $1
   call $~lib/string/String#get:length
   i32.eqz
  end
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
  return
 )
 (func $assembly/index/wasmPatch~anonymous|0 (param $l i32) (param $$1 i32) (param $$2 i32) (result i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $l
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  call $~lib/string/String.__not
  i32.eqz
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $~lib/array/Array<~lib/string/String>#filter (param $this i32) (param $fn i32) (result i32)
  (local $result i32)
  (local $i i32)
  (local $len i32)
  (local $5 i32)
  (local $6 i32)
  (local $value i32)
  (local $8 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 2
  i32.const 13
  i32.const 0
  call $~lib/rt/__newArray
  local.tee $result
  i32.store
  i32.const 0
  local.set $i
  local.get $this
  local.set $8
  global.get $~lib/memory/__stack_pointer
  local.get $8
  i32.store offset=4
  local.get $8
  call $~lib/array/Array<~lib/string/String>#get:length_
  local.set $len
  loop $for-loop|0
   local.get $i
   local.get $len
   local.tee $5
   local.get $this
   local.set $8
   global.get $~lib/memory/__stack_pointer
   local.get $8
   i32.store offset=4
   local.get $8
   call $~lib/array/Array<~lib/string/String>#get:length_
   local.tee $6
   local.get $5
   local.get $6
   i32.lt_s
   select
   i32.lt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $this
    local.set $8
    global.get $~lib/memory/__stack_pointer
    local.get $8
    i32.store offset=4
    local.get $8
    call $~lib/array/Array<~lib/string/String>#get:dataStart
    local.get $i
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.tee $value
    i32.store offset=8
    local.get $value
    local.set $8
    global.get $~lib/memory/__stack_pointer
    local.get $8
    i32.store offset=4
    local.get $8
    local.get $i
    local.get $this
    local.set $8
    global.get $~lib/memory/__stack_pointer
    local.get $8
    i32.store offset=12
    local.get $8
    i32.const 3
    global.set $~argumentsLength
    local.get $fn
    i32.load
    call_indirect (type $3)
    if
     local.get $result
     local.set $8
     global.get $~lib/memory/__stack_pointer
     local.get $8
     i32.store offset=4
     local.get $8
     local.get $value
     local.set $8
     global.get $~lib/memory/__stack_pointer
     local.get $8
     i32.store offset=12
     local.get $8
     call $~lib/array/Array<~lib/string/String>#push
     drop
    end
    local.get $i
    i32.const 1
    i32.add
    local.set $i
    br $for-loop|0
   end
  end
  local.get $result
  local.set $8
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $8
  return
 )
 (func $~lib/array/Array<assembly/index/Responsive>#get:length (param $this i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  call $~lib/array/Array<assembly/index/Responsive>#get:length_
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
  return
 )
 (func $~lib/array/Array<assembly/index/Responsive>#__uget (param $this i32) (param $index i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  call $~lib/array/Array<assembly/index/Responsive>#get:dataStart
  local.get $index
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
  return
 )
 (func $~lib/array/Array<~lib/string/String>#indexOf (param $this i32) (param $value i32) (param $fromIndex i32) (result i32)
  (local $len i32)
  (local $4 i32)
  (local $5 i32)
  (local $ptr i32)
  (local $7 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $this
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store
  local.get $7
  call $~lib/array/Array<~lib/string/String>#get:length_
  local.set $len
  local.get $len
  i32.const 0
  i32.eq
  if (result i32)
   i32.const 1
  else
   local.get $fromIndex
   local.get $len
   i32.ge_s
  end
  if
   i32.const -1
   local.set $7
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $7
   return
  end
  local.get $fromIndex
  i32.const 0
  i32.lt_s
  if
   local.get $len
   local.get $fromIndex
   i32.add
   local.tee $4
   i32.const 0
   local.tee $5
   local.get $4
   local.get $5
   i32.gt_s
   select
   local.set $fromIndex
  end
  local.get $this
  local.set $7
  global.get $~lib/memory/__stack_pointer
  local.get $7
  i32.store
  local.get $7
  call $~lib/array/Array<~lib/string/String>#get:dataStart
  local.set $ptr
  loop $while-continue|0
   local.get $fromIndex
   local.get $len
   i32.lt_s
   if
    local.get $ptr
    local.get $fromIndex
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.set $7
    global.get $~lib/memory/__stack_pointer
    local.get $7
    i32.store
    local.get $7
    local.get $value
    local.set $7
    global.get $~lib/memory/__stack_pointer
    local.get $7
    i32.store offset=4
    local.get $7
    call $~lib/string/String.__eq
    if
     local.get $fromIndex
     local.set $7
     global.get $~lib/memory/__stack_pointer
     i32.const 8
     i32.add
     global.set $~lib/memory/__stack_pointer
     local.get $7
     return
    end
    local.get $fromIndex
    i32.const 1
    i32.add
    local.set $fromIndex
    br $while-continue|0
   end
  end
  i32.const -1
  local.set $7
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $7
  return
 )
 (func $~lib/array/Array<~lib/string/String>#includes (param $this i32) (param $value i32) (param $fromIndex i32) (result i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  i32.const 0
  drop
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  local.get $value
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=4
  local.get $3
  local.get $fromIndex
  call $~lib/array/Array<~lib/string/String>#indexOf
  i32.const 0
  i32.ge_s
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
  return
 )
 (func $~lib/array/Array<~lib/string/String>#get:length (param $this i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store
  local.get $1
  call $~lib/array/Array<~lib/string/String>#get:length_
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
  return
 )
 (func $~lib/array/Array<~lib/string/String>#__get (param $this i32) (param $index i32) (result i32)
  (local $value i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $index
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  call $~lib/array/Array<~lib/string/String>#get:length_
  i32.ge_u
  if
   i32.const 224
   i32.const 2608
   i32.const 114
   i32.const 42
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $this
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  call $~lib/array/Array<~lib/string/String>#get:dataStart
  local.get $index
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.tee $value
  i32.store offset=4
  i32.const 1
  drop
  i32.const 0
  i32.eqz
  drop
  local.get $value
  i32.eqz
  if
   i32.const 2656
   i32.const 2608
   i32.const 118
   i32.const 40
   call $~lib/builtins/abort
   unreachable
  end
  local.get $value
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
  return
 )
 (func $~lib/util/string/joinStringArray (param $dataStart i32) (param $length i32) (param $separator i32) (result i32)
  (local $lastIndex i32)
  (local $4 i32)
  (local $estLen i32)
  (local $value i32)
  (local $i i32)
  (local $offset i32)
  (local $sepLen i32)
  (local $result i32)
  (local $i|11 i32)
  (local $valueLen i32)
  (local $13 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  local.get $length
  i32.const 1
  i32.sub
  local.set $lastIndex
  local.get $lastIndex
  i32.const 0
  i32.lt_s
  if
   i32.const 432
   local.set $13
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $13
   return
  end
  local.get $lastIndex
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   local.get $dataStart
   i32.load
   local.tee $4
   i32.store
   local.get $4
   if (result i32)
    local.get $4
   else
    i32.const 432
   end
   local.set $13
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $13
   return
  end
  i32.const 0
  local.set $estLen
  i32.const 0
  local.set $i
  loop $for-loop|0
   local.get $i
   local.get $length
   i32.lt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $dataStart
    local.get $i
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.tee $value
    i32.store offset=4
    local.get $value
    i32.const 0
    i32.ne
    if
     local.get $estLen
     local.get $value
     local.set $13
     global.get $~lib/memory/__stack_pointer
     local.get $13
     i32.store offset=8
     local.get $13
     call $~lib/string/String#get:length
     i32.add
     local.set $estLen
    end
    local.get $i
    i32.const 1
    i32.add
    local.set $i
    br $for-loop|0
   end
  end
  i32.const 0
  local.set $offset
  local.get $separator
  local.set $13
  global.get $~lib/memory/__stack_pointer
  local.get $13
  i32.store offset=8
  local.get $13
  call $~lib/string/String#get:length
  local.set $sepLen
  global.get $~lib/memory/__stack_pointer
  local.get $estLen
  local.get $sepLen
  local.get $lastIndex
  i32.mul
  i32.add
  i32.const 1
  i32.shl
  i32.const 2
  call $~lib/rt/itcms/__new
  local.tee $result
  i32.store offset=12
  i32.const 0
  local.set $i|11
  loop $for-loop|1
   local.get $i|11
   local.get $lastIndex
   i32.lt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $dataStart
    local.get $i|11
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.tee $value
    i32.store offset=4
    local.get $value
    i32.const 0
    i32.ne
    if
     local.get $value
     local.set $13
     global.get $~lib/memory/__stack_pointer
     local.get $13
     i32.store offset=8
     local.get $13
     call $~lib/string/String#get:length
     local.set $valueLen
     local.get $result
     local.get $offset
     i32.const 1
     i32.shl
     i32.add
     local.get $value
     local.get $valueLen
     i32.const 1
     i32.shl
     memory.copy
     local.get $offset
     local.get $valueLen
     i32.add
     local.set $offset
    end
    local.get $sepLen
    if
     local.get $result
     local.get $offset
     i32.const 1
     i32.shl
     i32.add
     local.get $separator
     local.get $sepLen
     i32.const 1
     i32.shl
     memory.copy
     local.get $offset
     local.get $sepLen
     i32.add
     local.set $offset
    end
    local.get $i|11
    i32.const 1
    i32.add
    local.set $i|11
    br $for-loop|1
   end
  end
  global.get $~lib/memory/__stack_pointer
  local.get $dataStart
  local.get $lastIndex
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.tee $value
  i32.store offset=4
  local.get $value
  i32.const 0
  i32.ne
  if
   local.get $result
   local.get $offset
   i32.const 1
   i32.shl
   i32.add
   local.get $value
   local.get $value
   local.set $13
   global.get $~lib/memory/__stack_pointer
   local.get $13
   i32.store offset=8
   local.get $13
   call $~lib/string/String#get:length
   i32.const 1
   i32.shl
   memory.copy
  end
  local.get $result
  local.set $13
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $13
  return
 )
 (func $~lib/array/Array<~lib/string/String>#join (param $this i32) (param $separator i32) (result i32)
  (local $ptr i32)
  (local $len i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store
  local.get $4
  call $~lib/array/Array<~lib/string/String>#get:dataStart
  local.set $ptr
  local.get $this
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store
  local.get $4
  call $~lib/array/Array<~lib/string/String>#get:length_
  local.set $len
  i32.const 0
  drop
  i32.const 0
  drop
  i32.const 0
  drop
  i32.const 0
  i32.const 1
  i32.lt_s
  drop
  i32.const 1
  drop
  local.get $ptr
  local.get $len
  local.get $separator
  local.set $4
  global.get $~lib/memory/__stack_pointer
  local.get $4
  i32.store
  local.get $4
  call $~lib/util/string/joinStringArray
  local.set $4
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
  return
 )
 (func $assembly/index/diff2 (param $current i32) (param $updates i32)
  (local $len i32)
  (local $i i32)
  (local $records i32)
  (local $type i32)
  (local $data i32)
  (local $KEY i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $l i32)
  (local $key i32)
  (local $13 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 40
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 40
  memory.fill
  local.get $current
  local.set $13
  global.get $~lib/memory/__stack_pointer
  local.get $13
  i32.store
  local.get $13
  call $~lib/array/Array<assembly/index/Responsive>#get:length
  local.set $len
  i32.const 0
  local.set $i
  loop $for-loop|0
   local.get $i
   local.get $len
   i32.lt_s
   if
    block $for-continue|0
     global.get $~lib/memory/__stack_pointer
     local.get $current
     local.set $13
     global.get $~lib/memory/__stack_pointer
     local.get $13
     i32.store
     local.get $13
     local.get $i
     call $~lib/array/Array<assembly/index/Responsive>#__uget
     local.tee $records
     i32.store offset=4
     global.get $~lib/memory/__stack_pointer
     local.get $records
     local.set $13
     global.get $~lib/memory/__stack_pointer
     local.get $13
     i32.store
     local.get $13
     call $assembly/index/Responsive#get:type
     local.tee $type
     i32.store offset=8
     global.get $~lib/memory/__stack_pointer
     local.get $records
     local.set $13
     global.get $~lib/memory/__stack_pointer
     local.get $13
     i32.store
     local.get $13
     call $assembly/index/Responsive#get:data
     local.tee $data
     i32.store offset=12
     global.get $~lib/memory/__stack_pointer
     local.get $data
     local.set $13
     global.get $~lib/memory/__stack_pointer
     local.get $13
     i32.store
     local.get $13
     call $assembly/index/CreateElement#get:KEY
     local.tee $KEY
     i32.store offset=16
     local.get $updates
     local.set $13
     global.get $~lib/memory/__stack_pointer
     local.get $13
     i32.store
     local.get $13
     local.get $KEY
     local.set $13
     global.get $~lib/memory/__stack_pointer
     local.get $13
     i32.store offset=20
     local.get $13
     i32.const 0
     call $~lib/array/Array<~lib/string/String>#includes
     if
      local.get $type
      local.set $13
      global.get $~lib/memory/__stack_pointer
      local.get $13
      i32.store
      local.get $13
      i32.const 2848
      local.set $13
      global.get $~lib/memory/__stack_pointer
      local.get $13
      i32.store offset=20
      local.get $13
      call $~lib/string/String.__eq
      if
       local.get $KEY
       local.set $13
       global.get $~lib/memory/__stack_pointer
       local.get $13
       i32.store
       local.get $13
       global.get $~lib/memory/__stack_pointer
       local.get $data
       local.set $13
       global.get $~lib/memory/__stack_pointer
       local.get $13
       i32.store offset=24
       local.get $13
       call $assembly/index/CreateElement#get:text
       local.tee $8
       i32.store offset=28
       local.get $8
       if (result i32)
        local.get $8
       else
        i32.const 432
       end
       local.set $13
       global.get $~lib/memory/__stack_pointer
       local.get $13
       i32.store offset=20
       local.get $13
       call $assembly/DOM/updateText
       br $for-continue|0
      else
       local.get $type
       local.set $13
       global.get $~lib/memory/__stack_pointer
       local.get $13
       i32.store
       local.get $13
       i32.const 3248
       local.set $13
       global.get $~lib/memory/__stack_pointer
       local.get $13
       i32.store offset=20
       local.get $13
       call $~lib/string/String.__eq
       if
        local.get $KEY
        local.set $13
        global.get $~lib/memory/__stack_pointer
        local.get $13
        i32.store
        local.get $13
        local.get $data
        local.set $13
        global.get $~lib/memory/__stack_pointer
        local.get $13
        i32.store offset=24
        local.get $13
        call $assembly/index/CreateElement#get:props
        local.set $13
        global.get $~lib/memory/__stack_pointer
        local.get $13
        i32.store offset=20
        local.get $13
        call $assembly/DOM/updateAttribute
        br $for-continue|0
       else
        local.get $type
        local.set $13
        global.get $~lib/memory/__stack_pointer
        local.get $13
        i32.store
        local.get $13
        i32.const 3280
        local.set $13
        global.get $~lib/memory/__stack_pointer
        local.get $13
        i32.store offset=20
        local.get $13
        call $~lib/string/String.__eq
        if
         global.get $~lib/memory/__stack_pointer
         i32.const 0
         i32.const 2
         i32.const 13
         i32.const 3424
         call $~lib/rt/__newArray
         local.tee $l
         i32.store offset=32
         i32.const 0
         local.set $key
         loop $for-loop|1
          local.get $key
          local.get $updates
          local.set $13
          global.get $~lib/memory/__stack_pointer
          local.get $13
          i32.store
          local.get $13
          call $~lib/array/Array<~lib/string/String>#get:length
          i32.lt_s
          if
           local.get $updates
           local.set $13
           global.get $~lib/memory/__stack_pointer
           local.get $13
           i32.store offset=24
           local.get $13
           local.get $key
           call $~lib/array/Array<~lib/string/String>#__get
           local.set $13
           global.get $~lib/memory/__stack_pointer
           local.get $13
           i32.store
           local.get $13
           local.get $KEY
           local.set $13
           global.get $~lib/memory/__stack_pointer
           local.get $13
           i32.store offset=20
           local.get $13
           call $~lib/string/String.__eq
           if
            local.get $l
            local.set $13
            global.get $~lib/memory/__stack_pointer
            local.get $13
            i32.store
            local.get $13
            local.get $updates
            local.set $13
            global.get $~lib/memory/__stack_pointer
            local.get $13
            i32.store offset=24
            local.get $13
            local.get $key
            call $~lib/array/Array<~lib/string/String>#__get
            local.set $13
            global.get $~lib/memory/__stack_pointer
            local.get $13
            i32.store offset=20
            local.get $13
            call $~lib/array/Array<~lib/string/String>#push
            drop
           end
           local.get $key
           i32.const 1
           i32.add
           local.set $key
           br $for-loop|1
          end
         end
         local.get $KEY
         local.set $13
         global.get $~lib/memory/__stack_pointer
         local.get $13
         i32.store
         local.get $13
         local.get $l
         local.set $13
         global.get $~lib/memory/__stack_pointer
         local.get $13
         i32.store offset=24
         local.get $13
         i32.const 3360
         local.set $13
         global.get $~lib/memory/__stack_pointer
         local.get $13
         i32.store offset=36
         local.get $13
         call $~lib/array/Array<~lib/string/String>#join
         local.set $13
         global.get $~lib/memory/__stack_pointer
         local.get $13
         i32.store offset=20
         local.get $13
         call $assembly/DOM/updateList
         br $for-continue|0
        else
         local.get $type
         local.set $13
         global.get $~lib/memory/__stack_pointer
         local.get $13
         i32.store
         local.get $13
         i32.const 3312
         local.set $13
         global.get $~lib/memory/__stack_pointer
         local.get $13
         i32.store offset=20
         local.get $13
         call $~lib/string/String.__eq
         if
          local.get $KEY
          local.set $13
          global.get $~lib/memory/__stack_pointer
          local.get $13
          i32.store
          local.get $13
          local.get $data
          local.set $13
          global.get $~lib/memory/__stack_pointer
          local.get $13
          i32.store offset=24
          local.get $13
          call $assembly/index/CreateElement#get:props
          local.set $13
          global.get $~lib/memory/__stack_pointer
          local.get $13
          i32.store offset=20
          local.get $13
          call $assembly/DOM/updateComponent
          br $for-continue|0
         end
        end
       end
      end
     end
    end
    local.get $i
    i32.const 1
    i32.add
    local.set $i
    br $for-loop|0
   end
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 40
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $assembly/index/wasmPatch (param $current i32) (param $updatesStr i32)
  (local $updates i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 20
  memory.fill
  global.get $~lib/memory/__stack_pointer
  local.get $updatesStr
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=8
  local.get $3
  i32.const 3360
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=12
  local.get $3
  i32.const 1
  global.set $~argumentsLength
  i32.const 0
  call $~lib/string/String#split@varargs
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  i32.const 3392
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=4
  local.get $3
  call $~lib/array/Array<~lib/string/String>#filter
  local.tee $updates
  i32.store offset=16
  local.get $current
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store
  local.get $3
  local.get $updates
  local.set $3
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.store offset=4
  local.get $3
  call $assembly/index/diff2
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.add
  global.set $~lib/memory/__stack_pointer
  return
 )
 (func $~lib/function/Function<%28i32%29=>i32>#__visit (param $this i32) (param $cookie i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  call $~lib/function/Function<%28i32%29=>i32>#get:_env
  local.get $cookie
  call $~lib/rt/itcms/__visit
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/array/Array<assembly/index/CreateElement>#__visit (param $this i32) (param $cookie i32)
  (local $cur i32)
  (local $end i32)
  (local $val i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  i32.const 1
  drop
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store
  local.get $5
  call $~lib/array/Array<assembly/index/CreateElement>#get:dataStart
  local.set $cur
  local.get $cur
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store
  local.get $5
  call $~lib/array/Array<assembly/index/CreateElement>#get:length_
  i32.const 2
  i32.shl
  i32.add
  local.set $end
  loop $while-continue|0
   local.get $cur
   local.get $end
   i32.lt_u
   if
    local.get $cur
    i32.load
    local.set $val
    local.get $val
    if
     local.get $val
     local.get $cookie
     call $~lib/rt/itcms/__visit
    end
    local.get $cur
    i32.const 4
    i32.add
    local.set $cur
    br $while-continue|0
   end
  end
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store
  local.get $5
  call $~lib/array/Array<assembly/index/CreateElement>#get:buffer
  local.get $cookie
  call $~lib/rt/itcms/__visit
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/array/Array<i32>#__visit (param $this i32) (param $cookie i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  i32.const 0
  drop
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  call $~lib/array/Array<i32>#get:buffer
  local.get $cookie
  call $~lib/rt/itcms/__visit
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/array/Array<assembly/index/Responsive>#__visit (param $this i32) (param $cookie i32)
  (local $cur i32)
  (local $end i32)
  (local $val i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  i32.const 1
  drop
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store
  local.get $5
  call $~lib/array/Array<assembly/index/Responsive>#get:dataStart
  local.set $cur
  local.get $cur
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store
  local.get $5
  call $~lib/array/Array<assembly/index/Responsive>#get:length_
  i32.const 2
  i32.shl
  i32.add
  local.set $end
  loop $while-continue|0
   local.get $cur
   local.get $end
   i32.lt_u
   if
    local.get $cur
    i32.load
    local.set $val
    local.get $val
    if
     local.get $val
     local.get $cookie
     call $~lib/rt/itcms/__visit
    end
    local.get $cur
    i32.const 4
    i32.add
    local.set $cur
    br $while-continue|0
   end
  end
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store
  local.get $5
  call $~lib/array/Array<assembly/index/Responsive>#get:buffer
  local.get $cookie
  call $~lib/rt/itcms/__visit
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/array/Array<~lib/string/String>#__visit (param $this i32) (param $cookie i32)
  (local $cur i32)
  (local $end i32)
  (local $val i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  i32.const 1
  drop
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store
  local.get $5
  call $~lib/array/Array<~lib/string/String>#get:dataStart
  local.set $cur
  local.get $cur
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store
  local.get $5
  call $~lib/array/Array<~lib/string/String>#get:length_
  i32.const 2
  i32.shl
  i32.add
  local.set $end
  loop $while-continue|0
   local.get $cur
   local.get $end
   i32.lt_u
   if
    local.get $cur
    i32.load
    local.set $val
    local.get $val
    if
     local.get $val
     local.get $cookie
     call $~lib/rt/itcms/__visit
    end
    local.get $cur
    i32.const 4
    i32.add
    local.set $cur
    br $while-continue|0
   end
  end
  local.get $this
  local.set $5
  global.get $~lib/memory/__stack_pointer
  local.get $5
  i32.store
  local.get $5
  call $~lib/array/Array<~lib/string/String>#get:buffer
  local.get $cookie
  call $~lib/rt/itcms/__visit
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/function/Function<%28~lib/string/String%2Ci32%2C~lib/array/Array<~lib/string/String>%29=>bool>#__visit (param $this i32) (param $cookie i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $this
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store
  local.get $2
  call $~lib/function/Function<%28~lib/string/String%2Ci32%2C~lib/array/Array<~lib/string/String>%29=>bool>#get:_env
  local.get $cookie
  call $~lib/rt/itcms/__visit
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/object/Object#constructor (param $this i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $this
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 0
   call $~lib/rt/itcms/__new
   local.tee $this
   i32.store
  end
  local.get $this
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $~lib/rt/__newArray (param $length i32) (param $alignLog2 i32) (param $id i32) (param $data i32) (result i32)
  (local $bufferSize i32)
  (local $buffer i32)
  (local $array i32)
  (local $7 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $length
  local.get $alignLog2
  i32.shl
  local.set $bufferSize
  global.get $~lib/memory/__stack_pointer
  local.get $bufferSize
  i32.const 1
  local.get $data
  call $~lib/rt/__newBuffer
  local.tee $buffer
  i32.store
  i32.const 16
  local.get $id
  call $~lib/rt/itcms/__new
  local.set $array
  local.get $array
  local.get $buffer
  i32.store
  local.get $array
  local.get $buffer
  i32.const 0
  call $~lib/rt/itcms/__link
  local.get $array
  local.get $buffer
  i32.store offset=4
  local.get $array
  local.get $bufferSize
  i32.store offset=8
  local.get $array
  local.get $length
  i32.store offset=12
  local.get $array
  local.set $7
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $7
  return
 )
 (func $~lib/util/number/itoa32 (param $value i32) (param $radix i32) (result i32)
  (local $sign i32)
  (local $out i32)
  (local $decimals i32)
  (local $buffer i32)
  (local $num i32)
  (local $offset i32)
  (local $decimals|8 i32)
  (local $buffer|9 i32)
  (local $num|10 i32)
  (local $offset|11 i32)
  (local $val32 i32)
  (local $decimals|13 i32)
  (local $14 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  local.get $radix
  i32.const 2
  i32.lt_s
  if (result i32)
   i32.const 1
  else
   local.get $radix
   i32.const 36
   i32.gt_s
  end
  if
   i32.const 752
   i32.const 880
   i32.const 373
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  local.get $value
  i32.eqz
  if
   i32.const 944
   local.set $14
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $14
   return
  end
  local.get $value
  i32.const 31
  i32.shr_u
  i32.const 1
  i32.shl
  local.set $sign
  local.get $sign
  if
   i32.const 0
   local.get $value
   i32.sub
   local.set $value
  end
  local.get $radix
  i32.const 10
  i32.eq
  if
   local.get $value
   call $~lib/util/number/decimalCount32
   local.set $decimals
   global.get $~lib/memory/__stack_pointer
   local.get $decimals
   i32.const 1
   i32.shl
   local.get $sign
   i32.add
   i32.const 2
   call $~lib/rt/itcms/__new
   local.tee $out
   i32.store
   local.get $out
   local.get $sign
   i32.add
   local.set $buffer
   local.get $value
   local.set $num
   local.get $decimals
   local.set $offset
   i32.const 0
   i32.const 1
   i32.ge_s
   drop
   local.get $buffer
   local.get $num
   local.get $offset
   call $~lib/util/number/utoa32_dec_lut
  else
   local.get $radix
   i32.const 16
   i32.eq
   if
    i32.const 31
    local.get $value
    i32.clz
    i32.sub
    i32.const 2
    i32.shr_s
    i32.const 1
    i32.add
    local.set $decimals|8
    global.get $~lib/memory/__stack_pointer
    local.get $decimals|8
    i32.const 1
    i32.shl
    local.get $sign
    i32.add
    i32.const 2
    call $~lib/rt/itcms/__new
    local.tee $out
    i32.store
    local.get $out
    local.get $sign
    i32.add
    local.set $buffer|9
    local.get $value
    local.set $num|10
    local.get $decimals|8
    local.set $offset|11
    i32.const 0
    i32.const 1
    i32.ge_s
    drop
    local.get $buffer|9
    local.get $num|10
    i64.extend_i32_u
    local.get $offset|11
    call $~lib/util/number/utoa_hex_lut
   else
    local.get $value
    local.set $val32
    local.get $val32
    i64.extend_i32_u
    local.get $radix
    call $~lib/util/number/ulog_base
    local.set $decimals|13
    global.get $~lib/memory/__stack_pointer
    local.get $decimals|13
    i32.const 1
    i32.shl
    local.get $sign
    i32.add
    i32.const 2
    call $~lib/rt/itcms/__new
    local.tee $out
    i32.store
    local.get $out
    local.get $sign
    i32.add
    local.get $val32
    i64.extend_i32_u
    local.get $decimals|13
    local.get $radix
    call $~lib/util/number/utoa64_any_core
   end
  end
  local.get $sign
  if
   local.get $out
   i32.const 45
   i32.store16
  end
  local.get $out
  local.set $14
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $14
  return
 )
 (func $export:assembly/index/wasmParse (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $assembly/index/wasmParse
  local.set $2
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $export:assembly/index/wasmRender (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  call $assembly/index/wasmRender
  local.set $1
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:assembly/index/wasmPatch (param $0 i32) (param $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  call $~stack_check
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $assembly/index/wasmPatch
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
)
