`timescale 1ns / 1ps

module mux
    (
        output out ,
        input a      ,
              b      , 
              select 
     );
     wire     w1 ,
              w2 ,
              w3 ;
      and an1 ( w1 , a , select);
      and an2 ( w2 , b , select); 
      or  o1  ( out , w1 , w2 );
      not inv ( w3 , select);
      

endmodule

// Test Banch


`timescale 1ns / 1ps

module test();
    wire out ;
    reg  a , b , select ;
    
    mux m1 ( out , a, b , select);
    
    initial 
        begin 
            a = 1'b1 ;
            b = 1'b0 ;
            select = 1'b1 ;
            #10;
              a = 1'b0 ;
              b = 1'b1 ;
              select = 1'b0 ;
            #10;
            $finish;
        end    
endmodule
