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
        8'h1C: letter=0; // a
        8'h32: letter=1; //b
        8'h21: letter=2; //c
        8'h23: letter=3; //d
        8'h24: letter=4; //e
        8'h2B: letter=5; //f
        8'h33: letter=6;//h
        8'h4B: letter=7;//l
        8'h31: letter=8;//n
        8'h44: letter=9;//o
        8'h4D: letter=10; // P
        8'h2D: letter=11; // r
        8'h1B: letter=12; // s
        8'h3C: letter=13; // u
        8'h35: letter=14; // y

        //special cases
        8'hF0: letter=21;
        8'h29: letter=20;
        default:
                letter=32; //invalid
        endcase
//     end
end
//assign out = letter;
//assign sta = state;
endmodule