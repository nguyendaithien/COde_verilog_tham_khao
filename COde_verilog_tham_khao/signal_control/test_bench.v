module test_bench();
reg clk,reset;
reg x;
wire [1:0]hw,cw;

signal_control test(reset, clk, x, hw, cw );
initial begin 
        $dumpfile( "signal_control.vcd");
        $dumpvars( 0,test_bench); 
end
initial begin 
    $monitor( $time , " signal: Hight way: %d , Country way: %d", hw,cw);
end
initial begin
    clk = 1'b1;
    reset = 1'b1;
    x = 1'b0;
    #10 reset = 1'b0;
    #10 x = 1'b1;
end
always #5 clk = ~clk;

initial #50 $finish;
endmodule