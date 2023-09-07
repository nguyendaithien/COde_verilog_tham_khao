`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/01/2022 07:08:39 PM
// Design Name: 
// Module Name: extrac_bit
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module extrac_bit(number,ten_o,unit_o);
input [3:0] number;
output reg [3:0] ten_o;
output reg [3:0] unit_o;

always @ (number)
begin
    ten_o <= number / 10;
    unit_o <= number % 10;
end

endmodule
