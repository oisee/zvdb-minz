; Fixed LLVM IR for MinZ program

define i8 @minz_add_numbers(i8 %a, i8 %b) {
entry:
  %result = add i8 %a, %b
  ret i8 %result
}

define i8 @minz_main() {
entry:
  %x = alloca i8
  %y = alloca i8
  %result = alloca i8
  
  store i8 42, i8* %x
  store i8 13, i8* %y
  
  %x_val = load i8, i8* %x
  %y_val = load i8, i8* %y
  
  %sum = call i8 @minz_add_numbers(i8 %x_val, i8 %y_val)
  store i8 %sum, i8* %result
  
  %final = load i8, i8* %result
  ret i8 %final
}

define i32 @main() {
entry:
  %result = call i8 @minz_main()
  %exit_code = zext i8 %result to i32
  ret i32 %exit_code
}
