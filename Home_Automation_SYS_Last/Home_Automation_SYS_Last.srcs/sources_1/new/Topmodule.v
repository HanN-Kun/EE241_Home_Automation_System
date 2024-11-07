`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.11.2024 21:49:09
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


module HomeSecuritySystem(
    input wire window1, window2, window3, window4, 
    input wire door,                             
    input wire motion_sensor1, motion_sensor2,    
    input wire smoke_sensor, co_sensor,          
    input wire temp_sensor,                      
    input wire water_leak_sensor,                
    input wire glass_break_sensor,               
    input wire panic_button,                      
    output wire alarm,                            
    output wire fault_window1,                   
    output wire fault_window2,                    
    output wire fault_window3,                    
    output wire fault_window4,                    
    output wire fault_door,                       
    output wire fault_motion1,                    
    output wire fault_motion2,                   
    output wire fault_smoke,                      
    output wire fault_co,                         
    output wire fault_temp,                       
    output wire fault_water_leak,                
    output wire fault_glass_break,                
    output wire fault_panic                      
);

   
    assign fault_window1 = ~window1;
    assign fault_window2 = ~window2;
    assign fault_window3 = ~window3;
    assign fault_window4 = ~window4;
    assign fault_door = ~door;
    assign fault_motion1 = ~motion_sensor1;
    assign fault_motion2 = ~motion_sensor2;
    assign fault_smoke = ~smoke_sensor;
    assign fault_co = ~co_sensor;
    assign fault_temp = ~temp_sensor;
    assign fault_water_leak = ~water_leak_sensor;
    assign fault_glass_break = ~glass_break_sensor;
    assign fault_panic = ~panic_button;

    
    assign alarm = fault_window1 | fault_window2 | fault_window3 | fault_window4 |
                   fault_door | fault_motion1 | fault_motion2 |
                   fault_smoke | fault_co | fault_temp |
                   fault_water_leak | fault_glass_break | fault_panic;

endmodule

