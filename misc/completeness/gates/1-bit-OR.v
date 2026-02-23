module or_1bit(A, B, out);
    input A, B;
    output out;

    wire const_high = 1'b1;
    wire nand_A_const, nand_B_const;

    nand(nand_A_const, A, const_high);
    nand(nand_B_const, B, const_high);
    nand(out, nand_A_const, nand_B_const);
endmodule