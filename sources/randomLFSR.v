//Generate a random letter encoded with 4 bits from an 8-bit lfsr
module randomLFSR(
    input clk,
	output [4:0] d
	);

	reg [7:0] lfsr = 8'b10000001; // initialize to starting seed
	reg [3:0] out;
	reg [7:0] temp;
	always @ (posedge clk) begin
	temp = (lfsr ^ (lfsr >> 1) ^ (lfsr >> 3) ^ (lfsr >> 5)) & 1; // lfsr bitshift xor
	lfsr = (lfsr >> 1) | (temp << 7);
	if (lfsr[5:2] < 15) begin
	out = lfsr[5:2];
	end
	end
	assign d[4] = 0;
	assign d[3:0] = out;

endmodule