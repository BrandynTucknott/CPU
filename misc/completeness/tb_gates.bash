find . -maxdepth 1 -name "sim.o" -delete
iverilog gates/1-bit-AND.v gates/1-bit-BUF.v gates/1-bit-NAND.v gates/1-bit-NOR.v gates/1-bit-NOT.v gates/1-bit-OR.v gates/1-bit-XNOR.v gates/1-bit-XOR.v tb_gates/test_gates.v -o sim.o
if [ -f ./sim.o ]; then
    ./sim.o
fi
