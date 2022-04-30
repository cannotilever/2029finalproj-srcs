`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/27/2022 03:00:06 PM
// Design Name: 
// Module Name: HIDtest
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


module HIDtest();
reg kbdclk;
reg kbddat;
wire [7:0] decoded;
wire [3:0] kbout;
HID h(kbdclk,kbddat,decoded);
kbdWrapper k(kbdclk,kbddat,kbout);
initial begin
//should transmit F0 followed by 2B (keycode F)
kbdclk=1;
#30;
kbddat=0;
kbdclk=0;
#30;
kbdclk=1;
#30;
kbddat=0;
kbdclk=0;
#30;
kbdclk=1;
#30;
kbddat=1;
kbdclk=0;
#30;
kbdclk=1;
#30;
kbddat=0;
kbdclk=0;
#30;
kbdclk=1;
#30;
kbddat=1;
kbdclk=0;
#30;
kbdclk=1;
#30;
kbddat=0;
kbdclk=0;
#30;
kbdclk=1;
#30;
kbddat=1;
kbdclk=0;
#30;
kbdclk=1;
#30;
kbddat=0;
kbdclk=0;
#30;
kbdclk=1;
#30;
kbddat=1;
kbdclk=0;
#30;
kbdclk=1;
#30;
kbddat=1;
kbdclk=0;
#30;
kbdclk=1;
#30;
kbddat=1;
kbdclk=0;
#30;
kbdclk=1;
#100;
kbddat=0;
kbdclk=0;
#30;
kbdclk=1;
#30;
kbddat=0;
kbdclk=0;
#30;
kbdclk=1;
#30;
kbddat=0;
kbdclk=0;
#30;
kbdclk=1;
#30;
kbddat=0;
kbdclk=0;
#30;
kbdclk=1;
#30;
kbddat=0;
kbdclk=0;
#30;
kbdclk=1;
#30;
kbddat=1;
kbdclk=0;
#30;
kbdclk=1;
#30;
kbddat=1;
kbdclk=0;
#30;
kbdclk=1;
#30;
kbddat=1;
kbdclk=0;
#30;
kbdclk=1;
#30;
kbddat=1;
kbdclk=0;
#30;
kbdclk=1;
#30;
kbddat=1;
kbdclk=0;
#30;
kbdclk=1;
#30;
kbddat=1;
kbdclk=0;
#30;
kbdclk=1;
#130;

kbddat=0;
kbdclk=0;
#30;
kbdclk=1;
#30;
kbddat=1;
kbdclk=0;
#30;
kbdclk=1;
#30;
kbddat=1;
kbdclk=0;
#30;
kbdclk=1;
#30;
kbddat=0;
kbdclk=0;
#30;
kbdclk=1;
#30;
kbddat=1;
kbdclk=0;
#30;
kbdclk=1;
#30;
kbddat=0;
kbdclk=0;
#30;
kbdclk=1;
#30;
kbddat=1;
kbdclk=0;
#30;
kbdclk=1;
#30;
kbddat=0;
kbdclk=0;
#30;
kbdclk=1;
#30;
kbddat=0;
kbdclk=0;
#30;
kbdclk=1;
#30;
kbddat=1;
kbdclk=0;
#30;
kbdclk=1;
#30;
kbddat=1;
kbdclk=0;
#30;
#200;
kbdclk=1;
#100;
kbddat=0;
kbdclk=0;
#30;
kbdclk=1;
#30;
kbddat=0;
kbdclk=0;
#30;
kbdclk=1;
#30;
kbddat=1;
kbdclk=0;
#30;
kbdclk=1;
#30;
kbddat=0;
kbdclk=0;
#30;
kbdclk=1;
#30;
kbddat=0;
kbdclk=0;
#30;
kbdclk=1;
#30;
kbddat=0;
kbdclk=0;
#30;
kbdclk=1;
#30;
kbddat=1;
kbdclk=0;
#30;
kbdclk=1;
#30;
kbddat=0;
kbdclk=0;
#30;
kbdclk=1;
#30;
kbddat=1;
kbdclk=0;
#30;
kbdclk=1;
#30;
kbddat=1;
kbdclk=0;
#30;
kbdclk=1;
#30;
kbddat=1;
kbdclk=0;
#30;
kbdclk=1;
#100;
end
endmodule

