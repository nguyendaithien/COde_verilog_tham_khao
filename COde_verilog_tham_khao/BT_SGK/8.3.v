module ALU;
reg [3:0]A,B;
reg [4:0]result;
reg [2:0]control;



initial begin 
    A = 4'b0100;
    B = 4'b0011;
    control = 3'b000;
end
always begin 
    result = caculate( A,B,control);
    #5 control = control + 1;
    
end
initial #40 $finish;
initial $monitor( $time, " result = %d ", result);
function [4:0]caculate;
input [3:0]a,b;
input [2:0]controller;
begin
case(controller)  
    3'b000: caculate = a*b;
    3'b001: caculate = a + b;
    3'b010: caculate = a - b;
    3'b011: caculate = a/b;
    3'b100: caculate = a%b;
    3'b101: caculate = a<<1;
    3'b110: caculate = a>>1;
    3'b111: caculate = (a>b)? 1'b1:1'b0;

endcase
end
endfunction
endmodule