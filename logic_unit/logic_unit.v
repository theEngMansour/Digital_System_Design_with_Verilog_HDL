`timescale 1ns / 1ps

module logic_unit
    (
        output reg [1:8] out    ,
        output reg       valid  ,
        input      [1:8] a  , b ,
        input      [1:3] select 
              
     );
     
    always @*
       case(select)
            3'b000 : begin 
                        out = a & b  ; 
                        valid = 1'b1 ;
                    
                     end            
            3'b100 : begin 
                        out = a | b  ; 
                        valid = 1'b1 ;
                    
                     end
            3'b010 : begin 
                        out = a ^ b  ; 
                        valid = 1'b1 ;
                    
                     end
            3'b001 : begin 
                        out = a ~^ b  ; 
                        valid = 1'b1 ;
                    
                     end
            3'b110 : begin 
                        out = a &~ b  ; 
                        valid = 1'b1 ;
                    
                     end

             default : begin 
                        out =   1'b0  ; 
                        valid = 1'b0  ;
                    
                     end

                     
        endcase
endmodule
