`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.08.2024 16:21:56
// Design Name: 
// Module Name: alu_decoder
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


module alu_decoder(
    input [5:0] Funct,
    input [1:0] ALUOp,
    output [2:0] ALUControl
    );
    
    assign ALUControl=
        (ALUOp==2'b00)?(
            3'b010)
        :(
            (ALUOp==2'b01)?(
                3'b110
            )
            :(
                (ALUOp==2'b10)?(
                    (Funct==6'b100000)?(
                        3'b010
                    )
                    :(
                        (Funct==6'b100010)?(
                            3'b110
                        )
                        :(
                            (Funct==6'b100100)?(
                                3'b000
                            )
                            :(
                                (Funct==6'b100101)?(
                                    3'b001
                                )
                                :(
                                    (Funct==6'b101010)?(
                                        3'b111
                                    )
                                    :(
                                        3'bxxx
                                    )
                                )
                            )
                        )
                    )
                )
                :(
                    3'bxxx
                )
            )
        );
        
endmodule
