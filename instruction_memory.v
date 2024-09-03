`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.08.2024 09:59:01
// Design Name: 
// Module Name: instruction_memory
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


module instruction_memory(
    input [31:0] A,
    output reg [31:0] RD
    );
    
reg [31:0] Memory [2^32-1:0];

//0000000 00000 00000 000 00000 0000000
//funct7 rs2 rs1 funct3 rd opcode
initial begin
{Memory[3],Memory[2],Memory[1],Memory[0]} = 32'b11011110101011011100000000110111;
{Memory[7],Memory[6],Memory[5],Memory[4]} = 32'b11101110111100000000000000010011;
{Memory[7],Memory[6],Memory[5],Memory[4]} = 32'b00000000000000000000000000010011;
end
    
always@(*)begin
    RD<=Memory[A];
end
    
endmodule
