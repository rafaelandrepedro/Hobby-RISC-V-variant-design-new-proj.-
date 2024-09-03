`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.08.2024 14:55:27
// Design Name: 
// Module Name: custom_alu
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


module custom_alu(
    input [31:0] RA,
    input [31:0] RB,
    input [4:0] ALU_OP,
    output reg [31:0] Y,
    output reg C
    );
    
always@(*)begin
    case (ALU_OP)
        5'b00000: begin
            Y = RA+RB;
            C = Y!=0;
        end
        5'b00001: begin
            Y = RA-RB;
            C = Y!=0;
        end
        5'b00010: begin
            Y = RA^RB;
            C = Y!=0;
        end
        5'b00011: begin
            Y = RA^^RB;
            C = Y!=0;
        end
        5'b00100: begin
            Y = ~(RA^RB);
            C = Y!=0;
        end
        5'b00101: begin
            Y = ~(RA^^RB);
            C = Y!=0;
        end
        5'b00110: begin
            Y = RA|RB;
            C = Y!=0;
        end
        5'b00111: begin
            Y = RA||RB;
            C = Y!=0;
        end
        5'b01000: begin
            Y = RA&RB;
            C = Y!=0;
        end
        5'b01001: begin
            Y = RA&&RB;
            C = Y!=0;
        end
        5'b01010: begin
            Y = RA<<RB;
            C = Y!=0;
        end
        5'b01011: begin
            Y = RA>>RB;
            C = Y!=0;
        end
        5'b01100: begin
            Y = RA*RB;
            C = Y!=0;
        end
        5'b01101: begin
            Y = RA/RB;
            C = Y!=0;
        end
        5'b01110: begin
            Y = {31'b0, C};
            C = RA<RB;
        end
        5'b01111: begin
            Y = {31'b0, C};
            C = RA<=RB;
        end
        5'b10000: begin
            Y = {31'b0, C};
            C = RA>RB;
        end
        5'b10001: begin
            Y = {31'b0, C};
            C = RA>=RB;
        end
        5'b10010: begin
            Y = {31'b0, C};
            C = RA==RB;
        end
        5'b10011: begin
            Y = {31'b0, C};
            C = RA!=RB;
        end
        5'b10100: begin
            Y = RA;
            C = Y!=0;
        end
        5'b10101: begin
            Y = RB;
            C = Y!=0;
        end
    endcase
end    
    
endmodule
