module testbench();
reg [3:0]a,b;
wire a_gt_b,a_lt_b,a_eq_b;

top top_0(a,b,a_gt_b,a_lt_b,a_eq_b);


initial begin
    a = 4'b1010;
    b = 4'b0011;
end
initial 

$monitor( $time , " a_gt_b = %d , a_lt_b = %d , a_eq_b = %d " , a_gt_b,a_lt_b,a_eq_b   );


endmodule 

