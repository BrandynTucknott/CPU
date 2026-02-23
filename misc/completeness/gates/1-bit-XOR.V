module xor_1bit(A, B, out);
    input A, B;
    output out;

    wire nand_A, nand_B;
    wire t1, t2;

    nand(nand_A, A, A);
    nand(nand_B, B, B);
    nand(t1, B, nand_A);
    nand(t2, A, nand_B);
    nand(out, t1, t2);
endmodule