/*
Question:
Implement the following circuit: 
    -----------------
--- - d             -
    -               -
    -            q- - -q output
--- -> clk          -
    -               -
    -       ar      -
    -----------------
            |
            |
*/


//solution:
module top_module(
    input clk,d,ar,
    output q
);
    always @(posedge clk or posedge ar) begin
        if (ar) begin
            q <= 0;
        end else begin
            q <= d;
        end
    end

endmodule
