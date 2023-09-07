module array( clk, out);
input clk;
output out;
reg [3:0] array [3:0];
integer i;
always @(posedge clk )
begin 
    repeat ( 4 ) begin 
        array[i] = $random;
    end
end
endmodule