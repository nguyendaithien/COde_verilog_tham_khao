module mux41( in1, in2, in3 ,in4 , out , s0, s1);
input [1:0]in1, in2, in3, in4;
output  [1:0]out;
input s0,s1;

assign out = s0? ( s1? in4 : in3  ) : ( s1? in2 : in1);
endmodule 