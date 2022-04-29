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
    input[3:0] D,
    output [6:0] Seg);
    assign Seg[0] = ~D[3] & ~D[2] & ~D[1] & D[0] | ~D[3] & D[2] & ~D[1] & ~D[0] | D[3] & ~D[2] & D[1] & D[0] | D[3] & D[2] & ~D[1] & D[0];
    assign Seg[1] = ~D[3] & D[2] & ~D[1] & D[0] | D[2] & D[1] & ~D[0] | D[3] & D[1] & D[0] | D[3] & D[2] & ~D[0];
    assign Seg[2] = ~D[3] & ~D[2] & D[1] & ~D[0] | D[3] & D[2] & ~D[0] | D[3] & D[2] & D[1]; 
    assign Seg[3] = ~D[2] & ~D[1] & D[0] | ~D[3] & D[2] & ~D[1] & ~D[0] | D[2] & D[1] & D[0] | D[3] & ~D[2] & D[1] & ~D[0];
    assign Seg[4] = ~D[3] & D[0] | ~D[2] & ~D[1] & D[0] | ~D[3] & D[2] & ~D[1];
    assign Seg[5] = ~D[3] & ~D[2] & D[0] | ~D[3] & ~D[2] & D[1] | ~D[3] & D[1] & D[0] | D[3] & D[2] & ~D[1] & D[0];
    assign Seg[6] = ~D[3] & ~D[2] & ~D[1] | ~D[3] & D[2] & D[1] & D[0] | D[3] & D[2] & ~D[1] & ~D[0];
endmodule
