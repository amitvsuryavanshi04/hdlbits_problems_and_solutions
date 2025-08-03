/*
Quesiton:
implement the following circuit
                __________
A ----------  |             |
                |               |
                |               |O--------out
                |               |
B ----------  |             |
                ___________
*/

//solution
module top_module(input A,B, output out);
assign out = ~(A | B); 
endmodule