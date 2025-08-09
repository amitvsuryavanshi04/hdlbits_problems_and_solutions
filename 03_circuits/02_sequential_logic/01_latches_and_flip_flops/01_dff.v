/*
Question:
A D flip-flop is a circuit that stores a bit and is updated periodically, 
at the (usually) positive edge of a clock signal.

    -----------------
    - d             -
    -               -
    -            q- - -q output
    ->clk           -
    -               -
    -----------------
D flip-flops are created by the logic synthesizer when a clocked always 
block is used (See alwaysblock2). A D flip-flop is the simplest form of 
"blob of combinational logic followed by a flip-flop" where the combinational logic portion is just a wire.

Create a single D flip-flop. 
*/
//solution:
module top_module (
    input clk, 
    input d,
    output reg q 
  );
  
  always@(posedge clk)begin
      q <= d;
  end

endmodule