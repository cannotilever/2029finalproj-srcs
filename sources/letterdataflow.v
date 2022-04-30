module LDF(
input [4:0] d,
	output reg [0:6] disp
	);
reg [6:0] seg;
always @ (d) begin
case (d)
0: seg <= 7'h77;
1: seg <= 7'h1F;
2: seg <= 7'h58;
3: seg <= 7'h3D;
4: seg <= 7'h4F;
5: seg <= 7'h47;
6: seg <= 7'h5E;
7: seg <= 7'h37;
8: seg <= 7'h3C;
9: seg <= 7'h0E;
10: seg <= 7'h15;
11: seg <= 7'h1D;
12: seg <= 7'h67;
13: seg <= 7'h05;
14: seg <= 7'h5B;
15: seg <= 7'h3B;
32: seg <= seg;
default:
seg <= 7'b0101010;
endcase
end
endmodule