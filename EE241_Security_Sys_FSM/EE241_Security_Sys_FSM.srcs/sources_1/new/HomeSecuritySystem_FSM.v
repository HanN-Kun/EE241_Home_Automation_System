`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.12.2024 23:27:38
// Design Name: 
// Module Name: HomeSecuritySystem_FSM
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

module HomeSecuritySystem_FSM(clk,reset,window,door,motion,temp,panic_button,general_alarm,leds,alarm_count,total_count);

    input wire clk;
    input wire reset;
    input wire [3:0] window;
    input wire door;
    input wire motion;
    input wire temp;
    input wire panic_button;
    output reg general_alarm;
    output reg [7:0] leds;
    output reg [7:0] alarm_count;
    output reg [7:0] total_count;
    
    parameter RESET_STATE = 3'b000,
              IDLE = 3'b001,
              WINDOW_OPEN = 3'b010,
              DOOR_OPEN = 3'b011,
              MOTION_DETECTED = 3'b100,
              TEMPERATURE_CHANGE = 3'b101,
              PANIC_BUTTON_PRESSED = 3'b110,
              GENERAL_ALARM_STATE = 3'b111;

    reg [2:0] current_state, next_state;

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            current_state <= RESET_STATE;
            general_alarm <= 0;
            leds <= 8'b0;
            alarm_count <= 8'b0;
            total_count <= 8'b0;
        end else begin
            current_state <= next_state;
        end
    end

    always @(*) begin
        next_state = current_state;
        case (current_state)
            RESET_STATE: begin
                if (!reset) next_state = IDLE;
            end
            IDLE: begin
                if (window != 4'b0000) next_state = WINDOW_OPEN;
                else if (door) next_state = DOOR_OPEN;
                else if (motion) next_state = MOTION_DETECTED;
                else if (temp) next_state = TEMPERATURE_CHANGE;
                else if (panic_button) next_state = PANIC_BUTTON_PRESSED;
            end
            WINDOW_OPEN: begin
                next_state = GENERAL_ALARM_STATE;
            end
            DOOR_OPEN: begin
                next_state = GENERAL_ALARM_STATE;
            end
            MOTION_DETECTED: begin
                next_state = GENERAL_ALARM_STATE;
            end
            TEMPERATURE_CHANGE: begin
                next_state = GENERAL_ALARM_STATE;
            end
            PANIC_BUTTON_PRESSED: begin
                next_state = GENERAL_ALARM_STATE;
            end
            GENERAL_ALARM_STATE: begin
                if (reset) next_state = RESET_STATE;
            end
        endcase
    end

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            general_alarm <= 0;
            leds <= 8'b0;
        end else begin
            case (next_state)
                IDLE: begin
                    general_alarm <= 0;
                    leds <= 8'b0;
                end
                WINDOW_OPEN: begin
                    leds[0] <= 1;
                    total_count <= total_count + 1;
                end
                DOOR_OPEN: begin
                    leds[4] <= 1;
                    total_count <= total_count + 1;
                end
                MOTION_DETECTED: begin
                    leds[6] <= 1;
                    total_count <= total_count + 1;
                end
                TEMPERATURE_CHANGE: begin
                    leds[5] <= 1;
                    total_count <= total_count + 1;
                end
                PANIC_BUTTON_PRESSED: begin
                    leds[7] <= 1;
                    total_count <= total_count + 1;
                    alarm_count <= alarm_count + 1;
                end
                GENERAL_ALARM_STATE: begin
                    general_alarm <= 1;
                    alarm_count <= alarm_count + 1;
                end
            endcase
        end
    end
endmodule




