`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/27/2022 11:59:13 AM
// Design Name: 
// Module Name: number7seg
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


module number7seg(
    input clk,
    input[3:0] D,
    output reg [0:6] disp);
always@(posedge clk)
begin
case(D)
0: disp=7'b0000001;
1: disp=7'b1001111;
2: disp=7'b0010010;
3: disp=7'b0000110;
4: disp=7'b1001100;
5: disp=7'b0100100;
6: disp=7'b0100000;
7: disp=7'b0001111;
8: disp=7'b0000000;
9: disp=7'b0000100;
10: disp=7'b0001000;
11: disp=7'b1100000;
12: disp=7'b0110001;
13: disp=7'b1000010;
14: disp=7'b0110000;
15: disp=7'b0111000;
endcase
end
endmodule
