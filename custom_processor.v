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


module custom_processor(
    output [31:0] PC_out,
    output [31:0] PC_in,
    output [31:0] PCPlus4,
    output [31:0] Instr,
    output [31:0] RA,
    output [31:0] RB,
    output [31:0] SrcA,
    output [31:0] SrcB,
    output Zero,
    output [31:0] ALUResult,
    output [31:0] ReadData,
    output [31:0] AddressData,
    output [31:0] WriteData,
    output [31:0] Result,
    output [31:0] SignImm,
    output [31:0] PCBranch,
    
    output [2:0] MemtoReg,
    output MemWrite,
    output Branch,
    output [4:0] ALUControl,
    output [3:0] ALUSrc,
    output [3:0] DataSrc,
    output RegDst,
    output RegWrite,
    output PCSrc,
    
    output CLK
    );
    
clock CLOCK(
.CLK(CLK)
);
    
counter COUNTER(
.CLK(CLK),
.PC_in(PC_in),
.PC_out(PC_out)
);

instruction_memory INSTRUCTION_MEMORY(
.A(PC_out),
.RD(Instr)
);

register_file REGISTER_FILE(
.CLK(CLK),
.WE3(Instr[11:7]),
.A1(Instr[19:15]),
.A2(Instr[24:20]),
.A3(WriteReg),
.WD3(Result),
.RD1(RA),
.RD2(RB)
);

custom_alu CUSTOM_ALU(
.RA(SrcA),
.RB(SrcB),
.ALU_OP(ALUControl),
.Y(ALUResult),
.C(Zero)
);

data_memory DATA_MEMORY(
.CLK(CLK),
.WE(MemWrite),
.A(AddressData),
.WD(WriteData),
.RD(ReadData)
);

sign_extend SIGN_EXTEND(
.Instr(Instr[31:12]),
.SignImm(SignImm)
);

adder ADDER1(
.A(PC_out),
.B(4),
.Y(PCPlus4)
);

adder ADDER2(
.A(SignImm<<2),
.B(PCPlus4),
.Y(PCBranch)
);

mux2x32 MUX1(
.A(PCPlus4),
.B(PCBranch),
.S(PCSrc),
.Y(PC_in)
);

mux4x32 MUX2(
.A(RA),
.B(RB),
.C(SignImm),
.D(0),
.S(ALUSrc[1:0]),
.Y(SrcA)
);

mux4x32 MUX3(
.A(RA),
.B(RB),
.C(SignImm),
.D(0),
.S(ALUSrc[3:2]),
.Y(SrcB)
);

mux4x32 MUX4(
.A(RA),
.B(RB),
.C(ALUResult),
.D(SignImm),
.S(DataSrc[1:0]),
.Y(AddressData)
);

mux4x32 MUX5(
.A(RA),
.B(RB),
.C(ALUResult),
.D(SignImm),
.S(DataSrc[3:2]),
.Y(WriteData)
);

mux8x32 MUX6(
.A(RA),
.B(RB),
.C(ALUResult),
.D(SignImm),
.E(ReadData),
.F(0),
.G(0),
.H(0),
.S(MemtoReg),
.Y(Result)
);

control_unit CONTROL_UNIT(
.Instr(Instr),
.MemtoReg(MemtoReg),
.MemWrite(MemWrite),
.Branch(Branch),
.ALUControl(ALUControl),
.ALUSrc(ALUSrc),
.ALUSrc(DataSrc),
.RegDst(RegDst),
.RegWrite(RegWrite)
);

assign PCSrc=Branch&Zero;
    
endmodule