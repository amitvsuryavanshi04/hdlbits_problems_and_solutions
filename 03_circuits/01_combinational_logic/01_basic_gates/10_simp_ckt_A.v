/*
Question:
Module A is supposed to implement the function z = (x^y) & x.
Implement this module. 
*/


//solution

module top_module (input x, input y, output z);
    assign z = (x ^ y) & x;
endmodule
