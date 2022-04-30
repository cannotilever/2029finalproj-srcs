module LDF(
input [4:0] d,
	output reg [6:0] seg
	);
//reg [6:0] seg;
always @ (d) begin
case (d)
1: seg <= 7'b0001000; // A
2: seg <= 7'b1100000; // B
3: seg <= 7'b0110001; // C
4: seg <= 7'b1000010; // D
5: seg <= 7'b0110000; // E
6: seg <= 7'b0111000; // F
7: seg <= 7'b0100001; // G
8: seg <= 7'b1101000; // H
9: seg <= 7'b1000011; // J
10: seg <= 7'b1110001; // L
11: seg <= 7'b1101010; // N
12: seg <= 7'b1100010; // O
13: seg <= 7'b0011000; // P
14: seg <= 7'b0001100; // Q
15: seg <= 7'b1111010; // R
16: seg <= 7'b0100100; // S
17: seg <= 7'b1000001; // U
18: seg <= 7'b1000100; // Y
32: seg <= seg;
default:
seg <= 7'b0101010;
endcase
end
endmodule