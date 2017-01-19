module lab3part3 (SW, LEDR, KEY);
	input [9:0] SW;
	input [3:0] KEY;
	output [7:0] LEDR;
	wire [7:0] data_to_dff;
	wire [7:0] out;
	wire [7:0] from1;
	wire [7:0] ii;
	wire [7:0] oo;
	wire [7:0] op;
	wire [7:1] oLEDR;
	wire threeendo1;
	wire threeendo2;
	wire forKEY3;
	
	and(forKEY3,KEY[3],threeendo1);


	mux2to1 M71(
		.x(threeendo2),	
		.y(forKEY3),
		.s(KEY[2]),
		.m(from1[7])
	);

	mux2to1 M72(
		.x(SW[7]),
		.y(from1[7]),
		.s(KEY[1]),
		.m(data_to_dff[7])
	);

	flipflop F7(
		.D(data_to_dff[7]),
		.LEDDR(ii[7]),
		.clock(KEY[0]),
		.reset(SW[9])
	);

	four_end fe7(
		.i(ii[7]),
		.o1(oo[7]),
		.o2(op[7]),
		.o3(oLEDR[7])
	);
	
	three_end te7(
		.i(oo[7]),
		.o1(threeendo1),
		.o2(threeendo2)
	);

	assign out[7] = op[7];

	mux2to1 M61(
		.x(oo[6]),	
		.y(oLEDR[7]),
		.s(KEY[2]),
		.m(from1[6])
	);

	mux2to1 M62(
		.x(SW[6]),
		.y(from1[6]),
		.s(KEY[1]),
		.m(data_to_dff[6])
	);

	flipflop F6(
		.D(data_to_dff[6]),
		.LEDDR(ii[6]),
		.clock(KEY[0]),
		.reset(SW[9])
	);

	four_end fe6(
		.i(ii[6]),
		.o1(oo[6]),
		.o2(op[6]),
		.o3(oLEDR[6])
	);

	assign out[6] = op[6];

	mux2to1 M51(
		.x(oo[5]),	
		.y(oLEDR[6]),
		.s(KEY[2]),
		.m(from1[5])
	);

	mux2to1 M52(
		.x(SW[5]),
		.y(from1[5]),
		.s(KEY[1]),
		.m(data_to_dff[5])
	);

	flipflop F5(
		.D(data_to_dff[5]),
		.LEDDR(ii[5]),
		.clock(KEY[0]),
		.reset(SW[9])
	);

	four_end fe5(
		.i(ii[5]),
		.o1(oo[5]),
		.o2(op[5]),
		.o3(oLEDR[5])
	);

	assign out[5] = op[5];

	mux2to1 M41(
		.x(oo[4]),	
		.y(oLEDR[5]),
		.s(KEY[2]),
		.m(from1[4])
	);

	mux2to1 M42(
		.x(SW[4]),
		.y(from1[4]),
		.s(KEY[1]),
		.m(data_to_dff[4])
	);

	flipflop F4(
		.D(data_to_dff[4]),
		.LEDDR(ii[4]),
		.clock(KEY[0]),
		.reset(SW[9])
	);

	four_end fe4(
		.i(ii[4]),
		.o1(oo[4]),
		.o2(op[4]),
		.o3(oLEDR[4])
	);

	assign out[4] = op[4];

	mux2to1 M31(
		.x(oo[3]),	
		.y(oLEDR[4]),
		.s(KEY[2]),
		.m(from1[3])
	);

	mux2to1 M32(
		.x(SW[3]),
		.y(from1[3]),
		.s(KEY[1]),
		.m(data_to_dff[3])
	);

	flipflop F3(
		.D(data_to_dff[3]),
		.LEDDR(ii[3]),
		.clock(KEY[0]),
		.reset(SW[9])
	);

	four_end fe3(
		.i(ii[3]),
		.o1(oo[3]),
		.o2(op[3]),
		.o3(oLEDR[3])
	);

	assign out[3] = op[3];

	mux2to1 M21(
		.x(oo[2]),	
		.y(oLEDR[3]),
		.s(KEY[2]),
		.m(from1[2])
	);

	mux2to1 M22(
		.x(SW[2]),
		.y(from1[2]),
		.s(KEY[1]),
		.m(data_to_dff[2])
	);

	flipflop F2(
		.D(data_to_dff[2]),
		.LEDDR(ii[2]),
		.clock(KEY[0]),
		.reset(SW[9])
	);

	four_end fe2(
		.i(ii[2]),
		.o1(oo[2]),
		.o2(op[2]),
		.o3(oLEDR[2])
	);

	assign out[2] = op[2];

	mux2to1 M11(
		.x(oo[1]),	
		.y(oLEDR[2]),
		.s(KEY[2]),
		.m(from1[1])
	);

	mux2to1 M12(
		.x(SW[1]),
		.y(from1[1]),
		.s(KEY[1]),
		.m(data_to_dff[1])
	);

	flipflop F1(
		.D(data_to_dff[1]),
		.LEDDR(ii[1]),
		.clock(KEY[0]),
		.reset(SW[9])
	);

	four_end fe1(
		.i(ii[1]),
		.o1(oo[1]),
		.o2(op[1]),
		.o3(oLEDR[1])
	);

	assign out[1] = op[1];

	mux2to1 M01(
		.x(oo[0]),	
		.y(oLEDR[1]),
		.s(KEY[2]),
		.m(from1[0])
	);

	mux2to1 M02(
		.x(SW[0]),
		.y(from1[0]),
		.s(KEY[1]),
		.m(data_to_dff[0])
	);

	flipflop F0(
		.D(data_to_dff[0]),
		.LEDDR(ii[0]),
		.clock(KEY[0]),
		.reset(SW[9])
	);

	three_end te2(
		.i(ii[0]),
		.o1(oo[0]),
		.o2(op[0])
	);

	assign out[0] = op[0];
	
	assign LEDR = out;
	
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

module flipflop (reset, clock, D, LEDDR);
	input reset, clock;
	input D;
	output reg LEDDR; 
	always @(posedge clock, negedge reset)
	begin 
		if (reset == 1'b0)
			LEDDR <= 1'b0;
		else
			LEDDR <= D;
	end
endmodule

module three_end(i, o1, o2);
	input i;
	output o1,o2;
	assign o1 = i;
	assign o2 = i;
endmodule

module four_end(i, o1, o2, o3);
	input i;
	output o1,o2,o3;
	assign o1 = i;
	assign o2 = i;
	assign o3 = i;
endmodule
