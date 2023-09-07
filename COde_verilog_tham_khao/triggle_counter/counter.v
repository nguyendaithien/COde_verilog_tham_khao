module D_FF( clk, reset_n, D, Q);
input clk,D, reset_n;
output  Q;
reg Q;

always @( posedge clk or posedge reset_n) begin
    if( reset_n) 
    Q <= 1'b0;
    else 
    Q <= D;
end
endmodule

module T_FF( clk, clear , q );
input clk,clear;
output q ;
wire d;

D_FF dff0( clk, clear, d , q);
not n1( d , q );

endmodule
 
module ripple_counter( out , clk, clear );
output [3:0] out ;
input clk, clear;

T_FF tff0( clk , clear , out[0] );
T_FF tff1( clk , clear , out[1] );
T_FF tff2( clk , clear , out[2] );
T_FF tff3( clk , clear , out[3] );


endmodule
