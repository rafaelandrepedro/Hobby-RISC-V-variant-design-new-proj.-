`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.08.2024 10:08:18
// Design Name: 
// Module Name: counter
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


module counter(
    input CLK,
    input [31:0] PC_in,
    output reg [31:0] PC_out
    );

initial begin
    PC_out = 0;
end

always@(posedge CLK)begin
    PC_out<=PC_in;
end



endmodule
