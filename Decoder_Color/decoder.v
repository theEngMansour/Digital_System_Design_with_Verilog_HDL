`timescale 1ns / 1ps

module ts_decoder
    (
        output  [1:4] out    ,
        input   [1:2] in              
     );
     
     assign out[1] = ~in[1] & ~in[2] ; /* RED */
     assign out[2] = ~in[1] &  in[2] ; /* yellow, */
     assign out[3] =  in[1] & ~in[2] ; /* green,, */
     assign out[4] =  in[1] &  in[2] ; /* White */
endmodule
