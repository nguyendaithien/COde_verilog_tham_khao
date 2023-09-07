module testbench;
reg clk, clear;
wire reg [3:0] Q;

ripple_counter ct( Q,clk,clear);

initial begin
    clk = 1'b0;
    clear = 1'b1;

    #5 clk = ~clk;
    clear = 1'b0;
    #5 clk = ~clk;
     clear = 1'b0;
    #5 clk = ~clk;
     clear = 1'b0;
    #5 clk = ~clk;
     clear = 1'b0;
    #5 clk = ~clk;
     clear = 1'b0;
    #5 clk = ~clk;
     clear = 1'b0;
    #5 clk = ~clk;
     clear = 1'b0;
    #5 clk = ~clk;
     clear = 1'b0;
    #5 clk = ~clk;
     clear = 1'b0;
    #5 clk = ~clk;
     clear = 1'b0;
    #5 clk = ~clk;
     clear = 1'b0;
    #5 clk = ~clk;
     clear = 1'b0;
    #5 clk = ~clk;
     clear = 1'b0;
    #5 clk = ~clk;
     clear = 1'b0;
    #5 clk = ~clk;
     clear = 1'b0;
    #5 clk = ~clk;
     clear = 1'b0;
    #5 clk = ~clk;
     clear = 1'b0;
    #5 clk = ~clk;
     clear = 1'b0;
    #5 clk = ~clk;
     clear = 1'b0;
    #5 clk = ~clk;
     clear = 1'b0;
    #5 clk = ~clk;
     clear = 1'b0;
end
initial begin
    $monitor( $time , " counter = %b ", Q);
end
endmodule 
