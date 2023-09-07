module sub( x,y,z,D,B);
input x,y,z;
output D,B;

assign D=(~x&~y&z)||(~z&y~z)||(x&~y&~z)||(x&y&z);
assign B=(~x&y)||(~x&z)||(y&z); 
endmodule
