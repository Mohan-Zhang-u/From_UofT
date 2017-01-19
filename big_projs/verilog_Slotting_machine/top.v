

module judgemod (add, clear, enbaleload, prevmoney, win, addout);
	input add;
	input clear;
	input enableload;
	input [4:0] prevmoney;
	output reg [4:0] addout = 5'b00000;
	always@(posedge add)
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


endmodule moneycontroller(start,moneyinput, startornot, moneyoutput, moneydisplay, add);
	input start;
	input [4:0] moneyinput;
	output reg startornot = 1'b0;
	output reg [4:0] moneyoutput =  ;
	output reg [4:0] moneydisplay =  ;
	output reg add = 1'b0;
	always@(start)// startornot
	begin
		if (start == 1'b1 & startornot == 1'b0)
			begin
				add = 1'b0;
				startornot == 1'b0
				moneyoutput[4:0] = moneyinput[4:0];
				moneydisplay[4:0] = moneyinput[4:0];
			end
			
		else if (start == 1'b0 & startornot == 1'b0)
			begin
				add = 1'b1;
				startornot = 1'b1;
				moneyoutput[4:0] = moneyinput[4:0];
				moneydisplay[4:0] = moneyinput[4:0];
			end
		else if (start == 1'b1 & startornot == 1'b1)
			begin
				add = 1'b1;
				startornot = 1'b0;
			end
		else if (start == 1'b0 & startornot == 1'b1)
			begin
				add = 1'b0;
				startornot = 1'b1;
				moneyoutput[4:0] = moneyinput[4:0];
				moneydisplay[4:0] = moneyinput[4:0];
			end
	end
endmodule





module top(CLOCK_50, KEY, SW, LEDR);
	input CLOCK_50;
	input [9:0] SW;
	input [3:0] KEY;
	output [9:0] LEDR;
	judgemod jm(add, clear, enbaleload, prevmoney, win, addout);// LEDR[4:0]
	moneycontroller mc(start,moneyinput, startornot, moneyoutput, moneydisplay, add);
endmodule
		
