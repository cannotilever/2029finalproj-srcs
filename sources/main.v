`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: WPI ECE 2029
// Engineer: Jacob Ellington
//
// Target Devices: Baysis 3
//////////////////////////////////////////////////////////////////////////////////


module main(
    input clk,
    input kbdclk,
    input kbddat,
    output [3:0] an,
    output [0:6] seg,
    output [4:0] LED
    );
    reg [0:1] state = 0; //see states.md
    reg [0:1] target = 0;
    wire [4:0] Letter;
    reg [4:0] lastLetter;
    reg [1:0] timercontrol = 2'b01; //MSB=enable LSB=reset
    wire [4:0] timerout;
    reg [4:0] goalLetter;
    wire [4:0] randout;
    wire slowclock;
    wire [6:0] segm0,segm1,segm2;
    wire [3:0] anm0,anm1,anm2;
   // wire [3:0] ones, tens, hundreds, thousands;
   // wire [13:0] timerout;
    kbdWrapper kb(clk,kbdclk,kbddat,Letter);
//    bin2bcd b2b(timerout,ones,tens,hundreds,thousands);
    LDF lss(goalLetter,segm1);
    timer st(clk,timercontrol,timerout);
    slowClock slck(clk,slowclock);
    dispMux dpmulti(clk,state,segm0,segm1,segm2,anm0,anm1,anm2,seg,an);
    showLoss shlss(slowclock, segm2, anm2);
    randomLFSR rng(clk, randout);
    
    always @ (posedge clk) begin
    case (state) 
    0: // Win or start condition
        if (Letter == 21) begin //checks for key release
            state = 1;
            target = 2;
            timercontrol = 2'b01;
            end
        else begin
        timercontrol = 2'b01;
        end
        
    1: // consume keyup code
        begin
       if (Letter !=21 && Letter !=lastLetter) begin
       state = target;
       end
       goalLetter = randout;
       end
    2: //gameplay
        if (Letter != lastLetter) begin
        timercontrol = 2'b00;
        state = 1;
            if (Letter == goalLetter) begin 
                target = 0;
            end
            else begin
                target = 3;
            end
        end
        else begin
        timercontrol = 2'b10;
        end
    3: //loss
     if(Letter != lastLetter) begin
     state = 1;
     target = 2;
     timercontrol = 2'b01;
     end
    endcase
    lastLetter = Letter;
    end
    assign LED = timerout;
endmodule
