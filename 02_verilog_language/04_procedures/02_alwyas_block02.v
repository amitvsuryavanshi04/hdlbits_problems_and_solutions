/*
Question:
Build an XOR gate three ways, using an assign statement, a 
combinational always block, and a clocked always block. Note that the 
clocked always block produces a different circuit from the other two:
There is a flip-flop so the output is delayed. 
*/


//solutions
// synthesis verilog_input_version verilog_2001
module top_module(
    input clk,
    input a,
    input b,
    output wire out_assign,
    output reg out_always_comb,
    output reg out_always_ff   );
    
    //solution1 assign statement
    assign out_assign = a ^ b;
    
    //solution2 always comb block
    always @(*) begin 
        out_always_comb = = a ^ b;
    end
    
    //solution3 always ff block 
    always @(posedge clk) begin 
        out_always_ff = a ^ b;
    end
    
    

endmodule
