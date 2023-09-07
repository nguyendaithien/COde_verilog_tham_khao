module testbench;
reg clk,load_en, reset_n,count_dec,count_inc;
reg [3:0] count_to;
wire flag_max,flag_min;

counter ct( clk,reset_n,load_en,count_dec,count_inc,count_to,flag_max,flag_min );
initial begin
    $dumpfile( " counter.vcd");
    $dumpvars(0,testbench);
end
initial begin 
    clk = 1'b0;
    reset_n = 1'b1;
    count_to = 4'b1111;
    count_dec = 1'b0;
    count_inc = 1'b0;
    #5 load_en = 1'b1;
    #5 load_en = 1'b0;
    reset_n = 1'b0;
     count_dec = 1'b0;
    count_inc = 1'b1;
end
always #5 clk = ~clk;
initial #200 $finish;
endmodule