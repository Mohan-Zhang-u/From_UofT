`timescale 1ns / 1ns // `timescale time_unit/time_precision
// Part1

module lab2part1(SW, LEDR );
	input [9:0] SW;
	output [9:0] LEDR;
	
	
	mux7to1 part1(
		.Input(SW[6:0]),
		.Muxselect(SW[9:7]),
		.Out(LEDR[0])
		);
		
endmodule


module mux7to1(Input, Muxselect, Out);
		input [6:0] Input;
		input [9:7] Muxselect;
		output reg Out;
		
		
		
		// reg Out; // declare the output signal for the always block
		
		always @(*) // declare always block
		begin
			case(Muxselect[9:7]) // start case statement
			3'b000: Out = Input[0]; // case 0
			3'b001: Out = Input[1]; // case 1
			3'b010: Out = Input[2]; // case 2
			3'b011: Out = Input[3]; // case 3
			3'b100: Out = Input[4]; // case 4
			3'b101: Out = Input[5]; // case 5
			3'b110: Out = Input[6]; // case 6
			default Out = Input[0]; // default case ??????
			endcase
		end

endmodule
