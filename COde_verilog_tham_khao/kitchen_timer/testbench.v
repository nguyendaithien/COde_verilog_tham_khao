module test_bench();
	reg 		clk		;	
        reg 		reset_n		;	
        reg 		stop		;	
        reg 		start		;	
        reg 		mode_1min	;	
        reg 		mode_2min	;	
        reg 		mode_3min	;	
        wire 		alarm		;	
	wire 	[1:0]	minute		;	
	wire 	[7:0]	second		;

TOP kitchen_timer(
		   .clk		(clk		)	
                  ,.reset_n	(reset_n	)			
                  ,.stop	(stop		)	
                  ,.start	(start		)	
                  ,.mode_1min	(mode_1min	)	
                  ,.mode_2min	(mode_2min	)	
                  ,.mode_3min	(mode_3min	)	
                  ,.alarm	(alarm		)	
                  ,.minute	(minute		)	
                  ,.second	(second		)
		  );
initial begin
	$dumpfile ("kitchen_timer.VCD"	);
	$dumpvars (0,test_bench		);
end
always #5 clk = ~clk;

initial begin
	clk 		= 	0;
	reset_n 	= 	1;
	stop 		= 	0;
	start 		= 	0;
        mode_1min 	= 	0;	
        mode_2min 	= 	0;	
        mode_3min 	= 	0;	
end

initial begin
	#20 reset_n = 0;
	#10 reset_n = 1;
	#20 mode_2min = 1;
	#30 mode_2min = 0;
	#20 mode_1min = 1;
	#20 mode_1min = 0;
	#20 start = 1;
	#10 start = 0;
	#80 stop = 1;
	#10 stop = 0;
	#50 mode_3min = 1;
	#10 mode_3min = 0;
	#20 start = 1;
	#10 start = 0;
	#460 reset_n = 0;
	#10 reset_n = 1;
end
initial begin
	#240 stop = 1;
	#10 stop = 0;
end
initial begin
	#250 reset_n = 0;
	#10 reset_n = 1;
end
initial begin 
	#1000 $finish;
end
endmodule
