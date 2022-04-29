//Generate a random letter encoded with 4 bits from an 8-bit lfsr
module randomLFSR(
	output [3:0] d
	);

	reg [7:0] lfsr = 8'b10000001; // initialize to starting seed
	
	wire [7:0] temp;
	assign temp = (lfsr ^ (lfsr >> 1) ^ (lfsr >> 3) ^ (lfsr >> 5)) & 1; // lfsr bitshift xor
	assign lfsr = (lfsr >> 1) | (temp << 7);
	
	assign d = lfsr[5:2];

endmodule