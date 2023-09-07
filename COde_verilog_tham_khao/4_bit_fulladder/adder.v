module full_adder_1( a , b, c_in , c_out, sum);
input a , b ,c_in;
output c_out, sum;

wire s1,c1,s2;

xor (s1,a,b);
and (c1,a,b);
xor( sum, c_in, s1);
and ( s2, s1, c_in);
xor ( c_out, s2, c1);

endmodule 

module full_adder_4( a,b,c_in, c_out, sum);
input [3:0] a,b;
output [3:0] sum;
input c_in;
output c_out;
wire c1,c2,c3;

full_adder_1 fa0(a[0], b[0], c_in, c1, sum[0]);
full_adder_1 fa1( a[1], b[1], c1 , c2 , sum[1]);
full_adder_1 fa2( a[2], b[2], c2, c3 , sum[2]);
full_adder_1 fa3( a[3], b[3], c3, c_out , sum[3]);

endmodule 
