// Shows win condition timer
// Created by Jacob Ellington
module showWin(
    input clk,
	input slclk,
	input [3:0] tmrs,
	input [3:0] tmrms,
	input [3:0] tmrmms,
	output [6:0] seg,
	output reg [4:0] an,
	output reg dp
);
reg [3:0] nssin;
wire [6:0] nssout;
number7seg nss(clk,nssin,nssout);
reg [1:0] counter = 0;
always @ (posedge slclk) begin
	case (counter)
	0: begin
		nssin = tmrs;
		an = 4'b0111;
		dp <= 0;
		end
	1: begin
		nssin = tmrms;
		an = 4'b1011;
		dp <= 1;
		end
	2: begin
	   nssin = tmrmms;
	   an = 4'b1101;
	   dp <= 1;
	   end
    3: an = 4'b1111;
	endcase
counter = counter + 1;
end
assign seg=nssout;
endmodule
