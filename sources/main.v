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
    output [4:0] LED,
    output dp
    );
    reg [0:1] state = 0; //see states.md
    reg [0:1] target = 0;
    wire [4:0] Letter;
    reg [4:0] lastLetter;
    reg [1:0] timercontrol = 2'b01; //MSB=enable LSB=reset
    wire [3:0] timers, timerms, timermms;
    reg [4:0] goalLetter;
    wire [4:0] randout;
    wire slowclock;
    wire [6:0] segm0,segm1,segm2;
    wire [3:0] anm0,anm1,anm2;
    wire dpm0;
    kbdWrapper kb(clk,kbdclk,kbddat,Letter);
    LDF lss(goalLetter,segm1);
    timer st(slowclock,clk,timercontrol,timers,timerms,timermms);
    slowClock slck(clk,slowclock);
    dispMux dpmulti(clk,state,segm0,segm1,segm2,anm0,anm1,anm2,dpm0,seg,an,dp);
    showLoss shlss(slowclock, segm2, anm2);
    randomLFSR rng(clk, randout);
    showWin(clk,slowclock,timers,timerms,timermms,segm0,anm0,dpm0);
    always @ (posedge clk) begin
    case (state) 
    0: // Win or start condition
        if (Letter == 21) begin //checks for key release
            state = 1;
            target = 2;
            timercontrol = 2'b01;
            end
        else begin
        timercontrol = 2'b00;
        end
        
    1: // consume keyup code
        begin
       if (Letter !=21 && Letter !=lastLetter) begin
       state = target;
       end
       goalLetter = randout;
       end
    2: //gameplay
    begin
        if (Letter != lastLetter) begin
        timercontrol = 2'b00;
        state = 1;
            if (Letter == goalLetter) begin 
                target = 0;
            end
            else begin
            end
        end
        else begin
        timercontrol = 2'b10;
        end
        end
    3: //loss
    begin
     if(Letter != lastLetter) begin
     state = 1;
     target = 2;
     timercontrol = 2'b01;
     end
     end
    endcase
    lastLetter = Letter;
    end
    assign LED = timercontrol;
endmodule
