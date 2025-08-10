/*
Question:
implement the below circuit
    -----------------
--- - d             -
    -               -
    -            q- - -q output
--- - ena           -
    -               -
    -----------------
*/

//solution:
module top_module(
    input d,
    input ena,
    output q
);
    always @(d,ena) begin
        if(ena)
        q <= d;
    end
endmodule