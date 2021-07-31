`timescale 1ns / 1ps
/*

The following operators will shift a bus right or left a number of bits.
   << .... Left shift (i.e. a << 2 shifts a two bits to the left)
   <<< ... Left shift and fill with zeroes
   >> .... Right shift (i.e. b >> 1 shifts b one bits to the right)
   >>> ... Right shift and maintain sign bit
*/

module shift
     (
        output      reg [1:4]  a , b ,
        input           [1:4] x,y ,
        input           control    
        
        /*
            control = 1'b0  shift left  x and y
            control = 1'b1  shift right x and y
        */               
     );
    
     always @*
     
     if ( control == 1'b0)
            begin
                    assign a =  x << 2 ;
                    assign b =  y << 2 ;
            end
     else
            begin
                    assign a =  x >> 2 ;
                    assign b =  y >> 2 ;
            end           
    

      
endmodule

