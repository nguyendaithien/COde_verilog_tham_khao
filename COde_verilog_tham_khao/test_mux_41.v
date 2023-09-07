module test();
reg [3:0]in0,in1,in2,in3;
reg s0,s1;
wire [3:0]out;
wire [3:0]a0,a1,a2,a3;
wire inv0,inv1;
integer i;
mux_41 mux(.in0(in0),.in1(in1),.in2(in2),.in3(in3),.s0(s0),.s1(s1),.out(out));

initial begin 
   $dumpfile("mux41.vcd");
   $dumpvars(0,test);
end
initial begin
    s0 <= 0;
    s1 <= 0;
   
#5
    in0 = 4'b0001;
    s0 <= 0;
    s1 <= 0;
#5
    in1 = 4'b0001;
    s0 <= 0;
    s1 <= 1;
#5
    in2 = 4'b0011;
    s0 <= 1;
    s1 <= 0;
#5
    in3 = 4'b0111;
    s0 <= 1;
    s1 <= 1;
    #5 $finish;
end
endmodule