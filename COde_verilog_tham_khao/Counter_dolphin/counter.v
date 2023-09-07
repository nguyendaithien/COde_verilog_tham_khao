module counter(clk,reset_n,load_en,count_dec,count_inc,count_to,flag_max,flag_min);
input clk;
input reset_n,count_dec, count_inc, load_en;
input [3:0]count_to;
output flag_max,flag_min;
reg flag_max,flag_min;
reg [3:0]counter, count_max;
reg [2:0] state, next_state; 
parameter S0 = 4'd0; // ko tang giam
parameter S1 = 4'd1;// tang
parameter S2 = 4'd2;// giam
parameter S3 = 4'd3;// max
parameter S4 = 4'd4;// min

always @( posedge clk or posedge reset_n ) begin 
    if( reset_n) begin 
        counter <= 4'd0;
        flag_max<=4'd0;
        flag_min<=4'd0;
    end
    else state <= next_state;
end

always @( state or count_dec or count_inc ) begin 
    case ( state )
            S0: begin 
                if( count_inc == 1'd1 & count_dec == 1'd0 ) next_state = S1;
                else begin 
                    if( count_dec == 1'd1 & count_inc == 1'd0 ) next_state = S2;
                else next_state = S0;
                end
            end
            S1: begin 
                next_state = (counter == count_max)? S3 : (( counter == 4'b0000)? S4: S0); 
                if( count_inc == 1'd1 & count_dec == 1'd0 ) next_state = S1;
                else begin 
                    if( count_dec == 1'd1 & count_inc == 1'd0 ) next_state = S2;
                else next_state = S0;
                end
            end
            S2: begin 
                next_state = (counter == count_max)? S3 : (( counter == 4'b0000)? S4: S0); 
                if( count_inc == 1'd1 & count_dec == 1'd0 ) next_state = S1;
                else begin 
                    if( count_dec == 1'd1 & count_inc == 1'd0 ) next_state = S2;
                else next_state = S0;
                end
            end
            S3: begin
                if( count_inc == 1'd1 & count_dec == 1'd0 ) next_state = S1;
                else begin 
                    if( count_dec == 1'd1 & count_inc == 1'd0 ) next_state = S2;
                else next_state = S0;
                end
            end
            S4:begin if( count_inc == 1'd1 & count_dec == 1'd0 ) next_state = S1;
                else begin 
                    if( count_dec == 1'd1 & count_inc == 1'd0 ) next_state = S2;
                else next_state = S0;
                end
            end
    endcase 
end
always @( state or count_dec or count_inc ) begin 
    state = S0;
case(state) 
        S0: ;
        S1: counter = counter + 1;
        S2: counter = counter - 1;
        S3: begin 
            counter = 4'b0000; flag_max = 1'b1;
        end
        S4: begin 
            counter = 4'b0000; flag_min = 1'b1;
        end

endcase
end
always @(posedge clk) begin 
        if(load_en) count_max <= count_to;
end
endmodule