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
## Miscellanious Notes
### Completeness
Even though Icarus Verilog provides users all the necessary logic gates to start building immediately,
for completness I also build the all the logic gates from the NAND gates. To be transparant, the gates
themselves are not used in the project, but an implementation is included here for fun.

The following gates have been prototyped in Logism and built in Verilog under ```root/misc/completeness/gates```,
and the diagrams can be seen in ```root/misc/completeness/diagrams```.
* BUF
* NOT
* NAND
* AND
* OR
* NOR
* XOR
* XNOR