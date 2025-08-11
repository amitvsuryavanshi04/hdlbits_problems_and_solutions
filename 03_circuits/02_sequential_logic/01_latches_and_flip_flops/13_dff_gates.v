/*
Question:
Diagram: https://hdlbits.01xz.net/wiki/Exams/ece241_2014_q4
Given the finite state machine circuit as shown, assume that the 
D flip-flops are initially reset to zero before the machine begins.
Build this circuit. 
*/

//solution:
module top_module (
    input clk,
    input x,
    output z
); 
    
    reg [2:0]	Q;
    always@(posedge clk)begin
        Q[0] <= Q[0] ^ x;
        Q[1] <= ~Q[1] & x;
        Q[2] <= ~Q[2] | x;
    end
    
    assign z = ~(| Q);
 
endmodule