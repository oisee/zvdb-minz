# ZVDB-MinZ

A 256-bit vector database implementation in [MinZ](https://github.com/todo/minz-ts), demonstrating modern AI/ML algorithms on Z80 hardware.

## 🎯 What is ZVDB?

ZVDB (Z80 Vector Database) is a 1-bit quantized vector similarity search system designed for vintage computing hardware. This MinZ implementation showcases how modern vector database concepts can run efficiently on 1980s processors.

## 🚀 Features

- **256-bit binary vectors** for compact representation
- **Hamming distance** for fast similarity computation  
- **Popcount optimization** with lookup tables (3.3x speedup*)
- **K-nearest neighbors** search
- **Bit-packed structures** for 67% memory savings on metadata**
- **Comprehensive test suite** with 20+ test cases

\* For bit counting operations specifically  
\** Metadata only; vectors still require full 256 bits

## 📦 Repository Structure

```
zvdb-minz/
├── README.md           # This file
├── zvdb.minz          # Main implementation
├── zvdb.a80           # Generated Z80 assembly (for verification)
├── zvdb_test.minz     # Test suite
├── zvdb_test.a80      # Test suite assembly (for verification)
├── run_zvdb_tests.sh  # Test runner
├── ZVDB_README.md     # Performance analysis
└── zvdb_experiments/  # Development iterations
```

### 🔍 Verify Our Claims!

The `.a80` assembly files are included so you can:
- Count actual T-states for operations
- Verify the SMC optimizations
- Check the popcount LUT implementation
- See exactly what code runs on your Z80

## 🛠️ Requirements

- [MinZ compiler](https://github.com/todo/minz-ts) v0.9.0+
- Z80 assembler (sjasmplus) for final binary generation
- Z80 hardware or emulator for execution

## 🎮 Quick Start

```bash
# Clone the repository
git clone https://github.com/yourusername/zvdb-minz
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

| Metric | Value | Notes |
|--------|-------|-------|
| Vector size | 256 bits | 32 bytes per vector |
| Popcount speedup | 3.3x | LUT vs bit loop |
| Metadata compression | 67% | Using bit fields |
| Development time | Hours | vs days in assembly |
| Test coverage | 20+ cases | Comprehensive suite |

See [ZVDB_README.md](ZVDB_README.md) for detailed performance analysis with honest benchmarks and disclaimers.

## 🔗 Related Projects

- **[MinZ Language](https://github.com/todo/minz-ts)** - The systems programming language for Z80
- **[ZVDB Original](https://github.com/yourusername/zvdb-z80)** - Pure assembly implementation
- **[1-bit LLMs Paper](https://arxiv.org/abs/2402.17764)** - The BitNet b1.58 paper that inspired this

## 🤝 Contributing

This is a demonstration project showing MinZ capabilities. Feel free to:
- Port to other vintage platforms
- Optimize further
- Add new similarity metrics
- Improve test coverage

## 📜 License

MIT License - See LICENSE file for details

## 🙏 Acknowledgments

- The MinZ compiler team for making Z80 development fun again
- The Z80 community for keeping vintage computing alive
- Researchers working on 1-bit quantization making AI accessible to all hardware

## ⚠️ Disclaimer

This implementation has been tested in compilation but not on actual Z80 hardware. Performance claims are based on T-state analysis and estimates. Your mileage may vary. But hey, it compiles! 🎉

---

*Built with ❤️ for the intersection of vintage computing and modern AI*