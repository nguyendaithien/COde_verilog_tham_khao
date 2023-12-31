module count_down(
	 input clk
	,input reset_n
	,input stop_count_t
	,input en_count_t
        ,input [7:0]mode_count_t
	,input start_count_t
	,output flag_sec_equal_zero_t
	,output [7:0] second
	,output [1:0] minute
	);

reg flag_sec_equal_zero_t;
reg [7:0]cnt;
reg [7:0]count_max;
reg [1:0]minute;
reg [7:0]second;
always @( posedge clk )begin
	if( en_count_t & ~start_count_t)
		cnt <= mode_count_t;
end
always @( posedge clk or negedge reset_n or posedge start_count_t or posedge stop_count_t ) begin
	if( ~reset_n )begin
		cnt <= 8'd0;
		count_max <= 8'd0;
	end
	else begin 
		if( stop_count_t ) begin
			cnt <= 8'd0;
			count_max <= 8'd0;
		end
		if( start_count_t ) begin
			cnt <= (cnt == 8'd0)? cnt : cnt - 8'd1;
		end
	end
end

always @( posedge clk ) begin
	flag_sec_equal_zero_t <= (cnt == 8'd0);
end
/// caculate minute and second
always @( cnt ) begin
	if( cnt == 8'd180 ) begin
			minute = 2'd3;
		       	second = 8'd0;
		end
	else begin 
		if( cnt >= 8'd120 && cnt <=8'd179) begin
			minute = 2'd2;
			second = cnt - 120;
		end
		else begin
		if( cnt >= 8'd60 && cnt <= 8'd119) begin
			minute = 2'd1;
			second = cnt - 60;
		end
		else begin
		if( cnt >= 8'd0 && cnt <= 8'd59) begin
			minute = 2'd0;
			second = cnt;
		end
		end
		end
	end
end





endmodule

			

