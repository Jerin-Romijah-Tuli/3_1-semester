module encoder4to2 (
    input [3:0] A,  
    output reg [1:0] Y, 
    output reg valid 
);

always @(*) begin
    if (A[3]) begin
        Y = 2'b11; 
        valid = 1;
    end else if (A[2]) begin
        Y = 2'b10; 
        valid = 1;
    end else if (A[1]) begin
        Y = 2'b01; 
        valid = 1;
    end else if (A[0]) begin
        Y = 2'b00; 
        valid = 1;
    end else begin
        Y = 2'b00; 
        valid = 0; 
    end
end

endmodule