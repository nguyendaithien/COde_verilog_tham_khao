module nhan;
reg [3:0]a,b;
reg [7:0]result;
initial begin 
    a = 4'b0011;
    b = 4'b0100;
    result = multi( a, b);
    $monitor( $time, " result:  %d", result);
end
function [7:0] multi( input [3:0]a, input [3:0]b);
    multi = a * b;
endfunction
endmodule