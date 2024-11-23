module demux1to4 (
    input D,         
    input [1:0] S,   
    output [3:0] Y   
);

assign Y[0] = (S == 2'b00) ? D : 1'b0;
assign Y[1] = (S == 2'b01) ? D : 1'b0;
assign Y[2] = (S == 2'b10) ? D : 1'b0;
assign Y[3] = (S == 2'b11) ? D : 1'b0;

endmodule