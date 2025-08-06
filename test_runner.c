#include <stdio.h>

// Import our MinZ-generated function
extern unsigned char _Users_alice_dev_zvdb_minz_simple_add_add_numbers$u8$u8(unsigned char a, unsigned char b);
extern unsigned char _Users_alice_dev_zvdb_minz_simple_add_main(void);

int main() {
    printf("Testing MinZ compiled to C to native ARM64!\n");
    printf("=====================================\n\n");
    
    // Test the add function directly
    unsigned char result1 = _Users_alice_dev_zvdb_minz_simple_add_add_numbers$u8$u8(10, 20);
    printf("add_numbers(10, 20) = %d\n", result1);
    
    unsigned char result2 = _Users_alice_dev_zvdb_minz_simple_add_add_numbers$u8$u8(42, 13);
    printf("add_numbers(42, 13) = %d\n", result2);
    
    unsigned char result3 = _Users_alice_dev_zvdb_minz_simple_add_add_numbers$u8$u8(100, 200);
    printf("add_numbers(100, 200) = %d (note: u8 overflow!)\n", result3);
    
    // Test the main function
    printf("\nCalling MinZ main()...\n");
    unsigned char main_result = _Users_alice_dev_zvdb_minz_simple_add_main();
    printf("main() returned: %d\n", main_result);
    
    printf("\n✅ Success! MinZ → C → ARM64 native execution works!\n");
    
    return 0;
}