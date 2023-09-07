`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/01/2022 07:54:14 PM
// Design Name: 
// Module Name: led_unit_7_seg
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


module led_unit_7_seg(en,unit_i,led_7_seg);
input en;
input [3:0] unit_i;
output reg [6:0] led_7_seg;

always @ (*)
begin
if (en == 1'b0)
led_7_seg <= 7'b1111111;
else
begin
case (unit_i)
    4'd0 : led_7_seg <= 7'b0000001;
	4'd1 : led_7_seg <= 7'b1001111;
	4'd2 : led_7_seg <= 7'b0010010;
	4'd3 : led_7_seg <= 7'b0000110;
	4'd4 : led_7_seg <= 7'b1001100;
	4'd5 : led_7_seg <= 7'b0100100;
	4'd6 : led_7_seg <= 7'b0100000;
	4'd7 : led_7_seg <= 7'b0001111;
	4'd8 : led_7_seg <= 7'b0000000;
	default : led_7_seg <= 7'b0000100;
endcase
end
end
endmodule
