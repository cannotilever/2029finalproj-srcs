`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/27/2022 11:59:13 AM
// Design Name: 
// Module Name: decoder224
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

// A 2-to-4 decoder
module decoder224(
    input [1:0] en,
    output reg [3:0] an
    );
    always@(en) begin
    case (en)
    0: an=4'b1110;
    1: an=4'b1101;
    2: an=4'b1011;
    3: an=4'b1111;
    endcase
    end
endmodule