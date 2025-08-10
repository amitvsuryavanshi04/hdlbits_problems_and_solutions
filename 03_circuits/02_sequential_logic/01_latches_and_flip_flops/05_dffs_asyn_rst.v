/*
Question:
Create 8 D flip-flops with active high asynchronous reset. 
All DFFs should be triggered by the positive edge of clk. 
*/

//solution:
module top_module(
    input clk,
    input areset,
    input [7:0] d,
    output [7:0] q,
);

    always @(posedge clk or posedge areset) begin
        if(areset)
            q <= 0;
        else
            q <= d;
    end
endmodule