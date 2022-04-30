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
    output [4:0] out
);
wire [7:0] keycode;
reg state=0;
reg [4:0] letter;
HID ps2(kbdclk,kbddat,keycode);
always @ (posedge clk) begin
    if(state==0) begin
    state = (keycode == 8'hF0); //only listens after key release
    //letter = 32; //uninitialized
    end
    else begin
    state = 0;
        case(keycode)
        8'h1C: letter<=0;
        8'h32: letter<=1;
        8'h21: letter<=2;
        8'h23: letter<=3;
        8'h24: letter<=4;
        8'h2B: letter<=5;
        8'h34: letter<=6;
        8'h33: letter<=7;
        8'h3B: letter<=8;
        8'h4B: letter<=9;
        8'h31: letter<=10;
        8'h44: letter<=11;
        8'h4D: letter<=12;
        8'h2D: letter<=13;
        8'h1B: letter<=14;
        8'h35: letter<=15;
        default:
            if(keycode!=8'h12 && keycode!=8'h59) begin
                letter<=16; //invalid
                state = 1;
                end
        endcase
     end
end
assign out = letter;
endmodule