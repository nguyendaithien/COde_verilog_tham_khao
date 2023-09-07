module parity;

reg [31:0] A;
reg flag_parity;
reg clock;
initial clock = 1'b0;
always #5 clock = ~clock;
initial begin 
    A = 32'd45;
end 
always @(posedge clock) begin 
    check_parity(A,flag_parity);
    $display(" flag = %b ", flag_parity);
end

initial #50 $finish;
task check_parity;
    input [31:0]a;
    output flag;
    begin
    repeat (3)@(posedge clock)  
        flag = ^a;
    end
endtask

endmodule