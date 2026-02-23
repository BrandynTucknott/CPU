module nand_1bit(A, B, out);
    input A, B;
    output out;

    nand(out, A, B);
endmodule