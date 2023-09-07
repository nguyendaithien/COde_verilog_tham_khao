module tinh_giai_thua;
reg [3:0] N;
reg [31:0] out;
parameter delay = 10;

initial begin 
    N = 4'b1000;
    #delay giaithua(N,out);
    $display($time, " giai thua la : %d", out);
end
task automatic giaithua;
    input [3:0]n;
    output [31:0]gt ;
    if(  n>=2 ) begin 
        giaithua(n-1,gt);
        gt = n * gt;
    end
    else gt = 1;
endtask
endmodule