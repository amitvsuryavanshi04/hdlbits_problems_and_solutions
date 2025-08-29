/*
Question:
This is a Moore state machine with two states, one input, and one output. 
Implement this state machine. Notice that the reset state is B.
This exercise is the same as fsm1s, but using asynchronous reset.

diagram :-https://hdlbits.01xz.net/wiki/Fsm1 
*/

//solution:
module top_module(
    input clk,
    input areset,    // Asynchronous reset to state B
    input in,
    output out
  );

    parameter A=0, B=1; 
    reg state, next_state;

    always @(*) begin    // This is a combinational always block
        // State transition logic
        case(state)
            A : next_state = (in == 1) ? A : B;
            B : next_state = (in == 1) ? B : A;
        endcase
    end

    always @(posedge clk, posedge areset) begin    // This is a sequential always block
        // State flip-flops with asynchronous reset
        if(areset) state <= B;
        else state <= next_state;
    end

    // Output logic
    assign out = (state == B);

endmodule