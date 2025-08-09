/*
Question:
Implement described the Karnaugh map below. 
                 x1,x2
            01   00   10   11
          +----+----+----+----+
x3,x4  00| 1  | 0  | 0  | 1  |
          +----+----+----+----+
       01| 0  | 0  | 0  | 0  |
          +----+----+----+----+
       11| 1  | 1  | 1  | 0  |
          +----+----+----+----+
       10| 1  | 1  | 0  | 1  |
          +----+----+----+----+

    here the 'd' is the don't care term
*/

//solution
module top_module (
    input [4:1] x,
    output f
  ); 
    
  assign f = (x[3] & ~x[1]) | (x[2] & x[3] & x[4]) | (~x[4] & ~x[2]);

endmodule