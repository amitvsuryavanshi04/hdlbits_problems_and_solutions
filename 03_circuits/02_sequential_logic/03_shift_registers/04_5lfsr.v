/*
//Question:
5-bit maximal-length Galois LFSR with taps at bit positions 5 and 3. 
(Tap positions are usually numbered starting from 1).
*/

module top_module(
    input clk,
    input reset,    
    output [4:0] q
); 
    always @(posedge clk) begin
        if(reset) 
           q <= 5'h1;
        else 
           q <= {q[0]^1'b0, q[4], q[3]^q[0], q[2], q[1]};
    end
  
endmodule //5 bit LFSR module ended here 