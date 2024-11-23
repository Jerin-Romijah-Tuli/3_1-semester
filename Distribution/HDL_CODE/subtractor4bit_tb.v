`timescale 1ns/1ps

module Subtractor4bit_tb();
    reg [3:0] A;
    reg [3:0] B;
    reg Bin;
    wire [3:0] D;
    wire Bout;

    Subtractor4bit uut(A, B, Bin, D, Bout);

    initial begin
        $dumpfile("test4b_sub.vcd");
        $dumpvars(0, Subtractor4bit_tb);

        // Test case 1: A = 0000, B = 0000, Bin = 0
        Bin = 1'b0;
        A = 4'b0000;
        B = 4'b0000;
        #20;

        // Test case 2: A = 0001, B = 0010, Bin = 1 (1 - 2)
        Bin = 1'b1;
        A = 4'b0001;
        B = 4'b0010;
        #20;

        // Test case 3: A = 1100, B = 1110, Bin = 0 (12 - 14)
        Bin = 1'b0;
        A = 4'b1100;
        B = 4'b1110;
        #20;

        // Test case 4: A = 0000, B = 0000, Bin = 1 (0 - 0)
        Bin = 1'b1;
        A = 4'b0000;
        B = 4'b0000;
        #20;

        // Test case 5: A = 0011, B = 0000, Bin = 1 (3 - 0 - 1 = 2)
        Bin = 1'b1;
        A = 4'b0011;
        B = 4'b0000;
        #20;

        $finish;
    end

    initial begin
        $monitor("Bin = %b, A = %b, B=%b, Bout =%b, D =%b\n", Bin, A, B, Bout, D);
    end
endmodule
