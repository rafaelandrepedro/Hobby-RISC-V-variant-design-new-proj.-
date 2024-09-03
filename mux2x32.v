`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.08.2024 13:04:49
// Design Name: 
// Module Name: mux_2x32
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


module mux2x32(
    input [31:0] A,
    input [31:0] B,
    input S,
    output REG [31:0] Y
    );
    
    
always@(*)begin
    case (S)
        1'b0: Y = A;
        1'b1: Y = B;
    endcase
end    

endmodule
