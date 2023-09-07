module tinhgiaithua( N , out);
input [3:0]N;
output [31:0]out;
reg [31:0] out;

integer i;
always @( N ) out <= giaithua(N);

function [31:0] giaithua( input [3:0] N) ; 
    for( i = N; i < 1 ; i = i-1) begin
        giaithua = giaithua * (i-1); 
end
endfunction
endmodule