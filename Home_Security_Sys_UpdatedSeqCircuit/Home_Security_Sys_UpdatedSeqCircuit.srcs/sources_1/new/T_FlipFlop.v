`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.12.2024 22:36:27
// Design Name: 
// Module Name: T_FlipFlop
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


module T_FlipFlop(clk,reset,T,Q);

    input wire clk;
    input wire reset;
    input wire T;
    output reg Q;


    always @(posedge clk or posedge reset) begin
        if (reset) begin
            Q <= 1'b0;
        end else begin
            if (T) begin
                Q <= ~Q;
            end
        end
    end
endmodule
