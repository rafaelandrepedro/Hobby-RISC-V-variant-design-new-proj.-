`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.08.2024 18:11:36
// Design Name: 
// Module Name: mux2x5
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


module mux2x5(
    input [4:0] A,
    input [4:0] B,
    input S,
    output reg [4:0] Y
    );
    
always@(*)begin
    case (S)
        1'b0: Y = A;
        1'b1: Y = B;
    endcase
end    

endmodule
