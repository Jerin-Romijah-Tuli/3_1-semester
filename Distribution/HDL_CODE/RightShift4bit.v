`timescale 1ns/1ps

module RightShift4bit (
    input wire clk,      
    input wire reset,   
    input wire load,     
    input wire [3:0] in, 
    output reg [3:0] out 
);

always @(posedge clk or posedge reset) begin
    if (reset)
        out <= 4'b0000;   
    else if (load)
        out <= in;          
    else
        out <= {1'b0, out[3:1]};  
end

endmodule
