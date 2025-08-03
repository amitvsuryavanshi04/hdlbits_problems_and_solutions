/*
Question:
Implement the circuit described by the Karnaugh map below. 
               ab
        01   00   10   11
      +----+----+----+----+
cd 00| d  | 0  | 1  | 1  |
      +----+----+----+----+
   01| 0  | 0  | d  | d  |
      +----+----+----+----+
   11| 0  | 1  | 1  | 1  |
      +----+----+----+----+
   10| 0  | 1  | 1  | 1  |
      +----+----+----+----+
here d can create confusion so replace the d value the d bit value in the sequence 
like if cd = 00 , then d is '0' and so on....
*/

/*
Solution:
    above one looks like this in the form of eqaution
    a|(~a&~b&c);
*/


//code solution
module top_module(
    input a,
    input b,
    input c,
    input d,
    output out  ); 
	
    assign out = a|(~a&~b&c);
endmodule