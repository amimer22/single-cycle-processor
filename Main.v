module RegisterFile(
  input         clock,
  input  [4:0]  io_addr1,
  output [31:0] io_data1,
  input  [4:0]  io_addr2,
  output [31:0] io_data2,
  input  [4:0]  io_addrwr,
  input  [31:0] io_datawr,
  output [31:0] io_wrtest
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
  assign io_wrtest = registers_io_wrtest_MPORT_data; // @[RegisterFile.scala 26:19]
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
  reg [31:0] Memory [0:31]; // @[IMemory.scala 15:22]
  wire  Memory_io_instruction_MPORT_en; // @[IMemory.scala 15:22]
  wire [4:0] Memory_io_instruction_MPORT_addr; // @[IMemory.scala 15:22]
  wire [31:0] Memory_io_instruction_MPORT_data; // @[IMemory.scala 15:22]
  wire [31:0] Memory_MPORT_data; // @[IMemory.scala 15:22]
  wire [4:0] Memory_MPORT_addr; // @[IMemory.scala 15:22]
  wire  Memory_MPORT_mask; // @[IMemory.scala 15:22]
  wire  Memory_MPORT_en; // @[IMemory.scala 15:22]
  wire [31:0] Memory_MPORT_1_data; // @[IMemory.scala 15:22]
  wire [4:0] Memory_MPORT_1_addr; // @[IMemory.scala 15:22]
  wire  Memory_MPORT_1_mask; // @[IMemory.scala 15:22]
  wire  Memory_MPORT_1_en; // @[IMemory.scala 15:22]
  wire [31:0] Memory_MPORT_2_data; // @[IMemory.scala 15:22]
  wire [4:0] Memory_MPORT_2_addr; // @[IMemory.scala 15:22]
  wire  Memory_MPORT_2_mask; // @[IMemory.scala 15:22]
  wire  Memory_MPORT_2_en; // @[IMemory.scala 15:22]
  wire [31:0] Memory_MPORT_3_data; // @[IMemory.scala 15:22]
  wire [4:0] Memory_MPORT_3_addr; // @[IMemory.scala 15:22]
  wire  Memory_MPORT_3_mask; // @[IMemory.scala 15:22]
  wire  Memory_MPORT_3_en; // @[IMemory.scala 15:22]
  wire [31:0] Memory_MPORT_4_data; // @[IMemory.scala 15:22]
  wire [4:0] Memory_MPORT_4_addr; // @[IMemory.scala 15:22]
  wire  Memory_MPORT_4_mask; // @[IMemory.scala 15:22]
  wire  Memory_MPORT_4_en; // @[IMemory.scala 15:22]
  assign Memory_io_instruction_MPORT_en = 1'h1;
  assign Memory_io_instruction_MPORT_addr = io_IP_in[4:0];
  assign Memory_io_instruction_MPORT_data = Memory[Memory_io_instruction_MPORT_addr]; // @[IMemory.scala 15:22]
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
  assign io_instruction = Memory_io_instruction_MPORT_data; // @[IMemory.scala 29:20]
  always @(posedge clock) begin
    if (Memory_MPORT_en & Memory_MPORT_mask) begin
      Memory[Memory_MPORT_addr] <= Memory_MPORT_data; // @[IMemory.scala 15:22]
    end
    if (Memory_MPORT_1_en & Memory_MPORT_1_mask) begin
      Memory[Memory_MPORT_1_addr] <= Memory_MPORT_1_data; // @[IMemory.scala 15:22]
    end
    if (Memory_MPORT_2_en & Memory_MPORT_2_mask) begin
      Memory[Memory_MPORT_2_addr] <= Memory_MPORT_2_data; // @[IMemory.scala 15:22]
    end
    if (Memory_MPORT_3_en & Memory_MPORT_3_mask) begin
      Memory[Memory_MPORT_3_addr] <= Memory_MPORT_3_data; // @[IMemory.scala 15:22]
    end
    if (Memory_MPORT_4_en & Memory_MPORT_4_mask) begin
      Memory[Memory_MPORT_4_addr] <= Memory_MPORT_4_data; // @[IMemory.scala 15:22]
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
module OPR2read(
  input         io_Imm_type,
  input         io_R_type,
  input  [31:0] io_immin,
  input  [4:0]  io_addrs2in,
  input  [31:0] io_datas2in,
  output [4:0]  io_addrs2out,
  output [31:0] io_datas2out
);
  wire [31:0] _GEN_0 = io_Imm_type ? io_immin : 32'h16; // @[OPR2read.scala 29:28 30:18 31:30]
  assign io_addrs2out = io_addrs2in; // @[OPR2read.scala 20:25 23:15]
  assign io_datas2out = io_R_type ? io_datas2in : _GEN_0; // @[OPR2read.scala 27:20 28:18]
endmodule
module OPR2Sel(
  input  [6:0] io_opcode,
  output       io_R_type,
  output       io_Imm_type
);
  wire  _T_1 = io_opcode == 7'h13; // @[OPR2Sel.scala 18:27]
  assign io_R_type = io_opcode == 7'h33; // @[OPR2Sel.scala 16:21]
  assign io_Imm_type = io_opcode == 7'h33 ? 1'h0 : _T_1; // @[OPR2Sel.scala 14:16 16:38]
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
module OperationSel(
  input  [6:0] io_opcode,
  input  [2:0] io_funct3,
  input  [6:0] io_funct7,
  output [4:0] io_operation
);
  wire  _T = io_opcode == 7'h33; // @[OperationSel.scala 14:21]
  wire  _T_1 = io_funct3 == 3'h0; // @[OperationSel.scala 14:51]
  wire  _T_2 = io_opcode == 7'h33 & io_funct3 == 3'h0; // @[OperationSel.scala 14:38]
  wire  _T_3 = io_funct7 == 7'h0; // @[OperationSel.scala 14:76]
  wire [4:0] _GEN_0 = _T & io_funct3 == 3'h6 & _T_3 ? 5'h5 : 5'h16; // @[OperationSel.scala 26:97 27:21 30:18]
  wire [4:0] _GEN_1 = _T & io_funct3 == 3'h7 & _T_3 ? 5'h3 : _GEN_0; // @[OperationSel.scala 23:97 24:21]
  wire [4:0] _GEN_2 = _T_2 & io_funct7 == 7'h20 ? 5'h2 : _GEN_1; // @[OperationSel.scala 20:97 21:21]
  wire [4:0] _GEN_3 = io_opcode == 7'h13 & _T_1 ? 5'h1 : _GEN_2; // @[OperationSel.scala 17:69 18:21]
  assign io_operation = io_opcode == 7'h33 & io_funct3 == 3'h0 & io_funct7 == 7'h0 ? 5'h1 : _GEN_3; // @[OperationSel.scala 14:92 15:21]
endmodule
module AluSel(
  input  [31:0] io_operation,
  input  [31:0] io_AddRes,
  input  [31:0] io_SubRes,
  input  [31:0] io_AndRes,
  input  [31:0] io_OrRes,
  output [31:0] io_output
);
  wire [31:0] _GEN_0 = io_operation == 32'h5 ? io_OrRes : 32'h0; // @[AluSel.scala 21:49 22:19 24:19]
  wire [31:0] _GEN_1 = io_operation == 32'h3 ? io_AndRes : _GEN_0; // @[AluSel.scala 19:50 20:19]
  wire [31:0] _GEN_2 = io_operation == 32'h2 ? io_SubRes : _GEN_1; // @[AluSel.scala 17:49 18:19]
  assign io_output = io_operation == 32'h1 ? io_AddRes : _GEN_2; // @[AluSel.scala 15:40 16:19]
endmodule
module WRresult(
  input  [31:0] io_resultin,
  output [31:0] io_resultout
);
  assign io_resultout = io_resultin; // @[WRresult.scala 15:22 17:12]
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
  output [31:0] io_input6,
  output [31:0] io_output
);
  wire  RegisterFile_clock; // @[Main.scala 25:30]
  wire [4:0] RegisterFile_io_addr1; // @[Main.scala 25:30]
  wire [31:0] RegisterFile_io_data1; // @[Main.scala 25:30]
  wire [4:0] RegisterFile_io_addr2; // @[Main.scala 25:30]
  wire [31:0] RegisterFile_io_data2; // @[Main.scala 25:30]
  wire [4:0] RegisterFile_io_addrwr; // @[Main.scala 25:30]
  wire [31:0] RegisterFile_io_datawr; // @[Main.scala 25:30]
  wire [31:0] RegisterFile_io_wrtest; // @[Main.scala 25:30]
  wire  IMemory_clock; // @[Main.scala 26:25]
  wire [31:0] IMemory_io_IP_in; // @[Main.scala 26:25]
  wire [31:0] IMemory_io_instruction; // @[Main.scala 26:25]
  wire [4:0] OPR1read_io_addrs1in; // @[Main.scala 27:27]
  wire [31:0] OPR1read_io_datas1in; // @[Main.scala 27:27]
  wire [4:0] OPR1read_io_addrs1out; // @[Main.scala 27:27]
  wire [31:0] OPR1read_io_datas1out; // @[Main.scala 27:27]
  wire  OPR2read_io_Imm_type; // @[Main.scala 28:27]
  wire  OPR2read_io_R_type; // @[Main.scala 28:27]
  wire [31:0] OPR2read_io_immin; // @[Main.scala 28:27]
  wire [4:0] OPR2read_io_addrs2in; // @[Main.scala 28:27]
  wire [31:0] OPR2read_io_datas2in; // @[Main.scala 28:27]
  wire [4:0] OPR2read_io_addrs2out; // @[Main.scala 28:27]
  wire [31:0] OPR2read_io_datas2out; // @[Main.scala 28:27]
  wire [6:0] OPR2Sel_io_opcode; // @[Main.scala 29:26]
  wire  OPR2Sel_io_R_type; // @[Main.scala 29:26]
  wire  OPR2Sel_io_Imm_type; // @[Main.scala 29:26]
  wire [31:0] ADD_io_op1; // @[Main.scala 30:21]
  wire [31:0] ADD_io_op2; // @[Main.scala 30:21]
  wire [31:0] ADD_io_result; // @[Main.scala 30:21]
  wire [31:0] SUB_io_op1; // @[Main.scala 31:21]
  wire [31:0] SUB_io_op2; // @[Main.scala 31:21]
  wire [31:0] SUB_io_result; // @[Main.scala 31:21]
  wire [31:0] AND_io_op1; // @[Main.scala 32:21]
  wire [31:0] AND_io_op2; // @[Main.scala 32:21]
  wire [31:0] AND_io_result; // @[Main.scala 32:21]
  wire [31:0] OR_io_op1; // @[Main.scala 33:20]
  wire [31:0] OR_io_op2; // @[Main.scala 33:20]
  wire [31:0] OR_io_result; // @[Main.scala 33:20]
  wire [6:0] OperationSel_io_opcode; // @[Main.scala 34:30]
  wire [2:0] OperationSel_io_funct3; // @[Main.scala 34:30]
  wire [6:0] OperationSel_io_funct7; // @[Main.scala 34:30]
  wire [4:0] OperationSel_io_operation; // @[Main.scala 34:30]
  wire [31:0] AluSel_io_operation; // @[Main.scala 35:24]
  wire [31:0] AluSel_io_AddRes; // @[Main.scala 35:24]
  wire [31:0] AluSel_io_SubRes; // @[Main.scala 35:24]
  wire [31:0] AluSel_io_AndRes; // @[Main.scala 35:24]
  wire [31:0] AluSel_io_OrRes; // @[Main.scala 35:24]
  wire [31:0] AluSel_io_output; // @[Main.scala 35:24]
  wire [31:0] WRresult_io_resultin; // @[Main.scala 36:26]
  wire [31:0] WRresult_io_resultout; // @[Main.scala 36:26]
  RegisterFile RegisterFile ( // @[Main.scala 25:30]
    .clock(RegisterFile_clock),
    .io_addr1(RegisterFile_io_addr1),
    .io_data1(RegisterFile_io_data1),
    .io_addr2(RegisterFile_io_addr2),
    .io_data2(RegisterFile_io_data2),
    .io_addrwr(RegisterFile_io_addrwr),
    .io_datawr(RegisterFile_io_datawr),
    .io_wrtest(RegisterFile_io_wrtest)
  );
  IMemory IMemory ( // @[Main.scala 26:25]
    .clock(IMemory_clock),
    .io_IP_in(IMemory_io_IP_in),
    .io_instruction(IMemory_io_instruction)
  );
  OPR1read OPR1read ( // @[Main.scala 27:27]
    .io_addrs1in(OPR1read_io_addrs1in),
    .io_datas1in(OPR1read_io_datas1in),
    .io_addrs1out(OPR1read_io_addrs1out),
    .io_datas1out(OPR1read_io_datas1out)
  );
  OPR2read OPR2read ( // @[Main.scala 28:27]
    .io_Imm_type(OPR2read_io_Imm_type),
    .io_R_type(OPR2read_io_R_type),
    .io_immin(OPR2read_io_immin),
    .io_addrs2in(OPR2read_io_addrs2in),
    .io_datas2in(OPR2read_io_datas2in),
    .io_addrs2out(OPR2read_io_addrs2out),
    .io_datas2out(OPR2read_io_datas2out)
  );
  OPR2Sel OPR2Sel ( // @[Main.scala 29:26]
    .io_opcode(OPR2Sel_io_opcode),
    .io_R_type(OPR2Sel_io_R_type),
    .io_Imm_type(OPR2Sel_io_Imm_type)
  );
  ADD ADD ( // @[Main.scala 30:21]
    .io_op1(ADD_io_op1),
    .io_op2(ADD_io_op2),
    .io_result(ADD_io_result)
  );
  SUB SUB ( // @[Main.scala 31:21]
    .io_op1(SUB_io_op1),
    .io_op2(SUB_io_op2),
    .io_result(SUB_io_result)
  );
  AND AND ( // @[Main.scala 32:21]
    .io_op1(AND_io_op1),
    .io_op2(AND_io_op2),
    .io_result(AND_io_result)
  );
  OR OR ( // @[Main.scala 33:20]
    .io_op1(OR_io_op1),
    .io_op2(OR_io_op2),
    .io_result(OR_io_result)
  );
  OperationSel OperationSel ( // @[Main.scala 34:30]
    .io_opcode(OperationSel_io_opcode),
    .io_funct3(OperationSel_io_funct3),
    .io_funct7(OperationSel_io_funct7),
    .io_operation(OperationSel_io_operation)
  );
  AluSel AluSel ( // @[Main.scala 35:24]
    .io_operation(AluSel_io_operation),
    .io_AddRes(AluSel_io_AddRes),
    .io_SubRes(AluSel_io_SubRes),
    .io_AndRes(AluSel_io_AndRes),
    .io_OrRes(AluSel_io_OrRes),
    .io_output(AluSel_io_output)
  );
  WRresult WRresult ( // @[Main.scala 36:26]
    .io_resultin(WRresult_io_resultin),
    .io_resultout(WRresult_io_resultout)
  );
  assign io_input1 = OPR1read_io_datas1in[4:0]; // @[Main.scala 50:15]
  assign io_input2 = OPR2read_io_datas2in[4:0]; // @[Main.scala 62:15]
  assign io_input3 = RegisterFile_io_addrwr; // @[Main.scala 108:15]
  assign io_input4 = RegisterFile_io_datawr; // @[Main.scala 109:15]
  assign io_input5 = ADD_io_op1; // @[Main.scala 76:15]
  assign io_input6 = ADD_io_op2; // @[Main.scala 77:15]
  assign io_output = RegisterFile_io_wrtest; // @[Main.scala 112:15]
  assign RegisterFile_clock = clock;
  assign RegisterFile_io_addr1 = OPR1read_io_addrs1out; // @[Main.scala 47:27]
  assign RegisterFile_io_addr2 = OPR2read_io_addrs2out; // @[Main.scala 59:27]
  assign RegisterFile_io_addrwr = IMemory_io_instruction[11:7]; // @[Main.scala 64:53]
  assign RegisterFile_io_datawr = WRresult_io_resultout; // @[Main.scala 103:28]
  assign IMemory_clock = clock;
  assign IMemory_io_IP_in = io_input; // @[Main.scala 43:22]
  assign OPR1read_io_addrs1in = IMemory_io_instruction[19:15]; // @[Main.scala 46:51]
  assign OPR1read_io_datas1in = RegisterFile_io_data1; // @[Main.scala 48:26]
  assign OPR2read_io_Imm_type = OPR2Sel_io_Imm_type; // @[Main.scala 54:26]
  assign OPR2read_io_R_type = OPR2Sel_io_R_type; // @[Main.scala 53:24]
  assign OPR2read_io_immin = {{20'd0}, IMemory_io_instruction[31:20]}; // @[Main.scala 57:23]
  assign OPR2read_io_addrs2in = IMemory_io_instruction[24:20]; // @[Main.scala 58:51]
  assign OPR2read_io_datas2in = RegisterFile_io_data2; // @[Main.scala 60:26]
  assign OPR2Sel_io_opcode = IMemory_io_instruction[6:0]; // @[Main.scala 52:48]
  assign ADD_io_op1 = OPR1read_io_datas1out; // @[Main.scala 73:16]
  assign ADD_io_op2 = OPR2read_io_datas2out; // @[Main.scala 74:16]
  assign SUB_io_op1 = OPR1read_io_datas1out; // @[Main.scala 79:16]
  assign SUB_io_op2 = OPR2read_io_datas2out; // @[Main.scala 80:16]
  assign AND_io_op1 = OPR1read_io_datas1out; // @[Main.scala 85:16]
  assign AND_io_op2 = OPR2read_io_datas2out; // @[Main.scala 86:16]
  assign OR_io_op1 = OPR1read_io_datas1out; // @[Main.scala 82:15]
  assign OR_io_op2 = OPR2read_io_datas2out; // @[Main.scala 83:15]
  assign OperationSel_io_opcode = IMemory_io_instruction[6:0]; // @[Main.scala 66:53]
  assign OperationSel_io_funct3 = IMemory_io_instruction[14:12]; // @[Main.scala 67:53]
  assign OperationSel_io_funct7 = IMemory_io_instruction[31:25]; // @[Main.scala 68:53]
  assign AluSel_io_operation = {{27'd0}, OperationSel_io_operation}; // @[Main.scala 69:25]
  assign AluSel_io_AddRes = ADD_io_result; // @[Main.scala 91:22]
  assign AluSel_io_SubRes = SUB_io_result; // @[Main.scala 92:22]
  assign AluSel_io_AndRes = AND_io_result; // @[Main.scala 93:22]
  assign AluSel_io_OrRes = OR_io_result; // @[Main.scala 94:21]
  assign WRresult_io_resultin = AluSel_io_output; // @[Main.scala 99:26]
endmodule
