/*
Question:
A "population count" circuit counts the number of 
'1's in an input vector. Build a population count c
ircuit for a 3-bit input vector. 
*/


//solution
module top_module( 
    input [2:0] in,
    output [1:0] out 
    );
  
  integer i;
    
  always @(in) begin
      out = 2'b0;
      for(i = 0; i < 3; i ++) begin
          if(in[i])
              out = out + 2'b1;
      end
  end

endmodule
