module testbench();
reg [3:0] a,b;
wire [3:0] sum;
reg c_in;
wire c_out;

full_adder_4 full_add_4( a,b,c_in,c_out, sum);

initial begin
    #5 
    a = 4'b0011;
    b = 4'b0111; 
    c_in = 1'b0;
end
initial begin 
    $monitor( $time , " sum = %b" , sum); 
end
endmodule