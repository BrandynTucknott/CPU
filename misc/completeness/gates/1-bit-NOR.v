module nor_1bit(A, B, out);
    input A, B;
    output out;

    wire const_high = 1'b1;
    wire nand_A_const, nand_B_const;
    wire _or; // when this is used, an OR gate will have been formed

    nand(nand_A_const, A, const_high);
    nand(nand_B_const, B, const_high);
    nand(_or, nand_A_const, nand_B_const);
    nand(out, _or, _or);
endmodule