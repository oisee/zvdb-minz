;; MinZ WebAssembly generated code
;; Generated: 2025-08-06 21:18:37
;; Note: WASM uses stack-based calling convention, no SMC

(module
  ;; Import memory
  (import "env" "memory" (memory 1))
  (import "env" "print_char" (func $print_char (param i32)))
  (import "env" "print_i32" (func $print_i32 (param i32)))

  ;; Function: .Users.alice.dev.zvdb-minz.hello_world.main
  (func $.Users.alice.dev.zvdb-minz.hello_world.main
    (local $x i32)
    (local $y i32)
    (local $sum i32)
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
    (local $r12 i32)
    (local $r13 i32)
    i32.const 0  ;; TODO: string offset for str_0
    local.set $r1
    ;; TODO: print string (needs memory access)
    i32.const 0  ;; TODO: string offset for str_1
    local.set $r2
    ;; TODO: print string (needs memory access)
    i32.const 0  ;; TODO: string offset for str_2
    local.set $r3
    ;; TODO: print string (needs memory access)
    ;; TODO: print string direct
    i32.const 0  ;; TODO: string offset for str_3
    local.set $r4
    ;; TODO: print string (needs memory access)
    i32.const 42  ;; r6 = 42
    local.set $r6
    local.get $r6  ;; store x
    global.set $x
    i32.const 13  ;; r8 = 13
    local.set $r8
    local.get $r8  ;; store y
    global.set $y
    global.get $x  ;; r10 = x
    local.set $r10
    global.get $y  ;; r11 = y
    local.set $r11
    local.get $r10  ;; r12 = r10 + r11
    local.get $r11
    i32.add
    local.set $r12
    local.get $r12  ;; store sum
    global.set $sum
    i32.const 0  ;; TODO: string offset for str_4
    local.set $r13
    ;; TODO: print string (needs memory access)
    ;; TODO: print string direct
    return
  )

  ;; Export main function
  (export "main" (func $main))
)
