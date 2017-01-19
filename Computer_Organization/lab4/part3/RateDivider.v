module RateDivider(in0, in1, Clear_b, Enable, clock, q);
	input in0, in1, Clear_b, Enable, clock;
	output reg q; // declare q and modified!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! 28 bits or 1 bits.
   	reg [28:0] p;
	wire [1:0] w;
	wire qq;
	assign w[1:0] = {in1,in0};
	assign qq = 1'b0;
	initial q = 0;
	always @(posedge clock) // triggered every time clock rises
	begin
		if (Clear_b == 1'b0) // when Clear b is 0
			q <= 0; // q is set to 0
		else if (Enable == 1'b1) // Check if enabled
			begin
				case(w[1:0])
					2'b11: p <= 28'b1011111010111100000111111100;				
					2'b10: p <= 28'b0001011111010111100000111111;// this is 2hz
					2'b01: p <= 28'b0010111110101111000001111111;
					2'b00: p <= 28'b0000000000000000000000000001;
				endcase
			if (p == 28'b0000000000000000000000000000)
				begin
					q <= 1;
					case(w[1:0])
						2'b11: p <= 28'b1011111010111100000111111100;				
						2'b10: p <= 28'b0001011111010111100000111111;// this is 2hz
						2'b01: p <= 28'b0010111110101111000001111111;
						2'b00: p <= 28'b0000000000000000000000000001;
					endcase
				end
			else
				begin
					q <= 0;
					p <= p - 28'b0000000000000000000000000001;
				end
		end
	end
endmodule
 
