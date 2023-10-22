module alarm(
	 input clk
	,input reset_n
	,input start_alarm_t
	,input stop_alarm_t
	,output alarm
	,output end_alarm_t
	);

reg end_alarm_t;
reg alarm;
reg [3:0]time_alarm;

always @( negedge reset_n or posedge clk or posedge stop_alarm_t or posedge start_alarm_t) begin
	if( ~reset_n ) begin
		time_alarm <= 4'd0;
	end
	else begin 
		if( stop_alarm_t ) begin
		time_alarm <= 4'd0;
		end
	else begin
		if( start_alarm_t ) begin
			time_alarm <= (time_alarm == 4'd9)? 4'd0 : time_alarm + 4'd1;
		end
	end
end
end

always @( time_alarm ) begin
	alarm = 4'd0;
	case( time_alarm )
		4'd0: alarm = 1'b0;
		4'd1: alarm = 1'b1;
		4'd2: alarm = 1'b0;
		4'd3: alarm = 1'b1;
		4'd4: alarm = 1'b0;
		4'd5: alarm = 1'b1;
		4'd6: alarm = 1'b0;
		4'd7: alarm = 1'b1;
		4'd8: alarm = 1'b0;
		4'd9: alarm = 1'b1;

	endcase
end
always @( posedge clk ) begin
	end_alarm_t <= ( time_alarm == 4'd9);
end
endmodule


