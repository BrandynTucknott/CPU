module not_1bit(A, out);
    input A;
    output out;

    nand(out, A, A);
endmodule