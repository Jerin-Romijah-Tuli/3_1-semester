`timescale 1ns/1ns

module counter_4d_one(
    input wire clk,
    input wire reset,
    output reg [3:0] q
);

always @(posedge clk or posedge reset)
 begin
    if (reset)
        q <= 4'b1111;  // On reset, load the maximum 4-bit value (15 in decimal)
    else
        q <= q - 1;    // Decrement the counter on every clock cycle
end

endmodule
