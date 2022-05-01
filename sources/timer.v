//Timer module
//developed by Jacob Ellington

module timer(input clk, 
input [1:0] ctrl, 
output reg [3:0] tmout);
reg [4:0] tmp;

always @ (posedge clk) begin
    if (ctrl == 2'b01) begin
        tmp = 0;
        tmout = 0;
        end
    else if (ctrl == 2'b10) begin
        tmp = tmp +1;
        if (tmp == 12) begin
            tmout = tmout +1;
            tmp = 0;
            end
        end

end
endmodule
