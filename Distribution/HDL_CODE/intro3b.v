module comparator1 (
    input A,
    input B,
    input C,
    input D,
    output z
);
wire a,b;
and(a,A,C);
and(b,B,D);
or(z,a,b);

    
endmodule