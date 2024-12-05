`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.12.2024 21:53:55
// Design Name: 
// Module Name: SequentialHomeSecuritySystem
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


module SequentialHomeSecuritySystem(window1, window2, window3, window4,door,motion_sensor,smoke_detector,temp_sensor,reset,alarm,fault_window1, fault_window2, fault_window3, fault_window4,fault_door,fault_motion_sensor, fault_smoke_detector, fault_temp_sensor);

    input window1, window2, window3, window4;
    input door;                              
    input motion_sensor;                      
    input temp_sensor;
    input smoke_detector;                        
    input reset;                             
    output alarm;                             
    output fault_window1, fault_window2, fault_window3, fault_window4;
    output fault_door;
    output fault_motion_sensor, fault_smoke_detector, fault_temp_sensor;


    wire q_window1, q_window2, q_window3, q_window4;
    wire q_door, q_motion_sensor, q_smoke_detector, q_temp_sensor;

    SR_Latch latch1 (.S(~window1), .R(reset), .Q(q_window1));
    SR_Latch latch2 (.S(~window2), .R(reset), .Q(q_window2));
    SR_Latch latch3 (.S(~window3), .R(reset), .Q(q_window3));
    SR_Latch latch4 (.S(~window4), .R(reset), .Q(q_window4));
    SR_Latch latch5 (.S(~door), .R(reset), .Q(q_door));
    SR_Latch latch6 (.S(~motion_sensor), .R(reset), .Q(q_motion_sensor));
    SR_Latch latch7 (.S(~smoke_detector), .R(reset), .Q(q_smoke_detector));
    SR_Latch latch8 (.S(~temp_sensor), .R(reset), .Q(q_temp_sensor));

    assign alarm = q_window1 | q_window2 | q_window3 | q_window4 |q_door | q_motion_sensor | q_smoke_detector | q_temp_sensor;

    assign fault_window1 = q_window1;
    assign fault_window2 = q_window2;
    assign fault_window3 = q_window3;
    assign fault_window4 = q_window4;
    assign fault_door = q_door;
    assign fault_motion_sensor = q_motion_sensor;
    assign fault_smoke_detector = q_smoke_detector;
    assign fault_temp_sensor = q_temp_sensor;

endmodule
