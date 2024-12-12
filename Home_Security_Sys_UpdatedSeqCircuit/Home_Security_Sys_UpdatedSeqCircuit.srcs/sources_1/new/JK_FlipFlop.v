`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.12.2024 22:30:46
// Design Name: 
// Module Name: JK_FlipFlop
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



module JK_FlipFlop(clk,reset,J,K,Q);

    input wire clk;
    input wire reset;
    input wire J;
    input wire K;
    output reg Q;

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            Q <= 1'b0;
        end else begin
            case ({J, K})
                2'b00: Q <= Q;         
                2'b01: Q <= 1'b0;      
                2'b10: Q <= 1'b1;      
                2'b11: Q <= ~Q;        
            endcase
        end
    end
endmodule