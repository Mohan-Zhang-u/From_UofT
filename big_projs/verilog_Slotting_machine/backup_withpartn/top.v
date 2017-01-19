`timescale 1ns / 1ns // `timescale time_unit/time_precision
// Part1




module sixbitcounter(startornot, Clear_b, clk, out);
	input startornot;
	input Clear_b, clk;
	output [5:0] out;
	reg [5:0] val = 6'b000000;
	assign out = val;
	always @(posedge clk) // triggered every time CLOCK_50 rises
	begin
		if (Clear_b == 1'b1) // when Clear b is 0 SW[9]
			val <= 6'b000000; // val is set to 0
		else if (val == 6'b111111)
			val <= 6'b000000;
		else if (startornot == 1'b1) //when startornot is 1 SW[8] up is start
		begin
			val <= val + 6'b000001;
		end
	end
endmodule




module analyzer(in, a, b, c);
	input [5:0] in;
	output [1:0] a;
	output [1:0] b;
	output [1:0] c;
	
	assign a = in[5:4];
	assign b = in[3:2];
	assign c = in[1:0];
endmodule 
		
module moneycontroller(enableload, clear, moneyinput, start,win, moneyoutput, startornot);
		input win;
		input enableload; //SW[8]
		input clear; //SW[7]
		input start; // KEY[0]
		input [2:0] moneyinput; //SW[2:0]
		//output reg [4:0] moneyoutput = 5'b00000; //LEDR[4:0]
		output moneyoutput; //LEDR[4:0]
		output reg startornot = 1'b0;
		reg [4:0] q = 5'b00000;
		always@(*)
		begin
			if (clear == 1'b1)
				begin 
					q <= 5'b00000;
					moneyoutput <= q; 
				end
			else if (enableload == 1'b1)
				begin
					q <= moneyinput + 5'b00000;
					moneyoutput <= q; 
				end
			else if (start == 0 && q > 5'b00000 && startornot == 1'b0)
				begin
					q <= q - 5'b00001;
					startornot <= 1'b1;
					moneyoutput <= q; 
				end
			else if (start == 0 && startornot == 1'b1)
				begin 
					startornot <= 1'b1;
				end
			else if (start == 1 && startornot == 1'b1)
				begin
					startornot <= 1'b0;
					if (win == 1'b1)
						begin
							q<= q + 5'b00010;
						end
					moneyoutput <= q; 
				end
			//else if (clear == 1'b0 && enableload == 1'b0 && start == 1 && startornot == 1'b0 ) 
				//begin
					//moneyoutput <= q; 
				//end
			//moneyoutput <= q; 
		end
		
		
		//always@(*)
		//begin
			//if (clear == 1'b1)
				//begin 
					//q <= 5'b00000;
				//end
			
		//end
		
endmodule

// added
module convertwin(A, B, C, win);
	input [1:0] A;
	input [1:0] B;
	input [1:0] C;
	output win;
	
	reg money;
	always@(*)
	begin
		//if (A == B || A == C || B == C)
			//money <= 1'b0;
		if (A == B && A == C)
			money <= 1'b1;
		else 
			money <= 1'b0;
	end
	
	assign win = money;
endmodule

module convertwin2(in, win);
	input [5:0] in;
	output win;
	reg money;
	always@(*)
	begin
		if (in[5:4] == in[3:2] && in[5:4] == in[1:0])
			money <= 1'b1;
		else 
			money <= 1'b0;
	end
	
	assign win = money;
endmodule
module analyzer2(in, out);
	input [5:0] in;
	output [5:0] out;
	
	assign out[5:0] = in[5:0];
endmodule




module top (CLOCK_50, KEY, SW, LEDR);// a, b, c
	input CLOCK_50;
	input [9:0] SW;
	input [3:0] KEY;
	output [9:0] LEDR;
	//output [1:0] a;
	//output [1:0] b;
	//output [1:0] c;
	wire [5:0] sbout;
	wire [1:0] aa;
	wire [1:0] bb;
	wire [1:0] cc;
	wire wirewin;
	wire ston;
	wire [4:0] moneyo;
	
	sixbitcounter sb(.startornot(ston),.Clear_b(SW[9]), .clk(CLOCK_50), .out(sbout));
	analyzer anlz(.in(sbout), .a(aa), .b(bb), .c(cc));
	convertwin cw(.A(aa), .B(bb), .C(cc), .win(wirewin));
	moneycontroller mc(.enableload( SW[8]), .clear(SW[7]), .moneyinput(SW[2:0]), .start(KEY[0]), .win(wirewin), .moneyoutput(LEDR[4:0]), .startornot(ston));// LEDR[4:0]
	convertwin cw2(.A(aa), .B(bb), .C(cc), .win(LEDR[9]));
	//analyzer anlz2(.in(sbout), .a(LEDR[8:7]), .b(LEDR[6:5]), .c(LEDR[4:3]));
	//operation: first, give an input money(with SW[2:0], then, enable input of that money with set SW[9] to 1!!! and , press KEY[0]!!
	// KEY[1] is start
	// KEY[3] is clear (withdraw the money)

endmodule
	// not checked:  money controller, top
	// SW[9] is clear for 6bitcounter 	
	// SW[8] is enable load of money
	// SW[7] is clear for money (withdraw)
	// KEY[0] is start for game (global)
