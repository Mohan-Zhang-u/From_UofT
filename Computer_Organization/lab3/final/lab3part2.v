module lab3part2(SW, KEY, LEDR, HEX0, HEX1, HEX2, HEX3, HEX4, HEX5);
	input [9:0] SW;
	input [3:0] KEY;
	output [9:0] LEDR;
	output [6:0] HEX0;
	output [6:0] HEX1;
	output [6:0] HEX2;
	output [6:0] HEX3;
	output [6:0] HEX4;
	output [6:0] HEX5;
	wire [7:0] aluOut;
	wire [7:0] brOut;
	wire [7:0] previousValue;
	
	hex_decoder h0(	
		.a(SW[3]),
		.b(SW[2]),
		.c(SW[1]),
		.d(SW[0]),
		.out0(HEX0[0]),
		.out1(HEX0[1]),
		.out2(HEX0[2]),
		.out3(HEX0[3]),
		.out4(HEX0[4]),
		.out5(HEX0[5]),
		.out6(HEX0[6])
		);
	ALU alu(	
		.a(SW[3:0]),
		.b(brOut[3:0]),
		.out(aluOut[7:0]),
		.key(KEY[3:1])
		);
	eight_bit_register br8(
		.a(aluOut[7:0]),
		.out(brOut[7:0]),
		.reset(SW[9]),
		.clocks(KEY[0])
		);
	hex_decoder h5(	
		.a(brOut[7]),
		.b(brOut[6]),
		.c(brOut[5]),
		.d(brOut[4]),
		.out0(HEX5[0]),
		.out1(HEX5[1]),
		.out2(HEX5[2]),
		.out3(HEX5[3]),
		.out4(HEX5[4]),
		.out5(HEX5[5]),
		.out6(HEX5[6])
		);
	hex_decoder h4(	
		.a(brOut[3]),
		.b(brOut[2]),
		.c(brOut[1]),
		.d(brOut[0]),
		.out0(HEX4[0]),
		.out1(HEX4[1]),
		.out2(HEX4[2]),
		.out3(HEX4[3]),
		.out4(HEX4[4]),
		.out5(HEX4[5]),
		.out6(HEX4[6])
		);
	hex_decoder h3(	
		.a(1'b0),
		.b(1'b0),
		.c(1'b0),
		.d(1'b0),
		.out0(HEX3[0]),
		.out1(HEX3[1]),
		.out2(HEX3[2]),
		.out3(HEX3[3]),
		.out4(HEX3[4]),
		.out5(HEX3[5]),
		.out6(HEX3[6])
		);
	hex_decoder h2(	
		.a(1'b0),
		.b(1'b0),
		.c(1'b0),
		.d(1'b0),
		.out0(HEX2[0]),
		.out1(HEX2[1]),
		.out2(HEX2[2]),
		.out3(HEX2[3]),
		.out4(HEX2[4]),
		.out5(HEX2[5]),
		.out6(HEX2[6])
		);
	hex_decoder h1(	
		.a(1'b0),
		.b(1'b0),
		.c(1'b0),
		.d(1'b0),
		.out0(HEX1[0]),
		.out1(HEX1[1]),
		.out2(HEX1[2]),
		.out3(HEX1[3]),
		.out4(HEX1[4]),
		.out5(HEX1[5]),
		.out6(HEX1[6])
		);
	assign LEDR[7:0] = brOut[7:0];
endmodule

module ALU(a,b,out,key);
	input [3:0] a;
	input [3:0] b;
	input [3:1] key;
	output [7:0] out;
	wire [7:0] w;
	wire w1,w2,w3,w4,w5,w6,w7,w8,w9,w10;
	four_bit_FA f1(
      .out0(w[0]),
      .out1(w[1]),
      .out2(w[2]),
      .out3(w[3]),
      .b0(b[0]),
      .b1(b[1]),
      .b2(b[2]),
      .b3(b[3]),
      .a0(a[0]),
      .a1(a[1]),
      .a2(a[2]),
      .a3(a[3]),
      .in(1'b0),
      .cut(w1)
		);
	four_bit_FA f2(
      .out0(w[4]),
      .out1(w[5]),
      .out2(w[6]),
      .out3(w[7]),
      .b0(w3),
      .b1(w4),
      .b2(w5),
      .b3(w6),
      .a0(w7),
      .a1(w8),
      .a2(w9),
      .a3(w10),
      .in(w1),
      .cut(w2)
		);
	reg [7:0] Out;
	always @(*)
	begin
		case(key[3:1])
			3'b111: Out = w[7:0];				
			3'b110: Out = a + b; // a + b using '+' operator
			3'b101: Out = {a[3]|b[3], a[2]|b[2], a[1]|b[1], a[0]|b[0], a[3]^b[3], a[2]^b[2], a[1]^b[1], a[0]^b[0]};//comparator_4_bit COM(a_gt_b, a_lt_b, a_eq_b, a, b);
			3'b100: Out = {8'b0000000,|{a, b}};
			3'b011: Out = {8'b0000000,&{a, b}};
			3'b010: Out = b << a; //left shift B by A bit
         3'b001: Out = b >> a; // right shift A by B bit
         3'b000: Out = a * b; // A * b using *                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     
         default: Out = 8'b0000000;
		endcase
	end
	assign out = Out;
endmodule

module Register(in,out,reset,clocks);
	input in;//
	input reset,clocks;
	output reg out;//
	always @(posedge clocks, negedge reset) // Triggered every time clocks rises 
	begin
		if (reset== 1'b0) // when reset n is 0 (note this is tested on every rising clocks edge)
			out <= 0; // q is set to 0. Note that the assignment uses <=
		else // when reset n is not 0
			out <= in; // value of d passes through to output q
	end

endmodule 

module eight_bit_register(a,out, reset,clocks);
	input clocks,reset;
	input [7:0] a;
	output [7:0] out;
	wire c1, c2, c3;
	Register r0(
		.in(a[0]),
		.out(out[0]),
		.reset(reset),
		.clocks(clocks)
		);
	Register r1(
		.in(a[1]),
		.out(out[1]),
		.reset(reset),
		.clocks(clocks)
		);
	Register r2(
		.in(a[2]),
		.out(out[2]),
		.reset(reset),
		.clocks(clocks)
		);
	Register r3(
		.in(a[3]),
		.out(out[3]),
		.reset(reset),
		.clocks(clocks)
		);
	Register r4(
		.in(a[4]),
		.out(out[4]),
		.reset(reset),
		.clocks(clocks)
		);
	Register r5(
		.in(a[5]),
		.out(out[5]),
		.reset(reset),
		.clocks(clocks)
		);
	Register r6(
		.in(a[6]),
		.out(out[6]),
		.reset(reset),
		.clocks(clocks)
		);
	Register r7(
		.in(a[7]),
		.out(out[7]),
		.reset(reset),
		.clocks(clocks)
		);
endmodule

module hex_decoder(a,b,c,d,out0,out1,out2,out3,out4,out5,out6);
	input a,b,c,d;
	output out0,out1,out2,out3,out4,out5,out6;
	assign out0 = ~a&~b&~c&d | ~a&b&~c&~d | a&~b&c&d | a&b&~c&d;
	assign out1 = a&b&c | b&c&~d | a&c&d | a&b&~c&~d | ~a&b&~c&d;
	assign out2 = a&b&c | ~a&~b&c&~d | a&b&~c&~d;
	assign out3 = ~a&~b&~c&d | ~a&b&~c&~d | b&c&d | a&~b&c&~d;
	assign out4 = ~a&d | ~a&b&~c | ~b&~c&d;
	assign out5 = ~a&~b&d | ~a&~b&c | ~a&c&d | a&b&~c&d;
	assign out6 = ~a&~b&~c | ~a&b&c&d | a&b&~c&~d;
endmodule

module four_bit_FA(out0,out1,out2,out3,b0,b1,b2,b3,a0,a1,a2,a3,in,cut);
	input b0,b1,b2,b3,a0,a1,a2,a3,in;
	output out0,out1,out2,out3,cut;
	wire c1, c2, c3;
	fulladder FA1(
		.b(b0),
		.a(a0),
		.c(in),
		.out1(out0),
		.out2(c1)
		);
	fulladder FA2(
		.b(b1),
		.a(a1),
		.c(c1),
		.out1(out1),
		.out2(c2)
		);
	fulladder FA3(
		.b(b2),
		.a(a2),
		.c(c2),
		.out1(out2),
		.out2(c3)
		);
	fulladder FA4(
		.b(b3),
		.a(a3),
		.c(c3),
		.out1(out3),
		.out2(cut)
		);
endmodule

module fulladder(b,a,c,out1,out2);
	input b,a,c;
	output out1, out2;
	wire w0,w1;
	assign w0 = a^b;
	mux2to1 u0(
		.x(b),
		.y(c),
		.s(w0),
		.m(w1)
		);
	assign  out1 = w0^c;
	assign  out2 = w1;
endmodule

module mux2to1(x, y, s, m);
    input x; //selected when s is 0
    input y; //selected when s is 1
    input s; //select signal
    output m; //output
    assign m = s & y | ~s & x; // OR assign m = s ? y : x;
endmodule 