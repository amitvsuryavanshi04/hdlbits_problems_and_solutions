//question:
//build a decade counter that counts from 0 to 9 , inclusive both 0 and 9,
//with a period of 10 , the reset input is synchronous and should be reset the counter to 0 

//solution:
module top_module (
    input clk,reset,
    output [3:0] q
);

    always @(posedge clk) begin
        if (reset | q == 9) begin
            q <= 0;
        end else begin
            q <= q + 1'b1;
        end
    end
    
endmodule