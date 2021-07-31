`timescale 1ns / 1ps

module adder
     (
        output  [1:4] sum ,
        output  over_flow ,
        input   [1:4] x,y ,
        input   c_0                      
     );
    
     
     assign { over_flow , sum } =  x+y ; 
      
endmodule

module adder_2
     (
        output  [1:8] sum ,
        output  over_flow ,
        input   [1:8] x,y ,
        input   c_0                      
     ); 
     wire w1 ; 
     
     adder bit_4_a (sum[1:4] , w1 , x[1:4] , y[1:4] , 1'b0);
     adder bit_4_b (sum[5:8] , over_flow , x[5:8] , y[5:8] , w1);
      
endmodule
