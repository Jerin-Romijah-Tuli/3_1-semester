module multiplexer4to1(
    input [3:0]i,
    input [1:0]s,
    output y
    
);
assign y=(~s[0])&(~s[1])&i[0]+~s[0]&s[1]&i[1]+s[1]&~s[0]&i[2]+s[1]&s[0]&i[3];
    
endmodule