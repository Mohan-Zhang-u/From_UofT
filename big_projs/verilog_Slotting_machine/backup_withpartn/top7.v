module moneycontroller(clear,enableload, start,moneyinput, moneyoutput, startornot, win);
	input clear;
	input enableload;
	input start;
	input [4:0] moneyinput;
	input win;
	output reg [4:0] moneyoutput = 5'b00000;
	output reg startornot = 1'b0;
	reg [4:0] q = 5'b00000;
	reg adder = 1'b0;
	always@(clear, start)
	begin
		if (clear == 1'b1)
			begin
				moneyoutput = 5'b00000;
				startornot = 1'b0;
				adder = 1'b0
			end
		else if (clear == 1'b0 & start == 1'b0 &startornot == 1'b0)
			begin	
				
				startornot = 1'b1;
			end
		else if (clear == 1'b0 & start == 1'b1 &startornot == 1'b1)
			begin
				moneyoutput[2:0] = moneyoutput[2:0] + 3'b010;
				startornot = 1'b0;
			end
		else if (clear == 1'b0 & start == 1'b1 &startornot == 1'b0)
			begin
				
			end
		else if (clear == 0 & enableload == 1'b0 & start == 1'b0 &startornot == 1'b1)
			begin
				moneyoutput[2:0] = moneyoutput[2:0];
				startornot = 1'b1;
			end
	end
	always@(clk)
	begin
		if (enableload == 1'b1)
			q[4:0] = 5'b00000 + moneyinput;
		else if (enableload == 1'b0 & win == 1'b0)
			q[4:0] = 5'b00000 - 5'b00001;
		else if (enableload == 1'b0 & win == 1'b1)
			q[4:0] = 5'b00000 + 5'b00001;
	end
endmodule
// win = 2'b01 or 2'b10

module judgemod (clk, clear, enbaleload, prevmoney, win, addout);
	input clk;
	input clear;
	input enableload;
	input [4:0] prevmoney;
	output reg [4:0] addout = 5'b00000;
	always@(clk)
	begin
		if (clear = 1'b1)
			addout[4:0] = 5'b00000;
		else if (enableload == 1'b1)
			addout[4:0] = 5'b00000 + moneyinput;
		else if (enableload == 1'b0 & win == 1'b0)
			addout[4:0] = prevmoney[4:0] - 5'b00001;
		else if (enableload == 1'b0 & win == 1'b1)
			addout[4:0] = prevmoney[4:0] + 5'b00001;
	end
endmodule

module money


module finaladder(win , prevmoney, moneyoutput);
	input [1:0] win;
	input [4:0] prevmoney;
	output [4:0] moneyoutput;
	reg [4:0] q;
	assign [4:0] q = [4:0] prevmoney;
	assign [4:0] moneyoutput = q[4:0] + win[1:0];
endmodule moneycontroller(start,moneyinput, moneyoutput, startornot);
	input start;
	input [4:0] moneyinput;
	output reg startornot;
	output reg [4:0] moneyoutput;
	always@(clk)
	begin
	end
endmodule





module top(CLOCK_50, KEY, SW, LEDR);
	input CLOCK_50;
	input [9:0] SW;
	input [3:0] KEY;
	output [9:0] LEDR;
	moneycontroller mc(.clear(SW[7]),.enableload(SW[8]), .start(KEY[0]),.moneyinput(SW[2:0]), .moneyoutput(LEDR[2:0]), .startornot(LEDR[8]), .win(SW[9]));// LEDR[4:0]
endmodule
		
