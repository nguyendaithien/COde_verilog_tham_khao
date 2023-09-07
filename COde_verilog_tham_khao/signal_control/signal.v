
module signal_control( reset, clk , x, hw , cw );
input x;
input clk,reset;
output [1:0]hw,cw;
reg [1:0]hw,cw;
reg [3:0]state,next_state;
parameter S0 = 4'd0;
parameter S1 = 4'd1;
parameter S2 = 4'd2;
parameter S3 = 4'd3;
parameter S4 = 4'd4;
parameter true = 1'b1;
parameter false = 1'b0;
parameter red = 2'b00;
parameter yellow = 2'b01;
parameter green = 2'b10;

always @( posedge clk or posedge reset  ) begin 
    if( reset ) 
        begin 
            state <= S0;
        end
        else 
            next_state <= state;
end
always @( state or x  ) begin
    case ( state )
        S0: begin 
            if( x ) next_state = S1;
        else next_state = S0; 
        end
        S1:  
            next_state = S2;
        S2:  
            next_state = S3;
        S3 : begin 
            if( x ) next_state = S3;
            else next_state = S4;
        end
        S4: next_state = S0;
    endcase      
end
always @( state ) begin
    hw = green;
    cw = red;
    case( state ) 
        S0: ;
        S1: 
            hw = yellow;
        S2:  
            hw = red;
        
        S3:  begin
            hw = red;
            cw = green;
        end
        S4:  
            cw = yellow;  
    endcase
end
endmodule