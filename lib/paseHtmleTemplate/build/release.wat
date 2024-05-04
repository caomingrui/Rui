(module
 (type $0 (func (param i32 i32)))
 (type $1 (func (param i32 i32) (result i32)))
 (type $2 (func (param i32)))
 (type $3 (func (param i32) (result i32)))
 (type $4 (func (param i32 i32 i32) (result i32)))
 (type $5 (func))
 (type $6 (func (param i32 i32 i32 i32)))
 (type $7 (func (param i32 i32 i64)))
 (type $8 (func (result i32)))
 (type $9 (func (param i32 i32 i32)))
 (type $10 (func (param i32 i32 i32 i32) (result i32)))
 (type $11 (func (param i32 i32 i32 i32 i32 f64) (result i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (import "DOM" "startComponent" (func $assembly/DOM/startComponent (param i32)))
 (import "DOM" "createElement" (func $assembly/DOM/createElement (param i32 i32 i32 i32 i32 f64) (result i32)))
 (import "DOM" "endComponent" (func $assembly/DOM/endComponent (param i32)))
 (import "DOM" "updateText" (func $assembly/DOM/updateText (param i32 i32)))
 (import "DOM" "updateAttribute" (func $assembly/DOM/updateAttribute (param i32 i32)))
 (import "DOM" "updateList" (func $assembly/DOM/updateList (param i32 i32)))
 (import "DOM" "updateComponent" (func $assembly/DOM/updateComponent (param i32 i32)))
 (global $assembly/index/i (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/total (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/threshold (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/state (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/visitCount (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/pinSpace (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/iter (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/toSpace (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/white (mut i32) (i32.const 0))
 (global $~lib/rt/itcms/fromSpace (mut i32) (i32.const 0))
 (global $~lib/rt/tlsf/ROOT (mut i32) (i32.const 0))
 (global $assembly/index/lastElement (mut i32) (i32.const 0))
 (global $assembly/index/sum i32 (i32.const 1488))
 (global $~lib/rt/__rtti_base i32 (i32.const 4592))
 (global $~lib/memory/__stack_pointer (mut i32) (i32.const 37424))
 (memory $0 1)
 (data $0 (i32.const 1036) "<")
 (data $0.1 (i32.const 1048) "\02\00\00\00(\00\00\00A\00l\00l\00o\00c\00a\00t\00i\00o\00n\00 \00t\00o\00o\00 \00l\00a\00r\00g\00e")
 (data $1 (i32.const 1100) "<")
 (data $1.1 (i32.const 1112) "\02\00\00\00 \00\00\00~\00l\00i\00b\00/\00r\00t\00/\00i\00t\00c\00m\00s\00.\00t\00s")
 (data $4 (i32.const 1228) "<")
 (data $4.1 (i32.const 1240) "\02\00\00\00$\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e")
 (data $5 (i32.const 1292) ",")
 (data $5.1 (i32.const 1304) "\02\00\00\00\14\00\00\00~\00l\00i\00b\00/\00r\00t\00.\00t\00s")
 (data $7 (i32.const 1372) "<")
 (data $7.1 (i32.const 1384) "\02\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00t\00l\00s\00f\00.\00t\00s")
 (data $8 (i32.const 1436) "\1c")
 (data $8.1 (i32.const 1448) "\02")
 (data $9 (i32.const 1468) "\1c")
 (data $9.1 (i32.const 1480) "\05\00\00\00\08\00\00\00\01")
 (data $10 (i32.const 1500) "\1c")
 (data $10.1 (i32.const 1512) "\02\00\00\00\02\00\00\00<")
 (data $11 (i32.const 1532) "\1c")
 (data $11.1 (i32.const 1544) "\02\00\00\00\02\00\00\00>")
 (data $12 (i32.const 1564) "\1c")
 (data $12.1 (i32.const 1576) "\02\00\00\00\04\00\00\00<\00/")
 (data $13 (i32.const 1596) "\1c")
 (data $13.1 (i32.const 1608) "\02\00\00\00\02\00\00\00{")
 (data $14 (i32.const 1628) "\1c")
 (data $14.1 (i32.const 1640) "\02\00\00\00\02\00\00\00}")
 (data $15 (i32.const 1660) "\1c")
 (data $15.1 (i32.const 1672) "\02\00\00\00\02\00\00\00 ")
 (data $16 (i32.const 1692) "\1c")
 (data $16.1 (i32.const 1704) "\01")
 (data $17 (i32.const 1724) "\1c")
 (data $17.1 (i32.const 1736) "\02\00\00\00\04\00\00\00@\00@")
 (data $18 (i32.const 1756) "|")
 (data $18.1 (i32.const 1768) "\02\00\00\00d\00\00\00t\00o\00S\00t\00r\00i\00n\00g\00(\00)\00 \00r\00a\00d\00i\00x\00 \00a\00r\00g\00u\00m\00e\00n\00t\00 \00m\00u\00s\00t\00 \00b\00e\00 \00b\00e\00t\00w\00e\00e\00n\00 \002\00 \00a\00n\00d\00 \003\006")
 (data $19 (i32.const 1884) "<")
 (data $19.1 (i32.const 1896) "\02\00\00\00&\00\00\00~\00l\00i\00b\00/\00u\00t\00i\00l\00/\00n\00u\00m\00b\00e\00r\00.\00t\00s")
 (data $20 (i32.const 1948) "\1c")
 (data $20.1 (i32.const 1960) "\02\00\00\00\02\00\00\000")
 (data $21 (i32.const 1980) "0\000\000\001\000\002\000\003\000\004\000\005\000\006\000\007\000\008\000\009\001\000\001\001\001\002\001\003\001\004\001\005\001\006\001\007\001\008\001\009\002\000\002\001\002\002\002\003\002\004\002\005\002\006\002\007\002\008\002\009\003\000\003\001\003\002\003\003\003\004\003\005\003\006\003\007\003\008\003\009\004\000\004\001\004\002\004\003\004\004\004\005\004\006\004\007\004\008\004\009\005\000\005\001\005\002\005\003\005\004\005\005\005\006\005\007\005\008\005\009\006\000\006\001\006\002\006\003\006\004\006\005\006\006\006\007\006\008\006\009\007\000\007\001\007\002\007\003\007\004\007\005\007\006\007\007\007\008\007\009\008\000\008\001\008\002\008\003\008\004\008\005\008\006\008\007\008\008\008\009\009\000\009\001\009\002\009\003\009\004\009\005\009\006\009\007\009\008\009\009")
 (data $22 (i32.const 2380) "\1c\04")
 (data $22.1 (i32.const 2392) "\02\00\00\00\00\04\00\000\000\000\001\000\002\000\003\000\004\000\005\000\006\000\007\000\008\000\009\000\00a\000\00b\000\00c\000\00d\000\00e\000\00f\001\000\001\001\001\002\001\003\001\004\001\005\001\006\001\007\001\008\001\009\001\00a\001\00b\001\00c\001\00d\001\00e\001\00f\002\000\002\001\002\002\002\003\002\004\002\005\002\006\002\007\002\008\002\009\002\00a\002\00b\002\00c\002\00d\002\00e\002\00f\003\000\003\001\003\002\003\003\003\004\003\005\003\006\003\007\003\008\003\009\003\00a\003\00b\003\00c\003\00d\003\00e\003\00f\004\000\004\001\004\002\004\003\004\004\004\005\004\006\004\007\004\008\004\009\004\00a\004\00b\004\00c\004\00d\004\00e\004\00f\005\000\005\001\005\002\005\003\005\004\005\005\005\006\005\007\005\008\005\009\005\00a\005\00b\005\00c\005\00d\005\00e\005\00f\006\000\006\001\006\002\006\003\006\004\006\005\006\006\006\007\006\008\006\009\006\00a\006\00b\006\00c\006\00d\006\00e\006\00f\007\000\007\001\007\002\007\003\007\004\007\005\007\006\007\007\007\008\007\009\007\00a\007\00b\007\00c\007\00d\007\00e\007\00f\008\000\008\001\008\002\008\003\008\004\008\005\008\006\008\007\008\008\008\009\008\00a\008\00b\008\00c\008\00d\008\00e\008\00f\009\000\009\001\009\002\009\003\009\004\009\005\009\006\009\007\009\008\009\009\009\00a\009\00b\009\00c\009\00d\009\00e\009\00f\00a\000\00a\001\00a\002\00a\003\00a\004\00a\005\00a\006\00a\007\00a\008\00a\009\00a\00a\00a\00b\00a\00c\00a\00d\00a\00e\00a\00f\00b\000\00b\001\00b\002\00b\003\00b\004\00b\005\00b\006\00b\007\00b\008\00b\009\00b\00a\00b\00b\00b\00c\00b\00d\00b\00e\00b\00f\00c\000\00c\001\00c\002\00c\003\00c\004\00c\005\00c\006\00c\007\00c\008\00c\009\00c\00a\00c\00b\00c\00c\00c\00d\00c\00e\00c\00f\00d\000\00d\001\00d\002\00d\003\00d\004\00d\005\00d\006\00d\007\00d\008\00d\009\00d\00a\00d\00b\00d\00c\00d\00d\00d\00e\00d\00f\00e\000\00e\001\00e\002\00e\003\00e\004\00e\005\00e\006\00e\007\00e\008\00e\009\00e\00a\00e\00b\00e\00c\00e\00d\00e\00e\00e\00f\00f\000\00f\001\00f\002\00f\003\00f\004\00f\005\00f\006\00f\007\00f\008\00f\009\00f\00a\00f\00b\00f\00c\00f\00d\00f\00e\00f\00f")
 (data $23 (i32.const 3436) "\\")
 (data $23.1 (i32.const 3448) "\02\00\00\00H\00\00\000\001\002\003\004\005\006\007\008\009\00a\00b\00c\00d\00e\00f\00g\00h\00i\00j\00k\00l\00m\00n\00o\00p\00q\00r\00s\00t\00u\00v\00w\00x\00y\00z")
 (data $24 (i32.const 3532) ",")
 (data $24.1 (i32.const 3544) "\02\00\00\00\18\00\00\00_\00_\00d\00e\00f\00a\00u\00l\00t\00K\00E\00Y")
 (data $25 (i32.const 3580) "\1c")
 (data $25.1 (i32.const 3592) "\01")
 (data $26 (i32.const 3612) ",")
 (data $26.1 (i32.const 3624) "\02\00\00\00\1a\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s")
 (data $27 (i32.const 3660) "|")
 (data $27.1 (i32.const 3672) "\02\00\00\00^\00\00\00E\00l\00e\00m\00e\00n\00t\00 \00t\00y\00p\00e\00 \00m\00u\00s\00t\00 \00b\00e\00 \00n\00u\00l\00l\00a\00b\00l\00e\00 \00i\00f\00 \00a\00r\00r\00a\00y\00 \00i\00s\00 \00h\00o\00l\00e\00y")
 (data $28 (i32.const 3788) "\1c")
 (data $28.1 (i32.const 3800) "\02\00\00\00\02\00\00\00\'")
 (data $29 (i32.const 3820) "\1c")
 (data $29.1 (i32.const 3832) "\02\00\00\00\02\00\00\00\"")
 (data $30 (i32.const 3852) "\1c")
 (data $30.1 (i32.const 3864) "\02\00\00\00\08\00\00\00t\00e\00x\00t")
 (data $31 (i32.const 3884) "\1c")
 (data $31.1 (i32.const 3896) "\01")
 (data $32 (i32.const 3916) ",")
 (data $32.1 (i32.const 3928) "\02\00\00\00\1c\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00l\00e\00n\00g\00t\00h")
 (data $33 (i32.const 3964) ",")
 (data $33.1 (i32.const 3976) "\02\00\00\00\10\00\00\00t\00e\00m\00p\00l\00a\00t\00e")
 (data $34 (i32.const 4012) "\1c")
 (data $34.1 (i32.const 4024) "\01")
 (data $35 (i32.const 4044) "\1c")
 (data $35.1 (i32.const 4056) "\01")
 (data $36 (i32.const 4076) "\1c")
 (data $36.1 (i32.const 4088) "\01")
 (data $37 (i32.const 4108) "\1c")
 (data $37.1 (i32.const 4120) "\01")
 (data $38 (i32.const 4140) ",")
 (data $38.1 (i32.const 4152) "\02\00\00\00\1c\00\00\00A\00r\00r\00a\00y\00 \00i\00s\00 \00e\00m\00p\00t\00y")
 (data $39 (i32.const 4188) "\1c")
 (data $39.1 (i32.const 4200) "\01")
 (data $40 (i32.const 4220) "\1c")
 (data $40.1 (i32.const 4232) "\01")
 (data $41 (i32.const 4252) "\1c")
 (data $41.1 (i32.const 4264) "\02\00\00\00\08\00\00\00a\00t\00t\00r")
 (data $42 (i32.const 4284) "\1c")
 (data $42.1 (i32.const 4296) "\02\00\00\00\08\00\00\00l\00i\00s\00t")
 (data $43 (i32.const 4316) ",")
 (data $43.1 (i32.const 4328) "\02\00\00\00\12\00\00\00c\00o\00m\00p\00o\00n\00e\00n\00t")
 (data $44 (i32.const 4364) "\1c")
 (data $44.1 (i32.const 4376) "\02\00\00\00\06\00\00\00>\00>\00>")
 (data $45 (i32.const 4396) "\1c")
 (data $45.1 (i32.const 4408) "\0e\00\00\00\08\00\00\00\02")
 (data $46 (i32.const 4428) "\1c")
 (data $46.1 (i32.const 4440) "\01")
 (data $47 (i32.const 4460) "<")
 (data $47.1 (i32.const 4472) "\02\00\00\00*\00\00\00O\00b\00j\00e\00c\00t\00 \00a\00l\00r\00e\00a\00d\00y\00 \00p\00i\00n\00n\00e\00d")
 (data $48 (i32.const 4524) "<")
 (data $48.1 (i32.const 4536) "\02\00\00\00(\00\00\00O\00b\00j\00e\00c\00t\00 \00i\00s\00 \00n\00o\00t\00 \00p\00i\00n\00n\00e\00d")
 (data $49 (i32.const 4592) "\0f\00\00\00 \00\00\00 \00\00\00 ")
 (data $49.1 (i32.const 4628) "\02A\00\00\00\00\00\00\02\t\00\00\00\00\00\00\02A\00\00\02A")
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
 (func $~lib/rt/itcms/visitRoots
  (local $0 i32)
  (local $1 i32)
  global.get $assembly/index/lastElement
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
  i32.const 1248
  call $~lib/rt/itcms/__visit
  i32.const 3936
  call $~lib/rt/itcms/__visit
  i32.const 4160
  call $~lib/rt/itcms/__visit
  i32.const 3680
  call $~lib/rt/itcms/__visit
  i32.const 1056
  call $~lib/rt/itcms/__visit
  i32.const 4480
  call $~lib/rt/itcms/__visit
  i32.const 4544
  call $~lib/rt/itcms/__visit
  i32.const 2400
  call $~lib/rt/itcms/__visit
  i32.const 3456
  call $~lib/rt/itcms/__visit
  global.get $~lib/rt/itcms/pinSpace
  local.tee $1
  i32.load offset=4
  i32.const -4
  i32.and
  local.set $0
  loop $while-continue|0
   local.get $0
   local.get $1
   i32.ne
   if
    local.get $0
    i32.load offset=4
    i32.const 3
    i32.and
    i32.const 3
    i32.ne
    if
     i32.const 0
     i32.const 1120
     i32.const 160
     i32.const 16
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    i32.const 20
    i32.add
    call $~lib/rt/__visit_members
    local.get $0
    i32.load offset=4
    i32.const -4
    i32.and
    local.set $0
    br $while-continue|0
   end
  end
 )
 (func $~lib/rt/itcms/Object#unlink (param $0 i32)
  (local $1 i32)
  local.get $0
  i32.load offset=4
  i32.const -4
  i32.and
  local.tee $1
  i32.eqz
  if
   local.get $0
   i32.load offset=8
   i32.eqz
   local.get $0
   i32.const 37424
   i32.lt_u
   i32.and
   i32.eqz
   if
    i32.const 0
    i32.const 1120
    i32.const 128
    i32.const 18
    call $~lib/builtins/abort
    unreachable
   end
   return
  end
  local.get $0
  i32.load offset=8
  local.tee $0
  i32.eqz
  if
   i32.const 0
   i32.const 1120
   i32.const 132
   i32.const 16
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.get $0
  i32.store offset=8
  local.get $0
  local.get $1
  local.get $0
  i32.load offset=4
  i32.const 3
  i32.and
  i32.or
  i32.store offset=4
 )
 (func $~lib/rt/itcms/Object#makeGray (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  global.get $~lib/rt/itcms/iter
  i32.eq
  if
   local.get $0
   i32.load offset=8
   local.tee $1
   i32.eqz
   if
    i32.const 0
    i32.const 1120
    i32.const 148
    i32.const 30
    call $~lib/builtins/abort
    unreachable
   end
   local.get $1
   global.set $~lib/rt/itcms/iter
  end
  local.get $0
  call $~lib/rt/itcms/Object#unlink
  global.get $~lib/rt/itcms/toSpace
  local.set $1
  local.get $0
  i32.load offset=12
  local.tee $2
  i32.const 2
  i32.le_u
  if (result i32)
   i32.const 1
  else
   local.get $2
   i32.const 4592
   i32.load
   i32.gt_u
   if
    i32.const 1248
    i32.const 1312
    i32.const 21
    i32.const 28
    call $~lib/builtins/abort
    unreachable
   end
   local.get $2
   i32.const 2
   i32.shl
   i32.const 4596
   i32.add
   i32.load
   i32.const 32
   i32.and
  end
  local.set $3
  local.get $1
  i32.load offset=8
  local.set $2
  local.get $0
  global.get $~lib/rt/itcms/white
  i32.eqz
  i32.const 2
  local.get $3
  select
  local.get $1
  i32.or
  i32.store offset=4
  local.get $0
  local.get $2
  i32.store offset=8
  local.get $2
  local.get $0
  local.get $2
  i32.load offset=4
  i32.const 3
  i32.and
  i32.or
  i32.store offset=4
  local.get $1
  local.get $0
  i32.store offset=8
 )
 (func $~lib/rt/itcms/__visit (param $0 i32)
  local.get $0
  i32.eqz
  if
   return
  end
  global.get $~lib/rt/itcms/white
  local.get $0
  i32.const 20
  i32.sub
  local.tee $0
  i32.load offset=4
  i32.const 3
  i32.and
  i32.eq
  if
   local.get $0
   call $~lib/rt/itcms/Object#makeGray
   global.get $~lib/rt/itcms/visitCount
   i32.const 1
   i32.add
   global.set $~lib/rt/itcms/visitCount
  end
 )
 (func $~lib/rt/tlsf/removeBlock (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $1
  i32.load
  local.tee $3
  i32.const 1
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 1392
   i32.const 268
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const -4
  i32.and
  local.tee $3
  i32.const 12
  i32.lt_u
  if
   i32.const 0
   i32.const 1392
   i32.const 270
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 256
  i32.lt_u
  if (result i32)
   local.get $3
   i32.const 4
   i32.shr_u
  else
   i32.const 31
   i32.const 1073741820
   local.get $3
   local.get $3
   i32.const 1073741820
   i32.ge_u
   select
   local.tee $3
   i32.clz
   i32.sub
   local.tee $4
   i32.const 7
   i32.sub
   local.set $2
   local.get $3
   local.get $4
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 16
   i32.xor
  end
  local.tee $3
  i32.const 16
  i32.lt_u
  local.get $2
  i32.const 23
  i32.lt_u
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 1392
   i32.const 284
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load offset=8
  local.set $5
  local.get $1
  i32.load offset=4
  local.tee $4
  if
   local.get $4
   local.get $5
   i32.store offset=8
  end
  local.get $5
  if
   local.get $5
   local.get $4
   i32.store offset=4
  end
  local.get $1
  local.get $0
  local.get $2
  i32.const 4
  i32.shl
  local.get $3
  i32.add
  i32.const 2
  i32.shl
  i32.add
  local.tee $1
  i32.load offset=96
  i32.eq
  if
   local.get $1
   local.get $5
   i32.store offset=96
   local.get $5
   i32.eqz
   if
    local.get $0
    local.get $2
    i32.const 2
    i32.shl
    i32.add
    local.tee $1
    i32.load offset=4
    i32.const -2
    local.get $3
    i32.rotl
    i32.and
    local.set $3
    local.get $1
    local.get $3
    i32.store offset=4
    local.get $3
    i32.eqz
    if
     local.get $0
     local.get $0
     i32.load
     i32.const -2
     local.get $2
     i32.rotl
     i32.and
     i32.store
    end
   end
  end
 )
 (func $~lib/rt/tlsf/insertBlock (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $1
  i32.eqz
  if
   i32.const 0
   i32.const 1392
   i32.const 201
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load
  local.tee $3
  i32.const 1
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 1392
   i32.const 203
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 4
  i32.add
  local.get $1
  i32.load
  i32.const -4
  i32.and
  i32.add
  local.tee $4
  i32.load
  local.tee $2
  i32.const 1
  i32.and
  if
   local.get $0
   local.get $4
   call $~lib/rt/tlsf/removeBlock
   local.get $1
   local.get $3
   i32.const 4
   i32.add
   local.get $2
   i32.const -4
   i32.and
   i32.add
   local.tee $3
   i32.store
   local.get $1
   i32.const 4
   i32.add
   local.get $1
   i32.load
   i32.const -4
   i32.and
   i32.add
   local.tee $4
   i32.load
   local.set $2
  end
  local.get $3
  i32.const 2
  i32.and
  if
   local.get $1
   i32.const 4
   i32.sub
   i32.load
   local.tee $1
   i32.load
   local.tee $6
   i32.const 1
   i32.and
   i32.eqz
   if
    i32.const 0
    i32.const 1392
    i32.const 221
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   local.get $1
   call $~lib/rt/tlsf/removeBlock
   local.get $1
   local.get $6
   i32.const 4
   i32.add
   local.get $3
   i32.const -4
   i32.and
   i32.add
   local.tee $3
   i32.store
  end
  local.get $4
  local.get $2
  i32.const 2
  i32.or
  i32.store
  local.get $3
  i32.const -4
  i32.and
  local.tee $2
  i32.const 12
  i32.lt_u
  if
   i32.const 0
   i32.const 1392
   i32.const 233
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  local.get $1
  i32.const 4
  i32.add
  local.get $2
  i32.add
  i32.ne
  if
   i32.const 0
   i32.const 1392
   i32.const 234
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  i32.const 4
  i32.sub
  local.get $1
  i32.store
  local.get $2
  i32.const 256
  i32.lt_u
  if (result i32)
   local.get $2
   i32.const 4
   i32.shr_u
  else
   i32.const 31
   i32.const 1073741820
   local.get $2
   local.get $2
   i32.const 1073741820
   i32.ge_u
   select
   local.tee $2
   i32.clz
   i32.sub
   local.tee $3
   i32.const 7
   i32.sub
   local.set $5
   local.get $2
   local.get $3
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 16
   i32.xor
  end
  local.tee $2
  i32.const 16
  i32.lt_u
  local.get $5
  i32.const 23
  i32.lt_u
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 1392
   i32.const 251
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $5
  i32.const 4
  i32.shl
  local.get $2
  i32.add
  i32.const 2
  i32.shl
  i32.add
  i32.load offset=96
  local.set $3
  local.get $1
  i32.const 0
  i32.store offset=4
  local.get $1
  local.get $3
  i32.store offset=8
  local.get $3
  if
   local.get $3
   local.get $1
   i32.store offset=4
  end
  local.get $0
  local.get $5
  i32.const 4
  i32.shl
  local.get $2
  i32.add
  i32.const 2
  i32.shl
  i32.add
  local.get $1
  i32.store offset=96
  local.get $0
  local.get $0
  i32.load
  i32.const 1
  local.get $5
  i32.shl
  i32.or
  i32.store
  local.get $0
  local.get $5
  i32.const 2
  i32.shl
  i32.add
  local.tee $0
  local.get $0
  i32.load offset=4
  i32.const 1
  local.get $2
  i32.shl
  i32.or
  i32.store offset=4
 )
 (func $~lib/rt/tlsf/addMemory (param $0 i32) (param $1 i32) (param $2 i64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $2
  local.get $1
  i64.extend_i32_u
  i64.lt_u
  if
   i32.const 0
   i32.const 1392
   i32.const 382
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 19
  i32.add
  i32.const -16
  i32.and
  i32.const 4
  i32.sub
  local.set $1
  local.get $0
  i32.load offset=1568
  local.tee $3
  if
   local.get $3
   i32.const 4
   i32.add
   local.get $1
   i32.gt_u
   if
    i32.const 0
    i32.const 1392
    i32.const 389
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
   local.get $3
   local.get $1
   i32.const 16
   i32.sub
   local.tee $5
   i32.eq
   if
    local.get $3
    i32.load
    local.set $4
    local.get $5
    local.set $1
   end
  else
   local.get $0
   i32.const 1572
   i32.add
   local.get $1
   i32.gt_u
   if
    i32.const 0
    i32.const 1392
    i32.const 402
    i32.const 5
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $2
  i32.wrap_i64
  i32.const -16
  i32.and
  local.get $1
  i32.sub
  local.tee $3
  i32.const 20
  i32.lt_u
  if
   return
  end
  local.get $1
  local.get $4
  i32.const 2
  i32.and
  local.get $3
  i32.const 8
  i32.sub
  local.tee $3
  i32.const 1
  i32.or
  i32.or
  i32.store
  local.get $1
  i32.const 0
  i32.store offset=4
  local.get $1
  i32.const 0
  i32.store offset=8
  local.get $1
  i32.const 4
  i32.add
  local.get $3
  i32.add
  local.tee $3
  i32.const 2
  i32.store
  local.get $0
  local.get $3
  i32.store offset=1568
  local.get $0
  local.get $1
  call $~lib/rt/tlsf/insertBlock
 )
 (func $~lib/rt/tlsf/initialize
  (local $0 i32)
  (local $1 i32)
  memory.size
  local.tee $1
  i32.const 0
  i32.le_s
  if (result i32)
   i32.const 1
   local.get $1
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
  i32.const 37424
  i32.const 0
  i32.store
  i32.const 38992
  i32.const 0
  i32.store
  loop $for-loop|0
   local.get $0
   i32.const 23
   i32.lt_u
   if
    local.get $0
    i32.const 2
    i32.shl
    i32.const 37424
    i32.add
    i32.const 0
    i32.store offset=4
    i32.const 0
    local.set $1
    loop $for-loop|1
     local.get $1
     i32.const 16
     i32.lt_u
     if
      local.get $0
      i32.const 4
      i32.shl
      local.get $1
      i32.add
      i32.const 2
      i32.shl
      i32.const 37424
      i32.add
      i32.const 0
      i32.store offset=96
      local.get $1
      i32.const 1
      i32.add
      local.set $1
      br $for-loop|1
     end
    end
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $for-loop|0
   end
  end
  i32.const 37424
  i32.const 38996
  memory.size
  i64.extend_i32_s
  i64.const 16
  i64.shl
  call $~lib/rt/tlsf/addMemory
  i32.const 37424
  global.set $~lib/rt/tlsf/ROOT
 )
 (func $~lib/rt/itcms/step (result i32)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  block $break|0
   block $case2|0
    block $case1|0
     block $case0|0
      global.get $~lib/rt/itcms/state
      br_table $case0|0 $case1|0 $case2|0 $break|0
     end
     i32.const 1
     global.set $~lib/rt/itcms/state
     i32.const 0
     global.set $~lib/rt/itcms/visitCount
     call $~lib/rt/itcms/visitRoots
     global.get $~lib/rt/itcms/toSpace
     global.set $~lib/rt/itcms/iter
     global.get $~lib/rt/itcms/visitCount
     return
    end
    global.get $~lib/rt/itcms/white
    i32.eqz
    local.set $1
    global.get $~lib/rt/itcms/iter
    i32.load offset=4
    i32.const -4
    i32.and
    local.set $0
    loop $while-continue|1
     local.get $0
     global.get $~lib/rt/itcms/toSpace
     i32.ne
     if
      local.get $0
      global.set $~lib/rt/itcms/iter
      local.get $1
      local.get $0
      i32.load offset=4
      local.tee $2
      i32.const 3
      i32.and
      i32.ne
      if
       local.get $0
       local.get $2
       i32.const -4
       i32.and
       local.get $1
       i32.or
       i32.store offset=4
       i32.const 0
       global.set $~lib/rt/itcms/visitCount
       local.get $0
       i32.const 20
       i32.add
       call $~lib/rt/__visit_members
       global.get $~lib/rt/itcms/visitCount
       return
      end
      local.get $0
      i32.load offset=4
      i32.const -4
      i32.and
      local.set $0
      br $while-continue|1
     end
    end
    i32.const 0
    global.set $~lib/rt/itcms/visitCount
    call $~lib/rt/itcms/visitRoots
    global.get $~lib/rt/itcms/toSpace
    global.get $~lib/rt/itcms/iter
    i32.load offset=4
    i32.const -4
    i32.and
    i32.eq
    if
     global.get $~lib/memory/__stack_pointer
     local.set $0
     loop $while-continue|0
      local.get $0
      i32.const 37424
      i32.lt_u
      if
       local.get $0
       i32.load
       call $~lib/rt/itcms/__visit
       local.get $0
       i32.const 4
       i32.add
       local.set $0
       br $while-continue|0
      end
     end
     global.get $~lib/rt/itcms/iter
     i32.load offset=4
     i32.const -4
     i32.and
     local.set $0
     loop $while-continue|2
      local.get $0
      global.get $~lib/rt/itcms/toSpace
      i32.ne
      if
       local.get $1
       local.get $0
       i32.load offset=4
       local.tee $2
       i32.const 3
       i32.and
       i32.ne
       if
        local.get $0
        local.get $2
        i32.const -4
        i32.and
        local.get $1
        i32.or
        i32.store offset=4
        local.get $0
        i32.const 20
        i32.add
        call $~lib/rt/__visit_members
       end
       local.get $0
       i32.load offset=4
       i32.const -4
       i32.and
       local.set $0
       br $while-continue|2
      end
     end
     global.get $~lib/rt/itcms/fromSpace
     local.set $0
     global.get $~lib/rt/itcms/toSpace
     global.set $~lib/rt/itcms/fromSpace
     local.get $0
     global.set $~lib/rt/itcms/toSpace
     local.get $1
     global.set $~lib/rt/itcms/white
     local.get $0
     i32.load offset=4
     i32.const -4
     i32.and
     global.set $~lib/rt/itcms/iter
     i32.const 2
     global.set $~lib/rt/itcms/state
    end
    global.get $~lib/rt/itcms/visitCount
    return
   end
   global.get $~lib/rt/itcms/iter
   local.tee $0
   global.get $~lib/rt/itcms/toSpace
   i32.ne
   if
    local.get $0
    i32.load offset=4
    local.tee $1
    i32.const -4
    i32.and
    global.set $~lib/rt/itcms/iter
    global.get $~lib/rt/itcms/white
    i32.eqz
    local.get $1
    i32.const 3
    i32.and
    i32.ne
    if
     i32.const 0
     i32.const 1120
     i32.const 229
     i32.const 20
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    i32.const 37424
    i32.lt_u
    if
     local.get $0
     i32.const 0
     i32.store offset=4
     local.get $0
     i32.const 0
     i32.store offset=8
    else
     global.get $~lib/rt/itcms/total
     local.get $0
     i32.load
     i32.const -4
     i32.and
     i32.const 4
     i32.add
     i32.sub
     global.set $~lib/rt/itcms/total
     local.get $0
     i32.const 4
     i32.add
     local.tee $0
     i32.const 37424
     i32.ge_u
     if
      global.get $~lib/rt/tlsf/ROOT
      i32.eqz
      if
       call $~lib/rt/tlsf/initialize
      end
      global.get $~lib/rt/tlsf/ROOT
      local.set $1
      local.get $0
      i32.const 4
      i32.sub
      local.set $2
      local.get $0
      i32.const 15
      i32.and
      i32.const 1
      local.get $0
      select
      if (result i32)
       i32.const 1
      else
       local.get $2
       i32.load
       i32.const 1
       i32.and
      end
      if
       i32.const 0
       i32.const 1392
       i32.const 562
       i32.const 3
       call $~lib/builtins/abort
       unreachable
      end
      local.get $2
      local.get $2
      i32.load
      i32.const 1
      i32.or
      i32.store
      local.get $1
      local.get $2
      call $~lib/rt/tlsf/insertBlock
     end
    end
    i32.const 10
    return
   end
   global.get $~lib/rt/itcms/toSpace
   global.get $~lib/rt/itcms/toSpace
   i32.store offset=4
   global.get $~lib/rt/itcms/toSpace
   global.get $~lib/rt/itcms/toSpace
   i32.store offset=8
   i32.const 0
   global.set $~lib/rt/itcms/state
  end
  i32.const 0
 )
 (func $~lib/rt/tlsf/searchBlock (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  i32.const 256
  i32.lt_u
  if
   local.get $1
   i32.const 4
   i32.shr_u
   local.set $1
  else
   local.get $1
   i32.const 536870910
   i32.lt_u
   if
    local.get $1
    i32.const 1
    i32.const 27
    local.get $1
    i32.clz
    i32.sub
    i32.shl
    i32.add
    i32.const 1
    i32.sub
    local.set $1
   end
   local.get $1
   i32.const 31
   local.get $1
   i32.clz
   i32.sub
   local.tee $2
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 16
   i32.xor
   local.set $1
   local.get $2
   i32.const 7
   i32.sub
   local.set $2
  end
  local.get $1
  i32.const 16
  i32.lt_u
  local.get $2
  i32.const 23
  i32.lt_u
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 1392
   i32.const 334
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $2
  i32.const 2
  i32.shl
  i32.add
  i32.load offset=4
  i32.const -1
  local.get $1
  i32.shl
  i32.and
  local.tee $1
  if (result i32)
   local.get $0
   local.get $1
   i32.ctz
   local.get $2
   i32.const 4
   i32.shl
   i32.add
   i32.const 2
   i32.shl
   i32.add
   i32.load offset=96
  else
   local.get $0
   i32.load
   i32.const -1
   local.get $2
   i32.const 1
   i32.add
   i32.shl
   i32.and
   local.tee $1
   if (result i32)
    local.get $0
    local.get $1
    i32.ctz
    local.tee $1
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=4
    local.tee $2
    i32.eqz
    if
     i32.const 0
     i32.const 1392
     i32.const 347
     i32.const 18
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.get $2
    i32.ctz
    local.get $1
    i32.const 4
    i32.shl
    i32.add
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=96
   else
    i32.const 0
   end
  end
 )
 (func $~lib/rt/itcms/__new (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  i32.const 1073741804
  i32.ge_u
  if
   i32.const 1056
   i32.const 1120
   i32.const 261
   i32.const 31
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/rt/itcms/total
  global.get $~lib/rt/itcms/threshold
  i32.ge_u
  if
   block $__inlined_func$~lib/rt/itcms/interrupt$69
    i32.const 2048
    local.set $2
    loop $do-loop|0
     local.get $2
     call $~lib/rt/itcms/step
     i32.sub
     local.set $2
     global.get $~lib/rt/itcms/state
     i32.eqz
     if
      global.get $~lib/rt/itcms/total
      i64.extend_i32_u
      i64.const 200
      i64.mul
      i64.const 100
      i64.div_u
      i32.wrap_i64
      i32.const 1024
      i32.add
      global.set $~lib/rt/itcms/threshold
      br $__inlined_func$~lib/rt/itcms/interrupt$69
     end
     local.get $2
     i32.const 0
     i32.gt_s
     br_if $do-loop|0
    end
    global.get $~lib/rt/itcms/total
    global.get $~lib/rt/itcms/total
    global.get $~lib/rt/itcms/threshold
    i32.sub
    i32.const 1024
    i32.lt_u
    i32.const 10
    i32.shl
    i32.add
    global.set $~lib/rt/itcms/threshold
   end
  end
  global.get $~lib/rt/tlsf/ROOT
  i32.eqz
  if
   call $~lib/rt/tlsf/initialize
  end
  global.get $~lib/rt/tlsf/ROOT
  local.set $4
  local.get $0
  i32.const 16
  i32.add
  local.tee $2
  i32.const 1073741820
  i32.gt_u
  if
   i32.const 1056
   i32.const 1392
   i32.const 461
   i32.const 29
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  local.get $2
  i32.const 12
  i32.le_u
  if (result i32)
   i32.const 12
  else
   local.get $2
   i32.const 19
   i32.add
   i32.const -16
   i32.and
   i32.const 4
   i32.sub
  end
  local.tee $5
  call $~lib/rt/tlsf/searchBlock
  local.tee $2
  i32.eqz
  if
   memory.size
   local.tee $2
   local.get $5
   i32.const 256
   i32.ge_u
   if (result i32)
    local.get $5
    i32.const 536870910
    i32.lt_u
    if (result i32)
     local.get $5
     i32.const 1
     i32.const 27
     local.get $5
     i32.clz
     i32.sub
     i32.shl
     i32.add
     i32.const 1
     i32.sub
    else
     local.get $5
    end
   else
    local.get $5
   end
   i32.const 4
   local.get $4
   i32.load offset=1568
   local.get $2
   i32.const 16
   i32.shl
   i32.const 4
   i32.sub
   i32.ne
   i32.shl
   i32.add
   i32.const 65535
   i32.add
   i32.const -65536
   i32.and
   i32.const 16
   i32.shr_u
   local.tee $3
   local.get $2
   local.get $3
   i32.gt_s
   select
   memory.grow
   i32.const 0
   i32.lt_s
   if
    local.get $3
    memory.grow
    i32.const 0
    i32.lt_s
    if
     unreachable
    end
   end
   local.get $4
   local.get $2
   i32.const 16
   i32.shl
   memory.size
   i64.extend_i32_s
   i64.const 16
   i64.shl
   call $~lib/rt/tlsf/addMemory
   local.get $4
   local.get $5
   call $~lib/rt/tlsf/searchBlock
   local.tee $2
   i32.eqz
   if
    i32.const 0
    i32.const 1392
    i32.const 499
    i32.const 16
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $5
  local.get $2
  i32.load
  i32.const -4
  i32.and
  i32.gt_u
  if
   i32.const 0
   i32.const 1392
   i32.const 501
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  local.get $2
  call $~lib/rt/tlsf/removeBlock
  local.get $2
  i32.load
  local.set $6
  local.get $5
  i32.const 4
  i32.add
  i32.const 15
  i32.and
  if
   i32.const 0
   i32.const 1392
   i32.const 361
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  local.get $6
  i32.const -4
  i32.and
  local.get $5
  i32.sub
  local.tee $3
  i32.const 16
  i32.ge_u
  if
   local.get $2
   local.get $5
   local.get $6
   i32.const 2
   i32.and
   i32.or
   i32.store
   local.get $2
   i32.const 4
   i32.add
   local.get $5
   i32.add
   local.tee $5
   local.get $3
   i32.const 4
   i32.sub
   i32.const 1
   i32.or
   i32.store
   local.get $4
   local.get $5
   call $~lib/rt/tlsf/insertBlock
  else
   local.get $2
   local.get $6
   i32.const -2
   i32.and
   i32.store
   local.get $2
   i32.const 4
   i32.add
   local.get $2
   i32.load
   i32.const -4
   i32.and
   i32.add
   local.tee $3
   local.get $3
   i32.load
   i32.const -3
   i32.and
   i32.store
  end
  local.get $2
  local.get $1
  i32.store offset=12
  local.get $2
  local.get $0
  i32.store offset=16
  global.get $~lib/rt/itcms/fromSpace
  local.tee $1
  i32.load offset=8
  local.set $3
  local.get $2
  local.get $1
  global.get $~lib/rt/itcms/white
  i32.or
  i32.store offset=4
  local.get $2
  local.get $3
  i32.store offset=8
  local.get $3
  local.get $2
  local.get $3
  i32.load offset=4
  i32.const 3
  i32.and
  i32.or
  i32.store offset=4
  local.get $1
  local.get $2
  i32.store offset=8
  global.get $~lib/rt/itcms/total
  local.get $2
  i32.load
  i32.const -4
  i32.and
  i32.const 4
  i32.add
  i32.add
  global.set $~lib/rt/itcms/total
  local.get $2
  i32.const 20
  i32.add
  local.tee $1
  i32.const 0
  local.get $0
  memory.fill
  local.get $1
 )
 (func $~lib/rt/itcms/__link (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  local.get $1
  i32.eqz
  if
   return
  end
  local.get $0
  i32.eqz
  if
   i32.const 0
   i32.const 1120
   i32.const 295
   i32.const 14
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/rt/itcms/white
  local.get $1
  i32.const 20
  i32.sub
  local.tee $1
  i32.load offset=4
  i32.const 3
  i32.and
  i32.eq
  if
   local.get $0
   i32.const 20
   i32.sub
   local.tee $0
   i32.load offset=4
   i32.const 3
   i32.and
   local.tee $3
   global.get $~lib/rt/itcms/white
   i32.eqz
   i32.eq
   if
    local.get $0
    local.get $1
    local.get $2
    select
    call $~lib/rt/itcms/Object#makeGray
   else
    global.get $~lib/rt/itcms/state
    i32.const 1
    i32.eq
    local.get $3
    i32.const 3
    i32.eq
    i32.and
    if
     local.get $1
     call $~lib/rt/itcms/Object#makeGray
    end
   end
  end
 )
 (func $start:assembly/index~anonymous|0 (param $0 i32) (result i32)
  unreachable
 )
 (func $~lib/number/I32#toString (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4656
  i32.lt_s
  if
   i32.const 37456
   i32.const 37504
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  block $__inlined_func$~lib/util/number/itoa32$74
   local.get $0
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.add
    global.set $~lib/memory/__stack_pointer
    i32.const 1968
    local.set $2
    br $__inlined_func$~lib/util/number/itoa32$74
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   local.get $0
   i32.sub
   local.get $0
   local.get $0
   i32.const 31
   i32.shr_u
   i32.const 1
   i32.shl
   local.tee $3
   select
   local.tee $0
   i32.const 100000
   i32.lt_u
   if (result i32)
    local.get $0
    i32.const 100
    i32.lt_u
    if (result i32)
     local.get $0
     i32.const 10
     i32.ge_u
     i32.const 1
     i32.add
    else
     local.get $0
     i32.const 10000
     i32.ge_u
     i32.const 3
     i32.add
     local.get $0
     i32.const 1000
     i32.ge_u
     i32.add
    end
   else
    local.get $0
    i32.const 10000000
    i32.lt_u
    if (result i32)
     local.get $0
     i32.const 1000000
     i32.ge_u
     i32.const 6
     i32.add
    else
     local.get $0
     i32.const 1000000000
     i32.ge_u
     i32.const 8
     i32.add
     local.get $0
     i32.const 100000000
     i32.ge_u
     i32.add
    end
   end
   local.tee $1
   i32.const 1
   i32.shl
   local.get $3
   i32.add
   i32.const 2
   call $~lib/rt/itcms/__new
   local.tee $2
   i32.store
   local.get $2
   local.get $3
   i32.add
   local.set $5
   loop $while-continue|0
    local.get $0
    i32.const 10000
    i32.ge_u
    if
     local.get $0
     i32.const 10000
     i32.rem_u
     local.set $4
     local.get $0
     i32.const 10000
     i32.div_u
     local.set $0
     local.get $5
     local.get $1
     i32.const 4
     i32.sub
     local.tee $1
     i32.const 1
     i32.shl
     i32.add
     local.get $4
     i32.const 100
     i32.div_u
     i32.const 2
     i32.shl
     i32.const 1980
     i32.add
     i64.load32_u
     local.get $4
     i32.const 100
     i32.rem_u
     i32.const 2
     i32.shl
     i32.const 1980
     i32.add
     i64.load32_u
     i64.const 32
     i64.shl
     i64.or
     i64.store
     br $while-continue|0
    end
   end
   local.get $0
   i32.const 100
   i32.ge_u
   if
    local.get $5
    local.get $1
    i32.const 2
    i32.sub
    local.tee $1
    i32.const 1
    i32.shl
    i32.add
    local.get $0
    i32.const 100
    i32.rem_u
    i32.const 2
    i32.shl
    i32.const 1980
    i32.add
    i32.load
    i32.store
    local.get $0
    i32.const 100
    i32.div_u
    local.set $0
   end
   local.get $0
   i32.const 10
   i32.ge_u
   if
    local.get $5
    local.get $1
    i32.const 2
    i32.sub
    i32.const 1
    i32.shl
    i32.add
    local.get $0
    i32.const 2
    i32.shl
    i32.const 1980
    i32.add
    i32.load
    i32.store
   else
    local.get $5
    local.get $1
    i32.const 1
    i32.sub
    i32.const 1
    i32.shl
    i32.add
    local.get $0
    i32.const 48
    i32.add
    i32.store16
   end
   local.get $3
   if
    local.get $2
    i32.const 45
    i32.store16
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
  end
  local.get $2
 )
 (func $~lib/util/string/compareImpl (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  local.get $0
  local.get $1
  i32.const 1
  i32.shl
  i32.add
  local.set $1
  local.get $3
  i32.const 4
  i32.ge_u
  if (result i32)
   local.get $1
   i32.const 7
   i32.and
   local.get $2
   i32.const 7
   i32.and
   i32.or
  else
   i32.const 1
  end
  i32.eqz
  if
   loop $do-loop|0
    local.get $1
    i64.load
    local.get $2
    i64.load
    i64.eq
    if
     local.get $1
     i32.const 8
     i32.add
     local.set $1
     local.get $2
     i32.const 8
     i32.add
     local.set $2
     local.get $3
     i32.const 4
     i32.sub
     local.tee $3
     i32.const 4
     i32.ge_u
     br_if $do-loop|0
    end
   end
  end
  loop $while-continue|1
   local.get $3
   local.tee $0
   i32.const 1
   i32.sub
   local.set $3
   local.get $0
   if
    local.get $1
    i32.load16_u
    local.tee $0
    local.get $2
    i32.load16_u
    local.tee $4
    i32.ne
    if
     local.get $0
     local.get $4
     i32.sub
     return
    end
    local.get $1
    i32.const 2
    i32.add
    local.set $1
    local.get $2
    i32.const 2
    i32.add
    local.set $2
    br $while-continue|1
   end
  end
  i32.const 0
 )
 (func $~lib/rt/itcms/__pin (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  if
   local.get $0
   i32.const 20
   i32.sub
   local.tee $1
   i32.load offset=4
   i32.const 3
   i32.and
   i32.const 3
   i32.eq
   if
    i32.const 4480
    i32.const 1120
    i32.const 338
    i32.const 7
    call $~lib/builtins/abort
    unreachable
   end
   local.get $1
   call $~lib/rt/itcms/Object#unlink
   global.get $~lib/rt/itcms/pinSpace
   local.tee $3
   i32.load offset=8
   local.set $2
   local.get $1
   local.get $3
   i32.const 3
   i32.or
   i32.store offset=4
   local.get $1
   local.get $2
   i32.store offset=8
   local.get $2
   local.get $1
   local.get $2
   i32.load offset=4
   i32.const 3
   i32.and
   i32.or
   i32.store offset=4
   local.get $3
   local.get $1
   i32.store offset=8
  end
  local.get $0
 )
 (func $~lib/rt/itcms/__unpin (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.eqz
  if
   return
  end
  local.get $0
  i32.const 20
  i32.sub
  local.tee $1
  i32.load offset=4
  i32.const 3
  i32.and
  i32.const 3
  i32.ne
  if
   i32.const 4544
   i32.const 1120
   i32.const 352
   i32.const 5
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/rt/itcms/state
  i32.const 1
  i32.eq
  if
   local.get $1
   call $~lib/rt/itcms/Object#makeGray
  else
   local.get $1
   call $~lib/rt/itcms/Object#unlink
   global.get $~lib/rt/itcms/fromSpace
   local.tee $0
   i32.load offset=8
   local.set $2
   local.get $1
   local.get $0
   global.get $~lib/rt/itcms/white
   i32.or
   i32.store offset=4
   local.get $1
   local.get $2
   i32.store offset=8
   local.get $2
   local.get $1
   local.get $2
   i32.load offset=4
   i32.const 3
   i32.and
   i32.or
   i32.store offset=4
   local.get $0
   local.get $1
   i32.store offset=8
  end
 )
 (func $~lib/rt/itcms/__collect
  global.get $~lib/rt/itcms/state
  i32.const 0
  i32.gt_s
  if
   loop $while-continue|0
    global.get $~lib/rt/itcms/state
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
   if
    call $~lib/rt/itcms/step
    drop
    br $while-continue|1
   end
  end
  global.get $~lib/rt/itcms/total
  i64.extend_i32_u
  i64.const 200
  i64.mul
  i64.const 100
  i64.div_u
  i32.wrap_i64
  i32.const 1024
  i32.add
  global.set $~lib/rt/itcms/threshold
 )
 (func $~lib/function/Function<%28i32%29=>i32>~visit (param $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4656
  i32.lt_s
  if
   i32.const 37456
   i32.const 37504
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.load offset=4
  call $~lib/rt/itcms/__visit
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $assembly/index/CreateElement~visit (param $0 i32)
  (local $1 i32)
  local.get $0
  i32.load
  local.tee $1
  if
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load offset=4
  local.tee $1
  if
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load offset=8
  local.tee $1
  if
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load offset=12
  local.tee $1
  if
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load offset=16
  local.tee $1
  if
   local.get $1
   call $~lib/rt/itcms/__visit
  end
  local.get $0
  i32.load offset=20
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
 )
 (func $~lib/rt/__visit_members (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  block $folding-inner2
   block $folding-inner1
    block $folding-inner0
     block $invalid
      block $~lib/function/Function<%28~lib/string/String%2Ci32%2C~lib/array/Array<~lib/string/String>%29=>bool>
       block $assembly/index/Responsive
        block $~lib/array/Array<i32>
         block $assembly/index/ParseIdentifier
          block $assembly/index/CreateElement
           block $~lib/function/Function<%28i32%29=>i32>
            block $assembly/index/LastElement
             block $~lib/string/String
              block $~lib/arraybuffer/ArrayBuffer
               block $~lib/object/Object
                local.get $0
                i32.const 8
                i32.sub
                i32.load
                br_table $~lib/object/Object $~lib/arraybuffer/ArrayBuffer $~lib/string/String $folding-inner2 $assembly/index/LastElement $~lib/function/Function<%28i32%29=>i32> $folding-inner2 $assembly/index/CreateElement $folding-inner0 $assembly/index/ParseIdentifier $~lib/array/Array<i32> $assembly/index/Responsive $folding-inner0 $folding-inner0 $~lib/function/Function<%28~lib/string/String%2Ci32%2C~lib/array/Array<~lib/string/String>%29=>bool> $invalid
               end
               return
              end
              return
             end
             return
            end
            local.get $0
            i32.load
            local.tee $1
            if
             local.get $1
             call $~lib/rt/itcms/__visit
            end
            local.get $0
            i32.load offset=4
            local.tee $1
            if
             local.get $1
             call $~lib/rt/itcms/__visit
            end
            local.get $0
            i32.load offset=8
            local.tee $1
            if
             local.get $1
             call $~lib/rt/itcms/__visit
            end
            local.get $0
            i32.load offset=12
            local.tee $1
            if
             local.get $1
             call $~lib/rt/itcms/__visit
            end
            local.get $0
            i32.load offset=16
            local.tee $0
            if
             local.get $0
             call $~lib/rt/itcms/__visit
            end
            return
           end
           local.get $0
           call $~lib/function/Function<%28i32%29=>i32>~visit
           return
          end
          local.get $0
          call $assembly/index/CreateElement~visit
          return
         end
         local.get $0
         call $assembly/index/CreateElement~visit
         return
        end
        global.get $~lib/memory/__stack_pointer
        i32.const 4
        i32.sub
        global.set $~lib/memory/__stack_pointer
        global.get $~lib/memory/__stack_pointer
        i32.const 4656
        i32.lt_s
        br_if $folding-inner1
        global.get $~lib/memory/__stack_pointer
        i32.const 0
        i32.store
        global.get $~lib/memory/__stack_pointer
        local.get $0
        i32.store
        local.get $0
        i32.load
        call $~lib/rt/itcms/__visit
        global.get $~lib/memory/__stack_pointer
        i32.const 4
        i32.add
        global.set $~lib/memory/__stack_pointer
        return
       end
       local.get $0
       i32.load
       local.tee $1
       if
        local.get $1
        call $~lib/rt/itcms/__visit
       end
       local.get $0
       i32.load offset=4
       local.tee $0
       if
        local.get $0
        call $~lib/rt/itcms/__visit
       end
       return
      end
      local.get $0
      call $~lib/function/Function<%28i32%29=>i32>~visit
      return
     end
     unreachable
    end
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.sub
    global.set $~lib/memory/__stack_pointer
    global.get $~lib/memory/__stack_pointer
    i32.const 4656
    i32.lt_s
    br_if $folding-inner1
    global.get $~lib/memory/__stack_pointer
    i32.const 0
    i32.store
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    i32.load offset=4
    local.set $1
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $1
    local.get $0
    i32.load offset=12
    i32.const 2
    i32.shl
    i32.add
    local.set $2
    loop $while-continue|0
     local.get $1
     local.get $2
     i32.lt_u
     if
      local.get $1
      i32.load
      local.tee $3
      if
       local.get $3
       call $~lib/rt/itcms/__visit
      end
      local.get $1
      i32.const 4
      i32.add
      local.set $1
      br $while-continue|0
     end
    end
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    i32.load
    call $~lib/rt/itcms/__visit
    global.get $~lib/memory/__stack_pointer
    i32.const 4
    i32.add
    global.set $~lib/memory/__stack_pointer
    return
   end
   i32.const 37456
   i32.const 37504
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load
  local.tee $0
  if
   local.get $0
   call $~lib/rt/itcms/__visit
  end
 )
 (func $~start
  (local $0 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 4656
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 20
   memory.fill
   memory.size
   i32.const 16
   i32.shl
   i32.const 37424
   i32.sub
   i32.const 1
   i32.shr_u
   global.set $~lib/rt/itcms/threshold
   i32.const 1172
   i32.const 1168
   i32.store
   i32.const 1176
   i32.const 1168
   i32.store
   i32.const 1168
   global.set $~lib/rt/itcms/pinSpace
   i32.const 1204
   i32.const 1200
   i32.store
   i32.const 1208
   i32.const 1200
   i32.store
   i32.const 1200
   global.set $~lib/rt/itcms/toSpace
   i32.const 1348
   i32.const 1344
   i32.store
   i32.const 1352
   i32.const 1344
   i32.store
   i32.const 1344
   global.set $~lib/rt/itcms/fromSpace
   global.get $~lib/memory/__stack_pointer
   i32.const 1456
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 1456
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 1456
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   i32.const 1456
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   i32.const 1456
   i32.store offset=16
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4656
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i64.const 0
   i64.store
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   i32.const 24
   i32.const 4
   call $~lib/rt/itcms/__new
   local.tee $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 1456
   i32.store offset=8
   local.get $0
   i32.const 1456
   i32.store
   local.get $0
   i32.const 1456
   i32.const 0
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 1456
   i32.store offset=8
   local.get $0
   i32.const 1456
   i32.store offset=4
   local.get $0
   i32.const 1456
   i32.const 0
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 1456
   i32.store offset=8
   local.get $0
   i32.const 1456
   i32.store offset=8
   local.get $0
   i32.const 1456
   i32.const 0
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 1456
   i32.store offset=8
   local.get $0
   i32.const 1456
   i32.store offset=12
   local.get $0
   i32.const 1456
   i32.const 0
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 1456
   i32.store offset=8
   local.get $0
   i32.const 1456
   i32.store offset=16
   local.get $0
   i32.const 1456
   i32.const 0
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   local.get $0
   i32.const 0
   i32.store offset=20
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   global.set $assembly/index/lastElement
   global.get $~lib/memory/__stack_pointer
   i32.const 20
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  i32.const 37456
  i32.const 37504
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/string/String.__concat (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 4656
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i64.const 0
   i64.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4656
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i64.const 0
   i64.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   local.tee $2
   i32.store
   local.get $0
   i32.const 20
   i32.sub
   i32.load offset=16
   i32.const -2
   i32.and
   local.set $3
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   block $__inlined_func$~lib/string/String#concat$345
    local.get $1
    i32.const 20
    i32.sub
    i32.load offset=16
    i32.const -2
    i32.and
    local.tee $4
    local.get $3
    i32.add
    local.tee $0
    i32.eqz
    if
     global.get $~lib/memory/__stack_pointer
     i32.const 8
     i32.add
     global.set $~lib/memory/__stack_pointer
     i32.const 1456
     local.set $0
     br $__inlined_func$~lib/string/String#concat$345
    end
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.const 2
    call $~lib/rt/itcms/__new
    local.tee $0
    i32.store offset=4
    local.get $0
    local.get $2
    local.get $3
    memory.copy
    local.get $0
    local.get $3
    i32.add
    local.get $1
    local.get $4
    memory.copy
    global.get $~lib/memory/__stack_pointer
    i32.const 8
    i32.add
    global.set $~lib/memory/__stack_pointer
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   return
  end
  i32.const 37456
  i32.const 37504
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $assembly/index/CreateElement#constructor (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 28
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 4656
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 28
   memory.fill
   global.get $~lib/memory/__stack_pointer
   i32.const 24
   i32.const 7
   call $~lib/rt/itcms/__new
   local.tee $3
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=8
   local.get $3
   local.get $0
   i32.store offset=8
   local.get $3
   local.get $0
   i32.const 0
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 1456
   i32.store offset=8
   local.get $3
   i32.const 1456
   i32.store offset=12
   local.get $3
   i32.const 1456
   i32.const 0
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=8
   local.get $3
   local.get $1
   i32.store offset=16
   local.get $3
   local.get $1
   i32.const 0
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=8
   local.get $3
   local.get $2
   i32.store offset=20
   local.get $3
   local.get $2
   i32.const 0
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 3552
   i32.store offset=8
   local.get $3
   i32.const 3552
   i32.store
   local.get $3
   i32.const 3552
   i32.const 0
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=4
   local.get $3
   i32.const 0
   i32.store offset=4
   local.get $3
   i32.const 0
   i32.const 0
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $2
   i32.store offset=20
   global.get $~lib/memory/__stack_pointer
   i32.const 1744
   i32.store offset=24
   local.get $2
   i32.const 1744
   call $~lib/string/String.__concat
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=12
   global.get $assembly/index/i
   call $~lib/number/I32#toString
   local.set $1
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=16
   local.get $0
   local.get $1
   call $~lib/string/String.__concat
   local.set $0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4656
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i64.const 0
   i64.store
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   local.get $3
   local.get $0
   i32.store
   local.get $3
   local.get $0
   i32.const 0
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $assembly/index/i
   i32.const 1
   i32.add
   global.set $assembly/index/i
   global.get $~lib/memory/__stack_pointer
   i32.const 28
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $3
   return
  end
  i32.const 37456
  i32.const 37504
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/string/String#substring (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4656
  i32.lt_s
  if
   i32.const 37456
   i32.const 37504
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $1
  i32.const 0
  local.get $1
  i32.const 0
  i32.gt_s
  select
  local.tee $3
  local.get $0
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const 1
  i32.shr_u
  local.tee $1
  local.get $1
  local.get $3
  i32.gt_s
  select
  local.tee $3
  local.get $2
  i32.const 0
  local.get $2
  i32.const 0
  i32.gt_s
  select
  local.tee $2
  local.get $1
  local.get $1
  local.get $2
  i32.gt_s
  select
  local.tee $2
  local.get $2
  local.get $3
  i32.gt_s
  select
  i32.const 1
  i32.shl
  local.set $4
  local.get $3
  local.get $2
  local.get $2
  local.get $3
  i32.lt_s
  select
  i32.const 1
  i32.shl
  local.tee $2
  local.get $4
  i32.sub
  local.tee $3
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   i32.const 1456
   return
  end
  local.get $4
  i32.eqz
  local.get $2
  local.get $1
  i32.const 1
  i32.shl
  i32.eq
  i32.and
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   return
  end
  global.get $~lib/memory/__stack_pointer
  local.get $3
  i32.const 2
  call $~lib/rt/itcms/__new
  local.tee $1
  i32.store offset=4
  local.get $1
  local.get $0
  local.get $4
  i32.add
  local.get $3
  memory.copy
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $~lib/string/String.__eq (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4656
  i32.lt_s
  if
   i32.const 37456
   i32.const 37504
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  local.get $0
  local.get $1
  i32.eq
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   i32.const 1
   return
  end
  block $folding-inner0
   local.get $1
   i32.eqz
   local.get $0
   i32.eqz
   i32.or
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.const 20
   i32.sub
   i32.load offset=16
   i32.const 1
   i32.shr_u
   local.set $2
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   local.get $2
   local.get $1
   i32.const 20
   i32.sub
   i32.load offset=16
   i32.const 1
   i32.shr_u
   i32.ne
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=4
   local.get $0
   i32.const 0
   local.get $1
   local.get $2
   call $~lib/util/string/compareImpl
   i32.eqz
   local.set $0
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   return
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  i32.const 0
 )
 (func $~lib/string/String.__ne (param $0 i32) (param $1 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4656
  i32.lt_s
  if
   i32.const 37456
   i32.const 37504
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $~lib/string/String.__eq
  i32.eqz
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/array/Array<assembly/index/CreateElement>#__get (param $0 i32) (param $1 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4656
  i32.lt_s
  if
   i32.const 37456
   i32.const 37504
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $1
  local.get $0
  i32.load offset=12
  i32.ge_u
  if
   i32.const 1248
   i32.const 3632
   i32.const 114
   i32.const 42
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.tee $0
  i32.store offset=4
  local.get $0
  i32.eqz
  if
   i32.const 3680
   i32.const 3632
   i32.const 118
   i32.const 40
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $assembly/index/ElementStack#lastStack (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4656
  i32.lt_s
  if
   i32.const 37456
   i32.const 37504
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.load offset=4
  i32.const 1
  i32.sub
  i32.const 0
  i32.ge_s
  if (result i32)
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.load offset=4
   i32.const 1
   i32.sub
  else
   i32.const 0
  end
  local.set $1
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load
  local.tee $0
  i32.store
  local.get $0
  local.get $1
  call $~lib/array/Array<assembly/index/CreateElement>#__get
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $assembly/index/CreateElement#handleChangeTagName (param $0 i32) (param $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4656
  i32.lt_s
  if
   i32.const 37456
   i32.const 37504
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  i32.store offset=8
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $~lib/string/String#trim (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4656
  i32.lt_s
  if
   i32.const 37456
   i32.const 37504
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.const 20
  i32.sub
  i32.load offset=16
  i32.const 1
  i32.shr_u
  local.tee $3
  i32.const 1
  i32.shl
  local.set $1
  loop $while-continue|0
   local.get $1
   if (result i32)
    block $__inlined_func$~lib/util/string/isSpace$3 (result i32)
     local.get $0
     local.get $1
     i32.add
     i32.const 2
     i32.sub
     i32.load16_u
     local.tee $4
     i32.const 5760
     i32.lt_u
     if
      local.get $4
      i32.const 128
      i32.or
      i32.const 160
      i32.eq
      local.get $4
      i32.const 9
      i32.sub
      i32.const 4
      i32.le_u
      i32.or
      br $__inlined_func$~lib/util/string/isSpace$3
     end
     i32.const 1
     local.get $4
     i32.const -8192
     i32.add
     i32.const 10
     i32.le_u
     br_if $__inlined_func$~lib/util/string/isSpace$3
     drop
     block $break|0
      block $case6|0
       local.get $4
       i32.const 5760
       i32.eq
       br_if $case6|0
       local.get $4
       i32.const 8232
       i32.eq
       br_if $case6|0
       local.get $4
       i32.const 8233
       i32.eq
       br_if $case6|0
       local.get $4
       i32.const 8239
       i32.eq
       br_if $case6|0
       local.get $4
       i32.const 8287
       i32.eq
       br_if $case6|0
       local.get $4
       i32.const 12288
       i32.eq
       br_if $case6|0
       local.get $4
       i32.const 65279
       i32.eq
       br_if $case6|0
       br $break|0
      end
      i32.const 1
      br $__inlined_func$~lib/util/string/isSpace$3
     end
     i32.const 0
    end
   else
    i32.const 0
   end
   if
    local.get $1
    i32.const 2
    i32.sub
    local.set $1
    br $while-continue|0
   end
  end
  loop $while-continue|1
   local.get $1
   local.get $2
   i32.gt_u
   if (result i32)
    block $__inlined_func$~lib/util/string/isSpace$4 (result i32)
     local.get $0
     local.get $2
     i32.add
     i32.load16_u
     local.tee $4
     i32.const 5760
     i32.lt_u
     if
      local.get $4
      i32.const 128
      i32.or
      i32.const 160
      i32.eq
      local.get $4
      i32.const 9
      i32.sub
      i32.const 4
      i32.le_u
      i32.or
      br $__inlined_func$~lib/util/string/isSpace$4
     end
     i32.const 1
     local.get $4
     i32.const -8192
     i32.add
     i32.const 10
     i32.le_u
     br_if $__inlined_func$~lib/util/string/isSpace$4
     drop
     block $break|00
      block $case6|01
       local.get $4
       i32.const 5760
       i32.eq
       br_if $case6|01
       local.get $4
       i32.const 8232
       i32.eq
       br_if $case6|01
       local.get $4
       i32.const 8233
       i32.eq
       br_if $case6|01
       local.get $4
       i32.const 8239
       i32.eq
       br_if $case6|01
       local.get $4
       i32.const 8287
       i32.eq
       br_if $case6|01
       local.get $4
       i32.const 12288
       i32.eq
       br_if $case6|01
       local.get $4
       i32.const 65279
       i32.eq
       br_if $case6|01
       br $break|00
      end
      i32.const 1
      br $__inlined_func$~lib/util/string/isSpace$4
     end
     i32.const 0
    end
   else
    i32.const 0
   end
   if
    local.get $2
    i32.const 2
    i32.add
    local.set $2
    local.get $1
    i32.const 2
    i32.sub
    local.set $1
    br $while-continue|1
   end
  end
  local.get $1
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   i32.const 1456
   return
  end
  local.get $2
  i32.eqz
  local.get $1
  local.get $3
  i32.const 1
  i32.shl
  i32.eq
  i32.and
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   return
  end
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.const 2
  call $~lib/rt/itcms/__new
  local.tee $3
  i32.store offset=4
  local.get $3
  local.get $0
  local.get $2
  i32.add
  local.get $1
  memory.copy
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $3
 )
 (func $assembly/index/CreateElement#setText (param $0 i32) (param $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4656
  i32.lt_s
  if
   i32.const 37456
   i32.const 37504
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $assembly/index/createText (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4656
  i32.lt_s
  if
   i32.const 37456
   i32.const 37504
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.const 20
  memory.fill
  global.get $~lib/memory/__stack_pointer
  i32.const 3872
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 1456
  i32.store offset=4
  i32.const 0
  i32.const 8
  i32.const 3904
  call $~lib/rt/__newArray
  local.set $2
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=12
  local.get $3
  i32.const 3872
  local.get $2
  local.get $0
  call $assembly/index/CreateElement#constructor
  local.tee $0
  i32.store offset=16
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $assembly/index/CreateElement#setText
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $~lib/array/Array<assembly/index/CreateElement>#push (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 4656
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.load offset=12
   local.tee $6
   i32.const 1
   i32.add
   local.tee $5
   local.set $2
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4656
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $2
   local.get $0
   i32.load offset=8
   local.tee $3
   i32.const 2
   i32.shr_u
   i32.gt_u
   if
    local.get $2
    i32.const 268435455
    i32.gt_u
    if
     i32.const 3936
     i32.const 3632
     i32.const 19
     i32.const 48
     call $~lib/builtins/abort
     unreachable
    end
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    block $__inlined_func$~lib/rt/itcms/__renew$313
     i32.const 1073741820
     local.get $3
     i32.const 1
     i32.shl
     local.tee $3
     local.get $3
     i32.const 1073741820
     i32.ge_u
     select
     local.tee $3
     i32.const 8
     local.get $2
     local.get $2
     i32.const 8
     i32.le_u
     select
     i32.const 2
     i32.shl
     local.tee $2
     local.get $2
     local.get $3
     i32.lt_u
     select
     local.tee $4
     local.get $0
     i32.load
     local.tee $3
     i32.const 20
     i32.sub
     local.tee $7
     i32.load
     i32.const -4
     i32.and
     i32.const 16
     i32.sub
     i32.le_u
     if
      local.get $7
      local.get $4
      i32.store offset=16
      local.get $3
      local.set $2
      br $__inlined_func$~lib/rt/itcms/__renew$313
     end
     local.get $4
     local.get $7
     i32.load offset=12
     call $~lib/rt/itcms/__new
     local.tee $2
     local.get $3
     local.get $4
     local.get $7
     i32.load offset=16
     local.tee $7
     local.get $4
     local.get $7
     i32.lt_u
     select
     memory.copy
    end
    local.get $2
    local.get $3
    i32.ne
    if
     local.get $0
     local.get $2
     i32.store
     local.get $0
     local.get $2
     i32.store offset=4
     local.get $0
     local.get $2
     i32.const 0
     call $~lib/rt/itcms/__link
    end
    local.get $0
    local.get $4
    i32.store offset=8
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.load offset=4
   local.get $6
   i32.const 2
   i32.shl
   i32.add
   local.get $1
   i32.store
   local.get $0
   local.get $1
   i32.const 1
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   local.get $5
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  i32.const 37456
  i32.const 37504
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $assembly/index/CreateElement#pushChildList (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 20
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 4656
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 20
   memory.fill
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   local.tee $2
   i32.store offset=16
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=16
   local.tee $0
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4656
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i64.const 0
   i64.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.load offset=12
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   local.get $1
   i32.load offset=12
   local.tee $6
   local.get $5
   i32.add
   local.tee $3
   i32.const 268435455
   i32.gt_u
   if
    i32.const 3936
    i32.const 3632
    i32.const 224
    i32.const 60
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.const 8
   i32.const 0
   call $~lib/rt/__newArray
   local.tee $3
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store
   local.get $3
   i32.load offset=4
   local.set $4
   local.get $5
   i32.const 2
   i32.shl
   local.set $5
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.load offset=4
   local.set $7
   i32.const 0
   local.set $0
   loop $for-loop|0
    local.get $0
    local.get $5
    i32.lt_u
    if
     local.get $0
     local.get $4
     i32.add
     local.get $0
     local.get $7
     i32.add
     i32.load
     local.tee $8
     i32.store
     local.get $3
     local.get $8
     i32.const 1
     call $~lib/rt/itcms/__link
     local.get $0
     i32.const 4
     i32.add
     local.set $0
     br $for-loop|0
    end
   end
   local.get $4
   local.get $5
   i32.add
   local.set $4
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   local.get $1
   i32.load offset=4
   local.set $1
   local.get $6
   i32.const 2
   i32.shl
   local.set $5
   i32.const 0
   local.set $0
   loop $for-loop|1
    local.get $0
    local.get $5
    i32.lt_u
    if
     local.get $0
     local.get $4
     i32.add
     local.get $0
     local.get $1
     i32.add
     i32.load
     local.tee $6
     i32.store
     local.get $3
     local.get $6
     i32.const 1
     call $~lib/rt/itcms/__link
     local.get $0
     i32.const 4
     i32.add
     local.set $0
     br $for-loop|1
    end
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   local.get $3
   i32.store offset=4
   local.get $2
   local.get $3
   i32.store offset=16
   local.get $2
   local.get $3
   i32.const 0
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   i32.const 20
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  i32.const 37456
  i32.const 37504
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $assembly/index/CreateElement#pushSingleChild (param $0 i32) (param $1 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4656
  i32.lt_s
  if
   i32.const 37456
   i32.const 37504
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.load offset=16
  local.tee $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $~lib/array/Array<assembly/index/CreateElement>#push
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
 )
 (func $assembly/index/wasmParse (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 f64)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  (local $16 i32)
  (local $17 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 96
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i32.const 4656
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 96
   memory.fill
   global.get $~lib/memory/__stack_pointer
   i32.const 1520
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 1552
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 1584
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   i32.const 1616
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   i32.const 1648
   i32.store offset=16
   global.get $~lib/memory/__stack_pointer
   i32.const 1680
   i32.store offset=20
   global.get $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4656
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i64.const 0
   i64.store
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   i32.const 48
   i32.const 9
   call $~lib/rt/itcms/__new
   local.tee $5
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 1520
   i32.store offset=8
   local.get $5
   i32.const 1520
   i32.store
   local.get $5
   i32.const 1520
   i32.const 0
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 1552
   i32.store offset=8
   local.get $5
   i32.const 1552
   i32.store offset=4
   local.get $5
   i32.const 1552
   i32.const 0
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 1584
   i32.store offset=8
   local.get $5
   i32.const 1584
   i32.store offset=8
   local.get $5
   i32.const 1584
   i32.const 0
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 1616
   i32.store offset=8
   local.get $5
   i32.const 1616
   i32.store offset=12
   local.get $5
   i32.const 1616
   i32.const 0
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 1648
   i32.store offset=8
   local.get $5
   i32.const 1648
   i32.store offset=16
   local.get $5
   i32.const 1648
   i32.const 0
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 1680
   i32.store offset=8
   local.get $5
   i32.const 1680
   i32.store offset=20
   local.get $5
   i32.const 1680
   i32.const 0
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=4
   local.get $5
   f64.const 1
   f64.store offset=24
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=4
   local.get $5
   f64.const 2
   f64.store offset=32
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=4
   local.get $5
   f64.const 3
   f64.store offset=40
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=24
   global.get $~lib/memory/__stack_pointer
   local.set $2
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4656
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i64.const 0
   i64.store
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.const 6
   call $~lib/rt/itcms/__new
   local.tee $7
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.set $10
   global.get $~lib/memory/__stack_pointer
   local.get $7
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4656
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store
   local.get $7
   i32.eqz
   if
    global.get $~lib/memory/__stack_pointer
    i32.const 0
    i32.const 0
    call $~lib/rt/itcms/__new
    local.tee $7
    i32.store
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $10
   local.get $7
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $7
   i32.store offset=4
   i32.const 0
   i32.const 8
   i32.const 1712
   call $~lib/rt/__newArray
   local.set $10
   global.get $~lib/memory/__stack_pointer
   local.get $10
   i32.store offset=8
   local.get $7
   local.get $10
   i32.store
   local.get $7
   local.get $10
   i32.const 0
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   local.get $7
   i32.store offset=4
   local.get $7
   i32.const 0
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 12
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $2
   local.get $7
   i32.store offset=28
   global.get $~lib/memory/__stack_pointer
   i32.const 1456
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.set $2
   i32.const 0
   i32.const 8
   i32.const 3600
   call $~lib/rt/__newArray
   local.set $10
   global.get $~lib/memory/__stack_pointer
   local.get $10
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=8
   local.get $2
   i32.const 0
   local.get $10
   local.get $1
   call $assembly/index/CreateElement#constructor
   local.tee $10
   i32.store offset=32
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   i32.const 20
   i32.sub
   i32.load offset=16
   i32.const 1
   i32.shr_u
   local.set $12
   i32.const 1456
   local.set $2
   global.get $~lib/memory/__stack_pointer
   i32.const 1456
   i32.store offset=36
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store
   local.get $5
   f64.load offset=24
   local.set $9
   loop $for-loop|0
    local.get $11
    local.get $12
    i32.lt_s
    if
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $0
     local.get $11
     local.get $11
     i32.const 1
     i32.add
     local.tee $14
     call $~lib/string/String#substring
     local.tee $15
     i32.store offset=40
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $0
     local.get $14
     local.get $11
     i32.const 2
     i32.add
     call $~lib/string/String#substring
     local.tee $14
     i32.store offset=44
     global.get $~lib/memory/__stack_pointer
     local.get $15
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $5
     i32.store offset=8
     global.get $~lib/memory/__stack_pointer
     local.get $5
     i32.load offset=4
     local.tee $16
     i32.store offset=4
     local.get $15
     local.get $16
     call $~lib/string/String.__ne
     if (result i32)
      global.get $~lib/memory/__stack_pointer
      local.get $5
      i32.store
      local.get $9
      local.get $5
      f64.load offset=24
      f64.eq
     else
      i32.const 0
     end
     if
      global.get $~lib/memory/__stack_pointer
      local.get $4
      i32.store
      local.get $4
      i32.const 0
      call $~lib/string/String.__ne
      if
       global.get $~lib/memory/__stack_pointer
       local.get $15
       i32.store
       global.get $~lib/memory/__stack_pointer
       local.get $5
       i32.store offset=8
       global.get $~lib/memory/__stack_pointer
       local.get $5
       i32.load offset=20
       local.tee $16
       i32.store offset=4
       local.get $15
       local.get $16
       call $~lib/string/String.__ne
       if
        global.get $~lib/memory/__stack_pointer
        local.get $4
        i32.store
        global.get $~lib/memory/__stack_pointer
        local.get $15
        i32.store offset=4
        global.get $~lib/memory/__stack_pointer
        local.get $4
        local.get $15
        call $~lib/string/String.__concat
        local.tee $4
        i32.store offset=48
       else
        global.get $~lib/memory/__stack_pointer
        local.get $7
        i32.store
        global.get $~lib/memory/__stack_pointer
        local.get $7
        call $assembly/index/ElementStack#lastStack
        local.tee $6
        i32.store offset=52
        global.get $~lib/memory/__stack_pointer
        local.get $6
        i32.store
        global.get $~lib/memory/__stack_pointer
        local.get $4
        i32.store offset=4
        local.get $6
        local.get $4
        call $assembly/index/CreateElement#handleChangeTagName
        i32.const 1456
        local.set $6
        global.get $~lib/memory/__stack_pointer
        i32.const 1456
        i32.store offset=56
        i32.const 0
        local.set $4
       end
      end
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store
      local.get $6
      i32.const 0
      call $~lib/string/String.__ne
      if
       global.get $~lib/memory/__stack_pointer
       local.get $6
       i32.store
       global.get $~lib/memory/__stack_pointer
       local.set $16
       global.get $~lib/memory/__stack_pointer
       local.get $15
       i32.store offset=8
       global.get $~lib/memory/__stack_pointer
       i32.const 3808
       i32.store offset=12
       i32.const 3840
       local.get $15
       local.get $15
       i32.const 3808
       call $~lib/string/String.__eq
       select
       local.set $17
       global.get $~lib/memory/__stack_pointer
       local.get $17
       i32.store offset=4
       local.get $16
       local.get $6
       local.get $17
       call $~lib/string/String.__concat
       local.tee $6
       i32.store offset=56
      end
     end
     global.get $~lib/memory/__stack_pointer
     local.get $8
     i32.store
     local.get $8
     i32.const 0
     call $~lib/string/String.__ne
     if (result i32)
      global.get $~lib/memory/__stack_pointer
      local.get $15
      i32.store
      global.get $~lib/memory/__stack_pointer
      local.get $5
      i32.store offset=8
      global.get $~lib/memory/__stack_pointer
      local.get $5
      i32.load offset=12
      local.tee $16
      i32.store offset=4
      local.get $15
      local.get $16
      call $~lib/string/String.__ne
     else
      i32.const 0
     end
     if (result i32)
      global.get $~lib/memory/__stack_pointer
      local.get $15
      i32.store
      global.get $~lib/memory/__stack_pointer
      local.get $5
      i32.store offset=8
      global.get $~lib/memory/__stack_pointer
      local.get $5
      i32.load offset=16
      local.tee $16
      i32.store offset=4
      local.get $15
      local.get $16
      call $~lib/string/String.__ne
     else
      i32.const 0
     end
     if
      global.get $~lib/memory/__stack_pointer
      local.get $8
      i32.store
      global.get $~lib/memory/__stack_pointer
      local.get $15
      i32.store offset=4
      global.get $~lib/memory/__stack_pointer
      local.get $8
      local.get $15
      call $~lib/string/String.__concat
      local.tee $8
      i32.store offset=60
     end
     global.get $~lib/memory/__stack_pointer
     local.get $15
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $5
     i32.store offset=8
     global.get $~lib/memory/__stack_pointer
     local.get $5
     i32.load offset=12
     local.tee $16
     i32.store offset=4
     local.get $15
     local.get $16
     call $~lib/string/String.__eq
     if (result i32)
      global.get $~lib/memory/__stack_pointer
      i32.const 1456
      i32.store offset=60
      i32.const 1456
     else
      global.get $~lib/memory/__stack_pointer
      local.get $15
      i32.store
      global.get $~lib/memory/__stack_pointer
      local.get $5
      i32.store offset=8
      global.get $~lib/memory/__stack_pointer
      local.get $5
      i32.load offset=16
      local.tee $16
      i32.store offset=4
      local.get $15
      local.get $16
      call $~lib/string/String.__eq
      if (result i32)
       global.get $~lib/memory/__stack_pointer
       local.get $8
       if (result i32)
        global.get $~lib/memory/__stack_pointer
        local.get $8
        i32.store
        local.get $8
        call $~lib/string/String#trim
       else
        i32.const 1456
       end
       local.tee $8
       i32.store offset=64
       global.get $~lib/memory/__stack_pointer
       local.get $2
       i32.store
       global.get $~lib/memory/__stack_pointer
       i32.const 1456
       i32.store offset=4
       local.get $2
       i32.const 1456
       call $~lib/string/String.__ne
       if
        local.get $3
        if
         global.get $~lib/memory/__stack_pointer
         local.get $3
         i32.store
         global.get $~lib/memory/__stack_pointer
         local.get $1
         i32.store offset=8
         global.get $~lib/memory/__stack_pointer
         local.get $2
         i32.store offset=12
         local.get $1
         local.get $2
         call $assembly/index/createText
         local.set $2
         global.get $~lib/memory/__stack_pointer
         local.get $2
         i32.store offset=4
         local.get $3
         local.get $2
         call $~lib/array/Array<assembly/index/CreateElement>#push
        end
        global.get $~lib/memory/__stack_pointer
        i32.const 1456
        i32.store offset=36
        i32.const 1456
        local.set $2
       end
       local.get $3
       if
        global.get $~lib/memory/__stack_pointer
        local.get $3
        i32.store
        global.get $~lib/memory/__stack_pointer
        local.get $1
        i32.store offset=8
        global.get $~lib/memory/__stack_pointer
        local.get $8
        i32.store offset=12
        global.get $~lib/memory/__stack_pointer
        i32.const 20
        i32.sub
        global.set $~lib/memory/__stack_pointer
        global.get $~lib/memory/__stack_pointer
        i32.const 4656
        i32.lt_s
        br_if $folding-inner1
        global.get $~lib/memory/__stack_pointer
        i32.const 0
        i32.const 20
        memory.fill
        global.get $~lib/memory/__stack_pointer
        i32.const 3984
        i32.store
        global.get $~lib/memory/__stack_pointer
        local.set $16
        global.get $~lib/memory/__stack_pointer
        i32.const 1456
        i32.store offset=4
        i32.const 0
        i32.const 8
        i32.const 4032
        call $~lib/rt/__newArray
        local.set $17
        global.get $~lib/memory/__stack_pointer
        local.get $17
        i32.store offset=8
        global.get $~lib/memory/__stack_pointer
        local.get $1
        i32.store offset=12
        local.get $16
        i32.const 3984
        local.get $17
        local.get $1
        call $assembly/index/CreateElement#constructor
        local.tee $16
        i32.store offset=16
        global.get $~lib/memory/__stack_pointer
        local.get $16
        i32.store
        global.get $~lib/memory/__stack_pointer
        local.get $8
        i32.store offset=4
        local.get $16
        local.get $8
        call $assembly/index/CreateElement#setText
        global.get $~lib/memory/__stack_pointer
        i32.const 20
        i32.add
        global.set $~lib/memory/__stack_pointer
        global.get $~lib/memory/__stack_pointer
        local.get $16
        i32.store offset=4
        local.get $3
        local.get $16
        call $~lib/array/Array<assembly/index/CreateElement>#push
       end
       i32.const 0
      else
       local.get $8
      end
     end
     local.set $8
     global.get $~lib/memory/__stack_pointer
     local.get $15
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $5
     i32.store offset=8
     global.get $~lib/memory/__stack_pointer
     local.get $5
     i32.load
     local.tee $16
     i32.store offset=4
     local.get $15
     local.get $16
     call $~lib/string/String.__eq
     if
      global.get $~lib/memory/__stack_pointer
      local.get $15
      i32.store offset=8
      global.get $~lib/memory/__stack_pointer
      local.get $14
      i32.store offset=12
      local.get $15
      local.get $14
      call $~lib/string/String.__concat
      local.set $14
      global.get $~lib/memory/__stack_pointer
      local.get $14
      i32.store
      global.get $~lib/memory/__stack_pointer
      local.get $5
      i32.store offset=8
      global.get $~lib/memory/__stack_pointer
      local.get $5
      i32.load offset=8
      local.tee $15
      i32.store offset=4
      local.get $14
      local.get $15
      call $~lib/string/String.__eq
      if (result i32)
       global.get $~lib/memory/__stack_pointer
       local.get $5
       i32.store
       local.get $5
       f64.load offset=40
       local.set $9
       i32.const 0
       local.set $8
       local.get $3
       if
        global.get $~lib/memory/__stack_pointer
        local.get $10
        i32.store
        global.get $~lib/memory/__stack_pointer
        local.get $3
        i32.store offset=4
        local.get $10
        local.get $3
        call $assembly/index/CreateElement#pushChildList
        global.get $~lib/memory/__stack_pointer
        i32.const 0
        i32.const 8
        i32.const 4064
        call $~lib/rt/__newArray
        local.tee $3
        i32.store offset=68
       end
       global.get $~lib/memory/__stack_pointer
       local.get $2
       i32.store
       global.get $~lib/memory/__stack_pointer
       i32.const 1456
       i32.store offset=4
       local.get $2
       i32.const 1456
       call $~lib/string/String.__ne
       if (result i32)
        global.get $~lib/memory/__stack_pointer
        local.get $2
        i32.store offset=8
        local.get $2
        call $~lib/string/String#trim
        local.set $14
        global.get $~lib/memory/__stack_pointer
        local.get $14
        i32.store
        global.get $~lib/memory/__stack_pointer
        i32.const 1456
        i32.store offset=4
        local.get $14
        i32.const 1456
        call $~lib/string/String.__ne
       else
        i32.const 0
       end
       if (result i32)
        global.get $~lib/memory/__stack_pointer
        local.get $7
        i32.store
        global.get $~lib/memory/__stack_pointer
        local.get $7
        call $assembly/index/ElementStack#lastStack
        local.tee $14
        i32.store offset=72
        global.get $~lib/memory/__stack_pointer
        local.get $14
        i32.store
        global.get $~lib/memory/__stack_pointer
        local.get $1
        i32.store offset=8
        global.get $~lib/memory/__stack_pointer
        local.get $2
        i32.store offset=16
        local.get $2
        call $~lib/string/String#trim
        local.set $2
        global.get $~lib/memory/__stack_pointer
        local.get $2
        i32.store offset=12
        local.get $1
        local.get $2
        call $assembly/index/createText
        local.set $2
        global.get $~lib/memory/__stack_pointer
        local.get $2
        i32.store offset=4
        local.get $14
        local.get $2
        call $assembly/index/CreateElement#pushSingleChild
        global.get $~lib/memory/__stack_pointer
        i32.const 1456
        i32.store offset=36
        i32.const 1456
       else
        local.get $2
       end
      else
       global.get $~lib/memory/__stack_pointer
       local.get $5
       i32.store
       local.get $5
       f64.load offset=24
       local.set $9
       global.get $~lib/memory/__stack_pointer
       local.get $2
       i32.store
       global.get $~lib/memory/__stack_pointer
       i32.const 1456
       i32.store offset=4
       local.get $2
       i32.const 1456
       call $~lib/string/String.__ne
       if (result i32)
        global.get $~lib/memory/__stack_pointer
        local.get $2
        i32.store offset=8
        local.get $2
        call $~lib/string/String#trim
        local.set $14
        global.get $~lib/memory/__stack_pointer
        local.get $14
        i32.store
        global.get $~lib/memory/__stack_pointer
        i32.const 1456
        i32.store offset=4
        local.get $14
        i32.const 1456
        call $~lib/string/String.__ne
       else
        i32.const 0
       end
       if (result i32)
        global.get $~lib/memory/__stack_pointer
        local.get $7
        i32.store
        global.get $~lib/memory/__stack_pointer
        local.get $7
        call $assembly/index/ElementStack#lastStack
        local.tee $14
        i32.store offset=76
        global.get $~lib/memory/__stack_pointer
        local.get $14
        i32.store
        global.get $~lib/memory/__stack_pointer
        local.get $1
        i32.store offset=8
        global.get $~lib/memory/__stack_pointer
        local.get $2
        i32.store offset=16
        local.get $2
        call $~lib/string/String#trim
        local.set $2
        global.get $~lib/memory/__stack_pointer
        local.get $2
        i32.store offset=12
        local.get $1
        local.get $2
        call $assembly/index/createText
        local.set $2
        global.get $~lib/memory/__stack_pointer
        local.get $2
        i32.store offset=4
        local.get $14
        local.get $2
        call $assembly/index/CreateElement#pushSingleChild
        global.get $~lib/memory/__stack_pointer
        i32.const 1456
        i32.store offset=36
        i32.const 1456
       else
        local.get $2
       end
      end
      local.set $2
      global.get $~lib/memory/__stack_pointer
      local.get $5
      i32.store
      local.get $9
      local.get $5
      f64.load offset=24
      f64.eq
      if
       i32.const 1456
       local.set $4
       global.get $~lib/memory/__stack_pointer
       i32.const 1456
       i32.store offset=48
       local.get $13
       i32.const 1
       i32.add
       local.set $13
       global.get $~lib/memory/__stack_pointer
       i32.const 1456
       i32.store
       global.get $~lib/memory/__stack_pointer
       local.set $10
       i32.const 0
       i32.const 8
       i32.const 4096
       call $~lib/rt/__newArray
       local.set $14
       global.get $~lib/memory/__stack_pointer
       local.get $14
       i32.store offset=4
       global.get $~lib/memory/__stack_pointer
       local.get $1
       i32.store offset=8
       local.get $10
       i32.const 0
       local.get $14
       local.get $1
       call $assembly/index/CreateElement#constructor
       local.tee $10
       i32.store offset=32
       global.get $~lib/memory/__stack_pointer
       local.get $2
       i32.store offset=8
       local.get $2
       call $~lib/string/String#trim
       local.set $14
       global.get $~lib/memory/__stack_pointer
       local.get $14
       i32.store
       global.get $~lib/memory/__stack_pointer
       i32.const 1456
       i32.store offset=4
       local.get $14
       i32.const 1456
       call $~lib/string/String.__ne
       i32.const 0
       local.get $3
       select
       if
        global.get $~lib/memory/__stack_pointer
        local.get $3
        i32.store
        global.get $~lib/memory/__stack_pointer
        local.get $1
        i32.store offset=8
        global.get $~lib/memory/__stack_pointer
        local.get $2
        i32.store offset=12
        local.get $1
        local.get $2
        call $assembly/index/createText
        local.set $2
        global.get $~lib/memory/__stack_pointer
        local.get $2
        i32.store offset=4
        local.get $3
        local.get $2
        call $~lib/array/Array<assembly/index/CreateElement>#push
       end
       i32.const 1456
       local.set $2
       global.get $~lib/memory/__stack_pointer
       i32.const 1456
       i32.store offset=36
       local.get $3
       if
        global.get $~lib/memory/__stack_pointer
        local.get $7
        i32.store
        global.get $~lib/memory/__stack_pointer
        local.get $7
        call $assembly/index/ElementStack#lastStack
        local.tee $14
        i32.store offset=80
        global.get $~lib/memory/__stack_pointer
        local.get $14
        i32.store
        global.get $~lib/memory/__stack_pointer
        local.get $3
        i32.store offset=4
        local.get $14
        local.get $3
        call $assembly/index/CreateElement#pushChildList
        i32.const 0
        local.set $3
       end
       global.get $~lib/memory/__stack_pointer
       i32.const 1456
       i32.store offset=8
       i32.const 1456
       call $~lib/string/String#trim
       local.set $14
       global.get $~lib/memory/__stack_pointer
       local.get $14
       i32.store
       global.get $~lib/memory/__stack_pointer
       i32.const 1456
       i32.store offset=4
       local.get $14
       i32.const 1456
       call $~lib/string/String.__eq
       if
        global.get $~lib/memory/__stack_pointer
        i32.const 1456
        i32.store offset=36
       end
       global.get $~lib/memory/__stack_pointer
       local.get $7
       i32.store
       global.get $~lib/memory/__stack_pointer
       local.get $10
       i32.store offset=4
       global.get $~lib/memory/__stack_pointer
       i32.const 12
       i32.sub
       global.set $~lib/memory/__stack_pointer
       global.get $~lib/memory/__stack_pointer
       i32.const 4656
       i32.lt_s
       br_if $folding-inner1
       global.get $~lib/memory/__stack_pointer
       i64.const 0
       i64.store
       global.get $~lib/memory/__stack_pointer
       i32.const 0
       i32.store offset=8
       global.get $~lib/memory/__stack_pointer
       local.get $7
       i32.store
       global.get $~lib/memory/__stack_pointer
       local.get $7
       i32.store offset=4
       local.get $7
       local.get $7
       i32.load offset=4
       i32.const 1
       i32.add
       i32.store offset=4
       global.get $~lib/memory/__stack_pointer
       local.get $7
       i32.store offset=8
       global.get $~lib/memory/__stack_pointer
       local.get $7
       i32.load
       local.tee $14
       i32.store
       global.get $~lib/memory/__stack_pointer
       local.get $10
       i32.store offset=4
       local.get $14
       local.get $10
       call $~lib/array/Array<assembly/index/CreateElement>#push
       global.get $~lib/memory/__stack_pointer
       i32.const 12
       i32.add
       global.set $~lib/memory/__stack_pointer
      end
     else
      block $for-continue|0
       global.get $~lib/memory/__stack_pointer
       local.get $15
       i32.store
       global.get $~lib/memory/__stack_pointer
       local.get $5
       i32.store offset=8
       global.get $~lib/memory/__stack_pointer
       local.get $5
       i32.load offset=4
       local.tee $14
       i32.store offset=4
       local.get $15
       local.get $14
       call $~lib/string/String.__eq
       if
        global.get $~lib/memory/__stack_pointer
        local.get $5
        i32.store
        local.get $9
        local.get $5
        f64.load offset=24
        f64.eq
        if
         global.get $~lib/memory/__stack_pointer
         local.get $5
         i32.store
         local.get $5
         f64.load offset=32
         local.set $9
         global.get $~lib/memory/__stack_pointer
         i32.const 0
         i32.const 8
         i32.const 4128
         call $~lib/rt/__newArray
         local.tee $3
         i32.store offset=68
         global.get $~lib/memory/__stack_pointer
         local.get $7
         i32.store
         global.get $~lib/memory/__stack_pointer
         local.get $7
         call $assembly/index/ElementStack#lastStack
         local.tee $14
         i32.store offset=84
         local.get $4
         if
          global.get $~lib/memory/__stack_pointer
          local.get $14
          i32.store
          global.get $~lib/memory/__stack_pointer
          local.get $4
          i32.store offset=4
          local.get $14
          local.get $4
          call $assembly/index/CreateElement#handleChangeTagName
          i32.const 0
          local.set $4
         end
         global.get $~lib/memory/__stack_pointer
         local.get $14
         i32.store
         global.get $~lib/memory/__stack_pointer
         local.get $6
         i32.store offset=4
         global.get $~lib/memory/__stack_pointer
         i32.const 12
         i32.sub
         global.set $~lib/memory/__stack_pointer
         global.get $~lib/memory/__stack_pointer
         i32.const 4656
         i32.lt_s
         br_if $folding-inner1
         global.get $~lib/memory/__stack_pointer
         i64.const 0
         i64.store
         global.get $~lib/memory/__stack_pointer
         i32.const 0
         i32.store offset=8
         local.get $6
         if
          global.get $~lib/memory/__stack_pointer
          local.get $14
          i32.store
          global.get $~lib/memory/__stack_pointer
          local.get $6
          i32.store offset=8
          global.get $~lib/memory/__stack_pointer
          local.get $6
          i32.store offset=4
          local.get $14
          local.get $6
          i32.store offset=12
          local.get $14
          local.get $6
          i32.const 0
          call $~lib/rt/itcms/__link
         end
         global.get $~lib/memory/__stack_pointer
         i32.const 12
         i32.add
         global.set $~lib/memory/__stack_pointer
        else
         global.get $~lib/memory/__stack_pointer
         local.get $5
         i32.store
         local.get $5
         f64.load offset=32
         local.set $9
         local.get $3
         i32.eqz
         br_if $for-continue|0
         global.get $~lib/memory/__stack_pointer
         local.get $7
         i32.store
         global.get $~lib/memory/__stack_pointer
         i32.const 4
         i32.sub
         global.set $~lib/memory/__stack_pointer
         global.get $~lib/memory/__stack_pointer
         i32.const 4656
         i32.lt_s
         br_if $folding-inner1
         global.get $~lib/memory/__stack_pointer
         i32.const 0
         i32.store
         global.get $~lib/memory/__stack_pointer
         local.get $7
         i32.store
         local.get $7
         i32.load offset=4
         local.set $14
         global.get $~lib/memory/__stack_pointer
         i32.const 4
         i32.add
         global.set $~lib/memory/__stack_pointer
         local.get $14
         i32.const 1
         i32.eq
         br_if $for-continue|0
         global.get $~lib/memory/__stack_pointer
         local.set $6
         global.get $~lib/memory/__stack_pointer
         local.get $7
         i32.store
         global.get $~lib/memory/__stack_pointer
         i32.const 8
         i32.sub
         global.set $~lib/memory/__stack_pointer
         global.get $~lib/memory/__stack_pointer
         i32.const 4656
         i32.lt_s
         br_if $folding-inner1
         global.get $~lib/memory/__stack_pointer
         i64.const 0
         i64.store
         global.get $~lib/memory/__stack_pointer
         local.get $7
         i32.store
         global.get $~lib/memory/__stack_pointer
         local.get $7
         i32.store offset=4
         local.get $7
         local.get $7
         i32.load offset=4
         i32.const 1
         i32.sub
         i32.store offset=4
         global.get $~lib/memory/__stack_pointer
         local.get $7
         i32.store offset=4
         global.get $~lib/memory/__stack_pointer
         local.get $7
         i32.load
         local.tee $14
         i32.store
         global.get $~lib/memory/__stack_pointer
         i32.const 8
         i32.sub
         global.set $~lib/memory/__stack_pointer
         global.get $~lib/memory/__stack_pointer
         i32.const 4656
         i32.lt_s
         br_if $folding-inner1
         global.get $~lib/memory/__stack_pointer
         i64.const 0
         i64.store
         global.get $~lib/memory/__stack_pointer
         local.get $14
         i32.store
         local.get $14
         i32.load offset=12
         local.tee $15
         i32.const 0
         i32.le_s
         if
          i32.const 4160
          i32.const 3632
          i32.const 271
          i32.const 18
          call $~lib/builtins/abort
          unreachable
         end
         global.get $~lib/memory/__stack_pointer
         local.get $14
         i32.store
         global.get $~lib/memory/__stack_pointer
         local.get $14
         i32.load offset=4
         local.get $15
         i32.const 1
         i32.sub
         local.tee $15
         i32.const 2
         i32.shl
         i32.add
         i32.load
         local.tee $16
         i32.store offset=4
         global.get $~lib/memory/__stack_pointer
         local.get $14
         i32.store
         local.get $14
         local.get $15
         i32.store offset=12
         global.get $~lib/memory/__stack_pointer
         i32.const 8
         i32.add
         global.set $~lib/memory/__stack_pointer
         global.get $~lib/memory/__stack_pointer
         i32.const 8
         i32.add
         global.set $~lib/memory/__stack_pointer
         local.get $6
         local.get $16
         i32.store offset=88
         global.get $~lib/memory/__stack_pointer
         local.get $7
         i32.store
         global.get $~lib/memory/__stack_pointer
         local.get $7
         call $assembly/index/ElementStack#lastStack
         local.tee $6
         i32.store offset=92
         local.get $2
         if
          global.get $~lib/memory/__stack_pointer
          local.get $2
          i32.store offset=8
          local.get $2
          call $~lib/string/String#trim
          local.set $14
          global.get $~lib/memory/__stack_pointer
          local.get $14
          i32.store
          global.get $~lib/memory/__stack_pointer
          i32.const 1456
          i32.store offset=4
          local.get $14
          i32.const 1456
          call $~lib/string/String.__ne
          if
           global.get $~lib/memory/__stack_pointer
           local.get $3
           i32.store
           global.get $~lib/memory/__stack_pointer
           local.get $1
           i32.store offset=8
           global.get $~lib/memory/__stack_pointer
           local.get $2
           i32.store offset=12
           local.get $1
           local.get $2
           call $assembly/index/createText
           local.set $2
           global.get $~lib/memory/__stack_pointer
           local.get $2
           i32.store offset=4
           local.get $3
           local.get $2
           call $~lib/array/Array<assembly/index/CreateElement>#push
          end
          global.get $~lib/memory/__stack_pointer
          i32.const 1456
          i32.store offset=36
          i32.const 1456
          local.set $2
         end
         local.get $16
         if
          global.get $~lib/memory/__stack_pointer
          local.get $16
          i32.store
          global.get $~lib/memory/__stack_pointer
          local.get $3
          i32.store offset=4
          local.get $16
          local.get $3
          call $assembly/index/CreateElement#pushChildList
          global.get $~lib/memory/__stack_pointer
          local.get $6
          i32.store
          global.get $~lib/memory/__stack_pointer
          local.get $16
          i32.store offset=4
          local.get $6
          local.get $16
          call $assembly/index/CreateElement#pushSingleChild
         end
         global.get $~lib/memory/__stack_pointer
         i32.const 0
         i32.const 8
         i32.const 4208
         call $~lib/rt/__newArray
         local.tee $3
         i32.store offset=68
        end
        i32.const 0
        local.set $6
       else
        global.get $~lib/memory/__stack_pointer
        local.get $5
        i32.store
        local.get $9
        local.get $5
        f64.load offset=32
        f64.eq
        if (result i32)
         global.get $~lib/memory/__stack_pointer
         local.get $8
         i32.store
         local.get $8
         i32.const 0
         call $~lib/string/String.__eq
        else
         i32.const 0
        end
        if (result i32)
         global.get $~lib/memory/__stack_pointer
         local.get $15
         i32.store
         global.get $~lib/memory/__stack_pointer
         local.get $5
         i32.store offset=8
         global.get $~lib/memory/__stack_pointer
         local.get $5
         i32.load offset=12
         local.tee $14
         i32.store offset=4
         local.get $15
         local.get $14
         call $~lib/string/String.__ne
        else
         i32.const 0
        end
        if (result i32)
         global.get $~lib/memory/__stack_pointer
         local.get $15
         i32.store
         global.get $~lib/memory/__stack_pointer
         local.get $5
         i32.store offset=8
         global.get $~lib/memory/__stack_pointer
         local.get $5
         i32.load offset=16
         local.tee $14
         i32.store offset=4
         local.get $15
         local.get $14
         call $~lib/string/String.__ne
        else
         i32.const 0
        end
        if
         global.get $~lib/memory/__stack_pointer
         local.get $2
         i32.store
         global.get $~lib/memory/__stack_pointer
         local.get $15
         i32.store offset=4
         global.get $~lib/memory/__stack_pointer
         local.get $2
         local.get $15
         call $~lib/string/String.__concat
         local.tee $2
         i32.store offset=36
        end
       end
      end
     end
     local.get $11
     i32.const 1
     i32.add
     local.set $11
     br $for-loop|0
    end
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 96
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $7
   return
  end
  i32.const 37456
  i32.const 37504
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/array/Array<assembly/index/CreateElement>#get:length (param $0 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4656
  i32.lt_s
  if
   i32.const 37456
   i32.const 37504
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  local.get $0
  i32.load offset=12
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $assembly/index/Responsive#constructor (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4656
  i32.lt_s
  if
   i32.const 37456
   i32.const 37504
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.const 11
  call $~lib/rt/itcms/__new
  local.tee $2
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store offset=8
  local.get $2
  local.get $0
  i32.store
  local.get $2
  local.get $0
  i32.const 0
  call $~lib/rt/itcms/__link
  global.get $~lib/memory/__stack_pointer
  local.get $2
  i32.store offset=4
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=8
  local.get $2
  local.get $1
  i32.store offset=4
  local.get $2
  local.get $1
  i32.const 0
  call $~lib/rt/itcms/__link
  global.get $~lib/memory/__stack_pointer
  i32.const 12
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $2
 )
 (func $assembly/index/dfs (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 44
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 4656
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 44
   memory.fill
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=8
   local.tee $8
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=12
   local.tee $5
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=16
   local.tee $6
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load
   local.tee $4
   i32.store offset=16
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load offset=4
   local.tee $9
   i32.store offset=20
   global.get $~lib/memory/__stack_pointer
   local.get $6
   i32.store
   local.get $6
   call $~lib/array/Array<assembly/index/CreateElement>#get:length
   local.set $7
   global.get $~lib/memory/__stack_pointer
   local.get $8
   i32.const 1456
   local.get $8
   select
   local.tee $10
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=24
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store offset=28
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=32
   global.get $~lib/memory/__stack_pointer
   local.get $9
   i32.const 1456
   local.get $9
   select
   local.tee $8
   i32.store offset=36
   local.get $10
   local.get $5
   local.get $4
   local.get $1
   local.get $8
   local.get $2
   f64.convert_i32_s
   call $assembly/DOM/createElement
   i32.const 55
   i32.and
   local.set $11
   global.get $~lib/memory/__stack_pointer
   global.get $assembly/index/lastElement
   local.tee $9
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $10
   i32.store offset=24
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=28
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store offset=32
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.const 1456
   local.get $1
   select
   local.tee $1
   i32.store offset=36
   global.get $~lib/memory/__stack_pointer
   local.get $8
   i32.store offset=40
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4656
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i64.const 0
   i64.store
   global.get $~lib/memory/__stack_pointer
   local.get $9
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $10
   i32.store offset=4
   local.get $9
   local.get $10
   i32.store
   local.get $9
   local.get $10
   i32.const 0
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   local.get $9
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=4
   local.get $9
   local.get $5
   i32.store offset=4
   local.get $9
   local.get $5
   i32.const 0
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   local.get $9
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store offset=4
   local.get $9
   local.get $4
   i32.store offset=8
   local.get $9
   local.get $4
   i32.const 0
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   local.get $9
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=4
   local.get $9
   local.get $1
   i32.store offset=12
   local.get $9
   local.get $1
   i32.const 0
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   local.get $9
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $8
   i32.store offset=4
   local.get $9
   local.get $8
   i32.store offset=16
   local.get $9
   local.get $8
   i32.const 0
   call $~lib/rt/itcms/__link
   global.get $~lib/memory/__stack_pointer
   local.get $9
   i32.store
   local.get $9
   local.get $2
   i32.store offset=20
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   block $break|0
    block $case4|0
     block $case2|0
      block $case1|0
       local.get $11
       i32.const 1
       i32.ne
       if
        local.get $11
        i32.const 2
        i32.eq
        br_if $case1|0
        local.get $11
        i32.const 6
        i32.eq
        br_if $case2|0
        local.get $11
        i32.const 4
        i32.eq
        br_if $case2|0
        local.get $11
        i32.const 32
        i32.eq
        br_if $case4|0
        br $break|0
       end
       global.get $~lib/memory/__stack_pointer
       local.get $3
       i32.store
       global.get $~lib/memory/__stack_pointer
       i32.const 3872
       i32.store offset=28
       global.get $~lib/memory/__stack_pointer
       local.get $0
       i32.store offset=32
       i32.const 3872
       local.get $0
       call $assembly/index/Responsive#constructor
       local.set $0
       global.get $~lib/memory/__stack_pointer
       local.get $0
       i32.store offset=24
       local.get $3
       local.get $0
       call $~lib/array/Array<assembly/index/CreateElement>#push
       br $break|0
      end
      global.get $~lib/memory/__stack_pointer
      local.get $3
      i32.store
      global.get $~lib/memory/__stack_pointer
      i32.const 4272
      i32.store offset=28
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store offset=32
      i32.const 4272
      local.get $0
      call $assembly/index/Responsive#constructor
      local.set $0
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store offset=24
      local.get $3
      local.get $0
      call $~lib/array/Array<assembly/index/CreateElement>#push
      br $break|0
     end
     global.get $~lib/memory/__stack_pointer
     local.get $3
     i32.store
     global.get $~lib/memory/__stack_pointer
     i32.const 4304
     i32.store offset=28
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=32
     i32.const 4304
     local.get $0
     call $assembly/index/Responsive#constructor
     local.set $0
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store offset=24
     local.get $3
     local.get $0
     call $~lib/array/Array<assembly/index/CreateElement>#push
     br $break|0
    end
    global.get $~lib/memory/__stack_pointer
    local.get $3
    i32.store
    global.get $~lib/memory/__stack_pointer
    i32.const 4336
    i32.store offset=28
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=32
    i32.const 4336
    local.get $0
    call $assembly/index/Responsive#constructor
    local.set $0
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store offset=24
    local.get $3
    local.get $0
    call $~lib/array/Array<assembly/index/CreateElement>#push
   end
   i32.const 0
   local.set $0
   loop $for-loop|1
    local.get $0
    local.get $7
    i32.lt_s
    if
     global.get $~lib/memory/__stack_pointer
     local.get $6
     i32.store offset=32
     local.get $6
     local.get $0
     call $~lib/array/Array<assembly/index/CreateElement>#__get
     local.set $1
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $4
     i32.store offset=24
     global.get $~lib/memory/__stack_pointer
     local.get $3
     i32.store offset=28
     local.get $1
     local.get $4
     local.get $0
     local.get $3
     call $assembly/index/dfs
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $for-loop|1
    end
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 44
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  i32.const 37456
  i32.const 37504
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/string/String#split (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 40
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner3
   block $folding-inner2
    block $folding-inner1
     block $folding-inner0
      global.get $~lib/memory/__stack_pointer
      i32.const 4656
      i32.lt_s
      br_if $folding-inner0
      global.get $~lib/memory/__stack_pointer
      i32.const 0
      i32.const 40
      memory.fill
      global.get $~lib/memory/__stack_pointer
      local.get $0
      i32.store offset=8
      local.get $0
      i32.const 20
      i32.sub
      i32.load offset=16
      i32.const 1
      i32.shr_u
      local.set $5
      global.get $~lib/memory/__stack_pointer
      i32.const 4384
      i32.store offset=8
      i32.const 4380
      i32.load
      i32.const 1
      i32.shr_u
      local.tee $6
      if
       local.get $5
       i32.eqz
       if
        global.get $~lib/memory/__stack_pointer
        i32.const 1
        i32.const 13
        i32.const 0
        call $~lib/rt/__newArray
        local.tee $1
        i32.store offset=20
        global.get $~lib/memory/__stack_pointer
        local.get $1
        i32.store offset=8
        local.get $1
        i32.load offset=4
        i32.const 1456
        i32.store
        br $folding-inner2
       end
      else
       local.get $5
       i32.eqz
       br_if $folding-inner1
       global.get $~lib/memory/__stack_pointer
       i32.const 2147483647
       local.get $5
       local.get $5
       i32.const 2147483647
       i32.eq
       select
       local.tee $3
       i32.const 13
       i32.const 0
       call $~lib/rt/__newArray
       local.tee $1
       i32.store offset=12
       global.get $~lib/memory/__stack_pointer
       local.get $1
       i32.store offset=8
       local.get $1
       i32.load offset=4
       local.set $4
       loop $for-loop|0
        local.get $2
        local.get $3
        i32.lt_s
        if
         global.get $~lib/memory/__stack_pointer
         i32.const 2
         i32.const 2
         call $~lib/rt/itcms/__new
         local.tee $5
         i32.store offset=16
         local.get $5
         local.get $0
         local.get $2
         i32.const 1
         i32.shl
         i32.add
         i32.load16_u
         i32.store16
         local.get $4
         local.get $2
         i32.const 2
         i32.shl
         i32.add
         local.get $5
         i32.store
         local.get $1
         local.get $5
         i32.const 1
         call $~lib/rt/itcms/__link
         local.get $2
         i32.const 1
         i32.add
         local.set $2
         br $for-loop|0
        end
       end
       br $folding-inner2
      end
      global.get $~lib/memory/__stack_pointer
      i32.const 0
      i32.const 13
      i32.const 0
      call $~lib/rt/__newArray
      local.tee $4
      i32.store offset=24
      loop $while-continue|1
       global.get $~lib/memory/__stack_pointer
       local.get $0
       i32.store offset=8
       global.get $~lib/memory/__stack_pointer
       i32.const 4384
       i32.store offset=28
       global.get $~lib/memory/__stack_pointer
       i32.const 8
       i32.sub
       global.set $~lib/memory/__stack_pointer
       global.get $~lib/memory/__stack_pointer
       i32.const 4656
       i32.lt_s
       br_if $folding-inner0
       global.get $~lib/memory/__stack_pointer
       i64.const 0
       i64.store
       global.get $~lib/memory/__stack_pointer
       i32.const 4384
       i32.store
       block $__inlined_func$~lib/string/String#indexOf$348
        i32.const 4380
        i32.load
        i32.const 1
        i32.shr_u
        local.tee $7
        i32.eqz
        if
         global.get $~lib/memory/__stack_pointer
         i32.const 8
         i32.add
         global.set $~lib/memory/__stack_pointer
         i32.const 0
         local.set $1
         br $__inlined_func$~lib/string/String#indexOf$348
        end
        global.get $~lib/memory/__stack_pointer
        local.get $0
        i32.store
        local.get $0
        i32.const 20
        i32.sub
        i32.load offset=16
        i32.const 1
        i32.shr_u
        local.tee $8
        i32.eqz
        if
         global.get $~lib/memory/__stack_pointer
         i32.const 8
         i32.add
         global.set $~lib/memory/__stack_pointer
         i32.const -1
         local.set $1
         br $__inlined_func$~lib/string/String#indexOf$348
        end
        local.get $2
        i32.const 0
        local.get $2
        i32.const 0
        i32.gt_s
        select
        local.tee $1
        local.get $8
        local.get $1
        local.get $8
        i32.lt_s
        select
        local.set $1
        local.get $8
        local.get $7
        i32.sub
        local.set $8
        loop $for-loop|03
         local.get $1
         local.get $8
         i32.le_s
         if
          global.get $~lib/memory/__stack_pointer
          local.get $0
          i32.store
          global.get $~lib/memory/__stack_pointer
          i32.const 4384
          i32.store offset=4
          local.get $0
          local.get $1
          i32.const 4384
          local.get $7
          call $~lib/util/string/compareImpl
          i32.eqz
          if
           global.get $~lib/memory/__stack_pointer
           i32.const 8
           i32.add
           global.set $~lib/memory/__stack_pointer
           br $__inlined_func$~lib/string/String#indexOf$348
          end
          local.get $1
          i32.const 1
          i32.add
          local.set $1
          br $for-loop|03
         end
        end
        global.get $~lib/memory/__stack_pointer
        i32.const 8
        i32.add
        global.set $~lib/memory/__stack_pointer
        i32.const -1
        local.set $1
       end
       local.get $1
       i32.const -1
       i32.xor
       if
        local.get $1
        local.get $2
        i32.sub
        local.tee $7
        i32.const 0
        i32.gt_s
        if
         global.get $~lib/memory/__stack_pointer
         local.get $7
         i32.const 1
         i32.shl
         local.tee $7
         i32.const 2
         call $~lib/rt/itcms/__new
         local.tee $8
         i32.store offset=32
         local.get $8
         local.get $0
         local.get $2
         i32.const 1
         i32.shl
         i32.add
         local.get $7
         memory.copy
         global.get $~lib/memory/__stack_pointer
         local.get $4
         i32.store offset=8
         global.get $~lib/memory/__stack_pointer
         local.get $8
         i32.store offset=28
         local.get $4
         local.get $8
         call $~lib/array/Array<assembly/index/CreateElement>#push
        else
         global.get $~lib/memory/__stack_pointer
         local.get $4
         i32.store offset=8
         global.get $~lib/memory/__stack_pointer
         i32.const 1456
         i32.store offset=28
         local.get $4
         i32.const 1456
         call $~lib/array/Array<assembly/index/CreateElement>#push
        end
        local.get $3
        i32.const 1
        i32.add
        local.tee $3
        i32.const 2147483647
        i32.eq
        br_if $folding-inner3
        local.get $1
        local.get $6
        i32.add
        local.set $2
        br $while-continue|1
       end
      end
      local.get $2
      i32.eqz
      if
       global.get $~lib/memory/__stack_pointer
       local.get $4
       i32.store offset=8
       global.get $~lib/memory/__stack_pointer
       local.get $0
       i32.store offset=28
       local.get $4
       local.get $0
       call $~lib/array/Array<assembly/index/CreateElement>#push
       br $folding-inner3
      end
      local.get $5
      local.get $2
      i32.sub
      local.tee $1
      i32.const 0
      i32.gt_s
      if
       global.get $~lib/memory/__stack_pointer
       local.get $1
       i32.const 1
       i32.shl
       local.tee $1
       i32.const 2
       call $~lib/rt/itcms/__new
       local.tee $3
       i32.store offset=36
       local.get $3
       local.get $0
       local.get $2
       i32.const 1
       i32.shl
       i32.add
       local.get $1
       memory.copy
       global.get $~lib/memory/__stack_pointer
       local.get $4
       i32.store offset=8
       global.get $~lib/memory/__stack_pointer
       local.get $3
       i32.store offset=28
       local.get $4
       local.get $3
       call $~lib/array/Array<assembly/index/CreateElement>#push
      else
       global.get $~lib/memory/__stack_pointer
       local.get $4
       i32.store offset=8
       global.get $~lib/memory/__stack_pointer
       i32.const 1456
       i32.store offset=28
       local.get $4
       i32.const 1456
       call $~lib/array/Array<assembly/index/CreateElement>#push
      end
      global.get $~lib/memory/__stack_pointer
      i32.const 40
      i32.add
      global.set $~lib/memory/__stack_pointer
      local.get $4
      return
     end
     i32.const 37456
     i32.const 37504
     i32.const 1
     i32.const 1
     call $~lib/builtins/abort
     unreachable
    end
    i32.const 0
    i32.const 13
    i32.const 0
    call $~lib/rt/__newArray
    local.set $1
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 40
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $1
   return
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 40
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $4
 )
 (func $assembly/index/wasmPatch~anonymous|0 (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 4656
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4656
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.store
   local.get $0
   if (result i32)
    global.get $~lib/memory/__stack_pointer
    local.get $0
    i32.store
    local.get $0
    i32.const 20
    i32.sub
    i32.load offset=16
    i32.const 1
    i32.shr_u
   else
    i32.const 0
   end
   local.set $0
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   i32.const 0
   i32.ne
   return
  end
  i32.const 37456
  i32.const 37504
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/util/string/joinStringArray (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4656
  i32.lt_s
  if
   i32.const 37456
   i32.const 37504
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store
  global.get $~lib/memory/__stack_pointer
  i64.const 0
  i64.store offset=8
  local.get $1
  i32.const 1
  i32.sub
  local.tee $4
  i32.const 0
  i32.lt_s
  if
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.add
   global.set $~lib/memory/__stack_pointer
   i32.const 1456
   return
  end
  local.get $4
  i32.eqz
  if
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load
   local.tee $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $0
   i32.const 1456
   local.get $0
   select
   return
  end
  loop $for-loop|0
   local.get $1
   local.get $3
   i32.gt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $0
    local.get $3
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.tee $5
    i32.store offset=4
    local.get $5
    if
     global.get $~lib/memory/__stack_pointer
     local.get $5
     i32.store offset=8
     local.get $2
     local.get $5
     i32.const 20
     i32.sub
     i32.load offset=16
     i32.const 1
     i32.shr_u
     i32.add
     local.set $2
    end
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $for-loop|0
   end
  end
  i32.const 0
  local.set $3
  global.get $~lib/memory/__stack_pointer
  i32.const 4384
  i32.store offset=8
  global.get $~lib/memory/__stack_pointer
  local.get $2
  local.get $4
  i32.const 4380
  i32.load
  i32.const 1
  i32.shr_u
  local.tee $1
  i32.mul
  i32.add
  i32.const 1
  i32.shl
  i32.const 2
  call $~lib/rt/itcms/__new
  local.tee $5
  i32.store offset=12
  i32.const 0
  local.set $2
  loop $for-loop|1
   local.get $2
   local.get $4
   i32.lt_s
   if
    global.get $~lib/memory/__stack_pointer
    local.get $0
    local.get $2
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.tee $6
    i32.store offset=4
    local.get $6
    if
     global.get $~lib/memory/__stack_pointer
     local.get $6
     i32.store offset=8
     local.get $5
     local.get $3
     i32.const 1
     i32.shl
     i32.add
     local.get $6
     local.get $6
     i32.const 20
     i32.sub
     i32.load offset=16
     i32.const 1
     i32.shr_u
     local.tee $6
     i32.const 1
     i32.shl
     memory.copy
     local.get $3
     local.get $6
     i32.add
     local.set $3
    end
    local.get $1
    if
     local.get $5
     local.get $3
     i32.const 1
     i32.shl
     i32.add
     i32.const 4384
     local.get $1
     i32.const 1
     i32.shl
     memory.copy
     local.get $1
     local.get $3
     i32.add
     local.set $3
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $for-loop|1
   end
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  local.get $4
  i32.const 2
  i32.shl
  i32.add
  i32.load
  local.tee $0
  i32.store offset=4
  local.get $0
  if
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=8
   local.get $5
   local.get $3
   i32.const 1
   i32.shl
   i32.add
   local.get $0
   local.get $0
   i32.const 20
   i32.sub
   i32.load offset=16
   i32.const -2
   i32.and
   memory.copy
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 16
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $5
 )
 (func $assembly/index/diff2 (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 40
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i32.const 4656
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 40
   memory.fill
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   local.get $0
   call $~lib/array/Array<assembly/index/CreateElement>#get:length
   local.set $4
   loop $for-loop|0
    local.get $3
    local.get $4
    i32.lt_s
    if
     global.get $~lib/memory/__stack_pointer
     local.set $2
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     global.get $~lib/memory/__stack_pointer
     i32.const 4
     i32.sub
     global.set $~lib/memory/__stack_pointer
     global.get $~lib/memory/__stack_pointer
     i32.const 4656
     i32.lt_s
     br_if $folding-inner1
     global.get $~lib/memory/__stack_pointer
     i32.const 0
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $0
     i32.store
     local.get $0
     i32.load offset=4
     local.get $3
     i32.const 2
     i32.shl
     i32.add
     i32.load
     local.set $5
     global.get $~lib/memory/__stack_pointer
     i32.const 4
     i32.add
     global.set $~lib/memory/__stack_pointer
     local.get $2
     local.get $5
     i32.store offset=4
     global.get $~lib/memory/__stack_pointer
     local.get $5
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $5
     i32.load
     local.tee $9
     i32.store offset=8
     global.get $~lib/memory/__stack_pointer
     local.get $5
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $5
     i32.load offset=4
     local.tee $10
     i32.store offset=12
     global.get $~lib/memory/__stack_pointer
     local.get $10
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $10
     i32.load
     local.tee $5
     i32.store offset=16
     global.get $~lib/memory/__stack_pointer
     local.get $1
     i32.store
     global.get $~lib/memory/__stack_pointer
     local.get $5
     i32.store offset=20
     block $__inlined_func$~lib/array/Array<~lib/string/String>#includes$6 (result i32)
      i32.const 0
      local.set $2
      global.get $~lib/memory/__stack_pointer
      i32.const 8
      i32.sub
      global.set $~lib/memory/__stack_pointer
      block $folding-inner00
       global.get $~lib/memory/__stack_pointer
       i32.const 4656
       i32.lt_s
       br_if $folding-inner00
       global.get $~lib/memory/__stack_pointer
       i64.const 0
       i64.store
       global.get $~lib/memory/__stack_pointer
       local.get $1
       i32.store
       global.get $~lib/memory/__stack_pointer
       local.get $5
       i32.store offset=4
       global.get $~lib/memory/__stack_pointer
       i32.const 8
       i32.sub
       global.set $~lib/memory/__stack_pointer
       global.get $~lib/memory/__stack_pointer
       i32.const 4656
       i32.lt_s
       br_if $folding-inner00
       global.get $~lib/memory/__stack_pointer
       i64.const 0
       i64.store
       global.get $~lib/memory/__stack_pointer
       local.get $1
       i32.store
       block $__inlined_func$~lib/array/Array<~lib/string/String>#indexOf$328
        local.get $1
        i32.load offset=12
        local.tee $6
        i32.eqz
        local.get $6
        i32.const 0
        i32.le_s
        i32.or
        if
         global.get $~lib/memory/__stack_pointer
         i32.const 8
         i32.add
         global.set $~lib/memory/__stack_pointer
         i32.const -1
         local.set $2
         br $__inlined_func$~lib/array/Array<~lib/string/String>#indexOf$328
        end
        global.get $~lib/memory/__stack_pointer
        local.get $1
        i32.store
        local.get $1
        i32.load offset=4
        local.set $7
        loop $while-continue|0
         local.get $2
         local.get $6
         i32.lt_s
         if
          global.get $~lib/memory/__stack_pointer
          local.get $7
          local.get $2
          i32.const 2
          i32.shl
          i32.add
          i32.load
          local.tee $8
          i32.store
          global.get $~lib/memory/__stack_pointer
          local.get $5
          i32.store offset=4
          local.get $8
          local.get $5
          call $~lib/string/String.__eq
          if
           global.get $~lib/memory/__stack_pointer
           i32.const 8
           i32.add
           global.set $~lib/memory/__stack_pointer
           br $__inlined_func$~lib/array/Array<~lib/string/String>#indexOf$328
          end
          local.get $2
          i32.const 1
          i32.add
          local.set $2
          br $while-continue|0
         end
        end
        global.get $~lib/memory/__stack_pointer
        i32.const 8
        i32.add
        global.set $~lib/memory/__stack_pointer
        i32.const -1
        local.set $2
       end
       global.get $~lib/memory/__stack_pointer
       i32.const 8
       i32.add
       global.set $~lib/memory/__stack_pointer
       local.get $2
       i32.const 0
       i32.ge_s
       br $__inlined_func$~lib/array/Array<~lib/string/String>#includes$6
      end
      br $folding-inner1
     end
     if
      global.get $~lib/memory/__stack_pointer
      local.get $9
      i32.store
      global.get $~lib/memory/__stack_pointer
      i32.const 3872
      i32.store offset=20
      local.get $9
      i32.const 3872
      call $~lib/string/String.__eq
      if
       global.get $~lib/memory/__stack_pointer
       local.get $5
       i32.store
       global.get $~lib/memory/__stack_pointer
       local.get $10
       i32.store offset=24
       global.get $~lib/memory/__stack_pointer
       local.get $10
       i32.load offset=4
       local.tee $2
       i32.store offset=28
       global.get $~lib/memory/__stack_pointer
       local.get $2
       i32.const 1456
       local.get $2
       select
       local.tee $2
       i32.store offset=20
       local.get $5
       local.get $2
       call $assembly/DOM/updateText
      else
       global.get $~lib/memory/__stack_pointer
       local.get $9
       i32.store
       global.get $~lib/memory/__stack_pointer
       i32.const 4272
       i32.store offset=20
       local.get $9
       i32.const 4272
       call $~lib/string/String.__eq
       if
        global.get $~lib/memory/__stack_pointer
        local.get $5
        i32.store
        global.get $~lib/memory/__stack_pointer
        local.get $10
        i32.store offset=24
        global.get $~lib/memory/__stack_pointer
        local.get $10
        i32.load offset=12
        local.tee $2
        i32.store offset=20
        local.get $5
        local.get $2
        call $assembly/DOM/updateAttribute
       else
        global.get $~lib/memory/__stack_pointer
        local.get $9
        i32.store
        global.get $~lib/memory/__stack_pointer
        i32.const 4304
        i32.store offset=20
        local.get $9
        i32.const 4304
        call $~lib/string/String.__eq
        if
         global.get $~lib/memory/__stack_pointer
         i32.const 0
         i32.const 13
         i32.const 4448
         call $~lib/rt/__newArray
         local.tee $6
         i32.store offset=32
         i32.const 0
         local.set $2
         loop $for-loop|1
          global.get $~lib/memory/__stack_pointer
          local.get $1
          i32.store
          local.get $1
          call $~lib/array/Array<assembly/index/CreateElement>#get:length
          local.get $2
          i32.gt_s
          if
           global.get $~lib/memory/__stack_pointer
           local.get $1
           i32.store offset=24
           local.get $1
           local.get $2
           call $~lib/array/Array<assembly/index/CreateElement>#__get
           local.set $7
           global.get $~lib/memory/__stack_pointer
           local.get $7
           i32.store
           global.get $~lib/memory/__stack_pointer
           local.get $5
           i32.store offset=20
           local.get $7
           local.get $5
           call $~lib/string/String.__eq
           if
            global.get $~lib/memory/__stack_pointer
            local.get $6
            i32.store
            global.get $~lib/memory/__stack_pointer
            local.get $1
            i32.store offset=24
            local.get $1
            local.get $2
            call $~lib/array/Array<assembly/index/CreateElement>#__get
            local.set $7
            global.get $~lib/memory/__stack_pointer
            local.get $7
            i32.store offset=20
            local.get $6
            local.get $7
            call $~lib/array/Array<assembly/index/CreateElement>#push
           end
           local.get $2
           i32.const 1
           i32.add
           local.set $2
           br $for-loop|1
          end
         end
         global.get $~lib/memory/__stack_pointer
         local.get $5
         i32.store
         global.get $~lib/memory/__stack_pointer
         local.get $6
         i32.store offset=24
         global.get $~lib/memory/__stack_pointer
         i32.const 4384
         i32.store offset=36
         global.get $~lib/memory/__stack_pointer
         i32.const 4
         i32.sub
         global.set $~lib/memory/__stack_pointer
         global.get $~lib/memory/__stack_pointer
         i32.const 4656
         i32.lt_s
         br_if $folding-inner1
         global.get $~lib/memory/__stack_pointer
         i32.const 0
         i32.store
         global.get $~lib/memory/__stack_pointer
         local.get $6
         i32.store
         local.get $6
         i32.load offset=4
         local.set $2
         global.get $~lib/memory/__stack_pointer
         local.get $6
         i32.store
         local.get $6
         i32.load offset=12
         local.set $6
         global.get $~lib/memory/__stack_pointer
         i32.const 4384
         i32.store
         local.get $2
         local.get $6
         call $~lib/util/string/joinStringArray
         local.set $2
         global.get $~lib/memory/__stack_pointer
         i32.const 4
         i32.add
         global.set $~lib/memory/__stack_pointer
         global.get $~lib/memory/__stack_pointer
         local.get $2
         i32.store offset=20
         local.get $5
         local.get $2
         call $assembly/DOM/updateList
        else
         global.get $~lib/memory/__stack_pointer
         local.get $9
         i32.store
         global.get $~lib/memory/__stack_pointer
         i32.const 4336
         i32.store offset=20
         local.get $9
         i32.const 4336
         call $~lib/string/String.__eq
         if
          global.get $~lib/memory/__stack_pointer
          local.get $5
          i32.store
          global.get $~lib/memory/__stack_pointer
          local.get $10
          i32.store offset=24
          global.get $~lib/memory/__stack_pointer
          local.get $10
          i32.load offset=12
          local.tee $2
          i32.store offset=20
          local.get $5
          local.get $2
          call $assembly/DOM/updateComponent
         end
        end
       end
      end
     end
     local.get $3
     i32.const 1
     i32.add
     local.set $3
     br $for-loop|0
    end
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 40
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  i32.const 37456
  i32.const 37504
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $~lib/rt/__newArray (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4656
  i32.lt_s
  if
   i32.const 37456
   i32.const 37504
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  i32.const 0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.set $5
  local.get $0
  i32.const 2
  i32.shl
  local.tee $4
  i32.const 1
  call $~lib/rt/itcms/__new
  local.set $3
  local.get $2
  if
   local.get $3
   local.get $2
   local.get $4
   memory.copy
  end
  local.get $5
  local.get $3
  i32.store
  i32.const 16
  local.get $1
  call $~lib/rt/itcms/__new
  local.tee $1
  local.get $3
  i32.store
  local.get $1
  local.get $3
  i32.const 0
  call $~lib/rt/itcms/__link
  local.get $1
  local.get $3
  i32.store offset=4
  local.get $1
  local.get $4
  i32.store offset=8
  local.get $1
  local.get $0
  i32.store offset=12
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $1
 )
 (func $export:assembly/index/wasmParse (param $0 i32) (param $1 i32) (result i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  global.get $~lib/memory/__stack_pointer
  i32.const 4656
  i32.lt_s
  if
   i32.const 37456
   i32.const 37504
   i32.const 1
   i32.const 1
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/memory/__stack_pointer
  local.get $0
  i32.store
  global.get $~lib/memory/__stack_pointer
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $1
  call $assembly/index/wasmParse
  local.set $0
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.add
  global.set $~lib/memory/__stack_pointer
  local.get $0
 )
 (func $export:assembly/index/wasmRender (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 4
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i32.const 4656
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4656
   i32.lt_s
   br_if $folding-inner0
   global.get $~lib/memory/__stack_pointer
   i64.const 0
   i64.store
   global.get $~lib/memory/__stack_pointer
   i64.const 0
   i64.store offset=8
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 12
   i32.const 4240
   call $~lib/rt/__newArray
   local.tee $1
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load
   local.tee $2
   i32.store offset=4
   local.get $2
   call $assembly/DOM/startComponent
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=8
   local.get $0
   i32.const 0
   i32.const 0
   local.get $1
   call $assembly/index/dfs
   global.get $~lib/memory/__stack_pointer
   global.get $assembly/index/lastElement
   local.tee $0
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.load
   local.tee $0
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.const 1456
   local.get $0
   select
   local.tee $0
   i32.store offset=4
   local.get $0
   call $assembly/DOM/endComponent
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $1
   return
  end
  i32.const 37456
  i32.const 37504
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
 (func $export:assembly/index/wasmPatch (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  global.get $~lib/memory/__stack_pointer
  i32.const 8
  i32.sub
  global.set $~lib/memory/__stack_pointer
  block $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i32.const 4656
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 20
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4656
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 20
   memory.fill
   global.get $~lib/memory/__stack_pointer
   local.set $3
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store offset=8
   global.get $~lib/memory/__stack_pointer
   i32.const 4384
   i32.store offset=12
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4656
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i64.const 0
   i64.store
   global.get $~lib/memory/__stack_pointer
   local.get $1
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 4384
   i32.store offset=4
   local.get $1
   call $~lib/string/String#split
   local.set $4
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store
   global.get $~lib/memory/__stack_pointer
   i32.const 4416
   i32.store offset=4
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.sub
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 4656
   i32.lt_s
   br_if $folding-inner1
   global.get $~lib/memory/__stack_pointer
   i64.const 0
   i64.store
   global.get $~lib/memory/__stack_pointer
   i64.const 0
   i64.store offset=8
   global.get $~lib/memory/__stack_pointer
   i32.const 0
   i32.const 13
   i32.const 0
   call $~lib/rt/__newArray
   local.tee $5
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $4
   i32.store offset=4
   local.get $4
   i32.load offset=12
   local.set $1
   loop $for-loop|0
    global.get $~lib/memory/__stack_pointer
    local.get $4
    i32.store offset=4
    local.get $2
    local.get $1
    local.get $4
    i32.load offset=12
    local.tee $6
    local.get $1
    local.get $6
    i32.lt_s
    select
    i32.lt_s
    if
     global.get $~lib/memory/__stack_pointer
     local.get $4
     i32.store offset=4
     global.get $~lib/memory/__stack_pointer
     local.get $4
     i32.load offset=4
     local.get $2
     i32.const 2
     i32.shl
     i32.add
     i32.load
     local.tee $6
     i32.store offset=8
     global.get $~lib/memory/__stack_pointer
     local.get $6
     i32.store offset=4
     global.get $~lib/memory/__stack_pointer
     local.get $4
     i32.store offset=12
     local.get $6
     local.get $2
     local.get $4
     i32.const 4416
     i32.load
     call_indirect (type $4)
     if
      global.get $~lib/memory/__stack_pointer
      local.get $5
      i32.store offset=4
      global.get $~lib/memory/__stack_pointer
      local.get $6
      i32.store offset=12
      local.get $5
      local.get $6
      call $~lib/array/Array<assembly/index/CreateElement>#push
     end
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $for-loop|0
    end
   end
   global.get $~lib/memory/__stack_pointer
   i32.const 16
   i32.add
   global.set $~lib/memory/__stack_pointer
   local.get $3
   local.get $5
   i32.store offset=16
   global.get $~lib/memory/__stack_pointer
   local.get $0
   i32.store
   global.get $~lib/memory/__stack_pointer
   local.get $5
   i32.store offset=4
   local.get $0
   local.get $5
   call $assembly/index/diff2
   global.get $~lib/memory/__stack_pointer
   i32.const 20
   i32.add
   global.set $~lib/memory/__stack_pointer
   global.get $~lib/memory/__stack_pointer
   i32.const 8
   i32.add
   global.set $~lib/memory/__stack_pointer
   return
  end
  i32.const 37456
  i32.const 37504
  i32.const 1
  i32.const 1
  call $~lib/builtins/abort
  unreachable
 )
)
