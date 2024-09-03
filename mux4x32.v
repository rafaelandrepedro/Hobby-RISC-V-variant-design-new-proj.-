`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.08.2024 17:17:41
// Design Name: 
// Module Name: mux4x32
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


module mux4x32(
    input [31:0] A,
    input [31:0] B,
    input [31:0] C,
    input [31:0] D,
    input [1:0] S,
    output reg [31:0] Y
    );
    
always@(*)begin
    case (S)
        2'b00: Y = A;
        2'b01: Y = B;
        2'b10: Y = C;
        2'b11: Y = D;
    endcase
end
    
endmodule
