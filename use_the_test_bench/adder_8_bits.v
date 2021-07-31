`timescale 1ns / 1ps

module adder_8_bits(
    output [7:0] sum,
    output ovf,
    input [7:0] x, y
    );
    
    assign {ovf, sum} = x + y;
    
endmodule
