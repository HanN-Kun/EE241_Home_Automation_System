`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.12.2024 22:45:52
// Design Name: 
// Module Name: HomeSecuritySystem
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


module HomeSecuritySystem(clk,reset,window,door,motion,temp,general_alarm,leds,seg);

    input wire clk;
    input wire reset;
    input wire [3:0]window;
    input wire door;
    input wire motion;
    input wire temp;
    output wire general_alarm;
    output wire [6:0]leds;
    output wire [3:0] seg;
    
    wire Q0, Q1, Q2, Q3, Q4; 
    wire Q5;                 
    wire Q6;                 
    wire Q7;
    
    wire T0;                 
    wire T1;
    
    wire D0;                
    wire D1;

    JK_FlipFlop jk_ff0 (.clk(clk),.reset(reset),.J(window[0]),.K(window[0]),.Q(Q0));
    JK_FlipFlop jk_ff1 (.clk(clk),.reset(reset),.J(window[1]),.K(window[1]),.Q(Q1));
    JK_FlipFlop jk_ff2 (.clk(clk),.reset(reset),.J(window[2]),.K(window[2]),.Q(Q2));
    JK_FlipFlop jk_ff3 (.clk(clk),.reset(reset),.J(window[3]),.K(window[3]),.Q(Q3));
    JK_FlipFlop jk_ff4 (.clk(clk),.reset(reset),.J(door),.K(door),.Q(Q4));

    T_FlipFlop t_ff5 (.clk(clk), .reset(reset), .T(temp), .Q(Q_temp));

    D_FlipFlop d_ff6 (.clk(clk), .reset(reset), .D(motion), .Q(Q_motion));

    assign general_alarm = Q0 | Q1 | Q2 | Q3 | Q4 | T0 | T1;

    assign seg = Q0 + Q1 + Q2 + Q3 + Q4 + T0 + T1 + D0 + D1;

    // I could not adapt the sevseg part in the current version of project :(

endmodule