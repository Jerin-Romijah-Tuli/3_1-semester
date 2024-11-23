`timescale 1ns/1ps
module multipeexer4tp1_tb;
reg [3:0]i;
reg [1:0]s;
wire y;
multiplexer4to1 uut(
    .i(i),
    .s(s),
    .y(y)
);
initial begin
    i[0]=1;
    i[1]=1;
    i[2]=1;
    i[3]=1;
    s[0]=0;
    s[1]=0;
    #20 s[0]=1;
    #20 s[1]=1;
    #20 s[0]=0;

end
initial begin
    $monitor("i[3]=%d,i[2]=%d,i[1]=%d,i[0]=%d,s[0]=%d,s[1]=%d,y=%d\n",i3,i2,i1,i0,s0,s1,y);
end

    
endmodule