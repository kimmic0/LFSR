//Final Project 
module lfsr_wrapper( input logic CLOCK_50,	// clk
			   input logic  [4:0] SW ,	// reset, [3:0] q
			   input logic        KEY[0],	// push 
			   output logic [6:0] HEX3,	// segment 4 = fourth letter
			   output logic [6:0] HEX2,	// segment 3 = third letter
			   output logic [6:0] HEX1,	// segment 2 = second letter
			   output logic [6:0] HEX0);	// segment 1 = first letter

lfsr lf(CLOCK_50, SW[0], SW[4:1], ~KEY[0], HEX3[6:0], HEX2[6:0], HEX1[6:0], HEX0[6:0]);

endmodule