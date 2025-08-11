/*
Question:
Implement the following circuit: 
    -----------------
--- - d             -
    -               -
    -            q- - -q output
--- -> clk          -
    -               -
    -       r      -
    -----------------
            |
            |
*/

//solution:
module top_module(
    input clk,d,r,
    output q
);
    always @(posedge clk ) begin
        if (r) begin //this block show the synchronous reset 
            q <= 0;
        end else begin
            q <= d;
        end
    end

endmodule