`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: WPI
// Engineer: Jacob Ellington
// 
// Create Date: 04/27/2022 17:09:13
// Design Name: 
// Module Name: kbdWrapper
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

module kbdWrapper(
input clk,
    input kbdclk, //passthrough to HID
    input kbddat, //passthrough to HID
    output reg [4:0] letter
);
wire [7:0] keycode;
//reg [4:0] letter;
HID ps2(kbdclk,kbddat,keycode);
always @ (posedge clk) begin
//    if(state==0) begin
//    state = (keycode == 8'hF0); //only listens after key release
//    letter = 32; //uninitialized
//    end
//    else begin
//    state = 0;
        case(keycode)
        8'h1C: letter=1;
        8'h32: letter=2;
        8'h21: letter=3;
        8'h23: letter=4;
        8'h24: letter=5;
        8'h2B: letter=6;
        8'h34: letter=7;
        8'h33: letter=8;
        8'h3B: letter=9;
        8'h4B: letter=10;
        8'h31: letter=11;
        8'h44: letter=12;
        8'h4D: letter=13; // P
        8'h15: letter=14; // q
        8'h2D: letter=15; // r
        8'h1B: letter=16; // s
        8'h3C: letter=17; // u
        8'h35: letter=18; // y

        //special cases
        8'hF0: letter<=20;
        8'hAA: letter<=20;
        default:
                letter<=32; //invalid
        endcase
//     end
end
//assign out = letter;
//assign sta = state;
endmodule