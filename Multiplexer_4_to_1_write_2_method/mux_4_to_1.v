module mux_4_to_1_5_bit
    (
        output reg [1:5] out  ,
        input      [1:5] a    ,
        input      [1:2] select 
              
     );
     
    always @*
        if      (select == 2'b00)
                    assign out = a[1];
        else if (select == 2'b01)
                    assign out = a[2];
        else if (select == 2'b10)
                    assign out = a[3];
        else if (select == 2'b11)
                    assign out = a[2];
endmodule


module mux_4_to_1_5_bit
    (
        output reg [1:5] out  ,
        input      [1:5] a    ,
        input      [1:2] select 
              
     );
     
    always @*
        case (select)
             2'b00 : out = a[1];   
             2'b01 : out = a[2];   
             2'b10 : out = a[3];   
             2'b11 : out = a[4];  
             
        endcase
endmodule