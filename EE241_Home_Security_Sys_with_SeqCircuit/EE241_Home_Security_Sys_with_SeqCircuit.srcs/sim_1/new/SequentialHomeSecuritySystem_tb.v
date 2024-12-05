`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.12.2024 22:00:26
// Design Name: 
// Module Name: SequentialHomeSecuritySystem_tb
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


module SequentialHomeSecuritySystem_tb;
    reg window1, window2, window3, window4;
    reg door, motion_sensor, smoke_detector, temp_sensor;
    reg reset;
    wire alarm;
    wire fault_window1, fault_window2, fault_window3, fault_window4;
    wire fault_door, fault_motion_sensor, fault_smoke_detector, fault_temp_sensor;

    SequentialHomeSecuritySystem uut (
        .window1(window1), .window2(window2), .window3(window3), .window4(window4),
        .door(door), .motion_sensor(motion_sensor),
        .smoke_detector(smoke_detector), .temp_sensor(temp_sensor),
        .reset(reset),
        .alarm(alarm),
        .fault_window1(fault_window1), .fault_window2(fault_window2),
        .fault_window3(fault_window3), .fault_window4(fault_window4),
        .fault_door(fault_door),
        .fault_motion_sensor(fault_motion_sensor),
        .fault_smoke_detector(fault_smoke_detector),
        .fault_temp_sensor(fault_temp_sensor)
    );

    initial 
    begin
        
        reset = 1;  
        window1 = 1; window2 = 1; window3 = 1; window4 = 1;
        door = 1; motion_sensor = 1; smoke_detector = 1; temp_sensor = 1;
        #10 reset = 0;  
                
        #10 window1 = 0;
        #10 window1 = 1;
        
        #10 door = 0;
        #10 door = 1;
        
        #10 smoke_detector = 0;
        #10 smoke_detector = 1;
        
        #10 motion_sensor = 0;
        #10 motion_sensor = 1;
        
        #10 temp_sensor = 0;
        #10 temp_sensor = 1;

        #10 reset = 1;
        #10 reset = 0;

        $stop;
    end
endmodule
