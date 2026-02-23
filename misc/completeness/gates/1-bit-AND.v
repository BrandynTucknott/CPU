module and_1bit(A, B, out);
    input A, B;
    output out;

    wire nand_A_B;

    nand(nand_A_B, A, B);
    nand(out, nand_A_B, nand_A_B);
endmodule