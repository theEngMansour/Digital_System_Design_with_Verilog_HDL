`timescale 1ns  1ps

module mux_1
    (
        output reg out ,
        input a      ,
              b      , 
              select 
     );
     
    always @
        if (select)
            assign out = a;
        else
            assign out = b;

endmodule

module mux_2
    (
        output reg out ,
        input a      ,
              b      , 
              select 
     );
     
    always @
       out = select  a  b;

endmodule



module mux_3
    (
        output   out ,
        input a      ,
              b      , 
              select 
     );
     
    
      assign  out = select  a  b;

endmodule

module mux_4
    (
        output reg out ,
        input a        ,
              b        , 
              select 
     );
     
    
      always @()
        case (select)
              1'b0  out = a;
              1'b1  out = b;
        endcase

endmodule