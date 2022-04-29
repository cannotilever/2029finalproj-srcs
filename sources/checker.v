// Check whether given 8-bit keycode matches generated letter d
module checker(
	input [7:0] key,
	input [3:0] d,
	output correct);

	case(key)
	8'h1C: correct = (d == 0); // a
	8'h32: correct = (d == 1); // b
	8'h21: correct = (d == 2); // c
	8'h23: correct = (d == 3); // d
	8'h24: correct = (d == 4); // e
	8'h2B: correct = (d == 5); // f
	8'h34: correct = (d == 6); // g
	8'h33: correct = (d == 7); // h
	8'h3B: correct = (d == 8); // j
	8'h4B: correct = (d == 9); // l
	8'h31: correct = (d == 10); // n
	8'h44: correct = (d == 11); // o
	8'h4D: correct = (d == 12); // p
	8'h2D: correct = (d == 13); // r
	8'h1B: correct = (d == 14); // s
	8'h35: correct = (d == 15); // y
	endcase
endmodule