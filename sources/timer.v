//Timer module
//developed by Jacob Ellington

module timer(input clk, 
input [1:0] ctrl, 
output reg [3:0] sout,
output reg [3:0] msout,
output reg [3:0] mmsout);

always @ (posedge clk) begin
    if (ctrl == 2'b01) begin
        sout = 0;
        msout = 0;
        mmsout = 0;
    end
    else if (ctrl == 2'b10) begin
        mmsout = mmsout +1;
        if (mmsout == 10) begin
            msout = msout +1;
            mmsout = 0;
        end
        if (msout == 10) begin
            sout = sout +1;
            msout = 0;
            mmsout = 0;
        end
    end

end
endmodule
