module check(A,B,OUT);
input [3:0]A,B;
output [3:0]OUT;

assign OUT = ~(A ^ B);

endmodule
module top( a,b,a_gt_b,a_lt_b,a_eq_b);
input [3:0]a,b;
output a_eq_b,a_gt_b,a_lt_b;
wire [3:0]c;
check check_0(a,b,c);
A_gt_B x(a,b,c,a_gt_b);
A_lt_B y(a,b,c,a_lt_b);
A_eq_B z(c,a_eq_b);

endmodule

module A_gt_B( a,b,c,out);
input [3:0]a,b,c;
output out;

assign out = (a[3]&~b[3])||(c[3]&a[2]&~b[2])||(c[3]&c[2]&a[1]&~b[1])|| (c[3]&c[2]&c[1]&a[0]&~b[0]);
endmodule 

module A_lt_B( a,b,c,out);
input [3:0]a,b,c;
output out;
assign out = (~a[3]&b[3])||(c[3]&~a[2]&b[2])||(c[3]&c[2]&~a[1]&b[1])|| (c[3]&c[2]&c[1]&~a[0]&b[0]);
endmodule 
module A_eq_B(c,out);
input [3:0]c;
output out;
and (out,c[3],c[2],c[1],c[0]);
endmodule