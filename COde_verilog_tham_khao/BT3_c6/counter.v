module counter(J,K,clear,clk,q);
input J,K,clear,clk;
output q;
wire a,y,c,qbar,d,ybar,b,cbar;
assign cbar = ~clk,
        a = ~(J & clk & qbar),
        y = ~(a & ybar ),
        c = ~(y & qbar),
        b = ~(K & clk & q),
        ybar = ~(b & clear & y),
        d = ~(ybar & cbar),
        qbar = ~(q & d & clear),
        q = ~(c & qbar);

endmodule