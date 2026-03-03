TODO:
* include how to build the NAND gate from transistors

## Repo Outline
```
root
├── 8-bit   # building an 8-bit processor
└── misc
    └── completeness
        ├── gates   # files to build logic gates
        └── tb_gates # test benches for gates
```
## The 5 Stages
I aim to replicate a 5-stage RISC-V processor, but this time using 8-bit registers instead of the standard
32 or 64 bit registers. There are several reasons for this.
1. It will be easier to debug
2. It will run faster
3. It should test my understanding of the content, since I will no longer be able to simply follow a tutorial
For now, there will be many simplifications until a working prototype is implemented, which will then be later
expanded upon. For example, we will use only logical operators and addition in the ALU until a working version,
and mutlipliers and dividers will be added later.
### Instruction Fetch (IF)
* Program Counter (PC)
* Instruction Memory
* Adder for next instruction: PC + 1 [8-bit register means instruction length is 1 byte]
### Instruction Decode (ID)
* Register file
* Immediate generator
* Control unit
### Execute (EX)
* ALU
* ALU input MUXes
* Branch logic comparison [could be moved to ID stage]
### Memory (MEM)
* Data memory
### Write Back (WB)
* MUX to select ALU result and memory data

## Steps and Goals
1. Define ISA subset
2. Draw complete datapath
3. Identify shared hardware
4. Define control signals
5. Implement

## Defining an ISA
This part is currently under review

## Miscellanious Notes
### Completeness
Even though Icarus Verilog provides users all the necessary logic gates to start building immediately,
for completness I also build the all the logic gates from the NAND gates. To be transparant, the gates
themselves are not used in the project, but an implementation is included here for fun.

The following gates have been prototyped in Logism and built in Verilog under[ ```root/misc/completeness/gates```](./misc/completeness/gates),
and the diagrams can be seen in [```root/misc/completeness/diagrams```](./misc/completeness/diagrams).
* BUF
* NOT
* NAND
* AND
* OR
* NOR
* XOR
* XNOR
