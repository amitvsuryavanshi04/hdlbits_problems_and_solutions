/*
Question:
Given four unsigned numbers, find the minimum.
Unsigned numbers can be compared with standard 
comparison operators (a < b). Use the conditional
operator to make two-way min circuits, then compose
a few of them to create a 4-way min circuit. 
You'll probably want some wire vectors for the intermediate results.

Expected solution length: Around 5 lines.
*/

//solution
module top_module (
    input [7:0] a, b, c, d,
    output [7:0] min);//

     wire [7:0] int1, int2;
    // assign intermediate_result1 = compare? true: false;
	assign int1 = (a<b)? a:b; 
    assign int2 = (int1<c)? int1:c;
    assign min  = (int2<d)? int2:d;
endmodule
