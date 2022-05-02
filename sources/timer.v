//Timer module
//developed by Jacob Ellington

module timer(input slowclk, input clk, 
input [1:0] ctrl, 
output  [3:0] Osout,
output  [3:0] Omsout,
output  [3:0] Ommsout);
reg ducktape = 0;
reg prevSlowClk = 0;
reg [3:0] sout, msout, mmsout;
always @ (posedge clk) begin
    if (ctrl == 2'b01) begin
        sout = 0;
        msout = 0;
        mmsout = 0;
    end
    
    if (ctrl == 2'b10 & slowclk & ~prevSlowClk) begin    
        ducktape = ducktape + 1;
        if (ducktape == 1) begin
        mmsout = mmsout +1;
        mmsout = mmsout +1;
        end
        if (mmsout == 10) begin
            msout = msout +1;
            mmsout = 0;
        end
        if (msout >= 10) begin
            sout = sout +1;
            msout = 0;
            mmsout = 0;
        end
    end
    
    prevSlowClk = slowclk;

end

assign Osout = sout;
assign Omsout = msout;
assign Ommsout = mmsout;
endmodule
