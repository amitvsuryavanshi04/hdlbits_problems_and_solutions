/*
Question:
Implement the circuit described by the Karnaugh map below. 
               ab
        01   00   10   11
      +----+----+----+----+
cd 00| 0  | 1  | 0  | 1  |
      +----+----+----+----+
   01| 1  | 0  | 1  | 0  |
      +----+----+----+----+
   11| 0  | 1  | 0  | 1  |
      +----+----+----+----+
   10| 1  | 0  | 1  | 0  |
      +----+----+----+----+

*/

//solution
module top_module(
    input a,
    input b,
    input c,
    input d,
    output out  
    ); 
    
    assign out = (~a&b&~c&~d) | (a&~b&~c&~d) | (~a&~b&~c&d) |  (a&b&~c&d) |  (~a&b&c&d) |  (a&~b&c&d) |  (~a&~b&c&~d) |  (a&b&c&~d);

endmodule