/*
Question:
write a verilog code for the diagram 
https://hdlbits.01xz.net/wiki/Mt2015_lfsr 
assume that R inputs to the SW switches, connect the clock to KEY[0]
and L TO KEY[1] connect the Q outputs to the red lights LEDR.
*/

//solution
module top_module (
	input [2:0] SW,      
	input [1:0] KEY,     
	output [2:0] LEDR
  );
  
  wire L;
  wire clk;
  wire [2:0] R;
  reg [2:0] Q;
  
  assign R = SW;
  assign clk = KEY[0];
  assign L = KEY[1];
        
  always @(posedge clk) begin
      if(L)
          Q <= R;
      else
          Q <= {Q[2]^Q[1], Q[0], Q[2]};
  end
    
  assign LEDR = Q;

endmodule