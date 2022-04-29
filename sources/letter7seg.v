`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/27/2022 11:59:13 AM
// Design Name: 
// Module Name: letter7seg
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module letter7seg(
input [3:0] d,
	output [6:0] seg,
	output [3:0] an
	);

	/*
	0 a
	1 b
	2 c
	3 d
	4 e
	5 f
	6 g
	7 h
	8 J
	9 L
	10 n
	11 o
	12 p
	13 r
	14 s
	15 y
	*/

	assign an=4'b1110;
	assign seg[6] = (~d[3] & ~d[0]) | (~d[3] & d[2] & ~d[1]) | (d[2] & ~d[0]);
	assign seg[5] = (~d[2] & ~d[1] & ~d[0]) | (~d[3] & d[1] & d[0]) | (d[2] & d[1] & d[0]) | (d[3] & ~d[1] & ~d[0]);
	assign seg[4] = (~d[3] & ~d[2] & ~d[1]) | (~d[2] & ~d[1] & ~d[0]) | (d[1] & d[0]) | (d[2] & d[1]) | (d[3] & d[1]);
	assign seg[3] = (~d[2] & d[0]) | (~d[3] & ~d[2] & d[1]) | (~d[3] & d[2] & ~d[0]) | (d[3] & ~d[2] & ~d[1]) | (d[3] & d[2] & d[1]);
	assign seg[2] = (~d[3]) | (~d[2]) | (~d[1]);
	assign seg[1] = (~d[3] & ~d[1]) | (~d[3] & ~d[0]) | (~d[2] & ~d[1] & d[0]) | (d[2] & ~d[0]) | (d[2] & d[1]);
	assign seg[0] = (~d[3] & ~d[1]) | (~d[3] & d[0]) | (d[2] & ~d[1]) | (d[3] & d[1]);

endmodule
