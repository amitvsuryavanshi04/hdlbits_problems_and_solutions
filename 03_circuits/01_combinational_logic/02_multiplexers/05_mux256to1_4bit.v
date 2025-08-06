/*
Question:
Create a 4-bit wide, 256-to-1 multiplexer. The 256 4-bit inputs are all
packed into a single 1024-bit input vector.
sel=0 should select bits in[3:0], sel=1 selects bits in[7:4], sel=2 
selects bits in[11:8], etc. 
*/

//solution
module top_module( 
    input [1023:0] in,
    input [7:0] sel,
    output [3:0] out );

    //way - 01
    always @(*) begin
        case (sel)
            : 
            default: 
        endcase
    end
    
    // //---------------------------------------------//
    // //way - 02 
    //   integer range;
    // wire [7:0]con1; 
    // always @ (*) begin
    //     range = sel;
    // 	//max_lim = sel;
    //     //min_lim = ;
    //     //con1 = sel+sel+sel+sel; 
    //     out  = in[sel*4 +:4]; //vector[LSB+:width]
    end
endmodule
