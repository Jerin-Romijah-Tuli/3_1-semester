`timescale 1ns/1ps
module stimulus1; 
    reg A;
     reg B;
      reg C;
       reg D;
       wire z;
       comparator1 uut(
        .A(A),
        .B(B),
        .C(C),
        .D(D),
        .z(z)
       );
   initial begin
    A=0;B=0;C=0;D=0;
    #20 D=1;
     #20 C=1;
      #20 B=1;
       #20 C=0;
        #20 D=0; 
         #20 C=1;
          #20 B=0;
     #20 A=1;
      #20 C=0;
       #20 B=1;
        #20 C=1;
         #20 D=1;
          #20 C=0;
           #20 B=0;
            #20 C=1;

   end

   initial begin
    $monitor("A=%d,b=%d, C=%d, D=%d, z=%d \n",A,B,C,D,z);
   end
    
endmodule 
