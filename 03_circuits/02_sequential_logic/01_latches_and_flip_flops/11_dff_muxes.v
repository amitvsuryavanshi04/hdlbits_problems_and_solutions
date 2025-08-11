/*
Question:
diagram : https://hdlbits.01xz.net/wiki/Mt2015_muxdff
ssume that you want to implement hierarchical Verilog code for this circuit, 
using three instantiations of a submodule that has a flip-flop and multiplexer 
in it. Write a Verilog module (containing one flip-flop and multiplexer) 
named top_module for this submodule. 
*/

//solution:
module top_module(
    input clk,L,r_in,q_in,
    output reg Q
);
    always @(posedge clk) begin
        if (L) begin
            Q <= r_in;
        end else begin
            Q <= q_in;
        end
    end

endmodule