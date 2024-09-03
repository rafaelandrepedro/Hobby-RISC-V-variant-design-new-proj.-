`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.08.2024 16:21:56
// Design Name: 
// Module Name: main_decoder
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


module main_decoder(
    input [5:0] Opcode,
    output MemtoReg,
    output MemWrite,
    output Branch,
    output ALUSrc,
    output RegDst,
    output RegWrite,
    output [1:0] ALUOp
    );
    
assign RegWrite=(Opcode==6'b000000||Opcode==6'b100011||Opcode==6'b001000)?1:0;
assign RegDst=(Opcode==6'b000000)?1:0;
assign ALUSrc=(Opcode==6'b100011||Opcode==6'b101011||Opcode==6'b001000)?1:0;
assign Branch=(Opcode==6'b000100)?1:0;
assign MemWrite=(Opcode==6'b101011)?1:0;
assign MemtoReg=(Opcode==6'b100011)?1:0;
assign ALUOp[0]=(Opcode==6'b000100)?1:0;
assign ALUOp[1]=(Opcode==6'b000000)?1:0;
    
    
endmodule
