`timescale 1ns/1ns

module register16_syn_metd_tb;
	reg clk;
	reg reset;
	reg [15:0] d;
	wire [15:0] q;

register16_syn_metd circuit1 (clk, 
reset, d, q);

always begin
	clk = ~clk;
	#10;
end
initial begin
   $dumpfile("test.vcd");
   $dumpvars(0, register16_syn_metd_tb);

	clk <= 0;
	reset <= 1;
	d <= 16'b00000000_00000000;
	#20;

	reset <= 0;
	d <= 16'b00000000_00001111;
	#20;

	$finish;
end
initial begin
	$monitor("clk = %b, reset = %b, d = %b, q = %b", clk, reset, d, q);
end


endmodule
