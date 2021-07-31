`timescale 1ns / 1ps

module multiplier
     (
        output  [1:4] out ,
        input   [1:4] x,y     
                             
     );
    
     assign out =  x * y ;
      
endmodule

