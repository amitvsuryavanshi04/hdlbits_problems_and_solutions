/*
Question:
Implement the circuit described by the Karnaugh map below. 
               ab
        00   01   11   10
      +----+----+----+----+
cd 00|  1 |  1 |  0 |  1 |
      +----+----+----+----+
   01|  1 |  0 |  0 |  1 |
      +----+----+----+----+
   11|  0 |  1 |  1 |  1 |
      +----+----+----+----+
   10|  1 |  1 |  0 |  0 |
      +----+----+----+----+
*/

/*
Solution to the k-map:
(c|!d|!b) & (!a|!b|c) & (a|b|!c|!d) & (!a|!c|d);
*/

//code solution
module top_module(
    input a,
    input b,
    input c,
    input d,
    output out  ); 
    assign out = (c | !d | !b) & (!a | !b | c) & (a| b | !c | !d) & (!a | !c |d);
endmodule
