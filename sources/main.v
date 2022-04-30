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
    output [6:0] seg,
    output [4:0] LED
    );
    assign an = 4'b1100;
    wire [4:0] Letter;
   // wire [3:0] ones, tens, hundreds, thousands;
   // wire [13:0] timerout;
    kbdWrapper kb(clk,kbdclk,kbddat,Letter);
//    bin2bcd b2b(timerout,ones,tens,hundreds,thousands);
    LDF lss(Letter,seg);
    //number7seg nss (Letter,seg);
    assign LED = Letter;
endmodule
