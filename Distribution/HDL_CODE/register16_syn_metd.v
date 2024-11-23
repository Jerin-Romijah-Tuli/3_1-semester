module register16_syn_metd
(
	input wire clk,
	input wire reset,
	input wire [15:0] d,
	output wire [15:0] q
);

//signal declaration
reg [15:0] q_reg ;
wire [15:0] q_next ;

// body or memory or state register
always @(posedge clk, posedge reset)
begin
	if (reset)
    	q_reg <= 16'b00000000_00000000;
	else
    	q_reg <= q_next;   
end

//next state logic
assign q_next = d;

//output logic
assign q = q_reg;
    
endmodule

