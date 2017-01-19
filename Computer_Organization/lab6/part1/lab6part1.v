// Connect SW[3:0] to the data inputs, SW[8:4] to the address inputs, SW[9] to the Write
//Enable input and use KEY[0] as the clock input. Show the address on HEX5 and HEX4, the input data on
//HEX2 and the data output of the memory on HEX0.

module lab6part1 (SW, KEY, HEX0, HEX2, HEX4, HEX5);
	input [9:0] SW;
	input [3:0] KEY;
	output [6:0] HEX5;
	output [6:0] HEX4;
	output [6:0] HEX2;
	output [6:0] HEX0;
	wire [3:0] glo;
	
	
	ram32x4 r0(
		.address(SW[8:4]),
		.clock(KEY[0]),
		.data(SW[3:0]),
		.wren(SW[9]),
		.q(glo));


	hex hex0 (.a(glo[3]),.b(glo[2]),.c(glo[1]),.d(glo[0]), .h0(HEX0[0]),.h1(HEX0[1]),.h2(HEX0[2]),.h3(HEX0[3]),.h4(HEX0[4]),.h5(HEX0[5]),.h6(HEX0[6]));
	hex hex2 (.a(SW[3]),.b(SW[2]),.c(SW[1]),.d(SW[0]), .h0(HEX2[0]),.h1(HEX2[1]),.h2(HEX2[2]),.h3(HEX2[3]),.h4(HEX2[4]),.h5(HEX2[5]),.h6(HEX2[6]));

	hex hex4 (.a(SW[7]),.b(SW[6]),.c(SW[5]),.d(SW[4]), .h0(HEX4[0]),.h1(HEX4[1]),.h2(HEX4[2]),.h3(HEX4[3]),.h4(HEX4[4]),.h5(HEX4[5]),.h6(HEX4[6]));
	hex hex5 (.a(1'b0),.b(1'b0),.c(1'b0),.d(SW[8]), .h0(HEX5[0]),.h1(HEX5[1]),.h2(HEX5[2]),.h3(HEX5[3]),.h4(HEX5[4]),.h5(HEX5[5]),.h6(HEX5[6]));

endmodule

module ram32x4 (
	address,
	clock,
	data,
	wren,
	q);

	input	[4:0]  address;
	input	  clock;
	input	[3:0]  data;
	input	  wren;
	output	[3:0]  q;
`ifndef ALTERA_RESERVED_QIS
// synopsys translate_off
`endif
	tri1	  clock;
`ifndef ALTERA_RESERVED_QIS
// synopsys translate_on
`endif

	wire [3:0] sub_wire0;
	wire [3:0] q = sub_wire0[3:0];

	altsyncram	altsyncram_component (
				.address_a (address),
				.clock0 (clock),
				.data_a (data),
				.wren_a (wren),
				.q_a (sub_wire0),
				.aclr0 (1'b0),
				.aclr1 (1'b0),
				.address_b (1'b1),
				.addressstall_a (1'b0),
				.addressstall_b (1'b0),
				.byteena_a (1'b1),
				.byteena_b (1'b1),
				.clock1 (1'b1),
				.clocken0 (1'b1),
				.clocken1 (1'b1),
				.clocken2 (1'b1),
				.clocken3 (1'b1),
				.data_b (1'b1),
				.eccstatus (),
				.q_b (),
				.rden_a (1'b1),
				.rden_b (1'b1),
				.wren_b (1'b0));
	defparam
		altsyncram_component.clock_enable_input_a = "BYPASS",
		altsyncram_component.clock_enable_output_a = "BYPASS",
		altsyncram_component.intended_device_family = "Cyclone V",
		altsyncram_component.lpm_hint = "ENABLE_RUNTIME_MOD=NO",
		altsyncram_component.lpm_type = "altsyncram",
		altsyncram_component.numwords_a = 32,
		altsyncram_component.operation_mode = "SINGLE_PORT",
		altsyncram_component.outdata_aclr_a = "NONE",
		altsyncram_component.outdata_reg_a = "UNREGISTERED",
		altsyncram_component.power_up_uninitialized = "FALSE",
		altsyncram_component.read_during_write_mode_port_a = "NEW_DATA_NO_NBE_READ",
		altsyncram_component.widthad_a = 5,
		altsyncram_component.width_a = 4,
		altsyncram_component.width_byteena_a = 1;


endmodule

module hex (a,b,c,d, h0,h1,h2,h3,h4,h5,h6);
	input a,b,c,d;
	output h0,h1,h2,h3,h4,h5,h6;

	assign h0 = (~a & ~b & ~c & d) | (~a & b & ~c & ~d) | (a & ~b & c & d) | (a & b & ~c & d);
	assign h1 = (a & b & c) | (b & c & ~d) | (a & c & d) | (a & b & ~c & ~d) | (~a & b & ~c & d);
	assign h2 = (a & b & c) | (~a & ~b & c & ~d) | (a & b & ~c & ~d);
	assign h3 = (~a & ~b & ~c & d) | (~a & b & ~c & ~d) | (b & c & d) | (a & ~b & c & ~d);
	assign h4 = (~a & d) | (~a & b & ~c) | (~b & ~c & d);
	assign h5 = (~a & ~b & d) | (~a & ~b & c) | (~a & c & d) | (a & b & ~c & d);
	assign h6 = (~a & ~b & ~c) | (~a & b & c & d) | (a & b & ~c & ~d);

endmodule

