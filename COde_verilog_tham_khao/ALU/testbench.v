module testbench;
reg [3:0] operation;
reg [31:0]operand1,operand2;
wire 			[31:0]result;

alu ALU(.operand1(operand1),.operand2(operand2),.operation(operation));

initial begin 
    #5 operation = 4'b0000; operand1 = 32'b0111; operand2 = 32'b0011;
    #5 operation = 4'b0001; operand1 = 32'b0111; operand2 = 32'b0011;
end
initial #15 $finish;
endmodule


