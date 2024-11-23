`timescale 1ns/1ps

module RightShift4bit_tb;

    reg clk;
    reg reset;
    reg load;
    reg [3:0] in;
    wire [3:0] out;

    
    RightShift4bit uut (
        .clk(clk),
        .reset(reset),
        .load(load),
        .in(in),
        .out(out)
    );

    
    always #10 clk = ~clk;

    initial begin
        
        clk = 0;
        reset = 1; 
        load = 0;
        in = 4'b1101;  
        #20;

       
        reset = 0;   
        load = 1;    
        #20;

        load = 0;    

        
        #20;  
        #20;  
        #20;  
        #20;  

        $finish;
    end

    
    initial begin
        $monitor(" clk = %b, reset = %b, load = %b, in = %b, out = %b", 
                 clk, reset, load, in, out);
    end

endmodule
