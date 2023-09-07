module ALU_B_type( input_A, input_B, instr_code, next_PC, immediate);

input [31:0] input_A,input_B,instr_code;
input [31:0] immediate;
output [31:0] next_PC;
reg [31:0]next_PC;
wire [31:0]temp_input_A, temp_input_B;
assign temp_input_A = input_A;
assign temp_input_B = input_B; 

always @(input_A or input_B or immediate or instr_code ) 
begin 
    case( instr_code[14:12]) 
        3'b000: next_PC = (input_A ==  input_B)?( next_PC + immediate ):(  next_PC + 4 );// beq
        3'b001: next_PC = (input_A !=  input_B)?( next_PC + immediate ):( next_PC + 4 );// bne
        3'b100: next_PC = (input_A < input_B)?( next_PC + immediate ):(next_PC + 4 );// ble
        3'b101: next_PC = (input_A >= input_B)?( next_PC + immediate ):(next_PC + 4 ); // bge
        3'b110: next_PC = (temp_input_A < temp_input_B)?( next_PC + immediate ):(next_PC + 4 );
        3'b111: next_PC = (input_A >= input_B)?( next_PC + immediate ):(next_PC + 4 );
    endcase
end
endmodule