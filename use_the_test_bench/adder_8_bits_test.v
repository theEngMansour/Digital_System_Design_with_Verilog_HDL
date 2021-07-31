`timescale 1ns / 1ps

module test_adder();

    wire [1:8] sum  ;
    wire ovf        ;
    reg  [1:8] x, y ;
    
    task adder_task ;
         input [1:8] a , b ;
         begin 
             x = a;
             y = b;
            #10;
         end
    endtask
    
    adder_8_bits ma(sum , ovf , x , y);
    
    initial 
        begin 
            adder_task (8'b0 , 8'b0);
            adder_task (8'b1 , 8'b0);
            adder_task (8'b1 , 8'b1);
        end
    
    
endmodule

