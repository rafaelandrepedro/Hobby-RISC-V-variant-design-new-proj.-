`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.08.2024 15:51:03
// Design Name: 
// Module Name: control_unit
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


module control_unit(
    input Instr,
    output reg [2:0] MemtoReg,
    output reg MemWrite,
    output reg Branch,
    output reg [4:0] ALUControl,
    output reg [3:0] ALUSrc,
    output reg[3:0] DataSrc,
    output reg RegDst,
    output reg RegWrite
    );

always@(*)begin
    
end
    

endmodule
