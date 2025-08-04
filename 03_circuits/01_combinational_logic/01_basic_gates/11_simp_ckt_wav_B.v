/*
Question:
The waveform is present in the folder, as image...
*/

module top_module ( input x, input y, output z );
    assign z = ~(x ^ y);// the waveform looked like xnor gate truth table 
endmodule
