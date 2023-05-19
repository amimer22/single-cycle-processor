module Controler(
  input  [6:0] io_opcode,
  input  [2:0] io_funct3,
  input  [6:0] io_funct7,
  output [1:0] io_ImmSrc,
  output       io_AluSrc,
  output       io_ResSrc,
  output [2:0] io_AluCtrl,
  output [2:0] io_operation
);
  wire [1:0] _GEN_2 = 7'h23 == io_opcode ? 2'h2 : 2'h0; // @[Controler.scala 29:18 30:23 61:26]
  wire  _GEN_4 = 7'h3 == io_opcode ? 1'h0 : 7'h23 == io_opcode; // @[Controler.scala 30:23 49:25]
  wire  _GEN_5 = 7'h3 == io_opcode | 7'h23 == io_opcode; // @[Controler.scala 30:23 51:23]
  wire [1:0] _GEN_6 = 7'h3 == io_opcode ? 2'h2 : _GEN_2; // @[Controler.scala 30:23 53:26]
  wire  _GEN_8 = 7'h13 == io_opcode ? 1'h0 : _GEN_4; // @[Controler.scala 30:23 41:25]
  wire  _GEN_9 = 7'h13 == io_opcode | _GEN_5; // @[Controler.scala 30:23 43:23]
  wire [1:0] _GEN_10 = 7'h13 == io_opcode ? 2'h1 : _GEN_6; // @[Controler.scala 30:23 45:26]
  wire  _GEN_12 = 7'h33 == io_opcode ? 1'h0 : _GEN_8; // @[Controler.scala 30:23 33:25]
  wire [1:0] _GEN_15 = 7'h33 == io_opcode ? 2'h0 : _GEN_10; // @[Controler.scala 30:23 37:26]
  wire  _T_4 = io_operation == 3'h0; // @[Controler.scala 65:23]
  wire  _T_5 = io_funct3 == 3'h0; // @[Controler.scala 65:49]
  wire  _T_6 = io_operation == 3'h0 & io_funct3 == 3'h0; // @[Controler.scala 65:36]
  wire  _T_7 = io_funct7 == 7'h0; // @[Controler.scala 65:75]
  wire  _T_15 = io_funct3 == 3'h7; // @[Controler.scala 71:54]
  wire  _T_24 = io_operation == 3'h1; // @[Controler.scala 77:28]
  wire  _T_32 = io_operation == 3'h2 & io_funct3 == 3'h2; // @[Controler.scala 83:41]
  wire [2:0] _GEN_16 = _T_32 ? 3'h0 : 3'h4; // @[Controler.scala 86:67 87:20 90:20]
  wire [2:0] _GEN_17 = io_operation == 3'h2 & io_funct3 == 3'h2 ? 3'h0 : _GEN_16; // @[Controler.scala 83:67 84:20]
  wire [2:0] _GEN_18 = _T_24 & _T_15 ? 3'h2 : _GEN_17; // @[Controler.scala 80:67 81:20]
  wire [2:0] _GEN_19 = io_operation == 3'h1 & _T_5 ? 3'h0 : _GEN_18; // @[Controler.scala 77:67 78:20]
  wire [2:0] _GEN_20 = _T_4 & io_funct3 == 3'h6 & _T_7 ? 3'h3 : _GEN_19; // @[Controler.scala 74:97 75:20]
  wire [2:0] _GEN_21 = _T_4 & io_funct3 == 3'h7 & _T_7 ? 3'h2 : _GEN_20; // @[Controler.scala 71:97 72:20]
  wire [2:0] _GEN_22 = _T_6 & io_funct7 == 7'h20 ? 3'h1 : _GEN_21; // @[Controler.scala 68:97 69:20]
  assign io_ImmSrc = {{1'd0}, _GEN_12};
  assign io_AluSrc = 7'h33 == io_opcode ? 1'h0 : _GEN_9; // @[Controler.scala 30:23 35:23]
  assign io_ResSrc = 7'h33 == io_opcode | _GEN_9; // @[Controler.scala 30:23 36:23]
  assign io_AluCtrl = io_operation == 3'h0 & io_funct3 == 3'h0 & io_funct7 == 7'h0 ? 3'h0 : _GEN_22; // @[Controler.scala 65:92 66:20]
  assign io_operation = {{1'd0}, _GEN_15};
endmodule
module RegisterFile(
  input         clock,
  input  [4:0]  io_addr1,
  output [31:0] io_data1,
  input  [4:0]  io_addr2,
  output [31:0] io_data2,
  input  [4:0]  io_addrwr,
  input  [31:0] io_datawr
);
`ifdef RANDOMIZE_MEM_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_MEM_INIT
  reg [31:0] registers [0:31]; // @[RegisterFile.scala 22:24]
  wire  registers_io_wrtest_MPORT_en; // @[RegisterFile.scala 22:24]
  wire [4:0] registers_io_wrtest_MPORT_addr; // @[RegisterFile.scala 22:24]
  wire [31:0] registers_io_wrtest_MPORT_data; // @[RegisterFile.scala 22:24]
  wire  registers_io_data1_MPORT_en; // @[RegisterFile.scala 22:24]
  wire [4:0] registers_io_data1_MPORT_addr; // @[RegisterFile.scala 22:24]
  wire [31:0] registers_io_data1_MPORT_data; // @[RegisterFile.scala 22:24]
  wire  registers_io_data2_MPORT_en; // @[RegisterFile.scala 22:24]
  wire [4:0] registers_io_data2_MPORT_addr; // @[RegisterFile.scala 22:24]
  wire [31:0] registers_io_data2_MPORT_data; // @[RegisterFile.scala 22:24]
  wire [31:0] registers_MPORT_data; // @[RegisterFile.scala 22:24]
  wire [4:0] registers_MPORT_addr; // @[RegisterFile.scala 22:24]
  wire  registers_MPORT_mask; // @[RegisterFile.scala 22:24]
  wire  registers_MPORT_en; // @[RegisterFile.scala 22:24]
  wire [31:0] registers_MPORT_1_data; // @[RegisterFile.scala 22:24]
  wire [4:0] registers_MPORT_1_addr; // @[RegisterFile.scala 22:24]
  wire  registers_MPORT_1_mask; // @[RegisterFile.scala 22:24]
  wire  registers_MPORT_1_en; // @[RegisterFile.scala 22:24]
  wire [31:0] registers_MPORT_2_data; // @[RegisterFile.scala 22:24]
  wire [4:0] registers_MPORT_2_addr; // @[RegisterFile.scala 22:24]
  wire  registers_MPORT_2_mask; // @[RegisterFile.scala 22:24]
  wire  registers_MPORT_2_en; // @[RegisterFile.scala 22:24]
  wire [31:0] registers_MPORT_3_data; // @[RegisterFile.scala 22:24]
  wire [4:0] registers_MPORT_3_addr; // @[RegisterFile.scala 22:24]
  wire  registers_MPORT_3_mask; // @[RegisterFile.scala 22:24]
  wire  registers_MPORT_3_en; // @[RegisterFile.scala 22:24]
  assign registers_io_wrtest_MPORT_en = 1'h1;
  assign registers_io_wrtest_MPORT_addr = 5'h3;
  assign registers_io_wrtest_MPORT_data = registers[registers_io_wrtest_MPORT_addr]; // @[RegisterFile.scala 22:24]
  assign registers_io_data1_MPORT_en = 1'h1;
  assign registers_io_data1_MPORT_addr = io_addr1;
  assign registers_io_data1_MPORT_data = registers[registers_io_data1_MPORT_addr]; // @[RegisterFile.scala 22:24]
  assign registers_io_data2_MPORT_en = 1'h1;
  assign registers_io_data2_MPORT_addr = io_addr2;
  assign registers_io_data2_MPORT_data = registers[registers_io_data2_MPORT_addr]; // @[RegisterFile.scala 22:24]
  assign registers_MPORT_data = io_datawr;
  assign registers_MPORT_addr = io_addrwr;
  assign registers_MPORT_mask = 1'h1;
  assign registers_MPORT_en = 1'h1;
  assign registers_MPORT_1_data = 32'h9;
  assign registers_MPORT_1_addr = 5'h0;
  assign registers_MPORT_1_mask = 1'h1;
  assign registers_MPORT_1_en = 1'h1;
  assign registers_MPORT_2_data = 32'h6;
  assign registers_MPORT_2_addr = 5'h1;
  assign registers_MPORT_2_mask = 1'h1;
  assign registers_MPORT_2_en = 1'h1;
  assign registers_MPORT_3_data = 32'h5;
  assign registers_MPORT_3_addr = 5'h2;
  assign registers_MPORT_3_mask = 1'h1;
  assign registers_MPORT_3_en = 1'h1;
  assign io_data1 = registers_io_data1_MPORT_data; // @[RegisterFile.scala 40:14]
  assign io_data2 = registers_io_data2_MPORT_data; // @[RegisterFile.scala 41:14]
  always @(posedge clock) begin
    if (registers_MPORT_en & registers_MPORT_mask) begin
      registers[registers_MPORT_addr] <= registers_MPORT_data; // @[RegisterFile.scala 22:24]
    end
    if (registers_MPORT_1_en & registers_MPORT_1_mask) begin
      registers[registers_MPORT_1_addr] <= registers_MPORT_1_data; // @[RegisterFile.scala 22:24]
    end
    if (registers_MPORT_2_en & registers_MPORT_2_mask) begin
      registers[registers_MPORT_2_addr] <= registers_MPORT_2_data; // @[RegisterFile.scala 22:24]
    end
    if (registers_MPORT_3_en & registers_MPORT_3_mask) begin
      registers[registers_MPORT_3_addr] <= registers_MPORT_3_data; // @[RegisterFile.scala 22:24]
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_MEM_INIT
  _RAND_0 = {1{`RANDOM}};
  for (initvar = 0; initvar < 32; initvar = initvar+1)
    registers[initvar] = _RAND_0[31:0];
`endif // RANDOMIZE_MEM_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module IMemory(
  input         clock,
  input  [31:0] io_IP_in,
  output [31:0] io_instruction
);
`ifdef RANDOMIZE_MEM_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_MEM_INIT
  reg [31:0] Memory [0:31]; // @[IMemory.scala 16:22]
  wire  Memory_io_instruction_MPORT_en; // @[IMemory.scala 16:22]
  wire [4:0] Memory_io_instruction_MPORT_addr; // @[IMemory.scala 16:22]
  wire [31:0] Memory_io_instruction_MPORT_data; // @[IMemory.scala 16:22]
  wire [31:0] Memory_MPORT_data; // @[IMemory.scala 16:22]
  wire [4:0] Memory_MPORT_addr; // @[IMemory.scala 16:22]
  wire  Memory_MPORT_mask; // @[IMemory.scala 16:22]
  wire  Memory_MPORT_en; // @[IMemory.scala 16:22]
  wire [31:0] Memory_MPORT_1_data; // @[IMemory.scala 16:22]
  wire [4:0] Memory_MPORT_1_addr; // @[IMemory.scala 16:22]
  wire  Memory_MPORT_1_mask; // @[IMemory.scala 16:22]
  wire  Memory_MPORT_1_en; // @[IMemory.scala 16:22]
  wire [31:0] Memory_MPORT_2_data; // @[IMemory.scala 16:22]
  wire [4:0] Memory_MPORT_2_addr; // @[IMemory.scala 16:22]
  wire  Memory_MPORT_2_mask; // @[IMemory.scala 16:22]
  wire  Memory_MPORT_2_en; // @[IMemory.scala 16:22]
  wire [31:0] Memory_MPORT_3_data; // @[IMemory.scala 16:22]
  wire [4:0] Memory_MPORT_3_addr; // @[IMemory.scala 16:22]
  wire  Memory_MPORT_3_mask; // @[IMemory.scala 16:22]
  wire  Memory_MPORT_3_en; // @[IMemory.scala 16:22]
  wire [31:0] Memory_MPORT_4_data; // @[IMemory.scala 16:22]
  wire [4:0] Memory_MPORT_4_addr; // @[IMemory.scala 16:22]
  wire  Memory_MPORT_4_mask; // @[IMemory.scala 16:22]
  wire  Memory_MPORT_4_en; // @[IMemory.scala 16:22]
  wire [31:0] Memory_MPORT_5_data; // @[IMemory.scala 16:22]
  wire [4:0] Memory_MPORT_5_addr; // @[IMemory.scala 16:22]
  wire  Memory_MPORT_5_mask; // @[IMemory.scala 16:22]
  wire  Memory_MPORT_5_en; // @[IMemory.scala 16:22]
  wire [31:0] Memory_MPORT_6_data; // @[IMemory.scala 16:22]
  wire [4:0] Memory_MPORT_6_addr; // @[IMemory.scala 16:22]
  wire  Memory_MPORT_6_mask; // @[IMemory.scala 16:22]
  wire  Memory_MPORT_6_en; // @[IMemory.scala 16:22]
  assign Memory_io_instruction_MPORT_en = 1'h1;
  assign Memory_io_instruction_MPORT_addr = io_IP_in[4:0];
  assign Memory_io_instruction_MPORT_data = Memory[Memory_io_instruction_MPORT_addr]; // @[IMemory.scala 16:22]
  assign Memory_MPORT_data = 32'h2081b3;
  assign Memory_MPORT_addr = 5'h0;
  assign Memory_MPORT_mask = 1'h1;
  assign Memory_MPORT_en = 1'h1;
  assign Memory_MPORT_1_data = 32'h402081b3;
  assign Memory_MPORT_1_addr = 5'h1;
  assign Memory_MPORT_1_mask = 1'h1;
  assign Memory_MPORT_1_en = 1'h1;
  assign Memory_MPORT_2_data = 32'h20f1b3;
  assign Memory_MPORT_2_addr = 5'h2;
  assign Memory_MPORT_2_mask = 1'h1;
  assign Memory_MPORT_2_en = 1'h1;
  assign Memory_MPORT_3_data = 32'h20e1b3;
  assign Memory_MPORT_3_addr = 5'h3;
  assign Memory_MPORT_3_mask = 1'h1;
  assign Memory_MPORT_3_en = 1'h1;
  assign Memory_MPORT_4_data = 32'h208193;
  assign Memory_MPORT_4_addr = 5'h4;
  assign Memory_MPORT_4_mask = 1'h1;
  assign Memory_MPORT_4_en = 1'h1;
  assign Memory_MPORT_5_data = 32'h50a183;
  assign Memory_MPORT_5_addr = 5'h5;
  assign Memory_MPORT_5_mask = 1'h1;
  assign Memory_MPORT_5_en = 1'h1;
  assign Memory_MPORT_6_data = 32'h20a1a3;
  assign Memory_MPORT_6_addr = 5'h6;
  assign Memory_MPORT_6_mask = 1'h1;
  assign Memory_MPORT_6_en = 1'h1;
  assign io_instruction = Memory_io_instruction_MPORT_data; // @[IMemory.scala 34:20]
  always @(posedge clock) begin
    if (Memory_MPORT_en & Memory_MPORT_mask) begin
      Memory[Memory_MPORT_addr] <= Memory_MPORT_data; // @[IMemory.scala 16:22]
    end
    if (Memory_MPORT_1_en & Memory_MPORT_1_mask) begin
      Memory[Memory_MPORT_1_addr] <= Memory_MPORT_1_data; // @[IMemory.scala 16:22]
    end
    if (Memory_MPORT_2_en & Memory_MPORT_2_mask) begin
      Memory[Memory_MPORT_2_addr] <= Memory_MPORT_2_data; // @[IMemory.scala 16:22]
    end
    if (Memory_MPORT_3_en & Memory_MPORT_3_mask) begin
      Memory[Memory_MPORT_3_addr] <= Memory_MPORT_3_data; // @[IMemory.scala 16:22]
    end
    if (Memory_MPORT_4_en & Memory_MPORT_4_mask) begin
      Memory[Memory_MPORT_4_addr] <= Memory_MPORT_4_data; // @[IMemory.scala 16:22]
    end
    if (Memory_MPORT_5_en & Memory_MPORT_5_mask) begin
      Memory[Memory_MPORT_5_addr] <= Memory_MPORT_5_data; // @[IMemory.scala 16:22]
    end
    if (Memory_MPORT_6_en & Memory_MPORT_6_mask) begin
      Memory[Memory_MPORT_6_addr] <= Memory_MPORT_6_data; // @[IMemory.scala 16:22]
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_MEM_INIT
  _RAND_0 = {1{`RANDOM}};
  for (initvar = 0; initvar < 32; initvar = initvar+1)
    Memory[initvar] = _RAND_0[31:0];
`endif // RANDOMIZE_MEM_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module OPR1read(
  input  [4:0]  io_addrs1in,
  input  [31:0] io_datas1in,
  output [4:0]  io_addrs1out,
  output [31:0] io_datas1out
);
  assign io_addrs1out = io_addrs1in; // @[OPR1read.scala 14:25 16:15]
  assign io_datas1out = io_datas1in; // @[OPR1read.scala 15:25 17:15]
endmodule
module Imm(
  input  [1:0]  io_ImmSrc,
  input  [31:0] io_Imm_Itype,
  input  [31:0] io_Imm_Stype,
  output [31:0] io_Imm_output
);
  wire [31:0] _GEN_0 = io_ImmSrc == 2'h1 ? io_Imm_Stype : 32'h14; // @[Imm.scala 16:40 17:23 19:23]
  assign io_Imm_output = io_ImmSrc == 2'h0 ? io_Imm_Itype : _GEN_0; // @[Imm.scala 14:33 15:23]
endmodule
module ImmOpr2Sel(
  input         io_AluSrc,
  input  [31:0] io_Opr2_input,
  input  [31:0] io_Imm_input,
  output [31:0] io_ImmOp2Sel_output
);
  assign io_ImmOp2Sel_output = io_AluSrc ? io_Imm_input : io_Opr2_input; // @[ImmOpr2Sel.scala 14:21 15:29 18:29]
endmodule
module ADD(
  input  [31:0] io_op1,
  input  [31:0] io_op2,
  output [31:0] io_result
);
  assign io_result = io_op1 + io_op2; // @[ADD.scala 16:23]
endmodule
module SUB(
  input  [31:0] io_op1,
  input  [31:0] io_op2,
  output [31:0] io_result
);
  assign io_result = io_op1 - io_op2; // @[SUB.scala 16:23]
endmodule
module AND(
  input  [31:0] io_op1,
  input  [31:0] io_op2,
  output [31:0] io_result
);
  assign io_result = io_op1 & io_op2; // @[AND.scala 16:23]
endmodule
module OR(
  input  [31:0] io_op1,
  input  [31:0] io_op2,
  output [31:0] io_result
);
  assign io_result = io_op1 | io_op2; // @[OR.scala 16:23]
endmodule
module AluOutput(
  input  [31:0] io_AddRes,
  input  [31:0] io_SubRes,
  input  [31:0] io_AndRes,
  input  [31:0] io_OrRes,
  output [31:0] io_output,
  input  [2:0]  io_AluCtrl
);
  wire [31:0] _GEN_0 = io_AluCtrl == 3'h3 ? io_OrRes : 32'h0; // @[AluOutput.scala 21:45 22:19 24:19]
  wire [31:0] _GEN_1 = io_AluCtrl == 3'h2 ? io_AndRes : _GEN_0; // @[AluOutput.scala 19:46 20:19]
  wire [31:0] _GEN_2 = io_AluCtrl == 3'h1 ? io_SubRes : _GEN_1; // @[AluOutput.scala 17:45 18:19]
  assign io_output = io_AluCtrl == 3'h0 ? io_AddRes : _GEN_2; // @[AluOutput.scala 15:36 16:19]
endmodule
module DataMemory(
  input         clock,
  input  [31:0] io_dataSin,
  input  [31:0] io_ReadAddr,
  output [31:0] io_ReadData
);
`ifdef RANDOMIZE_MEM_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_MEM_INIT
  reg [31:0] DMemory [0:1023]; // @[DataMemory.scala 13:22]
  wire  DMemory_io_ReadData_MPORT_en; // @[DataMemory.scala 13:22]
  wire [9:0] DMemory_io_ReadData_MPORT_addr; // @[DataMemory.scala 13:22]
  wire [31:0] DMemory_io_ReadData_MPORT_data; // @[DataMemory.scala 13:22]
  wire [31:0] DMemory_MPORT_data; // @[DataMemory.scala 13:22]
  wire [9:0] DMemory_MPORT_addr; // @[DataMemory.scala 13:22]
  wire  DMemory_MPORT_mask; // @[DataMemory.scala 13:22]
  wire  DMemory_MPORT_en; // @[DataMemory.scala 13:22]
  wire [31:0] DMemory_MPORT_1_data; // @[DataMemory.scala 13:22]
  wire [9:0] DMemory_MPORT_1_addr; // @[DataMemory.scala 13:22]
  wire  DMemory_MPORT_1_mask; // @[DataMemory.scala 13:22]
  wire  DMemory_MPORT_1_en; // @[DataMemory.scala 13:22]
  wire [31:0] DMemory_MPORT_2_data; // @[DataMemory.scala 13:22]
  wire [9:0] DMemory_MPORT_2_addr; // @[DataMemory.scala 13:22]
  wire  DMemory_MPORT_2_mask; // @[DataMemory.scala 13:22]
  wire  DMemory_MPORT_2_en; // @[DataMemory.scala 13:22]
  wire [31:0] DMemory_MPORT_3_data; // @[DataMemory.scala 13:22]
  wire [9:0] DMemory_MPORT_3_addr; // @[DataMemory.scala 13:22]
  wire  DMemory_MPORT_3_mask; // @[DataMemory.scala 13:22]
  wire  DMemory_MPORT_3_en; // @[DataMemory.scala 13:22]
  wire [31:0] DMemory_MPORT_4_data; // @[DataMemory.scala 13:22]
  wire [9:0] DMemory_MPORT_4_addr; // @[DataMemory.scala 13:22]
  wire  DMemory_MPORT_4_mask; // @[DataMemory.scala 13:22]
  wire  DMemory_MPORT_4_en; // @[DataMemory.scala 13:22]
  wire [31:0] DMemory_MPORT_5_data; // @[DataMemory.scala 13:22]
  wire [9:0] DMemory_MPORT_5_addr; // @[DataMemory.scala 13:22]
  wire  DMemory_MPORT_5_mask; // @[DataMemory.scala 13:22]
  wire  DMemory_MPORT_5_en; // @[DataMemory.scala 13:22]
  wire [31:0] DMemory_MPORT_6_data; // @[DataMemory.scala 13:22]
  wire [9:0] DMemory_MPORT_6_addr; // @[DataMemory.scala 13:22]
  wire  DMemory_MPORT_6_mask; // @[DataMemory.scala 13:22]
  wire  DMemory_MPORT_6_en; // @[DataMemory.scala 13:22]
  wire [31:0] DMemory_MPORT_7_data; // @[DataMemory.scala 13:22]
  wire [9:0] DMemory_MPORT_7_addr; // @[DataMemory.scala 13:22]
  wire  DMemory_MPORT_7_mask; // @[DataMemory.scala 13:22]
  wire  DMemory_MPORT_7_en; // @[DataMemory.scala 13:22]
  wire [31:0] DMemory_MPORT_8_data; // @[DataMemory.scala 13:22]
  wire [9:0] DMemory_MPORT_8_addr; // @[DataMemory.scala 13:22]
  wire  DMemory_MPORT_8_mask; // @[DataMemory.scala 13:22]
  wire  DMemory_MPORT_8_en; // @[DataMemory.scala 13:22]
  wire [31:0] DMemory_MPORT_9_data; // @[DataMemory.scala 13:22]
  wire [9:0] DMemory_MPORT_9_addr; // @[DataMemory.scala 13:22]
  wire  DMemory_MPORT_9_mask; // @[DataMemory.scala 13:22]
  wire  DMemory_MPORT_9_en; // @[DataMemory.scala 13:22]
  wire [31:0] DMemory_MPORT_10_data; // @[DataMemory.scala 13:22]
  wire [9:0] DMemory_MPORT_10_addr; // @[DataMemory.scala 13:22]
  wire  DMemory_MPORT_10_mask; // @[DataMemory.scala 13:22]
  wire  DMemory_MPORT_10_en; // @[DataMemory.scala 13:22]
  wire [31:0] DMemory_MPORT_11_data; // @[DataMemory.scala 13:22]
  wire [9:0] DMemory_MPORT_11_addr; // @[DataMemory.scala 13:22]
  wire  DMemory_MPORT_11_mask; // @[DataMemory.scala 13:22]
  wire  DMemory_MPORT_11_en; // @[DataMemory.scala 13:22]
  wire [31:0] DMemory_MPORT_12_data; // @[DataMemory.scala 13:22]
  wire [9:0] DMemory_MPORT_12_addr; // @[DataMemory.scala 13:22]
  wire  DMemory_MPORT_12_mask; // @[DataMemory.scala 13:22]
  wire  DMemory_MPORT_12_en; // @[DataMemory.scala 13:22]
  wire [31:0] DMemory_MPORT_13_data; // @[DataMemory.scala 13:22]
  wire [9:0] DMemory_MPORT_13_addr; // @[DataMemory.scala 13:22]
  wire  DMemory_MPORT_13_mask; // @[DataMemory.scala 13:22]
  wire  DMemory_MPORT_13_en; // @[DataMemory.scala 13:22]
  wire [31:0] DMemory_MPORT_14_data; // @[DataMemory.scala 13:22]
  wire [9:0] DMemory_MPORT_14_addr; // @[DataMemory.scala 13:22]
  wire  DMemory_MPORT_14_mask; // @[DataMemory.scala 13:22]
  wire  DMemory_MPORT_14_en; // @[DataMemory.scala 13:22]
  wire [31:0] DMemory_MPORT_15_data; // @[DataMemory.scala 13:22]
  wire [9:0] DMemory_MPORT_15_addr; // @[DataMemory.scala 13:22]
  wire  DMemory_MPORT_15_mask; // @[DataMemory.scala 13:22]
  wire  DMemory_MPORT_15_en; // @[DataMemory.scala 13:22]
  assign DMemory_io_ReadData_MPORT_en = 1'h1;
  assign DMemory_io_ReadData_MPORT_addr = io_ReadAddr[9:0];
  assign DMemory_io_ReadData_MPORT_data = DMemory[DMemory_io_ReadData_MPORT_addr]; // @[DataMemory.scala 13:22]
  assign DMemory_MPORT_data = 32'h13;
  assign DMemory_MPORT_addr = 10'h0;
  assign DMemory_MPORT_mask = 1'h1;
  assign DMemory_MPORT_en = 1'h1;
  assign DMemory_MPORT_1_data = 32'h9;
  assign DMemory_MPORT_1_addr = 10'h1;
  assign DMemory_MPORT_1_mask = 1'h1;
  assign DMemory_MPORT_1_en = 1'h1;
  assign DMemory_MPORT_2_data = 32'h9;
  assign DMemory_MPORT_2_addr = 10'h2;
  assign DMemory_MPORT_2_mask = 1'h1;
  assign DMemory_MPORT_2_en = 1'h1;
  assign DMemory_MPORT_3_data = 32'h9;
  assign DMemory_MPORT_3_addr = 10'h3;
  assign DMemory_MPORT_3_mask = 1'h1;
  assign DMemory_MPORT_3_en = 1'h1;
  assign DMemory_MPORT_4_data = 32'h9;
  assign DMemory_MPORT_4_addr = 10'h4;
  assign DMemory_MPORT_4_mask = 1'h1;
  assign DMemory_MPORT_4_en = 1'h1;
  assign DMemory_MPORT_5_data = 32'h9;
  assign DMemory_MPORT_5_addr = 10'h5;
  assign DMemory_MPORT_5_mask = 1'h1;
  assign DMemory_MPORT_5_en = 1'h1;
  assign DMemory_MPORT_6_data = 32'h9;
  assign DMemory_MPORT_6_addr = 10'h6;
  assign DMemory_MPORT_6_mask = 1'h1;
  assign DMemory_MPORT_6_en = 1'h1;
  assign DMemory_MPORT_7_data = 32'h9;
  assign DMemory_MPORT_7_addr = 10'h7;
  assign DMemory_MPORT_7_mask = 1'h1;
  assign DMemory_MPORT_7_en = 1'h1;
  assign DMemory_MPORT_8_data = 32'h9;
  assign DMemory_MPORT_8_addr = 10'h8;
  assign DMemory_MPORT_8_mask = 1'h1;
  assign DMemory_MPORT_8_en = 1'h1;
  assign DMemory_MPORT_9_data = 32'h9;
  assign DMemory_MPORT_9_addr = 10'h9;
  assign DMemory_MPORT_9_mask = 1'h1;
  assign DMemory_MPORT_9_en = 1'h1;
  assign DMemory_MPORT_10_data = 32'h14;
  assign DMemory_MPORT_10_addr = 10'ha;
  assign DMemory_MPORT_10_mask = 1'h1;
  assign DMemory_MPORT_10_en = 1'h1;
  assign DMemory_MPORT_11_data = 32'h14;
  assign DMemory_MPORT_11_addr = 10'hb;
  assign DMemory_MPORT_11_mask = 1'h1;
  assign DMemory_MPORT_11_en = 1'h1;
  assign DMemory_MPORT_12_data = 32'h9;
  assign DMemory_MPORT_12_addr = 10'hc;
  assign DMemory_MPORT_12_mask = 1'h1;
  assign DMemory_MPORT_12_en = 1'h1;
  assign DMemory_MPORT_13_data = 32'h9;
  assign DMemory_MPORT_13_addr = 10'hd;
  assign DMemory_MPORT_13_mask = 1'h1;
  assign DMemory_MPORT_13_en = 1'h1;
  assign DMemory_MPORT_14_data = 32'h9;
  assign DMemory_MPORT_14_addr = 10'he;
  assign DMemory_MPORT_14_mask = 1'h1;
  assign DMemory_MPORT_14_en = 1'h1;
  assign DMemory_MPORT_15_data = io_dataSin;
  assign DMemory_MPORT_15_addr = io_ReadAddr[9:0];
  assign DMemory_MPORT_15_mask = 1'h1;
  assign DMemory_MPORT_15_en = 1'h1;
  assign io_ReadData = DMemory_io_ReadData_MPORT_data; // @[DataMemory.scala 33:17]
  always @(posedge clock) begin
    if (DMemory_MPORT_en & DMemory_MPORT_mask) begin
      DMemory[DMemory_MPORT_addr] <= DMemory_MPORT_data; // @[DataMemory.scala 13:22]
    end
    if (DMemory_MPORT_1_en & DMemory_MPORT_1_mask) begin
      DMemory[DMemory_MPORT_1_addr] <= DMemory_MPORT_1_data; // @[DataMemory.scala 13:22]
    end
    if (DMemory_MPORT_2_en & DMemory_MPORT_2_mask) begin
      DMemory[DMemory_MPORT_2_addr] <= DMemory_MPORT_2_data; // @[DataMemory.scala 13:22]
    end
    if (DMemory_MPORT_3_en & DMemory_MPORT_3_mask) begin
      DMemory[DMemory_MPORT_3_addr] <= DMemory_MPORT_3_data; // @[DataMemory.scala 13:22]
    end
    if (DMemory_MPORT_4_en & DMemory_MPORT_4_mask) begin
      DMemory[DMemory_MPORT_4_addr] <= DMemory_MPORT_4_data; // @[DataMemory.scala 13:22]
    end
    if (DMemory_MPORT_5_en & DMemory_MPORT_5_mask) begin
      DMemory[DMemory_MPORT_5_addr] <= DMemory_MPORT_5_data; // @[DataMemory.scala 13:22]
    end
    if (DMemory_MPORT_6_en & DMemory_MPORT_6_mask) begin
      DMemory[DMemory_MPORT_6_addr] <= DMemory_MPORT_6_data; // @[DataMemory.scala 13:22]
    end
    if (DMemory_MPORT_7_en & DMemory_MPORT_7_mask) begin
      DMemory[DMemory_MPORT_7_addr] <= DMemory_MPORT_7_data; // @[DataMemory.scala 13:22]
    end
    if (DMemory_MPORT_8_en & DMemory_MPORT_8_mask) begin
      DMemory[DMemory_MPORT_8_addr] <= DMemory_MPORT_8_data; // @[DataMemory.scala 13:22]
    end
    if (DMemory_MPORT_9_en & DMemory_MPORT_9_mask) begin
      DMemory[DMemory_MPORT_9_addr] <= DMemory_MPORT_9_data; // @[DataMemory.scala 13:22]
    end
    if (DMemory_MPORT_10_en & DMemory_MPORT_10_mask) begin
      DMemory[DMemory_MPORT_10_addr] <= DMemory_MPORT_10_data; // @[DataMemory.scala 13:22]
    end
    if (DMemory_MPORT_11_en & DMemory_MPORT_11_mask) begin
      DMemory[DMemory_MPORT_11_addr] <= DMemory_MPORT_11_data; // @[DataMemory.scala 13:22]
    end
    if (DMemory_MPORT_12_en & DMemory_MPORT_12_mask) begin
      DMemory[DMemory_MPORT_12_addr] <= DMemory_MPORT_12_data; // @[DataMemory.scala 13:22]
    end
    if (DMemory_MPORT_13_en & DMemory_MPORT_13_mask) begin
      DMemory[DMemory_MPORT_13_addr] <= DMemory_MPORT_13_data; // @[DataMemory.scala 13:22]
    end
    if (DMemory_MPORT_14_en & DMemory_MPORT_14_mask) begin
      DMemory[DMemory_MPORT_14_addr] <= DMemory_MPORT_14_data; // @[DataMemory.scala 13:22]
    end
    if (DMemory_MPORT_15_en & DMemory_MPORT_15_mask) begin
      DMemory[DMemory_MPORT_15_addr] <= DMemory_MPORT_15_data; // @[DataMemory.scala 13:22]
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_MEM_INIT
  _RAND_0 = {1{`RANDOM}};
  for (initvar = 0; initvar < 1024; initvar = initvar+1)
    DMemory[initvar] = _RAND_0[31:0];
`endif // RANDOMIZE_MEM_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module ResultSel(
  input         io_ResSrc,
  input  [31:0] io_AluRes,
  input  [31:0] io_ReadData,
  output [31:0] io_Result
);
  assign io_Result = io_ResSrc ? io_AluRes : io_ReadData; // @[ResultSel.scala 16:21 17:19 19:19]
endmodule
module Main(
  input         clock,
  input         reset,
  input  [31:0] io_input,
  output [4:0]  io_input1,
  output [4:0]  io_input2,
  output [4:0]  io_input3,
  output [31:0] io_input4,
  output [31:0] io_input5,
  output [31:0] io_input6
);
  wire [6:0] Controler_io_opcode; // @[Main.scala 26:27]
  wire [2:0] Controler_io_funct3; // @[Main.scala 26:27]
  wire [6:0] Controler_io_funct7; // @[Main.scala 26:27]
  wire [1:0] Controler_io_ImmSrc; // @[Main.scala 26:27]
  wire  Controler_io_AluSrc; // @[Main.scala 26:27]
  wire  Controler_io_ResSrc; // @[Main.scala 26:27]
  wire [2:0] Controler_io_AluCtrl; // @[Main.scala 26:27]
  wire [2:0] Controler_io_operation; // @[Main.scala 26:27]
  wire  RegisterFile_clock; // @[Main.scala 27:30]
  wire [4:0] RegisterFile_io_addr1; // @[Main.scala 27:30]
  wire [31:0] RegisterFile_io_data1; // @[Main.scala 27:30]
  wire [4:0] RegisterFile_io_addr2; // @[Main.scala 27:30]
  wire [31:0] RegisterFile_io_data2; // @[Main.scala 27:30]
  wire [4:0] RegisterFile_io_addrwr; // @[Main.scala 27:30]
  wire [31:0] RegisterFile_io_datawr; // @[Main.scala 27:30]
  wire  IMemory_clock; // @[Main.scala 28:25]
  wire [31:0] IMemory_io_IP_in; // @[Main.scala 28:25]
  wire [31:0] IMemory_io_instruction; // @[Main.scala 28:25]
  wire [4:0] OPR1read_io_addrs1in; // @[Main.scala 29:27]
  wire [31:0] OPR1read_io_datas1in; // @[Main.scala 29:27]
  wire [4:0] OPR1read_io_addrs1out; // @[Main.scala 29:27]
  wire [31:0] OPR1read_io_datas1out; // @[Main.scala 29:27]
  wire [4:0] OPR2read_io_addrs1in; // @[Main.scala 30:27]
  wire [31:0] OPR2read_io_datas1in; // @[Main.scala 30:27]
  wire [4:0] OPR2read_io_addrs1out; // @[Main.scala 30:27]
  wire [31:0] OPR2read_io_datas1out; // @[Main.scala 30:27]
  wire [1:0] Imm_io_ImmSrc; // @[Main.scala 31:21]
  wire [31:0] Imm_io_Imm_Itype; // @[Main.scala 31:21]
  wire [31:0] Imm_io_Imm_Stype; // @[Main.scala 31:21]
  wire [31:0] Imm_io_Imm_output; // @[Main.scala 31:21]
  wire  ImmOpr2Sel_io_AluSrc; // @[Main.scala 32:28]
  wire [31:0] ImmOpr2Sel_io_Opr2_input; // @[Main.scala 32:28]
  wire [31:0] ImmOpr2Sel_io_Imm_input; // @[Main.scala 32:28]
  wire [31:0] ImmOpr2Sel_io_ImmOp2Sel_output; // @[Main.scala 32:28]
  wire [31:0] ADD_io_op1; // @[Main.scala 35:21]
  wire [31:0] ADD_io_op2; // @[Main.scala 35:21]
  wire [31:0] ADD_io_result; // @[Main.scala 35:21]
  wire [31:0] SUB_io_op1; // @[Main.scala 36:21]
  wire [31:0] SUB_io_op2; // @[Main.scala 36:21]
  wire [31:0] SUB_io_result; // @[Main.scala 36:21]
  wire [31:0] AND_io_op1; // @[Main.scala 37:21]
  wire [31:0] AND_io_op2; // @[Main.scala 37:21]
  wire [31:0] AND_io_result; // @[Main.scala 37:21]
  wire [31:0] OR_io_op1; // @[Main.scala 38:20]
  wire [31:0] OR_io_op2; // @[Main.scala 38:20]
  wire [31:0] OR_io_result; // @[Main.scala 38:20]
  wire [31:0] AluOutput_io_AddRes; // @[Main.scala 40:27]
  wire [31:0] AluOutput_io_SubRes; // @[Main.scala 40:27]
  wire [31:0] AluOutput_io_AndRes; // @[Main.scala 40:27]
  wire [31:0] AluOutput_io_OrRes; // @[Main.scala 40:27]
  wire [31:0] AluOutput_io_output; // @[Main.scala 40:27]
  wire [2:0] AluOutput_io_AluCtrl; // @[Main.scala 40:27]
  wire  DataMemory_clock; // @[Main.scala 41:28]
  wire [31:0] DataMemory_io_dataSin; // @[Main.scala 41:28]
  wire [31:0] DataMemory_io_ReadAddr; // @[Main.scala 41:28]
  wire [31:0] DataMemory_io_ReadData; // @[Main.scala 41:28]
  wire  ResultSel_io_ResSrc; // @[Main.scala 42:27]
  wire [31:0] ResultSel_io_AluRes; // @[Main.scala 42:27]
  wire [31:0] ResultSel_io_ReadData; // @[Main.scala 42:27]
  wire [31:0] ResultSel_io_Result; // @[Main.scala 42:27]
  wire [11:0] _Imm_io_Imm_Stype_T_2 = {IMemory_io_instruction[31:25],IMemory_io_instruction[11:7]}; // @[Cat.scala 31:58]
  Controler Controler ( // @[Main.scala 26:27]
    .io_opcode(Controler_io_opcode),
    .io_funct3(Controler_io_funct3),
    .io_funct7(Controler_io_funct7),
    .io_ImmSrc(Controler_io_ImmSrc),
    .io_AluSrc(Controler_io_AluSrc),
    .io_ResSrc(Controler_io_ResSrc),
    .io_AluCtrl(Controler_io_AluCtrl),
    .io_operation(Controler_io_operation)
  );
  RegisterFile RegisterFile ( // @[Main.scala 27:30]
    .clock(RegisterFile_clock),
    .io_addr1(RegisterFile_io_addr1),
    .io_data1(RegisterFile_io_data1),
    .io_addr2(RegisterFile_io_addr2),
    .io_data2(RegisterFile_io_data2),
    .io_addrwr(RegisterFile_io_addrwr),
    .io_datawr(RegisterFile_io_datawr)
  );
  IMemory IMemory ( // @[Main.scala 28:25]
    .clock(IMemory_clock),
    .io_IP_in(IMemory_io_IP_in),
    .io_instruction(IMemory_io_instruction)
  );
  OPR1read OPR1read ( // @[Main.scala 29:27]
    .io_addrs1in(OPR1read_io_addrs1in),
    .io_datas1in(OPR1read_io_datas1in),
    .io_addrs1out(OPR1read_io_addrs1out),
    .io_datas1out(OPR1read_io_datas1out)
  );
  OPR1read OPR2read ( // @[Main.scala 30:27]
    .io_addrs1in(OPR2read_io_addrs1in),
    .io_datas1in(OPR2read_io_datas1in),
    .io_addrs1out(OPR2read_io_addrs1out),
    .io_datas1out(OPR2read_io_datas1out)
  );
  Imm Imm ( // @[Main.scala 31:21]
    .io_ImmSrc(Imm_io_ImmSrc),
    .io_Imm_Itype(Imm_io_Imm_Itype),
    .io_Imm_Stype(Imm_io_Imm_Stype),
    .io_Imm_output(Imm_io_Imm_output)
  );
  ImmOpr2Sel ImmOpr2Sel ( // @[Main.scala 32:28]
    .io_AluSrc(ImmOpr2Sel_io_AluSrc),
    .io_Opr2_input(ImmOpr2Sel_io_Opr2_input),
    .io_Imm_input(ImmOpr2Sel_io_Imm_input),
    .io_ImmOp2Sel_output(ImmOpr2Sel_io_ImmOp2Sel_output)
  );
  ADD ADD ( // @[Main.scala 35:21]
    .io_op1(ADD_io_op1),
    .io_op2(ADD_io_op2),
    .io_result(ADD_io_result)
  );
  SUB SUB ( // @[Main.scala 36:21]
    .io_op1(SUB_io_op1),
    .io_op2(SUB_io_op2),
    .io_result(SUB_io_result)
  );
  AND AND ( // @[Main.scala 37:21]
    .io_op1(AND_io_op1),
    .io_op2(AND_io_op2),
    .io_result(AND_io_result)
  );
  OR OR ( // @[Main.scala 38:20]
    .io_op1(OR_io_op1),
    .io_op2(OR_io_op2),
    .io_result(OR_io_result)
  );
  AluOutput AluOutput ( // @[Main.scala 40:27]
    .io_AddRes(AluOutput_io_AddRes),
    .io_SubRes(AluOutput_io_SubRes),
    .io_AndRes(AluOutput_io_AndRes),
    .io_OrRes(AluOutput_io_OrRes),
    .io_output(AluOutput_io_output),
    .io_AluCtrl(AluOutput_io_AluCtrl)
  );
  DataMemory DataMemory ( // @[Main.scala 41:28]
    .clock(DataMemory_clock),
    .io_dataSin(DataMemory_io_dataSin),
    .io_ReadAddr(DataMemory_io_ReadAddr),
    .io_ReadData(DataMemory_io_ReadData)
  );
  ResultSel ResultSel ( // @[Main.scala 42:27]
    .io_ResSrc(ResultSel_io_ResSrc),
    .io_AluRes(ResultSel_io_AluRes),
    .io_ReadData(ResultSel_io_ReadData),
    .io_Result(ResultSel_io_Result)
  );
  assign io_input1 = OPR1read_io_datas1in[4:0]; // @[Main.scala 68:15]
  assign io_input2 = OPR2read_io_datas1in[4:0]; // @[Main.scala 82:15]
  assign io_input3 = {{2'd0}, Controler_io_AluCtrl}; // @[Main.scala 146:15]
  assign io_input4 = ImmOpr2Sel_io_ImmOp2Sel_output; // @[Main.scala 148:15]
  assign io_input5 = DataMemory_io_dataSin; // @[Main.scala 149:15]
  assign io_input6 = DataMemory_io_ReadAddr; // @[Main.scala 150:15]
  assign Controler_io_opcode = IMemory_io_instruction[6:0]; // @[Main.scala 55:50]
  assign Controler_io_funct3 = IMemory_io_instruction[14:12]; // @[Main.scala 56:50]
  assign Controler_io_funct7 = IMemory_io_instruction[31:25]; // @[Main.scala 57:50]
  assign RegisterFile_clock = clock;
  assign RegisterFile_io_addr1 = OPR1read_io_addrs1out; // @[Main.scala 65:27]
  assign RegisterFile_io_addr2 = OPR2read_io_addrs1out; // @[Main.scala 79:27]
  assign RegisterFile_io_addrwr = IMemory_io_instruction[11:7]; // @[Main.scala 61:53]
  assign RegisterFile_io_datawr = ResultSel_io_Result; // @[Main.scala 132:28]
  assign IMemory_clock = clock;
  assign IMemory_io_IP_in = io_input; // @[Main.scala 50:22]
  assign OPR1read_io_addrs1in = IMemory_io_instruction[19:15]; // @[Main.scala 64:51]
  assign OPR1read_io_datas1in = RegisterFile_io_data1; // @[Main.scala 66:26]
  assign OPR2read_io_addrs1in = IMemory_io_instruction[24:20]; // @[Main.scala 78:51]
  assign OPR2read_io_datas1in = RegisterFile_io_data2; // @[Main.scala 80:26]
  assign Imm_io_ImmSrc = Controler_io_ImmSrc; // @[Main.scala 85:19]
  assign Imm_io_Imm_Itype = {{20'd0}, IMemory_io_instruction[31:20]}; // @[Main.scala 86:22]
  assign Imm_io_Imm_Stype = {{20'd0}, _Imm_io_Imm_Stype_T_2}; // @[Main.scala 87:22]
  assign ImmOpr2Sel_io_AluSrc = Controler_io_AluSrc; // @[Main.scala 90:26]
  assign ImmOpr2Sel_io_Opr2_input = OPR2read_io_datas1out; // @[Main.scala 91:30]
  assign ImmOpr2Sel_io_Imm_input = Imm_io_Imm_output; // @[Main.scala 92:29]
  assign ADD_io_op1 = OPR1read_io_datas1out; // @[Main.scala 96:16]
  assign ADD_io_op2 = ImmOpr2Sel_io_ImmOp2Sel_output; // @[Main.scala 98:16]
  assign SUB_io_op1 = OPR1read_io_datas1out; // @[Main.scala 103:16]
  assign SUB_io_op2 = ImmOpr2Sel_io_ImmOp2Sel_output; // @[Main.scala 104:16]
  assign AND_io_op1 = OPR1read_io_datas1out; // @[Main.scala 109:16]
  assign AND_io_op2 = ImmOpr2Sel_io_ImmOp2Sel_output; // @[Main.scala 110:16]
  assign OR_io_op1 = OPR1read_io_datas1out; // @[Main.scala 106:15]
  assign OR_io_op2 = ImmOpr2Sel_io_ImmOp2Sel_output; // @[Main.scala 107:15]
  assign AluOutput_io_AddRes = ADD_io_result; // @[Main.scala 115:25]
  assign AluOutput_io_SubRes = SUB_io_result; // @[Main.scala 116:25]
  assign AluOutput_io_AndRes = AND_io_result; // @[Main.scala 117:25]
  assign AluOutput_io_OrRes = OR_io_result; // @[Main.scala 118:24]
  assign AluOutput_io_AluCtrl = Controler_io_AluCtrl; // @[Main.scala 114:26]
  assign DataMemory_clock = clock;
  assign DataMemory_io_dataSin = OPR2read_io_datas1out; // @[Main.scala 124:27]
  assign DataMemory_io_ReadAddr = AluOutput_io_output; // @[Main.scala 123:28]
  assign ResultSel_io_ResSrc = Controler_io_ResSrc; // @[Main.scala 128:25]
  assign ResultSel_io_AluRes = AluOutput_io_output; // @[Main.scala 130:25]
  assign ResultSel_io_ReadData = DataMemory_io_ReadData; // @[Main.scala 129:27]
endmodule
