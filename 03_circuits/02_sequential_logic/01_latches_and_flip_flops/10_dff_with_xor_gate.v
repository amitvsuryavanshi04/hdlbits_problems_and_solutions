/*
Question:
Implement the following circuit: 
                    -----------------
    xor(d,in,q)---  - d             -
                    -               -
                    -            q- - -q output
                --- -> clk          -
                    -               -
                    -----------------
*/

//solution:

module top_module(
    input clk,in,
    output q
);
always @(posedge clk ) begin
    out <= out ^ in;
end

endmodule