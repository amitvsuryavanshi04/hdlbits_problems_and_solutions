/*
Question:
Diagram: https://hdlbits.01xz.net/wiki/Exams/2014_q4a
Consider the n-bit shift register circuit shown below:

Write a Verilog module named top_module for one stage of this circuit, 
including both the flip-flop and multiplexers. 
*/

//solution:
module top_module(
    input clk,
    input W,R,E,L,
    output Q
);
    always @(posedge clk ) begin
        if (L) begin
            Q <= R;
        end else begin
            if (E) Q <= W;
            else Q <= Q;
        end
        
    end

endmodule