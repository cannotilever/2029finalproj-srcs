`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: WPI ECE 2029
// Engineer: Jacob Ellington
// 
// Create Date: 04/29/2022 12:13:22 AM
// Design Name: 
// Module Name: main
// Project Name: 
// Target Devices: Baysis 3
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


module main(
    input clk,
    input kbdclk,
    input kbddat,
    output [3:0] an,
    output [6:0] seg
    );
    wire [3:0] inLetter, ones, tens, hundreds, thousands;
    wire [13:0] timerout;
    kbdWrapper kb(kbdclk,kbddat,inLetter);
    bin2bcd b2b(timerout,ones,tens,hundreds,thousands);
endmodule
