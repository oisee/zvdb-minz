#!/bin/bash
# ZVDB Test Runner

echo "================================"
echo "ZVDB Test Suite Runner"
echo "================================"
echo

# Compile test suite
echo "Compiling test suite..."
cd ../minzc
if ./minzc ../examples/zvdb_test.minz -o zvdb_test.a80; then
    echo "✓ Test suite compiled successfully"
else
    echo "✗ Test suite compilation failed"
    exit 1
fi

# Compile main ZVDB
echo
echo "Compiling main ZVDB..."
if ./minzc ../examples/zvdb.minz -o zvdb.a80; then
    echo "✓ ZVDB compiled successfully"
else
    echo "✗ ZVDB compilation failed"
    exit 1
fi

# Check assembly output sizes
echo
echo "Assembly Output Analysis:"
echo "========================"
echo "Test suite: $(wc -l < zvdb_test.a80) lines"
echo "Main ZVDB:  $(wc -l < zvdb.a80) lines"

# Run static analysis
echo
echo "Static Analysis:"
echo "==============="

# Check for SMC optimization
echo -n "SMC optimization: "
if grep -q "SMC parameter" zvdb.a80; then
    echo "✓ Enabled"
else
    echo "✗ Not found"
fi

# Check for LUT
echo -n "Popcount LUT: "
if grep -q "lut" zvdb.a80; then
    echo "✓ Present"
else
    echo "⚠ Not detected"
fi

# Count functions
echo
echo "Function Count:"
test_funcs=$(grep -c "^...examples.zvdb_test" zvdb_test.a80 2>/dev/null || echo "0")
main_funcs=$(grep -c "^...examples.zvdb" zvdb.a80 2>/dev/null || echo "0")
echo "  Test functions: $test_funcs"
echo "  Main functions: $main_funcs"

echo
echo "================================"
echo "Test Suite Ready for Execution"
echo "================================"
echo
echo "To run on actual Z80 hardware or emulator:"
echo "1. Assemble with sjasmplus: sjasmplus zvdb_test.a80"
echo "2. Load resulting binary at 0x8000"
echo "3. CALL 0x8000 to run tests"
echo
echo "Expected output:"
echo "  - 20+ test cases"
echo "  - All tests should pass"
echo "  - Final summary with pass/fail count"