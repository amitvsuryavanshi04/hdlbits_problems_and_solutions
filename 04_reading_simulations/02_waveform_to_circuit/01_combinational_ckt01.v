t //Waveform attached as '01_combinational_waveform01.'

module top_module(
    input [31:0] a,
    input [31:0] b,
    input sub,
    output [31:0] sum
);
	//An XOR gate can also be viewed as a programmable inverter, where one input controls whether
    //the other should be inverted. 
    
    wire w1;
    wire [31:0]xor_g;
    
    assign xor_g = {32{sub}}^b; 
    add16 adder1(a[15:0], xor_g[15:0], sub, sum[15:0], w1);
    add16 adder2(a[31:16], xor_g[31:16], w1, sum[31:16]);
endmodule
