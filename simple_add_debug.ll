; MinZ LLVM IR - Debug Version
; Shows the computation steps

@.str = private unnamed_addr constant [29 x i8] c"MinZ via LLVM on Mac ARM64!\0A\00"
@.str.1 = private unnamed_addr constant [19 x i8] c"Computing %d + %d\0A\00"
@.str.2 = private unnamed_addr constant [12 x i8] c"Result: %d\0A\00"
@.str.3 = private unnamed_addr constant [34 x i8] c"Success: MinZ to LLVM to Native!\0A\00"

declare i32 @printf(i8*, ...)

define i8 @minz_add_numbers(i8 %a, i8 %b) {
entry:
  ; Convert to i32 for printf
  %a_ext = zext i8 %a to i32
  %b_ext = zext i8 %b to i32
  
  ; Print what we're computing
  %fmt = getelementptr inbounds [19 x i8], [19 x i8]* @.str.1, i32 0, i32 0
  call i32 (i8*, ...) @printf(i8* %fmt, i32 %a_ext, i32 %b_ext)
  
  ; Do the addition
  %result = add i8 %a, %b
  
  ; Print result
  %result_ext = zext i8 %result to i32
  %fmt2 = getelementptr inbounds [12 x i8], [12 x i8]* @.str.2, i32 0, i32 0
  call i32 (i8*, ...) @printf(i8* %fmt2, i32 %result_ext)
  
  ret i8 %result
}

define i32 @main() {
entry:
  ; Print header
  %header = getelementptr inbounds [29 x i8], [29 x i8]* @.str, i32 0, i32 0
  call i32 (i8*, ...) @printf(i8* %header)
  
  ; Call our function
  %result = call i8 @minz_add_numbers(i8 42, i8 13)
  
  ; Print success
  %success = getelementptr inbounds [34 x i8], [34 x i8]* @.str.3, i32 0, i32 0
  call i32 (i8*, ...) @printf(i8* %success)
  
  ; Return the result as exit code
  %exit_code = zext i8 %result to i32
  ret i32 %exit_code
}