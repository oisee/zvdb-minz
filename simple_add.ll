; MinZ LLVM IR generated code
; Target: LLVM IR (compatible with LLVM 10+)

declare i32 @printf(i8*, ...)
declare i32 @putchar(i32)
declare void @exit(i32)
declare i8* @malloc(i64)
declare void @free(i8*)

; Function declarations

define i8 @_Users_alice_dev_zvdb-minz_simple_add_add_numbers_u8_u8(i8 %a, i8 %b) {
entry:
  ; TODO: LOAD_PARAM
  ; TODO: LOAD_PARAM
  %r5 = add i8 %r3, %r4
  ret void %r5
}

define i8 @_Users_alice_dev_zvdb-minz_simple_add_main() {
entry:
  %x.addr = alloca i8
  %y.addr = alloca i8
  %result.addr = alloca i8
  %r2 = add i8 0, 42
  store i8 %r2, i8* %x.addr
  %r4 = add i8 0, 13
  store i8 %r4, i8* %y.addr
  %r6 = load i8, i8* %x.addr
  %r7 = load i8, i8* %y.addr
  %r8 = load i8, i8* %x.addr
  %r9 = load i8, i8* %y.addr
  %r10 = call void @_Users_alice_dev_zvdb-minz_simple_add_add_numbers_u8_u8(i8 %r8, i8 %r9)
  store i8 %r10, i8* %result.addr
  %r11 = load i8, i8* %result.addr
  ret void %r11
}


; Runtime functions
define void @print_u8(i8 %value) {
  %1 = zext i8 %value to i32
  %2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.u8, i32 0, i32 0), i32 %1)
  ret void
}

@.str.u8 = private constant [4 x i8] c"%u\0A\00"

; main wrapper
define i32 @main() {
  call void @examples_test_llvm_main()
  ret i32 0
}
