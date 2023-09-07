`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/01/2022 07:52:56 PM
// Design Name: 
// Module Name: counter_led_7
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


module counter_led_7(enable,clk,rst,led_unit,led_ten);
input enable,clk,rst;
output [6:0] led_unit;
output [6:0] led_ten;

wire [3:0] cnt;
wire [3:0] t,u;
counter cnt1 (.clk(clk),
              .rst(rst),
              .counter(cnt));
       
extrac_bit ex1 (.number(cnt),
                .ten_o(t),
                .unit_o(u));
           
led_ten_7_seg l1 (.en(enable),
                  .ten_i(t),
                  .led_7_seg(led_ten));
     
led_unit_7_seg l2 (.en(enable),
                   .unit_i(u),
                   .led_7_seg(led_unit));

endmodule
