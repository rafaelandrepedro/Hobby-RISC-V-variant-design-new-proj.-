`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.08.2024 09:09:50
// Design Name: 
// Module Name: mux8x32
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


module mux8x32(
    input [31:0] A,
    input [31:0] B,
    input [31:0] C,
    input [31:0] D,
    input [31:0] E,
    input [31:0] F,
    input [31:0] G,
    input [31:0] H,
    input [2:0] S,
    output reg [31:0] Y
    );
    
always@(*)begin
    case (S)
        3'b000: Y = A;
        3'b001: Y = B;
        3'b010: Y = C;
        3'b011: Y = D;
        3'b100: Y = E;
        3'b101: Y = F;
        3'b110: Y = G;
        3'b111: Y = H;
    endcase
end
    
endmodule
