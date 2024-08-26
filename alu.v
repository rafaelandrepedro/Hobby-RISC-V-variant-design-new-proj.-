`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.08.2024 16:43:30
// Design Name: 
// Module Name: alu
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


module alu(
    input clk,
    input [4:0] a,
    input [4:0] b,
    input [2:0] f,
    output reg [4:0] y,
    output reg cout
    );
    
wire [4:0] bb;

assign bb=f[2]?~b:b;

always@(posedge clk)begin
    
    if(f[0]==0&&f[1]==0)
        y=a&bb;
    if(f[0]==1&&f[1]==0)
        y=a|bb;
    if(f[0]==0&&f[1]==1)
        y=a+bb;
    if(f[0]==1&&f[1]==1)
        y=a<b?1:0;
        
    cout=a+bb>=32?1:0;
end

endmodule
