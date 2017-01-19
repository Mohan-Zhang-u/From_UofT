// Part 2 skeleton

module lab6part3
	(
		CLOCK_50,						//	On Board 50 MHz
		// Your inputs and outputs here
        KEY,
        SW,
		// The ports below are for the VGA output.  Do not change.
		VGA_CLK,   						//	VGA Clock
		VGA_HS,							//	VGA H_SYNC
		VGA_VS,							//	VGA V_SYNC
		VGA_BLANK_N,						//	VGA BLANK
		VGA_SYNC_N,						//	VGA SYNC
		VGA_R,   						//	VGA Red[9:0]
		VGA_G,	 						//	VGA Green[9:0]
		VGA_B   						//	VGA Blue[9:0]
	);

	input			CLOCK_50;				//	50 MHz
	input   [9:0]   SW;
	input   [3:0]   KEY;

	// Declare your inputs and outputs here
	// Do not change the following outputs
	output			VGA_CLK;   				//	VGA Clock
	output			VGA_HS;					//	VGA H_SYNC
	output			VGA_VS;					//	VGA V_SYNC
	output			VGA_BLANK_N;				//	VGA BLANK
	output			VGA_SYNC_N;				//	VGA SYNC
	output	[9:0]	VGA_R;   				//	VGA Red[9:0]
	output	[9:0]	VGA_G;	 				//	VGA Green[9:0]
	output	[9:0]	VGA_B;   				//	VGA Blue[9:0]
	
	wire resetn;
	wire [3:0] counter_en;
	assign resetn = KEY[0];

	// Create the colour, x, y and writeEn wires that are inputs to the controller.
	wire writeEn;
	// Create an Instance of a VGA controller - there can be only one!
	// Define the number of colours as well as the initial background
	// image file (.MIF) for the controller.
	vga_adapter VGA(
			.resetn(resetn),
			.clock(CLOCK_50),
			.colour(colour),
			.x(x),
			.y(y),
			.plot(writeEn),
			/* Signals for the DAC to drive the monitor. */
			.VGA_R(VGA_R),
			.VGA_G(VGA_G),
			.VGA_B(VGA_B),
			.VGA_HS(VGA_HS),
			.VGA_VS(VGA_VS),
			.VGA_BLANK(VGA_BLANK_N),
			.VGA_SYNC(VGA_SYNC_N),
			.VGA_CLK(VGA_CLK));
		defparam VGA.RESOLUTION = "160x120";
		defparam VGA.MONOCHROME = "FALSE";
		defparam VGA.BITS_PER_COLOUR_CHANNEL = 1;
		defparam VGA.BACKGROUND_IMAGE = "black.mif";
			
	// Put your code here. Your code should produce signals x,y,colour and writeEn/plot
	// for the VGA controller, in addition to any other functionality your design may require.
    
    // Instansiate datapath
	 datapath d0(.xposition({1'b0,xIn}), yposition(SW[6:0]), .in_c(SW[9:7]), .ResetN(resetn), .Xout(x), .Yout(y), .out_c(colour));
	
    // Instansiate FSM control
    FSM fsm0(.clock(CLOCK_50),.go(go), .resetn(resetn), .plot(writeEn), .control(counter_en));
    
endmodule

module FSM(clock, resetn, x, y, plot, updown);
	input clock;
	input resetn;
	input x;
	input y;
	output plot;
	output [1:0] updown;
	
	reg [15:0] blackcounter;
	reg [3:0] count = 4'b0000;
	reg [2:0] current_state, next_state;
	reg [1:0] twobit = 2'b00;
	// two bit register
	always @(*)
		begin
		 if(!resetn)
			twobit = 2'b11;
			x = 8'b00000000;
			y = 7'b0000000;
		 else if 
			twobit = ;
		end
	
	localparam
			BLACKEN = 5'd0;
			CHECK_BOUNDARY = 5'd1;
			DRAW = 5'd2;
			DELAY = 5'd3;
	// next state logic
	always@(*)
		begin: state_table
			case(current_state)
				BLACKEN: next_state = (blackcounter < 16'b1010000001111000)? BLACKEN : CHECK_BOUNDARY;
				CHECK_BOUNDARY: next_state = DRAW;
				DRAW: next_state = (count < 4b'1111)? DRAW : DELAY;
				DELAY: next_state = (delaycount < ) ?
				default: next_state = BLACKEN;
			endcase
		end
		
	// output logic for different state
	always@(posedge clock)
	 begin
		enable_signals
		count <= 4b'0000;
		
		case(current_state)
			BLACKEN: 
				begin
					Xout = {blackcounter[7:0]};
					Yout = {blackcounter[15:8]};
					out_c = 3'b000;
					plot <= 1'b0;
				end
				
			CHECK_BOUNDARY: 
				begin
				if (x == 8'b00000000)
						twobit = twobit +2'b10
						
			   else if (x == 8'b10100000)
						twobit = twobit - 2'b10	
			   else if (y == 8'b00000000)
						twobit == twobit + 2'b01	
			   else if (y == 8'b01111000)
						twobit == twobit - 2'b01	
					end
					plot <= 1'b0;	
				end
				
			DRAW: 
				begin
					count = count + 4'b0001;
					out_c = in_c;
					plot <= 1'b1;
				end
			DELAY: 
				begin
					delaycount = delaycount + 4'b1111;
					plot <= 1'b0;
				end
			
			//no need default
		endcase
	end

	always@(posedge 
	
	always@(posedge clock)
	begin
		if(!resetn)
			current_state <= STATE1;
		else
			current_state <= next_state;
	end
	assign control = count;
	
endmodule

module datapath (clock, in_c, ResetN, counter, Xout, Yout, out_c);
	input clock;
	input [2:0] in_c;
	input ResetN;
	input [3:0] counter;
	output reg [7:0] Xout;
	output reg [6:0] Yout;
	output reg [2:0] out_c;
	
	xcounter x(.outx(Xout), .Clear_b(ResetN), updown, Enable, clock);
	ycounter y(.outy(Yout), .Clear_b(ResetN), updown, Enable, clock);
	
	
endmodule

module xcounter(outx, Clear_b, updown, Enable, clock);
	input Clear_b, Enable, clock, updown;
	output reg [8:0] outx;
	always @(posedge clock)
		begin
			if{Clear_b == 1'b0}
				outx <= 0;
			else if (Enable == 1'b1)
				if(updown)
					begin
						outx <= out + 1'b1;
					end
				else
					begin
						outx <= out - 1'b1;
					end
					
		end 
	
endmodule

module ycounter(outy, Clear_b, updown, Enable, clock);
	input Clear_b, Enable, clock, updown;
	output reg [7:0] outy;
	always @(posedge clock)
		begin
			if{Clear_b == 1'b0}
				outy <= 0;
			else if (Enable == 1'b1)
				if(updown)
					begin
						outy <= out + 1'b1;
					end
				else
					begin
						outy <= out - 1'b1;
					end
					
		end 
	
endmodule

module RateDivider(Clear_b, Enable, clock, q);
	input Clear_b, Enable, clock;
	output reg q; // declare q and modified!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! 28 bits or 1 bits.
   	reg [28:0] p;

	always @(posedge clock) // triggered every time clock rises
	begin
		if (Clear_b == 1'b0) // when Clear b is 0
			q <= 0; // q is set to 0
		else if (Enable == 1'b1) // Check if enabled
			begin
				p <= 28'b0000000000011110100001001000;
			if (p == 28'b0000000000000000000000000000)
				begin
					q <= 1;
					p <= 28'b0000000000011110100001001000;
				end
			else
				begin
					q <= 0;
					p <= p - 28'b0000000000000000000000000001;
				end
		end
	end
endmodule

module delay()
