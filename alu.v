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
    input [31:0] A,
    input [31:0] B,
    input [2:0] F,
    output reg [31:0] Y,
    output reg Cout,
    output reg Zero
    );
    
wire [31:0] BB;

assign BB=F[2]?~B:B;

always@(*)begin
    
    if(F[0]==0&&F[1]==0)
        Y=A&BB;
    if(F[0]==1&&F[1]==0)
        Y=A|BB;
    if(F[0]==0&&F[1]==1)
        Y=A+BB;
    if(F[0]==1&&F[1]==1)
        Y=A<B?1:0;
        
    Cout=A+BB>=2^32?1:0;
    Zero=A==0?1:0;
end

endmodule
