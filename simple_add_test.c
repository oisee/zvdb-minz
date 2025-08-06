// MinZ C generated code
// Generated: 2025-08-06 23:20:56
// Target: Standard C (C99)

#include <stdio.h>
#include <stdint.h>
#include <stdbool.h>
#include <stdlib.h>
#include <string.h>

// Type definitions
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u24; // 24-bit emulated as 32-bit
typedef uint32_t u32;
typedef int8_t i8;
typedef int16_t i16;
typedef int32_t i24; // 24-bit emulated as 32-bit
typedef int32_t i32;

// Fixed-point arithmetic helpers
typedef int16_t f8_8;   // 8.8 fixed-point
typedef int16_t f_8;    // .8 fixed-point
typedef int16_t f_16;   // .16 fixed-point
typedef int32_t f16_8;  // 16.8 fixed-point
typedef int32_t f8_16;  // 8.16 fixed-point

#define F8_8_SHIFT 8
#define F_8_SHIFT 8
#define F_16_SHIFT 16
#define F16_8_SHIFT 8
#define F8_16_SHIFT 16

// String type (length-prefixed)
typedef struct {
    uint16_t len;
    char* data;
} String;

// Print helper functions
void print_char(u8 ch) {
    putchar(ch);
}

void print_u8(u8 value) {
    printf("%u", value);
}

void print_u8_decimal(u8 value) {
    printf("%u", value);
}

void print_u16(u16 value) {
    printf("%u", value);
}

void print_u24(u24 value) {
    printf("%u", value);
}

void print_i8(i8 value) {
    printf("%d", value);
}

void print_i16(i16 value) {
    printf("%d", value);
}

void print_newline() {
    printf("\n");
}

void print_string(String* str) {
    if (str && str->data) {
        printf("%.*s", str->len, str->data);
    }
}

// Function declarations
u8 _Users_alice_dev_zvdb-minz_simple_add_add_numbers$u8$u8(u8 a, u8 b);
u8 _Users_alice_dev_zvdb-minz_simple_add_main(void);

u8 _Users_alice_dev_zvdb-minz_simple_add_add_numbers$u8$u8(u8 a, u8 b) {
    uintptr_t r1 = 0;
    uintptr_t r2 = 0;
    uintptr_t r3 = 0;
    uintptr_t r4 = 0;
    uintptr_t r5 = 0;
    
    r3 = a;
    r4 = b;
    r5 = r3 + r4;
    return r5;
}

u8 _Users_alice_dev_zvdb-minz_simple_add_main(void) {
    uintptr_t r1 = 0;
    uintptr_t r2 = 0;
    uintptr_t r3 = 0;
    uintptr_t r4 = 0;
    uintptr_t r5 = 0;
    uintptr_t r6 = 0;
    uintptr_t r7 = 0;
    uintptr_t r8 = 0;
    uintptr_t r9 = 0;
    uintptr_t r10 = 0;
    uintptr_t r11 = 0;
    
    // Local variables
    u8 x = 0;
    u8 y = 0;
    u8 result = 0;
    
    r2 = 42;
    x = r2;
    r4 = 13;
    y = r4;
    r6 = x;
    r7 = y;
    r8 = x;
    r9 = y;
    r10 = _Users_alice_dev_zvdb-minz_simple_add_add_numbers$u8$u8(r8, r9);
    result = r10;
    r11 = result;
    return r11;
}

// C main wrapper
int main(int argc, char** argv) {
    return (int)_Users_alice_dev_zvdb-minz_simple_add_main();
}
