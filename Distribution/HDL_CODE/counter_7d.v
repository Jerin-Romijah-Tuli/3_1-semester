module counter_7d
(
    input wire clk,
    input wire reset,
    output wire [6:0] q
);

wire [6:0] d_temp, q_temp;
register_d register_d_circuit1(clk,reset,d_temp,q_temp);
subtractOne subtractor_circuit1(q_temp, d_temp); 
assign q=q_temp;

endmodule