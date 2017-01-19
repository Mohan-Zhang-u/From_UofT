module moneycontroller(clear,enableload, start,moneyinput, moneyoutput, startornot, win);
	input clear;
	input enableload;
	input start;
	input [2:0] moneyinput;
	input win;
	output reg [2:0] moneyoutput = 3'b000;
	output startornot;
	
	always@(*)
	begin
		if (clear == 1'b1)
			begin
				q = 3'b000;
				startornot = 1'b0;
			end
		else if (clear == 0 & enableload == 1'b1 )
			begin
				q[2:0] =  moneyinput[2:0];
				startornot = 1'b0;
			end
		else if (clear == 0 & enableload == 1'b0 & start == 1'b1 &startornot == 1'b0)
			begin
				q[2:0] = q[2:0];
				startornot = 1'b0;
			end
		else if (clear == 0 & enableload == 1'b0 & start == 1'b1 &startornot == 1'b1 & win == 0)
			begin
				q[2:0] = q[2:0];
				startornot = 1'b0;
			end
		else if (clear == 0 & enableload == 1'b0 & start == 1'b1 &startornot == 1'b1 & win == 1)
			begin
				q[2:0] = q[2:0] + 3'b010;
				startornot = 1'b0;
			end
		else if (clear == 0 & enableload == 1'b0 & start == 1'b0 &startornot == 1'b0)
			begin
				q[2:0] = q[2:0];
				startornot = 1'b1;
			end
		else if (clear == 0 & enableload == 1'b0 & start == 1'b0 &startornot == 1'b1)
			begin
				q[2:0] = q[2:0];
				startornot = 1'b1;
			end
	end
endmodule

module top(CLOCK_50, KEY, SW, LEDR);
	input CLOCK_50;
	input [9:0] SW;
	input [3:0] KEY;
	output [9:0] LEDR;
	moneycontroller mc(.clear(SW[7]),.enableload(SW[8]), .start(KEY[0]),.moneyinput(SW[2:0]), .moneyoutput(LEDR[2:0]), .startornot(LEDR[8]), .win(LEDR[9]));// LEDR[4:0]
endmodule
		