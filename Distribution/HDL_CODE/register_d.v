module register_d
(
    input wire clk,
    input wire reset,
    input wire [6:0] d,
    output reg [6:0] q
);

always @(posedge clk or posedge reset) begin
    if (reset) 
        q <= 7'b1111111;  // Reset the output to the maximum 7-bit value for down counting
    else 
        q <= d;  // Load input into q
end

endmodule
