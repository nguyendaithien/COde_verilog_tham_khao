`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/01/2022 06:49:20 PM
// Design Name: 
// Module Name: counter
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


module counter(clk,rst,counter);
input clk,rst;
output reg [3:0] counter;

parameter set_number = 4'd15;

always @ (posedge clk or posedge rst)
begin
if (rst)
begin
    counter <= 4'd0;
end
else
begin 
    if (counter == set_number)
    begin
        counter <= 4'd0;
    end
    else
    begin
        counter <= counter +1;
    end
    
end
end
endmodule
