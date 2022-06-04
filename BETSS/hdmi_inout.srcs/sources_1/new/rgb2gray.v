`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.05.2022 19:03:41
// Design Name: 
// Module Name: rgb2gray
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


module rgb2gray(
    input wire [23:0] pData,
    input wire  hSync,
    input wire  vsync,
    input wire  VDE,
    input wire  pixelClk,
    output wire [23:0] pData_out,
    output wire  hSync_out,
    output wire  vsync_out,
    output wire  VDE_out,
    output wire  pixelClk_out
    );   
    
    reg [7:0] red, green, blue = 0;
    reg [7:0] rgb;
    
    always @(*)
    begin
        red = pData[23:16];
        green = pData[15:8];
        blue = pData[7:0];
        rgb = (red >> 2) + (red >> 5) + (green >> 1) + (green >> 4) + (blue >> 4) + (blue >>5);
                
    end 
    
 assign   hSync_out     =  hSync; 
 assign   vsync_out     =  vsync; 
 assign   VDE_out       =  VDE;  
 assign   pixelClk_out  =  pixelClk;
 assign   pData_out     =  pData;//{0, 255, 0};
 
endmodule
