/*
Question:
Build an AND gate using both an assign statement and a combinational 
always block. (Since assign statements and combinational always blocks 
function identically, there is no way to enforce that you're using both 
methods.
always block 01 */


//solution

// synthesis verilog_input_version verilog_2001
module top_module(
    input a, 
    input b,
    output wire out_assign,
    output reg out_alwaysblock
);
    
    assign out_assign = a & b; //combination block
    always @(a,b) begin 
        out_alwaysblock = a & b; //always block 
    end
    

endmodule
