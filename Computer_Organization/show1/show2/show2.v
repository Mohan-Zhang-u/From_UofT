module show2(HEX0, SW);
    input [9:0] SW;
    output [6:0] HEX0;

    hexall u0(
        .r(SW[0]),
        .e(SW[1]),
	.w(SW[2]),
	.q(SW[3]),
        .h0(HEX0[0]),
        .h1(HEX0[1]),
        .h2(HEX0[2]),
        .h3(HEX0[3]),
        .h4(HEX0[4]),
        .h5(HEX0[5]),
        .h6(HEX0[6])
        );

endmodule

module hex0(q,w,e,r,m);
    input q,w,e,r;
    output m;
    assign m = ((~q)&(~w)&(~e)&(r)) | ((~q)&(w)&(~e)&(~r)) | ((q)&(w)&(~e)&(r)) | ((q)&(~w)&(e)&(r));

endmodule

module hex1(q,w,e,r,m);
    input q,w,e,r;
    output m;
    assign m = ((~q)&(w)&(~e)&(r)) | ((q)&(w)&(~r)) | ((q)&(e)&(r)) | ((w)&(e)&(~r));

endmodule

module hex2(q,w,e,r,m);
    input q,w,e,r;
    output m;
    assign m = ((q)&(w)&(~r)) | ((q)&(w)&(e)) | ((~q)&(~w)&(e)&(~r));

endmodule

module hex3(q,w,e,r,m);
    input q,w,e,r;
    output m;
    assign m = ((~q)&(w)&(~e)&(~r)) | ((~q)&(~w)&(~e)&(r)) | ((w)&(e)&(r)) | ((q)&(~w)&(e)&(~r));

endmodule

module hex4(q,w,e,r,m);
    input q,w,e,r;
    output m;
    assign m = ((~q)&(r)) | ((~w)&(~e)&(r)) | ((~q)&(w)&(~e));

endmodule

module hex5(q,w,e,r,m);
    input q,w,e,r;
    output m;
    assign m = ((q)&(w)&(~e)&(r)) | ((~q)&(e)&(r)) | ((~q)&(~w)&(e)) | ((~q)&(~w)&(r));

endmodule

module hex6(q,w,e,r,m);
    input q,w,e,r;
    output m;
    assign m = ((q)&(w)&(~e)&(~r)) | ((~q)&(w)&(e)&(r)) | ((~q)&(~w)&(~e));

endmodule

module hexall(q,w,e,r,h0,h1,h2,h3,h4,h5,h6);
    input q,w,e,r;
    output h0,h1,h2,h3,h4,h5,h6;
    hex0 hex00(q,w,e,r,h0);
    hex1 hex01(q,w,e,r,h1);
    hex2 hex02(q,w,e,r,h2);
    hex3 hex03(q,w,e,r,h3);
    hex4 hex04(q,w,e,r,h4);
    hex5 hex05(q,w,e,r,h5);
    hex6 hex06(q,w,e,r,h6);

endmodule

