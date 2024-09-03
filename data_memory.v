`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.08.2024 20:39:19
// Design Name: 
// Module Name: data_memory
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


module data_memory(
    input CLK,
    input WE,
    input [31:0] A,
    input [31:0] WD,
    output reg [31:0] RD
    );
    
    
reg [7:0] Memory [2^32-1:0];

always@(posedge CLK)begin
    if(WE)begin
        {Memory[A],Memory[A+1],Memory[A+2],Memory[A+3]}<=WD;
        RD<=WD;
    end
    if(~WE)begin
        RD<={Memory[A],Memory[A+1],Memory[A+2],Memory[A+3]};
    end
end
    
endmodule
