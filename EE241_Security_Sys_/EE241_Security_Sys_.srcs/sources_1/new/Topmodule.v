`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.12.2024 23:09:27
// Design Name: 
// Module Name: Topmodule
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


module Topmodule(clk,reset,window,door,motion,temp,panic_button,general_alarm,leds,alarm_count, total_count);

    input wire clk;
    input wire reset;
    input wire [3:0]window;
    input wire door;
    input wire motion;
    input wire temp;
    input wire panic_button;
    output wire general_alarm;
    output wire [7:0]leds;  
    output wire [7:0] alarm_count; 
    output wire [7:0] total_count; 

    wire Q0, Q1, Q2, Q3, Q4;
    wire Q_temp;
    wire Q_motion;
    wire Q_panic;

    JK_FlipFlop jk_ff0 (.clk(clk),.reset(reset),.J(window[0]),.K(window[0]),.Q(Q0));
    JK_FlipFlop jk_ff1 (.clk(clk),.reset(reset),.J(window[1]),.K(window[1]),.Q(Q1));
    JK_FlipFlop jk_ff2 (.clk(clk),.reset(reset),.J(window[2]),.K(window[2]),.Q(Q2));
    JK_FlipFlop jk_ff3 (.clk(clk),.reset(reset),.J(window[3]),.K(window[3]),.Q(Q3));
    JK_FlipFlop jk_ff4 (.clk(clk),.reset(reset),.J(door),.K(door),.Q(Q4));
    
    T_FlipFlop t_ff5 (.clk(clk), .reset(reset), .T(temp), .Q(Q_temp));
    
    D_FlipFlop d_ff6 (.clk(clk), .reset(reset), .D(motion), .Q(Q_motion));
    
    
    JK_FlipFlop jk_ff_panic (.clk(clk), .reset(reset), .J(panic_button), .K(panic_button), .Q(Q_panic));

   
    assign general_alarm = Q0 | Q1 | Q2 | Q3 | Q4 | Q_temp | Q_motion | Q_panic;

    assign leds[0] = Q0;
    assign leds[1] = Q1;
    assign leds[2] = Q2;
    assign leds[3] = Q3;
    assign leds[4] = Q4;
    assign leds[5] = Q_temp;
    assign leds[6] = Q_motion;
    assign leds[7] = general_alarm;

    Counter alarm_counter (.clk(clk), .reset(reset), .enable(general_alarm), .count(alarm_count));
    				
    Counter motion_counter (.clk(clk), .reset(reset), .enable(Q_motion), .count(motion_count));

    wire any_sensor_toggled = Q0 | Q1 | Q2 | Q3 | Q4 | Q_temp | Q_motion;
    
    Counter total_counter (.clk(clk), .reset(reset), .enable(any_sensor_toggled), .count(total_count));

endmodule
