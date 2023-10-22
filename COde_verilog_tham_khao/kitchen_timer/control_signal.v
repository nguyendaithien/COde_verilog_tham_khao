module FSM(
	 input         clk
	,input         reset_n
	,input         stop
	,input         start
	,input         mode_1min
	,input         mode_2min
	,input         mode_3min
	,input         flag_sec_equal_zero
	,input         end_alarm
	,output        start_falling
	,output        en_count
	,output [7:0]  mode_count
	,output        start_count
	,output        stop_count
	,output        start_alarm
	,output        stop_alarm
	);

parameter INITIAL = 2'b00;
parameter MODE_CONFIG = 2'b01;
parameter COUNTING = 2'b10;
parameter ALARM = 2'b11;

reg [1:0] current_state;
reg [1:0] next_state;
reg stop_alarm;
reg start_alarm;
reg [7:0] mode_alarm;
reg start_count;
reg stop_count;
reg d_ff;

assign en_count = mode_1min | mode_2min | mode_3min;
assign mode_count = (mode_1min)? 8'd60 : (mode_2min)? 8'd120 : (mode_3min)? 8'd180 : mode_count;

// detector falling 
always @( posedge clk or negedge reset_n) begin
	if( !reset_n)
		d_ff <= 1'b0;
	else
		d_ff <= start;
end
 assign start_falling = (~start)&&(d_ff^start);
////////////

always @( posedge clk or negedge reset_n or posedge stop ) begin
	if( ~reset_n ) begin
		current_state <= INITIAL;
	end
	if( stop ) begin
			current_state <= INITIAL;
	end
	else 
		current_state <= next_state;
end
always @( current_state ) begin
		start_count = 1'b0;
		start_alarm = 1'b0;
		stop_count = 1'b0;
		stop_alarm = 1'b0;
	case( current_state )
		INITIAL : ; 
		MODE_CONFIG : ; 
		COUNTING : begin 
		start_count = 1'b1;
		end
		ALARM : start_alarm = 1'b1;
	endcase
end
always @( * ) begin
	case( current_state )
		INITIAL :begin 
		if( en_count ) begin
			next_state = MODE_CONFIG;
		end
		else 
			next_state = INITIAL;
		end
		MODE_CONFIG :begin
	       	if( start_falling) begin
			next_state = COUNTING;
		end
			else
			       next_state = MODE_CONFIG;	
		end
		COUNTING : begin
			if( flag_sec_equal_zero) begin
				next_state = ALARM;
			end
			else
				next_state = COUNTING;
		end
		ALARM : begin
			if( end_alarm ) begin
				next_state = INITIAL;
			end
			else next_state = ALARM;
		end
	default: next_state = INITIAL;
	endcase
end		
endmodule

