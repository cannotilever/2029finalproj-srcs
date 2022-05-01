// Showloss module
// created by Jacob Ellington

module showLoss(input slclk,
	output reg [6:0] seg,
	output reg [3:0] an);
reg [1:0] counter = 0;
always @ (posedge slclk) begin
	case (counter)
	0: begin
		seg <= 7'b1110001;
		an <= 4'b0111;
		end
	1: begin
		seg <= 7'b1100010;
		an <= 4'b1011;
		end
	2: begin
		seg <= 7'b0100100;
		an <= 4'b1101;
		end
	3: begin
		seg <= 7'b0100100;
		an <= 4'b1110;
		end
	endcase
counter = counter + 1;
end
endmodule
