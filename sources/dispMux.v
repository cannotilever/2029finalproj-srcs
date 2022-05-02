//Display multiplexer module
// Created by Jacob Ellington

module dispMux(
    input clk,
	input [1:0] mode,
	input [6:0] segm0,
	input [6:0] segm1,
	input [6:0] segm2,
	input [3:0] anm0,
	input [3:0] anm1,
	input [3:0] anm2,
	input dpm0,
	output reg [6:0] seg,
	output reg [3:0] an,
	output reg dp
);
always @ (negedge clk) begin
case (mode)
0: begin
    seg = segm0;
    an = anm0;
    dp = dpm0;
    end
2: begin
    seg = segm1;
    an = 4'b1110;
    dp =1;
    end
3: begin
    seg = segm2;
    an = anm2;
    dp =1;
    end
default://illegal state
    begin
    seg = 7'b0111111;
    an = 4'b0000;
    end
endcase
end
endmodule
