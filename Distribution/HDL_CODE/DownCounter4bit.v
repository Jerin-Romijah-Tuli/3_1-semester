

module DownCounter4bit (
    input wire clk,      
    input wire reset,    
    input wire en,       
    output reg [3:0] q  
);

always @(posedge clk or posedge reset) begin
    if (reset)
        q <= 4'b1111;    
    else if (en)
        q <= q - 1;      
end

endmodule
