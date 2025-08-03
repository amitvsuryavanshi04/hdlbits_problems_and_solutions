/*
Question:
Create a half adder. A half adder adds two bits 
(with no carry-in) and produces a sum and carry-out. 
*/

//solution
module top_module( 
    input a, b,
    output cout, sum );
    
    //implement the boolean exp for sum and cout 
    //for the half adder
    assign sum = a ^ b;
    assign cout = a & b;
endmodule
