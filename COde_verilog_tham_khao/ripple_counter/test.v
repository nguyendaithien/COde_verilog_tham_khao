module test_bench;
reg clk;
reg reset;
wire [3:0]out;

counter count(out,clk,reset );
initial  begin
    clk = 1'b0;
    reset = 1'b1;
end
    always #5 clk = ~clk;

initial begin 
    $monitor( $time, " clk  = %b , out = %d" , clk, out);
end
initial begin 
    #10 reset = 1'b0;
end
initial  
    #200 $finish;
endmodule