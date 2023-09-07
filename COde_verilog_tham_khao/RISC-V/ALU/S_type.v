module S_type_ALU( address , instr_code , result);
    input [31:0] address;
    input [31:0] instr_code;
    output [3:0]result;
    reg [3:0]result;
    
always @(instr_code or address) 
begin 
    case( instr_code[14:12]) 
        3'b000: result = (4'b0001) << address[1:0];
        3'b001: result = (4'b0011) << address[1:0];
        3'b010: result = 4'b1111;
    endcase
end
endmodule