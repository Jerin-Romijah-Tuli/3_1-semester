`timescale 1ns/1ps
module demux1to4_tb();
    reg D;
    reg [1:0] S;
    wire [3:0] Y;
    demux1to4 uut(D, S, Y);

    initial begin
        D = 1'b1; S = 2'b00; #20;
        S = 2'b01; #20;
        S = 2'b10; #20;
        S = 2'b11; #20;
        $finish;
    end

    initial begin
        $monitor("D=%b, S=%b, Y=%b", D, S, Y);
    end
endmodule