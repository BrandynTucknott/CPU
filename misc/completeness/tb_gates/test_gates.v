module mux_tb;
    // ANSI escape for colors
    parameter GREEN = "\033[32m";
    parameter RED = "\033[31m";
    parameter RESET = "\033[0m";

    reg A, B;
    wire out_buf, out_not, out_and, out_nand, out_or, out_nor, out_xor, out_xnor;

    // instantiate all tests
    buf_1bit uut_buf(A, out_buf);
    not_1bit uut_not(A, out_not);
    and_1bit uut_and(A, B, out_and);
    nand_1bit uut_nand(A, B, out_nand);
    or_1bit uut_or(A, B, out_or);
    nor_1bit uut_nor(A, B, out_nor);
    xor_1bit uut_xor(A, B, out_xor);
    xnor_1bit uut_xnor(A, B, out_xnor);

    // entry point
    reg expected[0:3];
    integer i;
    initial begin
        $display("============================================================\n",
        "Running Tests on 1-Bit Logic Gates\n",
        "============================================================\n");
        // ========================================================================================
        // single input gates 
        // ========================================================================================

        // test BUF
        expected[0] = 0;
        expected[1] = 1;
        for (i = 0; i < 2; i++) begin
            {A} = i;
            #10;
            $display("Testing BUF gate: A=%b | out=%b | expected=%b | %s%s%s",
                A, out_buf, expected[i],
                (out_buf === expected[i]) ? GREEN : RED,
                (out_buf === expected[i]) ? "PASS" : "FAIL",
                RESET);
        end
        $display("\n");


        // test NOT
        expected[0] = 1;
        expected[1] = 0;
        for (i = 0; i < 2; i++) begin
            {A} = i;
            #10;
            $display("Testing NOT gate: A=%b | out=%b | expected=%b | %s%s%s",
                A, out_not, expected[i],
                (out_not === expected[i]) ? GREEN : RED,
                (out_not === expected[i]) ? "PASS" : "FAIL",
                RESET);
        end
        $display("\n");

        // ========================================================================================
        // single input gates 
        // ========================================================================================
        // test AND
        expected[0] = 0;
        expected[1] = 0;
        expected[2] = 0;
        expected[3] = 1;
        for (i = 0; i < 4; i++) begin
            {A, B} = i;
            #10;
            $display("Testing AND gate: A=%b B=%b | out=%b | expected=%b | %s%s%s",
                A, B, out_and, expected[i],
                (out_and === expected[i]) ? GREEN : RED,
                (out_and === expected[i]) ? "PASS" : "FAIL",
                RESET);
        end
        $display("\n");

        // test NAND
        expected[0] = 1;
        expected[1] = 1;
        expected[2] = 1;
        expected[3] = 0;
        for (i = 0; i < 4; i++) begin
            {A, B} = i;
            #10;
            $display("Testing NAND gate: A=%b B=%b | out=%b | expected=%b | %s%s%s",
                A, B, out_nand, expected[i],
                (out_nand === expected[i]) ? GREEN : RED,
                (out_nand === expected[i]) ? "PASS" : "FAIL",
                RESET);
        end
        $display("\n");

        // test OR
        expected[0] = 0;
        expected[1] = 1;
        expected[2] = 1;
        expected[3] = 1;
        for (i = 0; i < 4; i++) begin
            {A, B} = i;
            #10;
            $display("Testing OR gate: A=%b B=%b | out=%b | expected=%b | %s%s%s",
                A, B, out_or, expected[i],
                (out_or === expected[i]) ? GREEN : RED,
                (out_or === expected[i]) ? "PASS" : "FAIL",
                RESET);
        end
        $display("\n");

        // test NOR
        expected[0] = 1;
        expected[1] = 0;
        expected[2] = 0;
        expected[3] = 0;
        for (i = 0; i < 4; i++) begin
            {A, B} = i;
            #10;
            $display("Testing NOR gate: A=%b B=%b | out=%b | expected=%b | %s%s%s",
                A, B, out_nor, expected[i],
                (out_nor === expected[i]) ? GREEN : RED,
                (out_nor === expected[i]) ? "PASS" : "FAIL",
                RESET);
        end
        $display("\n");

        // test XOR
        expected[0] = 0;
        expected[1] = 1;
        expected[2] = 1;
        expected[3] = 0;
        for (i = 0; i < 4; i++) begin
            {A, B} = i;
            #10;
            $display("Testing OR gate: A=%b B=%b | out=%b | expected=%b | %s%s%s",
                A, B, out_xor, expected[i],
                (out_xor === expected[i]) ? GREEN : RED,
                (out_xor === expected[i]) ? "PASS" : "FAIL",
                RESET);
        end
        $display("\n");

        // test XNOR
        expected[0] = 1;
        expected[1] = 0;
        expected[2] = 0;
        expected[3] = 1;
        for (i = 0; i < 4; i++) begin
            {A, B} = i;
            #10;
            $display("Testing OR gate: A=%b B=%b | out=%b | expected=%b | %s%s%s",
                A, B, out_xnor, expected[i],
                (out_xnor === expected[i]) ? GREEN : RED,
                (out_xnor === expected[i]) ? "PASS" : "FAIL",
                RESET);
        end
        $display("\n");

        $finish;
    end
endmodule