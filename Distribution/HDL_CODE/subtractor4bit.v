module Subtractor4bit (
    input [3:0] A,
    input [3:0] B,
    input Bin,              // Borrow-in (used to add 1 to two's complement of B)
    output [3:0] D,         // Difference output
    output Bout             // Borrow-out
);

wire Bin1, Bin2, Bin3;
wire [3:0] B_complement;

// Take the one's complement of B
assign B_complement = ~B;

// Perform A - B by adding A to the two's complement of B (i.e., ~B + 1)
// The addition of 1 is done via the borrow-in (Bin) signal.
Adder1bit cir1(A[0], B_complement[0], Bin,  D[0], Bin1);
Adder1bit cir2(A[1], B_complement[1], Bin1, D[1], Bin2);
Adder1bit cir3(A[2], B_complement[2], Bin2, D[2], Bin3);
Adder1bit cir4(A[3], B_complement[3], Bin3, D[3], Bout);

endmodule
