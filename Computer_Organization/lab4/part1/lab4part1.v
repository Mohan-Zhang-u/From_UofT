// Asynchronous counter using Verilog
module lab4part1(SW, KEY, HEX0, HEX1);
	input [9:0] SW;
	input [3:0] KEY;
	output [6:0] HEX0;
	output [6:0] HEX1;
	wire [7:0] to;

	counter c1(.data(SW[1]), .reset(SW[0]), .clock(KEY[0]), .count(to));
	hex_decoder h0(.a(to[3]),.b(to[2]),.c(to[1]),.d(to[0]),
					.out0(HEX0[0]),.out1(HEX0[1]),.out2(HEX0[2]),.out3(HEX0[3]), .out4(HEX0[4]),.out5(HEX0[5]),.out6(HEX0[6]));
	hex_decoder h1(.a(to[7]),.b(to[6]),.c(to[5]),.d(to[4]),
					.out0(HEX1[0]),.out1(HEX1[1]),.out2(HEX1[2]),.out3(HEX1[3]), .out4(HEX1[4]),.out5(HEX1[5]),.out6(HEX1[6]));

endmodule




module counter( data, clock, reset, count);
	input data, clock, reset;
	output [7:0] count;

	reg[7:0] count;
	always @ ( posedge clock, negedge reset)
	if(~reset) 
		begin
			count <= 1'b0;
		end
	else if (data)
		begin
			count <= count + 1'b1;
		end
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
