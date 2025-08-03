/*
Quesiton:
Create a one-bit wide, 2-to-1 multiplexer.
 When sel=0, choose a. When sel=1, choose b
*/

//solution
module top_module( 
    input a, b, sel,
    output out ); 
    
    //using the conditional operator we can do 2:1 mux
    assign out = sel ? b : a;
endmodule
