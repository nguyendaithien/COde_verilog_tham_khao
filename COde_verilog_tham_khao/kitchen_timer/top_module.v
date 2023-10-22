module TOP(clk,reset_n,stop,start,mode_1min,mode_2min,mode_3min,alarm,minute,second);	
	input 		clk		;	
	input 		reset_n		;	
	input 		stop		;	
	input 		start		;	
	input 		mode_1min	;	
	input 		mode_2min	;	
	input 		mode_3min	;	
	output 		alarm		;	
	output  [1:0] 	minute		;	
	output  [7:0] 	second		;	
// connect FSM to count_down
wire en_count_w;
wire start_count_w;
wire stop_count_w;
wire [7:0]mode_count_w;
wire flag_sec_equal_zero_w;
/// 
// connect FSM to alarm
wire end_alarm_w;
wire start_alarm;
wire stop_alarm;
//

FSM fsm(
	 .clk                  (clk			)               
	,.reset_n              (reset_n			)	
	,.stop                 (stop_count_w		)
	,.start                (start			)
	,.mode_1min            (mode_1min		)	
	,.mode_2min            (mode_2min		)	
	,.mode_3min            (mode_3min		)	
	,.flag_sec_equal_zero  (flag_sec_equal_zero_w	)
	,.end_alarm            (end_alarm_w		)	
	,.start_falling        (start_falling_w		)	
	,.en_count             (en_count_w		)	
	,.mode_count           (mode_count_w		)	
	,.start_count          (start_count_w		)
	,.stop_count           (stop_count_w		)
	,.start_alarm          (start_alarm_w		)
	,.stop_alarm           (stop_alarm_w		)
	);
count_down cnt_down(
	 .clk			(clk			)
 	,.reset_n		(reset_n		)	 
	,.stop_count_t          (stop_count_w		)	
	,.en_count_t            (en_count_w		)	
        ,.mode_count_t          (mode_count_w		)	
	,.start_count_t         (start_count_w		)	
	,.flag_sec_equal_zero_t (flag_sec_equal_zero_w	)	
	,.second		(second			)	
	,.minute                (minute			)	
	);

alarm alarm_o(
	 .clk			(clk		)	
	,.reset_n		(reset_n	)
	,.start_alarm_t  	(start_alarm_w	)	
	,.stop_alarm_t   	(stop_alarm_w	)	
	,.alarm			(alarm		)	
	,.end_alarm_t    	(end_alarm_w	)	
	);
endmodule



