`timescale 1ns / 1ps

module adder
     (
        output  [1:4] add_sub ,
        output  over_under    ,
        input   [1:4] x,y     , 
        input   mode                               
     );
    
     assign { over_under , add_sub } =  mode ? x + y : x - y ; 
      
endmodule
