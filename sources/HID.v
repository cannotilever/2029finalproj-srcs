`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/27/2022 11:59:13 AM
// Design Name: 
// Module Name: HID
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


module HID(
    input kbdclk,
    input dat,
    output [1:0] keycode
    );
reg [10:0] recvd;
reg [3:0] index = 0;
reg [7:0] out;
reg outputValid = 0; //1 if done reading, 0 if currently reading
always @(negedge kbdclk) begin
recvd[index] <= dat;
if(index == 10) begin
index <= 0;
outputValid <= 1;
end
else begin
index <= index+1;
outputValid <= 0;
end
end
always @ (outputValid) begin
if (outputValid==1 && recvd[0]==0 && recvd[10]==1) begin //checks that start bit is 0 and end bit is 1, else data is bad
out = recvd[8:1];
end
end
assign keycode = out;
endmodule

