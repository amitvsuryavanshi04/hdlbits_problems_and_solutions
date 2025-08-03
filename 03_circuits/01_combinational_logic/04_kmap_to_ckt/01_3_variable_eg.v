/*
Question:
Implement the circuit described by the Karnaugh map below. 
         a
       0   1
     +---+---+
bc 00| 0 | 1 |
     +---+---+
   01| 1 | 1 |
     +---+---+
   11| 1 | 1 |
     +---+---+
   10| 1 | 1 |
     +---+---+

*/

//solution
//firstly we *need to solve the k-map to get an boolean expression.*
//which further can be implemented using the basic gates , 
//which intends gives the output as per the k-map 

/*solution to k-map
    a&(~b)&(~c)|c|b&(~c);
*/

//code solution
module top_module(
    input a,
    input b,
    input c,
    output out  ); 
    assign out = a&(~b)&(~c) | c | b&(~c);
endmodule
