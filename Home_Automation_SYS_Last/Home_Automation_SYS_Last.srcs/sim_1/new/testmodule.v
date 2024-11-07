`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.11.2024 22:01:24
// Design Name: 
// Module Name: testmodule
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




module HomeSecuritySystem_tb;

    
    reg window1, window2, window3, window4;
    reg door;
    reg motion_sensor1, motion_sensor2;
    reg smoke_sensor, co_sensor;
    reg temp_sensor;
    reg water_leak_sensor;
    reg glass_break_sensor;
    reg panic_button;

    
    wire alarm;
    wire fault_window1, fault_window2, fault_window3, fault_window4;
    wire fault_door;
    wire fault_motion1, fault_motion2;
    wire fault_smoke, fault_co;
    wire fault_temp;
    wire fault_water_leak;
    wire fault_glass_break;
    wire fault_panic;

    
    HomeSecuritySystem uut (
        .window1(window1), .window2(window2), .window3(window3), .window4(window4),
        .door(door),
        .motion_sensor1(motion_sensor1), .motion_sensor2(motion_sensor2),
        .smoke_sensor(smoke_sensor), .co_sensor(co_sensor),
        .temp_sensor(temp_sensor),
        .water_leak_sensor(water_leak_sensor),
        .glass_break_sensor(glass_break_sensor),
        .panic_button(panic_button),
        .alarm(alarm),
        .fault_window1(fault_window1), .fault_window2(fault_window2), .fault_window3(fault_window3), .fault_window4(fault_window4),
        .fault_door(fault_door),
        .fault_motion1(fault_motion1), .fault_motion2(fault_motion2),
        .fault_smoke(fault_smoke), .fault_co(fault_co),
        .fault_temp(fault_temp),
        .fault_water_leak(fault_water_leak),
        .fault_glass_break(fault_glass_break),
        .fault_panic(fault_panic)
    );

    initial begin
        
        window1 = 1; window2 = 1; window3 = 1; window4 = 1;
        door = 1;
        motion_sensor1 = 1; motion_sensor2 = 1;
        smoke_sensor = 1; co_sensor = 1;
        temp_sensor = 1;
        water_leak_sensor = 1;
        glass_break_sensor = 1;
        panic_button = 1;
        
        #10;  

        
        window1 = 0;
        #10;
        window1 = 1;  // Eski haline döndür
        
       
        door = 0;
        #10;
        door = 1;

        
        motion_sensor1 = 0;
        #10;
        motion_sensor1 = 1;

        
        smoke_sensor = 0;
        #10;
        smoke_sensor = 1;

        
        co_sensor = 0;
        #10;
        co_sensor = 1;

        
        temp_sensor = 0;
        #10;
        temp_sensor = 1;

        
        water_leak_sensor = 0;
        #10;
        water_leak_sensor = 1;

        
        glass_break_sensor = 0;
        #10;
        glass_break_sensor = 1;

       
        panic_button = 0;
        #10;
        panic_button = 1;

        
        window2 = 0;
        motion_sensor2 = 0;
        glass_break_sensor = 0;
        #10;
       
        window2 = 1;
        motion_sensor2 = 1;
        glass_break_sensor = 1;

        #10; 
        $stop;
    end
endmodule

