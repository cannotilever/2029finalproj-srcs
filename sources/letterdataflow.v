module LDF(
input [4:0] d,
	output reg [6:0] seg
	);
//reg [6:0] seg;
always @ (d) begin
case (d)
0: seg <= 7'b0001000; // A
1: seg <= 7'b1100000; // B
2: seg <= 7'b0110001; // C
3: seg <= 7'b1000010; // D
4: seg <= 7'b0110000; // E
5: seg <= 7'b0111000; // F
6: seg <= 7'b1101000; // H
7: seg <= 7'b1110001; // L
8: seg <= 7'b1101010; // N
9: seg <= 7'b1100010; // O
10: seg <= 7'b0011000; // P
11: seg <= 7'b1111010; // R
12: seg <= 7'b0100100; // S
13: seg <= 7'b1000001; // U
14: seg <= 7'b1000100; // Y
//20: seg <= seg;
default:
seg <= 7'b1110111;
endcase
end
endmodule