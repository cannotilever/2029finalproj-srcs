`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: WPI ECE 2029
// Engineer: Jacob Ellington
//
// Target Devices: Baysis 3
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
    letter7seg lss(inLetter,seg,an);
endmodule
