`timescale 1ns/1ps
module encoder4to2_tb();
    reg [3:0] A;
    wire [1:0] Y;
    wire valid;
    encoder4to2 uut(A, Y, valid);

    initial begin
        A = 4'b0000; #20;
        A = 4'b0010; #20;
        A = 4'b1000; #20;
        A = 4'b0111; #20;
        $finish;
    end

    initial begin
        $monitor("A=%b, Y=%b, valid=%b", A, Y, valid);
    end
endmodule