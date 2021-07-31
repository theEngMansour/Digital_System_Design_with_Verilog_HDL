`timescale 1ns / 1ps

module decodes
    (
        output  [1:8] out    ,
        input   [1:2] in              
     );
     
     assign out[1] = ~in[1] & ~in[2] & ~in[3] ; 
     assign out[2] = ~in[1] & ~in[2] &  in[3] ; 
     assign out[3] = ~in[1] &  in[2] & ~in[3] ; 
     assign out[4] = ~in[1] &  in[2] &  in[3] ; 
     assign out[5] =  in[1] & ~in[2] & ~in[3] ; 
     assign out[6] =  in[1] & ~in[2] &  in[3] ; 
     assign out[7] =  in[1] &  in[2] & ~in[3] ; 
     assign out[8] =  in[1] &  in[2] &  in[3] ; 

endmodule