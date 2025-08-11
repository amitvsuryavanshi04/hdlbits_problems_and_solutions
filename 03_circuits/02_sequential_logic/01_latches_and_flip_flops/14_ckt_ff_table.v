/*
Question:
A JK flip-flop has the below truth table.
Implement a JK flip-flop with only a D-type flip-flop and gates.
Note: Qold is the output of the D flip-flop before the positive clock edge
J	K	| Q
0	0	| Qold
0	1	|  0
1	0	|  1
1	1	| ~Qold
*/

//solution:
module top_module(
    input clk,j,k,
    output Q
);

    always @(posedge clk ) begin
        case ({j,k})
            2'b00 : Q <= Q;
            2'b01 : Q <= 0;
            2'b10 : Q <= 1;
            2'b11 : Q <= ~Q; 
            default: Q <= 0;
        endcase
    end

endmodule