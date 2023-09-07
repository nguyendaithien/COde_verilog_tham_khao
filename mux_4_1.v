module mux_41(in0,in1,in2,in3,out,s0,s1);
input [3:0]in0,in1, in2, in3;
input [3:0]s0,s1;
output  [3:0]out;
wire [3:0]a0, a1, a2, a3;
wire [3:0]inv0, inv1;

not not_0(inv0,s0);
not not_1(inv1,s1);
and and_0(a0,in0,inv1,inv0);
and and_1(a1,in1,inv0,s1);
and and_2(a2,s0,in2,in1);
and and_3(a3,in3,s1,s0);
or or_0(out,a0, a1,a2,a3);

endmodule 