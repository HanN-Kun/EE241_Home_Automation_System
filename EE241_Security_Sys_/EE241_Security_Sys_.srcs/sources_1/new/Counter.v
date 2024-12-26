`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.12.2024 23:05:11
// Design Name: 
// Module Name: Counter
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


module Counter(clk,enable,reset,count);

    input wire clk;
    input wire reset;
    input wire enable;
    output reg [7:0] count;

    always @(posedge clk or posedge reset) begin
        if (reset) begin
            count <= 8'b0;
        end else if (enable) begin
            count <= count + 1;
        end
    end
endmodule


