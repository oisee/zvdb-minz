; MinZ LLVM IR generated code
; Target: LLVM IR (compatible with LLVM 10+)

declare i32 @printf(i8*, ...)
declare i32 @putchar(i32)
declare void @exit(i32)
declare i8* @malloc(i64)
declare void @free(i8*)

; Function declarations

; String constants
@str_0 = private constant [25 x i8] c"Hello, World from MinZ!\n\00"
@str_1 = private constant [37 x i8] c"Testing cross-platform compilation:\n\00"
@str_2 = private constant [17 x i8] c"  - WebAssembly\n\00"
@str_3 = private constant [13 x i8] c"  - LLVM IR\n\00"
@str_4 = private constant [16 x i8] c"The answer is: \00"

define void @_Users_alice_dev_zvdb-minz_hello_world_main() {
entry:
  %x.addr = alloca i8
  %y.addr = alloca i8
  %sum.addr = alloca i8
  ; TODO: LOAD_STRING
  ; TODO: PRINT_STRING
  ; TODO: LOAD_STRING
  ; TODO: PRINT_STRING
  ; TODO: LOAD_STRING
  ; TODO: PRINT_STRING
  ; TODO: PRINT_STRING_DIRECT
  ; TODO: LOAD_STRING
  ; TODO: PRINT_STRING
  %r6 = add i8 0, 42
  store i8 %r6, i8* %x.addr
  %r8 = add i8 0, 13
  store i8 %r8, i8* %y.addr
  %r10 = load i8, i8* %x.addr
  %r11 = load i8, i8* %y.addr
  %r12 = add i8 %r10, %r11
  store i8 %r12, i8* %sum.addr
  ; TODO: LOAD_STRING
  ; TODO: PRINT_STRING
  ; TODO: PRINT_STRING_DIRECT
  ret void
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
