/*
Quesiton:
For each bit in an 8-bit vector, detect when the input signal changes 
from 0 in one clock cycle to 1 the next (similar to positive edge detection). 
The output bit should be set the cycle after a 0 to 1 transition occurs.
*/

//solution:
module top_module (
    input clk,
    input [7:0] in,
    output [7:0] pedge
);
   
    integer i;
    reg [7:0] in_tmp;
    always @(posedge clk) begin
        for(i = 0; i < 8; i = i + 1) begin
            if(in_tmp[i] != in[i] && in[i] == 1) begin
                pedge[i] = 1;
            end
            else begin
                pedge[i] = 0;
            end
            in_tmp[i] = in[i];
        end
    end

endmodule
