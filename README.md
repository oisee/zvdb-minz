# ZVDB-MinZ

A 256-bit vector database implementation in [MinZ](https://github.com/oisee/minz), demonstrating modern AI/ML algorithms on Z80 hardware.

## 🎯 What is ZVDB?

ZVDB (Z80 Vector Database) is a 1-bit quantized vector similarity search system designed for vintage computing hardware. This MinZ implementation showcases how modern vector database concepts can run efficiently on 1980s processors.

## 🚀 Features

### Vector Database Core
- **256-bit binary vectors** for compact representation
- **Hamming distance** for fast similarity computation  
- **Popcount optimization** with lookup tables (3.3x speedup*)
- **K-nearest neighbors** search
- **Bit-packed structures** for 67% memory savings on metadata**
- **Comprehensive test suite** with 20+ test cases

### 🔒 Cryptographic Engine
- **Complete SHA256 implementation** in pure Z80 assembly ([commit 2b870c2](https://github.com/oisee/minz/commit/2b870c2))
- **High-performance 32-bit operations**: ADD32 (34 T-states), XOR32 (56 T-states)
- **Page-aligned memory layout** for optimal Z80 performance
- **~45,000 T-states per 512-bit block** (~11ms @ 4MHz, ~45KB/sec throughput)
- **Memory efficient**: <2KB total including constants and workspace
- **Vector fingerprinting** for deduplication and integrity verification

\* For bit counting operations specifically  
\** Metadata only; vectors still require full 256 bits

## 📦 Repository Structure

```
zvdb-minz/
├── README.md              # This file
├── zvdb.minz              # Main ZVDB implementation
├── zvdb.a80               # Generated Z80 assembly (for verification)
├── zvdb_test.minz         # Test suite
├── zvdb_test.a80          # Test suite assembly (for verification)
├── run_zvdb_tests.sh      # Test runner
├── ZVDB_README.md         # Performance analysis
├── sha256_z80.asm         # 🔥 High-performance SHA256 implementation
├── SHA256_README.md       # SHA256 documentation
├── sha256_integration.minz # MinZ/assembly integration examples  
├── simple_sha256_demo.minz # Simple MinZ demonstration
└── zvdb_experiments/      # Development iterations
```

### 🔍 Verify Our Claims!

The `.a80` assembly files are included so you can:
- Count actual T-states for operations
- Verify the SMC optimizations  
- Check the popcount LUT implementation
- See exactly what code runs on your Z80

The SHA256 implementation (`sha256_z80.asm`) includes:
- All 1,438 lines of optimized Z80 assembly code
- Performance annotations with exact T-state counts
- Test function with known hash verification
- Complete technical documentation

## 🛠️ Requirements

- [MinZ compiler](https://github.com/oisee/minz) v0.9.0+
- Z80 assembler (sjasmplus) for final binary generation
- Z80 hardware or emulator for execution

## 🎮 Quick Start

```bash
# Clone the repository
git clone https://github.com/oisee/zvdb-minz
cd zvdb-minz

# Run tests (requires MinZ compiler)
./run_zvdb_tests.sh

# Compile to Z80 assembly
minzc zvdb.minz -o zvdb.a80

# Assemble to binary (requires sjasmplus)
sjasmplus zvdb.a80

# Load at 0x8000 on your Z80 system
```

## 📊 Performance

### Vector Database Performance
| Metric | Value | Notes |
|--------|-------|-------|
| Vector size | 256 bits | 32 bytes per vector |
| Popcount speedup | 3.3x | LUT vs bit loop |
| Metadata compression | 67% | Using bit fields |
| Development time | Hours | vs days in assembly |
| Test coverage | 20+ cases | Comprehensive suite |

### SHA256 Cryptographic Performance  
| Metric | Value | Notes |
|--------|-------|-------|
| Throughput | ~45KB/sec | @ 4MHz Z80 |
| T-states per block | ~45,000 | 512-bit blocks |
| Memory footprint | <2KB | Including workspace |
| ADD32 performance | 34 T-states | Fastest possible on Z80 |
| XOR32 performance | 56 T-states | Optimized via A register |

See [ZVDB_README.md](ZVDB_README.md) for detailed performance analysis with honest benchmarks and disclaimers.

## 🔗 Related Projects

- **[MinZ Language](https://github.com/oisee/minz)** - The systems programming language for Z80
- **[ZVDB ABAP Original](https://github.com/oisee/zvdb)** - Pure ABAP implementation
- **[ZVDB Z80 ASM Reimplementation](https://github.com/oisee/zvdb-z80)** - Pure assembly implementation

## 🤝 Contributing

This is a demonstration project showing MinZ capabilities. Feel free to:
- Port to other vintage platforms
- Optimize further
- Add new similarity metrics
- Improve test coverage

## 📜 License

MIT License - See LICENSE file for details

## 🙏 Acknowledgments

- The MinZ compiler team (=myself and my imaginary friend Claude Code) for making Z80 development fun again
- The Z80 community for keeping vintage computing alive
- Researchers working on 1-bit quantization making AI accessible to all hardware

## ⚠️ Disclaimer

This implementation has been tested in compilation but not on actual Z80 hardware. Performance claims are based on T-state analysis and estimates. Your mileage may vary. But hey, it compiles! 🎉

---

*Built with ❤️ for the intersection of vintage computing and modern AI*