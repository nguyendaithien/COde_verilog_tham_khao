 
module testbench();
reg s0,s1;
reg [1:0]in1, in2, in3, in4;
wire [1:0]out;

mux41 mux(in1,in2,in3,in4,out,s0,s1);

initial begin 
    $dumpfile("mux4x1_dataflow.vcd");
    $dumpvars( 0, testbench);
end
initial begin 
    
    in1 = 2'b00;
    in2 = 2'b01;
    in3 = 2'b10;
    in4 = 2'b11;
    #5 
    s0 = 1'b0;
    s1 = 1'b0;
     #5 
    s0 = 1'b0;
    s1 = 1'b1;
     #5 
    s0 = 1'b1;
    s1 = 1'b0;
    #5 
    s0 <= 1'b1;
    s1 <= 1'b1;
    s0<= # 5 1'b1;
    s1<= #5 1'b0;

end
initial begin 
    $monitor( $time, " out  = %b " , out);
end
endmodule
    
    
