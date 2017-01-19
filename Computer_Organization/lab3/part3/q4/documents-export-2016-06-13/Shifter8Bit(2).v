module top (load_val, load_n, shift, ASR, clk, reset_n, Q);
	input load_n, shift, ASR, clk, reset_n;
	input [7:0] load_val;
	output [7:0] Q;
	wire [7:0] data_to_dff;
	wire [7:0] out;
	wire [7:0] from1;
	wire [7:0] ii;
	wire [7:0] oo;
	wire [7:0] op;
	wire [7:0] oq;
	wire threeendo1;
	wire threeendo2;
	wire forasr;
	
	and(forasr,ASR,threeendo1);


	mux2to1 M71(
		.x(threeendo2),	
		.y(forasr),
		.s(shift),
		.m(from1[7])
	);

	mux2to1 M72(
		.x(load_val[7]),
		.y(from1[7]),
		.s(load_n),
		.m(data_to_dff[7])
	);

	flipflop F7(
		.D(data_to_dff[7]),
		.Q(ii[7]),
		.clock(clk),
		.reset(reset_n)
	);

	four_end fe7(
		.i(ii[7]),
		.o1(oo[7]),
		.o2(op[7]),
		.o3(oq[7])
	);
	
	three_end te7(
		.i(oo[7]),
		.o1(threeendo1),
		.o2(threeendo2)
	);

	assign out[7] = op[7];

	mux2to1 M61(
		.x(oo[6]),	
		.y(oq[7]),
		.s(shift),
		.m(from1[6])
	);

	mux2to1 M62(
		.x(load_val[6]),
		.y(from1[6]),
		.s(load_n),
		.m(data_to_dff[6])
	);

	flipflop F6(
		.D(data_to_dff[6]),
		.Q(ii[6]),
		.clock(clk),
		.reset(reset_n)
	);

	four_end fe6(
		.i(ii[6]),
		.o1(oo[6]),
		.o2(op[6]),
		.o3(oq[6])
	);

	assign out[6] = op[6];

	mux2to1 M51(
		.x(oo[5]),	
		.y(oq[6]),
		.s(shift),
		.m(from1[5])
	);

	mux2to1 M52(
		.x(load_val[5]),
		.y(from1[5]),
		.s(load_n),
		.m(data_to_dff[5])
	);

	flipflop F5(
		.D(data_to_dff[5]),
		.Q(ii[5]),
		.clock(clk),
		.reset(reset_n)
	);

	four_end fe5(
		.i(ii[5]),
		.o1(oo[5]),
		.o2(op[5]),
		.o3(oq[5])
	);

	assign out[5] = op[5];

	mux2to1 M41(
		.x(oo[4]),	
		.y(oq[5]),
		.s(shift),
		.m(from1[4])
	);

	mux2to1 M42(
		.x(load_val[4]),
		.y(from1[4]),
		.s(load_n),
		.m(data_to_dff[4])
	);

	flipflop F4(
		.D(data_to_dff[4]),
		.Q(ii[4]),
		.clock(clk),
		.reset(reset_n)
	);

	four_end fe4(
		.i(ii[4]),
		.o1(oo[4]),
		.o2(op[4]),
		.o3(oq[4])
	);

	assign out[4] = op[4];

	mux2to1 M31(
		.x(oo[3]),	
		.y(oq[4]),
		.s(shift),
		.m(from1[3])
	);

	mux2to1 M32(
		.x(load_val[3]),
		.y(from1[3]),
		.s(load_n),
		.m(data_to_dff[3])
	);

	flipflop F3(
		.D(data_to_dff[3]),
		.Q(ii[3]),
		.clock(clk),
		.reset(reset_n)
	);

	four_end fe3(
		.i(ii[3]),
		.o1(oo[3]),
		.o2(op[3]),
		.o3(oq[3])
	);

	assign out[3] = op[3];

	mux2to1 M21(
		.x(oo[2]),	
		.y(oq[3]),
		.s(shift),
		.m(from1[2])
	);

	mux2to1 M22(
		.x(load_val[2]),
		.y(from1[2]),
		.s(load_n),
		.m(data_to_dff[2])
	);

	flipflop F2(
		.D(data_to_dff[2]),
		.Q(ii[2]),
		.clock(clk),
		.reset(reset_n)
	);

	four_end fe2(
		.i(ii[2]),
		.o1(oo[2]),
		.o2(op[2]),
		.o3(oq[2])
	);

//	assign out[2] = op[2];

	mux2to1 M11(
		.x(oo[1]),	
		.y(oq[2]),
		.s(shift),
		.m(from1[1])
	);

	mux2to1 M12(
		.x(load_val[1]),
		.y(from1[1]),
		.s(load_n),
		.m(data_to_dff[1])
	);

	flipflop F1(
		.D(data_to_dff[1]),
		.Q(ii[1]),
		.clock(clk),
		.reset(reset_n)
	);

	four_end fe1(
		.i(ii[1]),
		.o1(oo[1]),
		.o2([op[1]),
		.o3(oq[1])
	);

	assign out[1] = op[1];

	mux2to1 M01(
		.x(oo[0]),	
		.y(oq[1]),
		.s(shift),
		.m(from1[0])
	);

	mux2to1 M02(
		.x(load_val[0]),
		.y(from1[0]),
		.s(load_n),
		.m(data_to_dff[0])
	);

	flipflop F0(
		.D(data_to_dff[0]),
		.Q(ii[0]),
		.clock(clk),
		.reset(reset_n)
	);

	three_end te2(
		.i(ii[0]),
		.o1(oo[0]),
		.o2(op[0])
	);

	assign out[0] = op[0];
	
	assign Q = out;
	
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

module flipflop (reset, clock, D, Q);
	input reset, clock;
	input D;
	output Q;
	reg Q; 
	always @(posedge clock)
	begin 
		if (reset == 1'b0)
			Q <= 1'b0;
		else
			Q <= D;
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
