`timescale 1ns / 1ns // `timescale time_unit/time_precision






/// main function
module lab4part3(SW, KEY,CLOCK_50, LEDR);
	input CLOCK_50;
	input [2:0] SW;
	input [1:0] KEY;	// KEY[1] is the load, KEY[0] is reset
	output [0:0] LEDR;
	wire [11:0] outtoout;
	wire [11:0] final;
	wire ccc;

	morsetobi morsetobinary(.inn(SW[2:0]),
		 .clear(KEY[0]),
		 .clock(CLOCK_50),
		 .outt(outtoout[11:0])
		);

	RateDivider rdv(
		.Clear_b(1'b1),
		.enable(1'b1),
		.clock(CLOCK_50), ////////////////////lost clk, what is ?????????????
		.q(ccc)
		);

	shift_12bit s12bit(.loadval(outtoout[11:0]),
		 .load_n(KEY[1]),
		 .reset_n(KEY[0]),
		 .clk(ccc), // this shall be ccc !!!!!  2HZ!!! modify!!!!
		 .ShiftRight(1'b1),
		 .ASR(1'b0),
		 .out(final[11:0]));
	assign LEDR[0] = final[0];
endmodule



module shift_12bit(loadval, load_n, reset_n, clk, ShiftRight, ASR, out);
	input [11:0] loadval;
	input reset_n;
	input clk;
	input load_n;
	input ShiftRight;
	input ASR;
	output [11:0] out;
	wire w1;
	
	mux2to1 m(.x(0),
	.y(loadval[7]),
	.s(ASR),
	.m(w1)
	);
	
        
        shifter_bit b11(.in(w1),
	.LoadVal(loadval[11]),
	.Load_n(load_n),
	.ShiftRight(ShiftRight),
	.clk(clk),
	.reset_n(reset_n),
	.out(out[11])
	);
        shifter_bit b10(.in(out[11]),
	.LoadVal(loadval[10]),
	.Load_n(load_n),
	.ShiftRight(ShiftRight),
	.clk(clk),
	.reset_n(reset_n),
	.out(out[10])
	);
        shifter_bit b9(.in(out[10]),
	.LoadVal(loadval[9]),
	.Load_n(load_n),
	.ShiftRight(ShiftRight),
	.clk(clk),
	.reset_n(reset_n),
	.out(out[9])
	);
        shifter_bit b8(.in(out[9]),
	.LoadVal(loadval[8]),
	.Load_n(load_n),
	.ShiftRight(ShiftRight),
	.clk(clk),
	.reset_n(reset_n),
	.out(out[8])
	);    	
        shifter_bit b7(.in(out[8]),
	.LoadVal(loadval[7]),
	.Load_n(load_n),
	.ShiftRight(ShiftRight),
	.clk(clk),
	.reset_n(reset_n),
	.out(out[7])
	);
        shifter_bit b6(.in(out[7]),
	.LoadVal(loadval[6]),
	.Load_n(load_n),
	.ShiftRight(ShiftRight),
	.clk(clk),
	.reset_n(reset_n),
	.out(out[6])
	);
        shifter_bit b5(.in(out[6]),
	.LoadVal(loadval[5]),
	.Load_n(load_n),
	.ShiftRight(ShiftRight),
	.clk(clk),
	.reset_n(reset_n),
	.out(out[5])
	);
        shifter_bit b4(.in(out[5]),
	.LoadVal(loadval[4]),
	.Load_n(load_n),
	.ShiftRight(ShiftRight),
	.clk(clk),
	.reset_n(reset_n),
	.out(out[4])
	);
          shifter_bit b3(.in(out[4]),
	.LoadVal(loadval[3]),
	.Load_n(load_n),
	.ShiftRight(ShiftRight),
	.clk(clk),
	.reset_n(reset_n),
	.out(out[3])
	);
          shifter_bit b2(.in(out[3]),
	.LoadVal(loadval[2]),
	.Load_n(load_n),
	.ShiftRight(ShiftRight),
	.clk(clk),
	.reset_n(reset_n),
	.out(out[2])
	);
        shifter_bit b1(.in(out[2]),
	.LoadVal(loadval[1]),
	.Load_n(load_n),
	.ShiftRight(ShiftRight),
	.clk(clk),
	.reset_n(reset_n),
	.out(out[1])
	);

	shifter_bit b0(.in(out[1]),
	.LoadVal(loadval[0]),
	.Load_n(load_n),
	.ShiftRight(ShiftRight),
	.clk(clk),
	.reset_n(reset_n),
	.out(out[0])
	);
endmodule

module Register(in, out, reset, clocks); // D flip-flop as Register
	input in;
	input reset,clocks;
	output reg out;
	always @(posedge clocks, negedge reset) // Triggered every time clocks rises 
	begin
		if (reset == 1'b0) // when reset n is 0 (note this is tested on every rising clocks edge)
			out <= 0; // q is set to 0. Note that the assignment uses <=
		else // when reset n is not 0
			out <= in; // value of d passes through to output q
	end
endmodule 

module shifter_bit(in, LoadVal, Load_n, ShiftRight, clk ,reset_n, out);
	input in, LoadVal, Load_n, ShiftRight, clk ,reset_n;
	output  out;
	wire w1,w2, w3;
	mux2to1 M1( //instantiates 2nd multiplexer
		.x(w3), // output from  flipflop
		.y(in),
		.s(ShiftRight),
		.m(w1) //outputs to other mux
		);
	mux2to1 M2( //instantiates 2nd multiplexer
		.x(LoadVal), // the parallel load value
		.y(w1),
		.s(Load_n),
		.m(w2) //outputs to flip flop
		);
	Register F0( //instantiates flip flop
		.in(w2), //input to flip flop
		.out(w3), //output from flip flop
		.reset(reset_n),
		.clocks(clk) //clock signal
		);
	assign out = w3;
endmodule

module mux2to1(x, y, s, m); // 2-1 multiplexer
	input x; //selected when s is 0
	input y; //selected when s is 1
	input s; //select signal
	output m; //output
	assign m = s & y | ~s & x; // OR assign m = s ? y : x;
endmodule 




//SW[2:0] data inputs
//SW[9] select signal

//LEDR[0] output display

module morsetobi(inn, clear, clock, outt);
	input [2:0] inn; 
	wire [2:0] innn;
	input clock;
	input clear;
	reg [11:0] outtt;
	output [11:0] outt;
	assign innn = inn;
	always @(posedge clock) 
	begin
		if (clear == 1'b0) 
			outtt <= 12'b000000011101;
		else if (innn == 3'b000)
			outtt <= 12'b000000011101;
		else if (innn == 3'b001)
			outtt <= 12'b000101010111;
		else if (innn == 3'b010)
			outtt <= 12'b010111010111;
		else if (innn == 3'b011)
			outtt <= 12'b000001010111;
		else if (innn == 3'b100)
			outtt <= 12'b000000000001;
		else if (innn == 3'b101)
			outtt <= 12'b000101110101;
		else if (innn == 3'b110)
			outtt <= 12'b000101110111;
		else if (innn == 3'b111)
			outtt <= 12'b000001010101;
	end
	assign outt = outtt;
	
endmodule



//lost clk
module RateDivider(Clear_b, enable, clock, q);
	input Clear_b, clock, enable;
	output reg q = 1'b0; // declare q and modified!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! 28 bits or 1 bits.
   	reg [28:0] p = 28'b0001011111010111100000111111;
	always @(posedge clock) // triggered every time clock rises
	begin
		if (Clear_b == 1'b0) // when Clear b is 0
			q <= 0; // q is set to 0
		else if (p == 28'b0000000000000000000000000000) 
		begin
			q <= 1;	
			p = 28'b0001011111010111100000111111;
		end
		else if (enable == 1'b1)
		begin
			q <= 0;
			p <= p - 28'b0000000000000000000000000001;
		end
	end
endmodule

