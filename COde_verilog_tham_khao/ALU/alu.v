module alu(
	operation,
	result,
	operand1,
	operand2);
	input 			operation,
					operand1,
					operand2;
	output 			result;

	reg[31:0]		result;
	wire[31:0]		operand1,
					operand2,
					shl_result,
					sum,
					diff,
					and_result,
					or_result,
					xor_result;
	wire[31:0]		shr_result,
					less_than,
					greater_than;
	wire[3:0]		operation;

	assign sum = operand1 + operand2;
	assign diff = operand1 - operand2;
	assign and_result = operand1 & operand2;
	assign or_result = operand1 | operand2;
	assign xor_result = operand1 ^ operand2;
	assign less_than = operand1 < operand2;
	assign greater_than = operand1 > operand2;

	left_barrel_shifter lshift(.result(shl_result),
		.in(operand1),
		.shift_amount(operand2[4:0]));

	right_barrel_shifter rshift(.result(shr_result),
		.in(operand1),
		.shift_amount(operand2[4:0]),
		.sign_extend(operation == 7));

	Result mux
	always @(operation, sum, diff, and_result, or_result,
		xor_result, shl_result, shr_result, less_than, greater_than)
	begin
		case (operation)	// synthesis full_case parallel_case
			0:	result = sum;			// Add
			1:	result = diff;			// Subtract
			2:	result = and_result;	// And
			3:	result = or_result;		// Or
			4:	result = xor_result;	// Xor
			5:	result = shl_result;	// SHL
			6:	result = shr_result;	// SHR
			7:	result = shr_result;	// SHRA
			8:	result = less_than;		// less than
			9:  result = greater_than;	// greater than
		endcase	
	end
endmodule