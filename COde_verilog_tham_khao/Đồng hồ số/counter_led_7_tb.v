`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/01/2022 08:07:18 PM
// Design Name: 
// Module Name: counter_led_7_tb
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


module counter_led_7_tb();
reg enable,clk,rst;
wire [6:0] led_ten,led_unit;

counter_led_7 c1 (.enable(enable),
                  .clk(clk),
                  .rst(rst),
                  .led_unit(led_unit),
                  .led_ten(led_ten));
                  
initial 
begin
    rst = 1'b1;
    clk = 1'b0;
    enable = 1'b0;
    #10 rst = 1'b0;
    #5 enable = 1'b1;

end

always # 20 clk =~clk;

endmodule
