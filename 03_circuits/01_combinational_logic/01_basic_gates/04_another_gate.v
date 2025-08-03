/*
Quesiton:
implement the following circuit
               -------------
in1 ----------|             |
              |               |
              |               |--------out
              |               |
in2 ---------O|             |
               --------------
*/

//solution

module top_module (
    input in1,
    input in2,
    output out);
    wire w1;
    assign w1 = ~in2;
    assign out = w1 & in1;
endmodule

