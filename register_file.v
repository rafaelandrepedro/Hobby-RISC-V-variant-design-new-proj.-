`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.08.2024 11:09:44
// Design Name: 
// Module Name: register_file
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


module register_file(
    input CLK,
    input WE3,
    input [4:0] A1,
    input [4:0] A2,
    input [4:0] A3,
    input [31:0] WD3,
    output reg [31:0] RD1,
    output reg [31:0] RD2
    );
    
reg [31:0] Memory [31:0];
    

    
always@(posedge CLK)begin
    if(WE3)begin
        Memory[A3]<=WD3;
    end
    
    if(WE3&&A1==A3)begin
        RD1<=WD3;
    end 
    else begin
        RD1<=Memory[A1];
    end
    
    if(WE3&&A2==A3)begin
        RD2<=WD3;
    end 
    else begin
        RD2<=Memory[A2];
    end
end


endmodule
