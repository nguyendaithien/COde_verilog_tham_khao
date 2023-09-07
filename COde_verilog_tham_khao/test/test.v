module Block;  
  reg [3:0] a, b, c, d, e;  
  initial begin
    a = 4'b0000;
    b = 4'b0011;
   // #10 a = 4'b1100;
    c = #20 a + b  ;
    $monitor( $time, " c  = %b " , c);
  end
initial begin 
    $monitor( $time, " c  = %b " , c);
end
endmodule 
