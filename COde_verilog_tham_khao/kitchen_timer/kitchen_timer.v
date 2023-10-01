module kitchen_timer( clk, s2top, start, mode_1min, mode_2min, mode_3min, sec_count, min_count, max_sec, max_min, start_alarm, stop_alarm);
input clk;
input stop, start;
input mode_1min, mode_2min, mode_3min;
input [7:0]sec_count;
input [1:0]min_count;
output [7:0]max_sec;
output [1:0]max_min;
output start_alarm;
output stop_alarm;
reg [7:0]max_sec;
reg [1:0]max_min;
reg [2:0]state;
reg [2:0]next_state;
reg start_alarm;
reg stop_alarm;
parameter S0 = 4'd0;// mode idol
parameter S1 = 4'd1;// mkode 1 min
parameter S2 = 4'd2;// mode 2 min 
parameter S3 = 4'd3;// mode 3 
parameter S4 = 4'd4;// alarm 
parameter S5 = 4'd5; // stop

always @( stop ) begin 
	if ( stop ) begin 
		state <= S0;
	end
	else 
		next_state <= state;
end

always @( mode_1min or mode_2min or mode_3min ) begin
	if( mode_1min ) begin 
		next_state <= ( start == 1'b1) ? S1 : S0;
	end
	else begin 
		if ( mode_2min ) begin
			next_state <= ( start == 1'b1 ) ? S2 : S0;
		end
		else begin
			if( mode_3min) begin
				next_state <= ( start == 1'b1 ) ? S3 : S0;
			end2
		end
	end
end

always @( sec_count or min_count ) begin
	if( sec_count == 8'b0 ) begin 
		next_state <= S4;
	end
	if( stop ) begin
		next_state <= S5;
end


always @( state ) begin
	max_sec = 8'h0;
	max_min = 2'h0;
	start_alarm = 1'b0;
	stop_alarm = 1'b0;
	case( state )
		S0: ;
		S1: begin 
			max_sec = 8'h60;
		    	max_min = 2'h1;
			start_alarm = 1'b0;
			stop_alarm = 1'b0;
		end
		S2: begin
			max_sec = 8'h120;
			max_min = 2'h2;
			start_alarm = 1'b0;
			stop_alarm = 1'b0;
		end
		S3: begin 
			max_sec = 8'h180;
			max_min = 2'h3;
			start_alarm = 1'b0;
			stop_alarm = 1'b0;
		end
		S4: begin
			max_sec = 8'b0;
			max_min = 2'b0;
			start_alarm = 1'b1;
			stop_alarm = 1'b1;
		end
		S5: begin
			max_sec = 8'b0;
			max_min = 2'b0;
			start_alarm = 1'b0;
			stop_alarm = 1'b1;
		end
	endcase
end
endmodule




