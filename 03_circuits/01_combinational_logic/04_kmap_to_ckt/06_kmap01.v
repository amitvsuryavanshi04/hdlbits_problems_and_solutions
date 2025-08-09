/*
Question:
Implement described the Karnaugh map below. 
                 x1,x2
            01   00   10   11
          +----+----+----+----+
x3,x4  00| d  | 0  | d  | d  |
          +----+----+----+----+
       01| 0  | d  | 1  | 0  |
          +----+----+----+----+
       11| 1  | 1  | d  | d  |
          +----+----+----+----+
       10| 1  | 1  | 0  | d  |
          +----+----+----+----+

    here the 'd' is the don't care term
*/

//solution
module top_module (
    input [4:1] x, 
    output f 
  );
  
  assign f = (x[3] & ~x[1]) | (~x[3] & x[1] & x[2]);

endmodule