//Timer module
//developed by Jacob Ellington

module timer(input clk, 
input [1:0] ctrl, 
output [3:0] tmout);
reg [4:0] tmp;
reg [4:0] tmr;
always @ (posedge clk) begin
case (ctrl)
1:
    tmp = 0;
    tmr = 0;

2:
    tmp = tmp+1;
    if (tmp == 12) begin
    tmr = tm+1;
    tmp = 0;
    end
default:
    tmr = tmr;
    tmp = tmp;
endcase
end
assign tmout = tm;
endmodule
