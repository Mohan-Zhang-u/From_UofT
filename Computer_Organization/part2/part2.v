module part2(LEDR, SW);
    input [9:0] SW;
    output [9:0] LEDR;

    mux4to1 u0(
        .u(SW[0]),
        .v(SW[1]),
	.w(SW[2]),
	.x(SW[3]),
        .s0(SW[8]),
	.s1(SW[9]),
        .m(LEDR[0])
        );

endmodule

module mux2to1(x, y, s, m);
    input x; //selected when s is 0
    input y; //selected when s is 1
    input s; //select signal
    output m; //output
  
    assign m = s & y | ~s & x;
    // OR
    // assign m = s ? y : x;

endmodule

module mux4to1(u,v,w,x,s0,s1,m);
    input u,v,w,x;
    input s0,s1;
    output m;
    wire u_or_v;
    wire w_or_x;

    mux2to1 mux2to11(u,v,s0,u_or_v);
    mux2to1 mux2to12(w,x,s0,w_or_x);
    mux2to1 mux2to13(u_or_v,w_or_x,s1,m);

endmodule
