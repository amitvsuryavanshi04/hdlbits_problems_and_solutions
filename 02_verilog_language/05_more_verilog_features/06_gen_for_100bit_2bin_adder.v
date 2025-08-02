/*
Quesiton:
Create a 100-bit binary ripple-carry adder by instantiating 100 full adders.
 The adder adds two 100-bit numbers and a carry-in to produce a 100-bit sum 
 and carry out. To encourage you to actually instantiate full adders, 
 also output the carry-out from each full adder in the ripple-carry adder.
  cout[99] is the final carry-out from the last full adder, and is the carry-out you usually see
*/

//solution
module full_add(input a,b,cin,output cout,sum);
    assign sum = a ^ b ^ cin;
    assign cout = (a & b)|(b & cin)|(cin & a);
endmodule
module top_module( 
    input [99:0] a, b,
    input cin,
    output [99:0] cout,
    output [99:0] sum );

	genvar gv; //must required while writing the generate block 
    full_add inst(a[0],b[0],cin,cout[0],sum[0]);

    //adding the generate for loop
    generate 
        for (gv = 1; gv < 100; gv = gv + 1) begin: full_add_block
            full_add inst(a[gv],b[gv],cout[gv-1],cout[gv],sum[gv]);
        end
    endgenerate
endmodule
