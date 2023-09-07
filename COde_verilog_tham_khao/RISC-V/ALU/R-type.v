`timescale 1ns / 1ps
module ALU_R_type( input_A, input_B, result , ALU_control);
input[31:0] input_A, input_B;
input [31:0]instr_code;
output [31:0] result;
input [3:0] ALU_control;
reg [31:0]result;
wire [31:0]temp_input_A, temp_input_B;
assign temp_input_A = input_A;
assign temp_input_B = input_B;
always @( ALU_control ) begin 
    case ({instr_code[30], instr_code[14:12]})
    
        4'b0000: result = input_A + input_B;
        4'b1000: result = input_A - input_B;
        4'b0001: result = input_A << input_B[4:0]; // shift left logical
        4'b0010: result = input_A < input_B;// slt-shift left than
        4'b0011: result = temp_input_A < temp_input_B;
        4'b0100: result = input_A ^ input_B;
        4'b0101: result = input_A >> input_B[4:0];
        4'b1101: result = input_A >>> input_B[4:0];
        4'b0110: result = input_A | input_B;
        4'b0111: result = input_A & input_B;
    
    endcase 
end

endmodule