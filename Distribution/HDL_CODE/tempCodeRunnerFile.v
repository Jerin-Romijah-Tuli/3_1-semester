`timescale 1ns/1ps

module DownCounter4bit_tb;

    reg clk;
    reg reset;
    reg en;
    wire [3:0] q;


    DownCounter4bit uut (
        .clk(clk),
        .reset(reset),
        .en(en),
        .q(q)
    );


    always begin
         clk = ~clk;
         #10;
    end

    
    initial begin
        $dumpfile("down_counter_with_en.vcd");
        $dumpvars(0, DownCounter4bit_tb);

        
        clk = 0;
        reset = 1;  
        en = 0;
        #20;

        reset = 0;  
        en = 1;     
        #20;       

        en = 0;     
        #20;

        en = 1;    
        #20;

        $finish;
    end


    initial begin
        $monitor("Time = %0dns, Reset = %b, Enable = %b, Count = %b", $time, reset, en, q);
    end

endmodule
