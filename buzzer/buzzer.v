`timescale 1ns / 1ps

module buzzer
    (
        output out ,
        input above_30_0 ,
              above_25_0 ,
              low_level_0,
              above_30_1 ,
              above_25_1 , 
              low_level_1,
              select     
     );
     wire     temp_bad_0 ,
              below_25_0 ,
              wake_up_0  ,
              temp_bad_1 ,
              below_25_1 ,
              wake_up_1  ;
              
     // Inverter 
     not inv_0 (below_25_0 , above_25_0);
     not inv_2 (below_25_1 , above_25_1);
     
     // OR
     or or_0a (temp_bad_0 , above_30_0 , below_25_0);
     or or_0b (wake_up_0  , temp_bad_0 , low_level_0);
     
     // OR
     or or_1a (temp_bad_1 , above_30_1 , below_25_1);
     or or_1b (wake_up_1  , temp_bad_1 , low_level_1);
     
     //Multiplexer 
     mux m1 (out , wake_up_0 , wake_up_1 , select);
endmodule

module mux 
    (
        output out ,
        input  wake_up_0 , wake_up_1 , select   
    );
    
    assign out = select ? wake_up_1 : wake_up_0 ;

endmodule