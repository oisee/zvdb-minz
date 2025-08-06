;; MinZ WebAssembly generated code
;; Generated: 2025-08-06 23:21:49
;; Note: WASM uses stack-based calling convention, no SMC

(module
  ;; Import memory
  (import "env" "memory" (memory 1))
  (import "env" "print_char" (func $print_char (param i32)))
  (import "env" "print_i32" (func $print_i32 (param i32)))

  ;; Function: .Users.alice.dev.zvdb-minz.simple_add.add_numbers$u8$u8
  (func $.Users.alice.dev.zvdb-minz.simple_add.add_numbers$u8$u8 (param $a i32) (param $b i32)  (result i32)
    (local $r1 i32)
    (local $r2 i32)
    (local $r3 i32)
    (local $r4 i32)
    (local $r5 i32)
    ;; TODO: LOAD_PARAM
    ;; TODO: LOAD_PARAM
    local.get $r3  ;; r5 = r3 + r4
    local.get $r4
    i32.add
    local.set $r5
    local.get $r5  ;; return
    return
  )

  ;; Function: .Users.alice.dev.zvdb-minz.simple_add.main
  (func $.Users.alice.dev.zvdb-minz.simple_add.main (result i32)
    (local $x i32)
    (local $y i32)
    (local $result i32)
    (local $r1 i32)
    (local $r2 i32)
    (local $r3 i32)
    (local $r4 i32)
    (local $r5 i32)
    (local $r6 i32)
    (local $r7 i32)
    (local $r8 i32)
    (local $r9 i32)
    (local $r10 i32)
    (local $r11 i32)
    i32.const 42  ;; r2 = 42
    local.set $r2
    local.get $r2  ;; store x
    global.set $x
    i32.const 13  ;; r4 = 13
    local.set $r4
    local.get $r4  ;; store y
    global.set $y
    global.get $x  ;; r6 = x
    local.set $r6
    global.get $y  ;; r7 = y
    local.set $r7
    global.get $x  ;; r8 = x
    local.set $r8
    global.get $y  ;; r9 = y
    local.set $r9
    call $.Users.alice.dev.zvdb-minz.simple_add.add_numbers$u8$u8  ;; call .Users.alice.dev.zvdb-minz.simple_add.add_numbers$u8$u8
    local.set $r10
    local.get $r10  ;; store result
    global.set $result
    global.get $result  ;; r11 = result
    local.set $r11
    local.get $r11  ;; return
    return
  )

  ;; Export main function
  (export "main" (func $main))
)
