module Controler(
  input  [6:0] io_opcode,
  input  [2:0] io_funct3,
  input  [6:0] io_funct7,
  output       io_RegWrite,
  output       io_MemWrite,
  output [1:0] io_ImmSrc,
  output       io_AluSrc,
  output [1:0] io_ResSrc,
  output       io_Br,
  output [2:0] io_AluCtrl,
  output [2:0] io_operation,
  output [4:0] io_BrCtrl,
  output [1:0] io_JmpCtrl,
  output [2:0] io_PcCtrl
);
  wire [1:0] _GEN_2 = 7'h67 == io_opcode ? 2'h2 : 2'h0; // @[Controler.scala 101:23 31:15 35:23]
  wire [2:0] _GEN_3 = 7'h67 == io_opcode ? 3'h5 : 3'h0; // @[Controler.scala 35:23 103:26 33:18]
  wire  _GEN_4 = 7'h6f == io_opcode | 7'h67 == io_opcode; // @[Controler.scala 35:23 87:25]
  wire [1:0] _GEN_6 = 7'h6f == io_opcode ? 2'h3 : 2'h0; // @[Controler.scala 35:23 89:23]
  wire [1:0] _GEN_7 = 7'h6f == io_opcode ? 2'h2 : _GEN_2; // @[Controler.scala 35:23 91:23]
  wire [2:0] _GEN_8 = 7'h6f == io_opcode ? 3'h4 : _GEN_3; // @[Controler.scala 35:23 93:26]
  wire  _GEN_9 = 7'h63 == io_opcode ? 1'h0 : _GEN_4; // @[Controler.scala 35:23 77:25]
  wire [1:0] _GEN_11 = 7'h63 == io_opcode ? 2'h2 : _GEN_6; // @[Controler.scala 35:23 79:23]
  wire [1:0] _GEN_12 = 7'h63 == io_opcode ? 2'h0 : _GEN_7; // @[Controler.scala 35:23 81:23]
  wire [2:0] _GEN_14 = 7'h63 == io_opcode ? 3'h3 : _GEN_8; // @[Controler.scala 35:23 83:26]
  wire [1:0] _GEN_15 = 7'h63 == io_opcode ? 2'h1 : _GEN_7; // @[Controler.scala 35:23 84:23]
  wire  _GEN_16 = 7'h23 == io_opcode ? 1'h0 : _GEN_9; // @[Controler.scala 35:23 67:25]
  wire [1:0] _GEN_18 = 7'h23 == io_opcode ? 2'h1 : _GEN_11; // @[Controler.scala 35:23 69:23]
  wire [1:0] _GEN_19 = 7'h23 == io_opcode ? 2'h0 : _GEN_12; // @[Controler.scala 35:23 71:23]
  wire  _GEN_20 = 7'h23 == io_opcode ? 1'h0 : 7'h63 == io_opcode; // @[Controler.scala 35:23 72:19]
  wire [2:0] _GEN_21 = 7'h23 == io_opcode ? 3'h2 : _GEN_14; // @[Controler.scala 35:23 73:26]
  wire [1:0] _GEN_22 = 7'h23 == io_opcode ? 2'h0 : _GEN_15; // @[Controler.scala 35:23 74:23]
  wire  _GEN_23 = 7'h3 == io_opcode | _GEN_16; // @[Controler.scala 35:23 57:25]
  wire  _GEN_24 = 7'h3 == io_opcode ? 1'h0 : 7'h23 == io_opcode; // @[Controler.scala 35:23 58:25]
  wire [1:0] _GEN_25 = 7'h3 == io_opcode ? 2'h0 : _GEN_18; // @[Controler.scala 35:23 59:23]
  wire  _GEN_26 = 7'h3 == io_opcode | 7'h23 == io_opcode; // @[Controler.scala 35:23 60:23]
  wire [1:0] _GEN_27 = 7'h3 == io_opcode ? 2'h1 : _GEN_19; // @[Controler.scala 35:23 61:23]
  wire  _GEN_28 = 7'h3 == io_opcode ? 1'h0 : _GEN_20; // @[Controler.scala 35:23 62:19]
  wire [2:0] _GEN_29 = 7'h3 == io_opcode ? 3'h2 : _GEN_21; // @[Controler.scala 35:23 63:26]
  wire [1:0] _GEN_30 = 7'h3 == io_opcode ? 2'h0 : _GEN_22; // @[Controler.scala 35:23 64:23]
  wire  _GEN_31 = 7'h13 == io_opcode | _GEN_23; // @[Controler.scala 35:23 47:25]
  wire  _GEN_32 = 7'h13 == io_opcode ? 1'h0 : _GEN_24; // @[Controler.scala 35:23 48:25]
  wire [1:0] _GEN_33 = 7'h13 == io_opcode ? 2'h0 : _GEN_25; // @[Controler.scala 35:23 49:23]
  wire  _GEN_34 = 7'h13 == io_opcode | _GEN_26; // @[Controler.scala 35:23 50:23]
  wire [1:0] _GEN_35 = 7'h13 == io_opcode ? 2'h0 : _GEN_27; // @[Controler.scala 35:23 51:23]
  wire  _GEN_36 = 7'h13 == io_opcode ? 1'h0 : _GEN_28; // @[Controler.scala 35:23 52:19]
  wire [2:0] _GEN_37 = 7'h13 == io_opcode ? 3'h1 : _GEN_29; // @[Controler.scala 35:23 53:26]
  wire [1:0] _GEN_38 = 7'h13 == io_opcode ? 2'h0 : _GEN_30; // @[Controler.scala 35:23 54:23]
  wire [1:0] _GEN_46 = 7'h33 == io_opcode ? 2'h0 : _GEN_38; // @[Controler.scala 35:23 44:23]
  wire  _T_7 = io_operation == 3'h0; // @[Controler.scala 108:23]
  wire  _T_8 = io_funct3 == 3'h0; // @[Controler.scala 108:49]
  wire  _T_9 = io_operation == 3'h0 & io_funct3 == 3'h0; // @[Controler.scala 108:36]
  wire  _T_10 = io_funct7 == 7'h0; // @[Controler.scala 108:75]
  wire  _T_18 = io_funct3 == 3'h7; // @[Controler.scala 114:54]
  wire  _T_23 = io_funct3 == 3'h6; // @[Controler.scala 117:54]
  wire  _T_27 = io_operation == 3'h1; // @[Controler.scala 120:28]
  wire  _T_35 = io_operation == 3'h2 & io_funct3 == 3'h2; // @[Controler.scala 126:41]
  wire [2:0] _GEN_47 = _T_35 ? 3'h0 : 3'h4; // @[Controler.scala 129:67 130:20 133:20]
  wire [2:0] _GEN_48 = io_operation == 3'h2 & io_funct3 == 3'h2 ? 3'h0 : _GEN_47; // @[Controler.scala 126:67 127:20]
  wire [2:0] _GEN_49 = _T_27 & _T_18 ? 3'h2 : _GEN_48; // @[Controler.scala 123:67 124:20]
  wire [2:0] _GEN_50 = io_operation == 3'h1 & _T_8 ? 3'h0 : _GEN_49; // @[Controler.scala 120:67 121:20]
  wire [2:0] _GEN_51 = _T_7 & io_funct3 == 3'h6 & _T_10 ? 3'h3 : _GEN_50; // @[Controler.scala 117:97 118:20]
  wire [2:0] _GEN_52 = _T_7 & io_funct3 == 3'h7 & _T_10 ? 3'h2 : _GEN_51; // @[Controler.scala 114:97 115:20]
  wire [2:0] _GEN_53 = _T_9 & io_funct7 == 7'h20 ? 3'h1 : _GEN_52; // @[Controler.scala 111:97 112:20]
  wire  _T_39 = io_operation == 3'h3; // @[Controler.scala 136:23]
  wire [4:0] _GEN_55 = _T_39 & _T_18 ? 5'h17 : 5'h1a; // @[Controler.scala 151:67 152:19 154:26]
  wire [4:0] _GEN_56 = _T_39 & _T_23 ? 5'h16 : _GEN_55; // @[Controler.scala 148:67 149:19]
  wire [4:0] _GEN_57 = _T_39 & io_funct3 == 3'h5 ? 5'h15 : _GEN_56; // @[Controler.scala 145:67 146:19]
  wire [4:0] _GEN_58 = _T_39 & io_funct3 == 3'h4 ? 5'h14 : _GEN_57; // @[Controler.scala 142:67 143:19]
  wire [4:0] _GEN_59 = _T_39 & io_funct3 == 3'h1 ? 5'h11 : _GEN_58; // @[Controler.scala 139:67 140:19]
  wire [4:0] _GEN_61 = io_operation == 3'h5 & _T_8 ? 5'h1 : 5'h1a; // @[Controler.scala 159:68 160:20 162:27]
  wire [4:0] _GEN_62 = io_operation == 3'h4 ? 5'h0 : _GEN_61; // @[Controler.scala 157:37 158:20]
  assign io_RegWrite = 7'h33 == io_opcode | _GEN_31; // @[Controler.scala 35:23 37:25]
  assign io_MemWrite = 7'h33 == io_opcode ? 1'h0 : _GEN_32; // @[Controler.scala 35:23 38:25]
  assign io_ImmSrc = 7'h33 == io_opcode ? 2'h0 : _GEN_33; // @[Controler.scala 35:23 39:23]
  assign io_AluSrc = 7'h33 == io_opcode ? 1'h0 : _GEN_34; // @[Controler.scala 35:23 40:23]
  assign io_ResSrc = 7'h33 == io_opcode ? 2'h0 : _GEN_35; // @[Controler.scala 35:23 41:23]
  assign io_Br = 7'h33 == io_opcode ? 1'h0 : _GEN_36; // @[Controler.scala 35:23 42:19]
  assign io_AluCtrl = io_operation == 3'h0 & io_funct3 == 3'h0 & io_funct7 == 7'h0 ? 3'h0 : _GEN_53; // @[Controler.scala 108:92 109:20]
  assign io_operation = 7'h33 == io_opcode ? 3'h0 : _GEN_37; // @[Controler.scala 35:23 43:26]
  assign io_BrCtrl = io_operation == 3'h3 & _T_8 ? 5'h10 : _GEN_59; // @[Controler.scala 136:62 137:19]
  assign io_JmpCtrl = _GEN_62[1:0];
  assign io_PcCtrl = {{1'd0}, _GEN_46};
endmodule
module RegisterFile(
  input         clock,
  input  [4:0]  io_addr1,
  output [31:0] io_data1,
  input  [4:0]  io_addr2,
  output [31:0] io_data2,
  input  [4:0]  io_addrwr,
  input  [31:0] io_datawr,
  input         io_RegWrite
);
`ifdef RANDOMIZE_MEM_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_MEM_INIT
  reg [31:0] registers [0:31]; // @[RegisterFile.scala 22:24]
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
  assign registers_io_data1_MPORT_en = 1'h1;
  assign registers_io_data1_MPORT_addr = io_addr1;
  assign registers_io_data1_MPORT_data = registers[registers_io_data1_MPORT_addr]; // @[RegisterFile.scala 22:24]
  assign registers_io_data2_MPORT_en = 1'h1;
  assign registers_io_data2_MPORT_addr = io_addr2;
  assign registers_io_data2_MPORT_data = registers[registers_io_data2_MPORT_addr]; // @[RegisterFile.scala 22:24]
  assign registers_MPORT_data = io_datawr;
  assign registers_MPORT_addr = io_addrwr;
  assign registers_MPORT_mask = 1'h1;
  assign registers_MPORT_en = io_RegWrite;
  assign registers_MPORT_1_data = 32'sh16;
  assign registers_MPORT_1_addr = io_addrwr;
  assign registers_MPORT_1_mask = 1'h1;
  assign registers_MPORT_1_en = io_RegWrite ? 1'h0 : 1'h1;
  assign io_data1 = registers_io_data1_MPORT_data; // @[RegisterFile.scala 40:14]
  assign io_data2 = registers_io_data2_MPORT_data; // @[RegisterFile.scala 41:14]
  always @(posedge clock) begin
    if (registers_MPORT_en & registers_MPORT_mask) begin
      registers[registers_MPORT_addr] <= registers_MPORT_data; // @[RegisterFile.scala 22:24]
    end
    if (registers_MPORT_1_en & registers_MPORT_1_mask) begin
      registers[registers_MPORT_1_addr] <= registers_MPORT_1_data; // @[RegisterFile.scala 22:24]
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
module PcCtrl(
  input  [2:0]  io_PcCtrl,
  input  [31:0] io_IP_incremented,
  input  [31:0] io_IP_Branched,
  input  [31:0] io_IP_Jumped,
  output [31:0] io_IP
);
  wire [31:0] _GEN_0 = io_PcCtrl == 3'h2 ? $signed(io_IP_Jumped) : $signed(32'sh2c); // @[PcCtrl.scala 24:39 25:15 28:15]
  wire [31:0] _GEN_1 = io_PcCtrl == 3'h1 ? $signed(io_IP_Branched) : $signed(_GEN_0); // @[PcCtrl.scala 21:39 22:15]
  assign io_IP = io_PcCtrl == 3'h0 ? $signed(io_IP_incremented) : $signed(_GEN_1); // @[PcCtrl.scala 18:34 19:14]
endmodule
module Pc(
  input         clock,
  input         reset,
  input  [31:0] io_IP_in,
  output [31:0] io_IP_out
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_REG_INIT
  reg [31:0] PcReg; // @[Pc.scala 11:22]
  assign io_IP_out = PcReg; // @[Pc.scala 16:15]
  always @(posedge clock) begin
    if (reset) begin // @[Pc.scala 11:22]
      PcReg <= 32'sh0; // @[Pc.scala 11:22]
    end else begin
      PcReg <= io_IP_in; // @[Pc.scala 14:11]
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
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  PcReg = _RAND_0[31:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module PcInc(
  input  [31:0] io_IPInc_in,
  output [31:0] io_IPInc_out
);
  assign io_IPInc_out = $signed(io_IPInc_in) + 32'sh1; // @[PcInc.scala 12:30]
endmodule
module IMemory(
  input         clock,
  input  [31:0] io_IPmem_in,
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
  wire [31:0] Memory_MPORT_7_data; // @[IMemory.scala 16:22]
  wire [4:0] Memory_MPORT_7_addr; // @[IMemory.scala 16:22]
  wire  Memory_MPORT_7_mask; // @[IMemory.scala 16:22]
  wire  Memory_MPORT_7_en; // @[IMemory.scala 16:22]
  wire [31:0] Memory_MPORT_8_data; // @[IMemory.scala 16:22]
  wire [4:0] Memory_MPORT_8_addr; // @[IMemory.scala 16:22]
  wire  Memory_MPORT_8_mask; // @[IMemory.scala 16:22]
  wire  Memory_MPORT_8_en; // @[IMemory.scala 16:22]
  assign Memory_io_instruction_MPORT_en = 1'h1;
  assign Memory_io_instruction_MPORT_addr = io_IPmem_in[4:0];
  assign Memory_io_instruction_MPORT_data = Memory[Memory_io_instruction_MPORT_addr]; // @[IMemory.scala 16:22]
  assign Memory_MPORT_data = 32'h508113;
  assign Memory_MPORT_addr = 5'h0;
  assign Memory_MPORT_mask = 1'h1;
  assign Memory_MPORT_en = 1'h1;
  assign Memory_MPORT_1_data = 32'hc08193;
  assign Memory_MPORT_1_addr = 5'h1;
  assign Memory_MPORT_1_mask = 1'h1;
  assign Memory_MPORT_1_en = 1'h1;
  assign Memory_MPORT_2_data = 32'hff718393;
  assign Memory_MPORT_2_addr = 5'h2;
  assign Memory_MPORT_2_mask = 1'h1;
  assign Memory_MPORT_2_en = 1'h1;
  assign Memory_MPORT_3_data = 32'h716233;
  assign Memory_MPORT_3_addr = 5'h3;
  assign Memory_MPORT_3_mask = 1'h1;
  assign Memory_MPORT_3_en = 1'h1;
  assign Memory_MPORT_4_data = 32'h41f2b3;
  assign Memory_MPORT_4_addr = 5'h4;
  assign Memory_MPORT_4_mask = 1'h1;
  assign Memory_MPORT_4_en = 1'h1;
  assign Memory_MPORT_5_data = 32'h4282b3;
  assign Memory_MPORT_5_addr = 5'h5;
  assign Memory_MPORT_5_mask = 1'h1;
  assign Memory_MPORT_5_en = 1'h1;
  assign Memory_MPORT_6_data = 32'h20863;
  assign Memory_MPORT_6_addr = 5'h6;
  assign Memory_MPORT_6_mask = 1'h1;
  assign Memory_MPORT_6_en = 1'h1;
  assign Memory_MPORT_7_data = 32'hb08313;
  assign Memory_MPORT_7_addr = 5'h7;
  assign Memory_MPORT_7_mask = 1'h1;
  assign Memory_MPORT_7_en = 1'h1;
  assign Memory_MPORT_8_data = 32'hfe628ce3;
  assign Memory_MPORT_8_addr = 5'h8;
  assign Memory_MPORT_8_mask = 1'h1;
  assign Memory_MPORT_8_en = 1'h1;
  assign io_instruction = Memory_io_instruction_MPORT_data; // @[IMemory.scala 46:20]
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
    if (Memory_MPORT_7_en & Memory_MPORT_7_mask) begin
      Memory[Memory_MPORT_7_addr] <= Memory_MPORT_7_data; // @[IMemory.scala 16:22]
    end
    if (Memory_MPORT_8_en & Memory_MPORT_8_mask) begin
      Memory[Memory_MPORT_8_addr] <= Memory_MPORT_8_data; // @[IMemory.scala 16:22]
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
  input  [31:0] io_Imm_Btype,
  input  [31:0] io_Imm_Jtype,
  output [31:0] io_Imm_output
);
  wire [31:0] _GEN_0 = io_ImmSrc == 2'h3 ? $signed(io_Imm_Jtype) : $signed(32'sh14); // @[Imm.scala 41:40 42:23 44:23]
  wire [31:0] _GEN_1 = io_ImmSrc == 2'h2 ? $signed(io_Imm_Btype) : $signed(_GEN_0); // @[Imm.scala 39:40 40:23]
  wire [31:0] _GEN_2 = io_ImmSrc == 2'h1 ? $signed(io_Imm_Stype) : $signed(_GEN_1); // @[Imm.scala 37:40 38:23]
  assign io_Imm_output = io_ImmSrc == 2'h0 ? $signed(io_Imm_Itype) : $signed(_GEN_2); // @[Imm.scala 35:33 36:23]
endmodule
module ImmOpr2Sel(
  input         io_AluSrc,
  input  [31:0] io_Opr2_input,
  input  [31:0] io_Imm_input,
  output [31:0] io_ImmOp2Sel_output
);
  assign io_ImmOp2Sel_output = io_AluSrc ? $signed(io_Imm_input) : $signed(io_Opr2_input); // @[ImmOpr2Sel.scala 14:21 15:29 18:29]
endmodule
module ADD(
  input  [31:0] io_op1,
  input  [31:0] io_op2,
  output [31:0] io_result
);
  assign io_result = $signed(io_op1) + $signed(io_op2); // @[ADD.scala 16:23]
endmodule
module SUB(
  input  [31:0] io_op1,
  input  [31:0] io_op2,
  output [31:0] io_result
);
  assign io_result = $signed(io_op1) - $signed(io_op2); // @[SUB.scala 16:23]
endmodule
module AND(
  input  [31:0] io_op1,
  input  [31:0] io_op2,
  output [31:0] io_result
);
  assign io_result = $signed(io_op1) & $signed(io_op2); // @[AND.scala 16:23]
endmodule
module OR(
  input  [31:0] io_op1,
  input  [31:0] io_op2,
  output [31:0] io_result
);
  assign io_result = $signed(io_op1) | $signed(io_op2); // @[OR.scala 16:23]
endmodule
module Jump(
  input  [31:0] io_Jal_imm,
  input  [31:0] io_JalR_imm,
  input  [31:0] io_Datas1,
  input  [1:0]  io_JmpCtrl,
  output [31:0] io_J_output
);
  wire [31:0] _io_J_output_T_2 = $signed(io_JalR_imm) + $signed(io_Datas1); // @[Jump.scala 18:36]
  wire [31:0] _GEN_0 = io_JmpCtrl == 2'h1 ? $signed(_io_J_output_T_2) : $signed(32'sh16); // @[Jump.scala 17:39 18:21 20:28]
  assign io_J_output = io_JmpCtrl == 2'h0 ? $signed(io_Jal_imm) : $signed(_GEN_0); // @[Jump.scala 15:34 16:21]
endmodule
module Branch(
  input  [4:0]  io_BrCtrl,
  input         io_Br,
  input  [31:0] io_Datas1,
  input  [31:0] io_Datas2,
  output        io_Br_up
);
  wire  _GEN_0 = 5'h17 == io_BrCtrl & $signed(io_Datas1) > $signed(io_Datas2); // @[Branch.scala 15:22 21:27 14:9]
  wire  _GEN_1 = 5'h16 == io_BrCtrl ? $signed(io_Datas1) < $signed(io_Datas2) : _GEN_0; // @[Branch.scala 15:22 20:27]
  wire  _GEN_2 = 5'h15 == io_BrCtrl ? $signed(io_Datas1) >= $signed(io_Datas2) : _GEN_1; // @[Branch.scala 15:22 19:27]
  wire  _GEN_3 = 5'h14 == io_BrCtrl ? $signed(io_Datas1) <= $signed(io_Datas2) : _GEN_2; // @[Branch.scala 15:22 18:27]
  wire  _GEN_4 = 5'h11 == io_BrCtrl ? $signed(io_Datas1) != $signed(io_Datas2) : _GEN_3; // @[Branch.scala 15:22 17:27]
  wire  sig = 5'h10 == io_BrCtrl ? $signed(io_Datas1) == $signed(io_Datas2) : _GEN_4; // @[Branch.scala 15:22 16:27]
  assign io_Br_up = io_Br & sig; // @[Branch.scala 24:23]
endmodule
module BrTarget(
  input         io_Br_up,
  input  [31:0] io_IP_init,
  input  [31:0] io_B_imm,
  output [31:0] io_B_output
);
  wire [31:0] B_imm_inc = $signed(io_IP_init) + 32'sh1; // @[BrTarget.scala 15:29]
  wire [31:0] _io_B_output_T_2 = $signed(io_B_imm) + $signed(io_IP_init); // @[BrTarget.scala 17:33]
  assign io_B_output = io_Br_up ? $signed(_io_B_output_T_2) : $signed(B_imm_inc); // @[BrTarget.scala 16:19 17:21 19:28]
endmodule
module AluOutput(
  input  [31:0] io_AddRes,
  input  [31:0] io_SubRes,
  input  [31:0] io_AndRes,
  input  [31:0] io_OrRes,
  output [31:0] io_output,
  input  [2:0]  io_AluCtrl
);
  wire [31:0] _GEN_0 = io_AluCtrl == 3'h3 ? $signed(io_OrRes) : $signed(32'sh0); // @[AluOutput.scala 21:45 22:19 24:19]
  wire [31:0] _GEN_1 = io_AluCtrl == 3'h2 ? $signed(io_AndRes) : $signed(_GEN_0); // @[AluOutput.scala 19:46 20:19]
  wire [31:0] _GEN_2 = io_AluCtrl == 3'h1 ? $signed(io_SubRes) : $signed(_GEN_1); // @[AluOutput.scala 17:45 18:19]
  assign io_output = io_AluCtrl == 3'h0 ? $signed(io_AddRes) : $signed(_GEN_2); // @[AluOutput.scala 15:36 16:19]
endmodule
module DataMemory(
  input         clock,
  input  [31:0] io_dataSin,
  input  [31:0] io_ReadAddr,
  output [31:0] io_ReadData,
  input         io_MemWrite
);
`ifdef RANDOMIZE_MEM_INIT
  reg [31:0] _RAND_0;
`endif // RANDOMIZE_MEM_INIT
  reg [31:0] DMemory [0:1023]; // @[DataMemory.scala 15:22]
  wire  DMemory_io_ReadData_MPORT_en; // @[DataMemory.scala 15:22]
  wire [9:0] DMemory_io_ReadData_MPORT_addr; // @[DataMemory.scala 15:22]
  wire [31:0] DMemory_io_ReadData_MPORT_data; // @[DataMemory.scala 15:22]
  wire [31:0] DMemory_MPORT_data; // @[DataMemory.scala 15:22]
  wire [9:0] DMemory_MPORT_addr; // @[DataMemory.scala 15:22]
  wire  DMemory_MPORT_mask; // @[DataMemory.scala 15:22]
  wire  DMemory_MPORT_en; // @[DataMemory.scala 15:22]
  wire [31:0] DMemory_MPORT_1_data; // @[DataMemory.scala 15:22]
  wire [9:0] DMemory_MPORT_1_addr; // @[DataMemory.scala 15:22]
  wire  DMemory_MPORT_1_mask; // @[DataMemory.scala 15:22]
  wire  DMemory_MPORT_1_en; // @[DataMemory.scala 15:22]
  wire [31:0] DMemory_MPORT_2_data; // @[DataMemory.scala 15:22]
  wire [9:0] DMemory_MPORT_2_addr; // @[DataMemory.scala 15:22]
  wire  DMemory_MPORT_2_mask; // @[DataMemory.scala 15:22]
  wire  DMemory_MPORT_2_en; // @[DataMemory.scala 15:22]
  wire [31:0] DMemory_MPORT_3_data; // @[DataMemory.scala 15:22]
  wire [9:0] DMemory_MPORT_3_addr; // @[DataMemory.scala 15:22]
  wire  DMemory_MPORT_3_mask; // @[DataMemory.scala 15:22]
  wire  DMemory_MPORT_3_en; // @[DataMemory.scala 15:22]
  wire [31:0] DMemory_MPORT_4_data; // @[DataMemory.scala 15:22]
  wire [9:0] DMemory_MPORT_4_addr; // @[DataMemory.scala 15:22]
  wire  DMemory_MPORT_4_mask; // @[DataMemory.scala 15:22]
  wire  DMemory_MPORT_4_en; // @[DataMemory.scala 15:22]
  wire [31:0] DMemory_MPORT_5_data; // @[DataMemory.scala 15:22]
  wire [9:0] DMemory_MPORT_5_addr; // @[DataMemory.scala 15:22]
  wire  DMemory_MPORT_5_mask; // @[DataMemory.scala 15:22]
  wire  DMemory_MPORT_5_en; // @[DataMemory.scala 15:22]
  wire [31:0] DMemory_MPORT_6_data; // @[DataMemory.scala 15:22]
  wire [9:0] DMemory_MPORT_6_addr; // @[DataMemory.scala 15:22]
  wire  DMemory_MPORT_6_mask; // @[DataMemory.scala 15:22]
  wire  DMemory_MPORT_6_en; // @[DataMemory.scala 15:22]
  wire [31:0] DMemory_MPORT_7_data; // @[DataMemory.scala 15:22]
  wire [9:0] DMemory_MPORT_7_addr; // @[DataMemory.scala 15:22]
  wire  DMemory_MPORT_7_mask; // @[DataMemory.scala 15:22]
  wire  DMemory_MPORT_7_en; // @[DataMemory.scala 15:22]
  wire [31:0] DMemory_MPORT_8_data; // @[DataMemory.scala 15:22]
  wire [9:0] DMemory_MPORT_8_addr; // @[DataMemory.scala 15:22]
  wire  DMemory_MPORT_8_mask; // @[DataMemory.scala 15:22]
  wire  DMemory_MPORT_8_en; // @[DataMemory.scala 15:22]
  wire [31:0] DMemory_MPORT_9_data; // @[DataMemory.scala 15:22]
  wire [9:0] DMemory_MPORT_9_addr; // @[DataMemory.scala 15:22]
  wire  DMemory_MPORT_9_mask; // @[DataMemory.scala 15:22]
  wire  DMemory_MPORT_9_en; // @[DataMemory.scala 15:22]
  wire [31:0] DMemory_MPORT_10_data; // @[DataMemory.scala 15:22]
  wire [9:0] DMemory_MPORT_10_addr; // @[DataMemory.scala 15:22]
  wire  DMemory_MPORT_10_mask; // @[DataMemory.scala 15:22]
  wire  DMemory_MPORT_10_en; // @[DataMemory.scala 15:22]
  assign DMemory_io_ReadData_MPORT_en = 1'h1;
  assign DMemory_io_ReadData_MPORT_addr = io_ReadAddr[9:0];
  assign DMemory_io_ReadData_MPORT_data = DMemory[DMemory_io_ReadData_MPORT_addr]; // @[DataMemory.scala 15:22]
  assign DMemory_MPORT_data = 32'sh13;
  assign DMemory_MPORT_addr = 10'h0;
  assign DMemory_MPORT_mask = 1'h1;
  assign DMemory_MPORT_en = 1'h1;
  assign DMemory_MPORT_1_data = 32'sh9;
  assign DMemory_MPORT_1_addr = 10'h1;
  assign DMemory_MPORT_1_mask = 1'h1;
  assign DMemory_MPORT_1_en = 1'h1;
  assign DMemory_MPORT_2_data = 32'sh9;
  assign DMemory_MPORT_2_addr = 10'h2;
  assign DMemory_MPORT_2_mask = 1'h1;
  assign DMemory_MPORT_2_en = 1'h1;
  assign DMemory_MPORT_3_data = 32'sh9;
  assign DMemory_MPORT_3_addr = 10'h3;
  assign DMemory_MPORT_3_mask = 1'h1;
  assign DMemory_MPORT_3_en = 1'h1;
  assign DMemory_MPORT_4_data = 32'sh9;
  assign DMemory_MPORT_4_addr = 10'h4;
  assign DMemory_MPORT_4_mask = 1'h1;
  assign DMemory_MPORT_4_en = 1'h1;
  assign DMemory_MPORT_5_data = 32'sh9;
  assign DMemory_MPORT_5_addr = 10'h5;
  assign DMemory_MPORT_5_mask = 1'h1;
  assign DMemory_MPORT_5_en = 1'h1;
  assign DMemory_MPORT_6_data = 32'sh9;
  assign DMemory_MPORT_6_addr = 10'h6;
  assign DMemory_MPORT_6_mask = 1'h1;
  assign DMemory_MPORT_6_en = 1'h1;
  assign DMemory_MPORT_7_data = 32'sh9;
  assign DMemory_MPORT_7_addr = 10'h7;
  assign DMemory_MPORT_7_mask = 1'h1;
  assign DMemory_MPORT_7_en = 1'h1;
  assign DMemory_MPORT_8_data = 32'sh9;
  assign DMemory_MPORT_8_addr = 10'h8;
  assign DMemory_MPORT_8_mask = 1'h1;
  assign DMemory_MPORT_8_en = 1'h1;
  assign DMemory_MPORT_9_data = io_dataSin;
  assign DMemory_MPORT_9_addr = io_ReadAddr[9:0];
  assign DMemory_MPORT_9_mask = 1'h1;
  assign DMemory_MPORT_9_en = io_MemWrite;
  assign DMemory_MPORT_10_data = 32'sh16;
  assign DMemory_MPORT_10_addr = io_ReadAddr[9:0];
  assign DMemory_MPORT_10_mask = 1'h1;
  assign DMemory_MPORT_10_en = io_MemWrite ? 1'h0 : 1'h1;
  assign io_ReadData = DMemory_io_ReadData_MPORT_data; // @[DataMemory.scala 37:17]
  always @(posedge clock) begin
    if (DMemory_MPORT_en & DMemory_MPORT_mask) begin
      DMemory[DMemory_MPORT_addr] <= DMemory_MPORT_data; // @[DataMemory.scala 15:22]
    end
    if (DMemory_MPORT_1_en & DMemory_MPORT_1_mask) begin
      DMemory[DMemory_MPORT_1_addr] <= DMemory_MPORT_1_data; // @[DataMemory.scala 15:22]
    end
    if (DMemory_MPORT_2_en & DMemory_MPORT_2_mask) begin
      DMemory[DMemory_MPORT_2_addr] <= DMemory_MPORT_2_data; // @[DataMemory.scala 15:22]
    end
    if (DMemory_MPORT_3_en & DMemory_MPORT_3_mask) begin
      DMemory[DMemory_MPORT_3_addr] <= DMemory_MPORT_3_data; // @[DataMemory.scala 15:22]
    end
    if (DMemory_MPORT_4_en & DMemory_MPORT_4_mask) begin
      DMemory[DMemory_MPORT_4_addr] <= DMemory_MPORT_4_data; // @[DataMemory.scala 15:22]
    end
    if (DMemory_MPORT_5_en & DMemory_MPORT_5_mask) begin
      DMemory[DMemory_MPORT_5_addr] <= DMemory_MPORT_5_data; // @[DataMemory.scala 15:22]
    end
    if (DMemory_MPORT_6_en & DMemory_MPORT_6_mask) begin
      DMemory[DMemory_MPORT_6_addr] <= DMemory_MPORT_6_data; // @[DataMemory.scala 15:22]
    end
    if (DMemory_MPORT_7_en & DMemory_MPORT_7_mask) begin
      DMemory[DMemory_MPORT_7_addr] <= DMemory_MPORT_7_data; // @[DataMemory.scala 15:22]
    end
    if (DMemory_MPORT_8_en & DMemory_MPORT_8_mask) begin
      DMemory[DMemory_MPORT_8_addr] <= DMemory_MPORT_8_data; // @[DataMemory.scala 15:22]
    end
    if (DMemory_MPORT_9_en & DMemory_MPORT_9_mask) begin
      DMemory[DMemory_MPORT_9_addr] <= DMemory_MPORT_9_data; // @[DataMemory.scala 15:22]
    end
    if (DMemory_MPORT_10_en & DMemory_MPORT_10_mask) begin
      DMemory[DMemory_MPORT_10_addr] <= DMemory_MPORT_10_data; // @[DataMemory.scala 15:22]
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
  input  [1:0]  io_ResSrc,
  input  [31:0] io_AluRes,
  input  [31:0] io_ReadData,
  input  [31:0] io_nextPcAddr,
  output [31:0] io_Result
);
  wire [31:0] _GEN_0 = io_ResSrc == 2'h2 ? $signed(io_nextPcAddr) : $signed(32'sh16); // @[ResultSel.scala 21:38 22:19 24:19]
  wire [31:0] _GEN_1 = io_ResSrc == 2'h1 ? $signed(io_ReadData) : $signed(_GEN_0); // @[ResultSel.scala 19:37 20:19]
  assign io_Result = io_ResSrc == 2'h0 ? $signed(io_AluRes) : $signed(_GEN_1); // @[ResultSel.scala 16:33 17:19]
endmodule
module Main(
  input         clock,
  input         reset,
  output [31:0] io_Data1,
  output [31:0] io_Data2,
  output [31:0] io_Dataout,
  output [31:0] io_Brpc,
  output [31:0] io_Brimm,
  output [31:0] io_BrDtaout,
  output [31:0] io_BrData1,
  output [31:0] io_BrData2,
  output [31:0] io_output
);
  wire [6:0] Controler_io_opcode; // @[Main.scala 31:27]
  wire [2:0] Controler_io_funct3; // @[Main.scala 31:27]
  wire [6:0] Controler_io_funct7; // @[Main.scala 31:27]
  wire  Controler_io_RegWrite; // @[Main.scala 31:27]
  wire  Controler_io_MemWrite; // @[Main.scala 31:27]
  wire [1:0] Controler_io_ImmSrc; // @[Main.scala 31:27]
  wire  Controler_io_AluSrc; // @[Main.scala 31:27]
  wire [1:0] Controler_io_ResSrc; // @[Main.scala 31:27]
  wire  Controler_io_Br; // @[Main.scala 31:27]
  wire [2:0] Controler_io_AluCtrl; // @[Main.scala 31:27]
  wire [2:0] Controler_io_operation; // @[Main.scala 31:27]
  wire [4:0] Controler_io_BrCtrl; // @[Main.scala 31:27]
  wire [1:0] Controler_io_JmpCtrl; // @[Main.scala 31:27]
  wire [2:0] Controler_io_PcCtrl; // @[Main.scala 31:27]
  wire  RegisterFile_clock; // @[Main.scala 32:30]
  wire [4:0] RegisterFile_io_addr1; // @[Main.scala 32:30]
  wire [31:0] RegisterFile_io_data1; // @[Main.scala 32:30]
  wire [4:0] RegisterFile_io_addr2; // @[Main.scala 32:30]
  wire [31:0] RegisterFile_io_data2; // @[Main.scala 32:30]
  wire [4:0] RegisterFile_io_addrwr; // @[Main.scala 32:30]
  wire [31:0] RegisterFile_io_datawr; // @[Main.scala 32:30]
  wire  RegisterFile_io_RegWrite; // @[Main.scala 32:30]
  wire [2:0] PcCtrl_io_PcCtrl; // @[Main.scala 33:24]
  wire [31:0] PcCtrl_io_IP_incremented; // @[Main.scala 33:24]
  wire [31:0] PcCtrl_io_IP_Branched; // @[Main.scala 33:24]
  wire [31:0] PcCtrl_io_IP_Jumped; // @[Main.scala 33:24]
  wire [31:0] PcCtrl_io_IP; // @[Main.scala 33:24]
  wire  Pc_clock; // @[Main.scala 34:20]
  wire  Pc_reset; // @[Main.scala 34:20]
  wire [31:0] Pc_io_IP_in; // @[Main.scala 34:20]
  wire [31:0] Pc_io_IP_out; // @[Main.scala 34:20]
  wire [31:0] PcInc_io_IPInc_in; // @[Main.scala 35:23]
  wire [31:0] PcInc_io_IPInc_out; // @[Main.scala 35:23]
  wire  IMemory_clock; // @[Main.scala 36:25]
  wire [31:0] IMemory_io_IPmem_in; // @[Main.scala 36:25]
  wire [31:0] IMemory_io_instruction; // @[Main.scala 36:25]
  wire [4:0] OPR1read_io_addrs1in; // @[Main.scala 37:27]
  wire [31:0] OPR1read_io_datas1in; // @[Main.scala 37:27]
  wire [4:0] OPR1read_io_addrs1out; // @[Main.scala 37:27]
  wire [31:0] OPR1read_io_datas1out; // @[Main.scala 37:27]
  wire [4:0] OPR2read_io_addrs1in; // @[Main.scala 38:27]
  wire [31:0] OPR2read_io_datas1in; // @[Main.scala 38:27]
  wire [4:0] OPR2read_io_addrs1out; // @[Main.scala 38:27]
  wire [31:0] OPR2read_io_datas1out; // @[Main.scala 38:27]
  wire [1:0] Imm_io_ImmSrc; // @[Main.scala 39:21]
  wire [31:0] Imm_io_Imm_Itype; // @[Main.scala 39:21]
  wire [31:0] Imm_io_Imm_Stype; // @[Main.scala 39:21]
  wire [31:0] Imm_io_Imm_Btype; // @[Main.scala 39:21]
  wire [31:0] Imm_io_Imm_Jtype; // @[Main.scala 39:21]
  wire [31:0] Imm_io_Imm_output; // @[Main.scala 39:21]
  wire  ImmOpr2Sel_io_AluSrc; // @[Main.scala 40:28]
  wire [31:0] ImmOpr2Sel_io_Opr2_input; // @[Main.scala 40:28]
  wire [31:0] ImmOpr2Sel_io_Imm_input; // @[Main.scala 40:28]
  wire [31:0] ImmOpr2Sel_io_ImmOp2Sel_output; // @[Main.scala 40:28]
  wire [31:0] ADD_io_op1; // @[Main.scala 43:21]
  wire [31:0] ADD_io_op2; // @[Main.scala 43:21]
  wire [31:0] ADD_io_result; // @[Main.scala 43:21]
  wire [31:0] SUB_io_op1; // @[Main.scala 44:21]
  wire [31:0] SUB_io_op2; // @[Main.scala 44:21]
  wire [31:0] SUB_io_result; // @[Main.scala 44:21]
  wire [31:0] AND_io_op1; // @[Main.scala 45:21]
  wire [31:0] AND_io_op2; // @[Main.scala 45:21]
  wire [31:0] AND_io_result; // @[Main.scala 45:21]
  wire [31:0] OR_io_op1; // @[Main.scala 46:20]
  wire [31:0] OR_io_op2; // @[Main.scala 46:20]
  wire [31:0] OR_io_result; // @[Main.scala 46:20]
  wire [31:0] Jump_io_Jal_imm; // @[Main.scala 47:22]
  wire [31:0] Jump_io_JalR_imm; // @[Main.scala 47:22]
  wire [31:0] Jump_io_Datas1; // @[Main.scala 47:22]
  wire [1:0] Jump_io_JmpCtrl; // @[Main.scala 47:22]
  wire [31:0] Jump_io_J_output; // @[Main.scala 47:22]
  wire [4:0] Branch_io_BrCtrl; // @[Main.scala 48:24]
  wire  Branch_io_Br; // @[Main.scala 48:24]
  wire [31:0] Branch_io_Datas1; // @[Main.scala 48:24]
  wire [31:0] Branch_io_Datas2; // @[Main.scala 48:24]
  wire  Branch_io_Br_up; // @[Main.scala 48:24]
  wire  BrTarget_io_Br_up; // @[Main.scala 49:26]
  wire [31:0] BrTarget_io_IP_init; // @[Main.scala 49:26]
  wire [31:0] BrTarget_io_B_imm; // @[Main.scala 49:26]
  wire [31:0] BrTarget_io_B_output; // @[Main.scala 49:26]
  wire [31:0] AluOutput_io_AddRes; // @[Main.scala 51:27]
  wire [31:0] AluOutput_io_SubRes; // @[Main.scala 51:27]
  wire [31:0] AluOutput_io_AndRes; // @[Main.scala 51:27]
  wire [31:0] AluOutput_io_OrRes; // @[Main.scala 51:27]
  wire [31:0] AluOutput_io_output; // @[Main.scala 51:27]
  wire [2:0] AluOutput_io_AluCtrl; // @[Main.scala 51:27]
  wire  DataMemory_clock; // @[Main.scala 52:28]
  wire [31:0] DataMemory_io_dataSin; // @[Main.scala 52:28]
  wire [31:0] DataMemory_io_ReadAddr; // @[Main.scala 52:28]
  wire [31:0] DataMemory_io_ReadData; // @[Main.scala 52:28]
  wire  DataMemory_io_MemWrite; // @[Main.scala 52:28]
  wire [1:0] ResultSel_io_ResSrc; // @[Main.scala 53:27]
  wire [31:0] ResultSel_io_AluRes; // @[Main.scala 53:27]
  wire [31:0] ResultSel_io_ReadData; // @[Main.scala 53:27]
  wire [31:0] ResultSel_io_nextPcAddr; // @[Main.scala 53:27]
  wire [31:0] ResultSel_io_Result; // @[Main.scala 53:27]
  wire [11:0] _Stype_T_3 = {IMemory_io_instruction[31:25],IMemory_io_instruction[11:7]}; // @[Main.scala 105:78]
  wire [11:0] _Btype_T_5 = {IMemory_io_instruction[31],IMemory_io_instruction[7],IMemory_io_instruction[30:25],
    IMemory_io_instruction[11:8]}; // @[Main.scala 106:132]
  wire [19:0] _Jtype_T_5 = {IMemory_io_instruction[31],IMemory_io_instruction[19:12],IMemory_io_instruction[20],
    IMemory_io_instruction[30:21]}; // @[Main.scala 107:133]
  wire [19:0] _Imm_io_Imm_Itype_T_2 = IMemory_io_instruction[31] ? 20'hfffff : 20'h0; // @[Bitwise.scala 74:12]
  wire [31:0] Stype = {{20{_Stype_T_3[11]}},_Stype_T_3}; // @[Main.scala 101:21 105:11]
  wire [19:0] _Imm_io_Imm_Stype_T_2 = Stype[11] ? 20'hfffff : 20'h0; // @[Bitwise.scala 74:12]
  wire [31:0] Imm_io_Imm_Stype_lo = {{20{_Stype_T_3[11]}},_Stype_T_3}; // @[Cat.scala 31:58]
  wire [51:0] _Imm_io_Imm_Stype_T_4 = {_Imm_io_Imm_Stype_T_2,Imm_io_Imm_Stype_lo}; // @[Main.scala 114:57]
  wire [18:0] _Imm_io_Imm_Btype_T_2 = IMemory_io_instruction[31] ? 19'h7ffff : 19'h0; // @[Bitwise.scala 74:12]
  wire [31:0] Imm_io_Imm_Btype_lo = {{20{_Btype_T_5[11]}},_Btype_T_5}; // @[Cat.scala 31:58]
  wire [50:0] _Imm_io_Imm_Btype_T_4 = {_Imm_io_Imm_Btype_T_2,Imm_io_Imm_Btype_lo}; // @[Main.scala 115:74]
  wire [31:0] Jtype = {{12{_Jtype_T_5[19]}},_Jtype_T_5}; // @[Main.scala 103:21 107:11]
  wire [11:0] _Imm_io_Imm_Jtype_T_2 = Jtype[20] ? 12'hfff : 12'h0; // @[Bitwise.scala 74:12]
  wire [31:0] Imm_io_Imm_Jtype_lo = {{12{_Jtype_T_5[19]}},_Jtype_T_5}; // @[Cat.scala 31:58]
  wire [43:0] _Imm_io_Imm_Jtype_T_4 = {_Imm_io_Imm_Jtype_T_2,Imm_io_Imm_Jtype_lo}; // @[Main.scala 116:57]
  Controler Controler ( // @[Main.scala 31:27]
    .io_opcode(Controler_io_opcode),
    .io_funct3(Controler_io_funct3),
    .io_funct7(Controler_io_funct7),
    .io_RegWrite(Controler_io_RegWrite),
    .io_MemWrite(Controler_io_MemWrite),
    .io_ImmSrc(Controler_io_ImmSrc),
    .io_AluSrc(Controler_io_AluSrc),
    .io_ResSrc(Controler_io_ResSrc),
    .io_Br(Controler_io_Br),
    .io_AluCtrl(Controler_io_AluCtrl),
    .io_operation(Controler_io_operation),
    .io_BrCtrl(Controler_io_BrCtrl),
    .io_JmpCtrl(Controler_io_JmpCtrl),
    .io_PcCtrl(Controler_io_PcCtrl)
  );
  RegisterFile RegisterFile ( // @[Main.scala 32:30]
    .clock(RegisterFile_clock),
    .io_addr1(RegisterFile_io_addr1),
    .io_data1(RegisterFile_io_data1),
    .io_addr2(RegisterFile_io_addr2),
    .io_data2(RegisterFile_io_data2),
    .io_addrwr(RegisterFile_io_addrwr),
    .io_datawr(RegisterFile_io_datawr),
    .io_RegWrite(RegisterFile_io_RegWrite)
  );
  PcCtrl PcCtrl ( // @[Main.scala 33:24]
    .io_PcCtrl(PcCtrl_io_PcCtrl),
    .io_IP_incremented(PcCtrl_io_IP_incremented),
    .io_IP_Branched(PcCtrl_io_IP_Branched),
    .io_IP_Jumped(PcCtrl_io_IP_Jumped),
    .io_IP(PcCtrl_io_IP)
  );
  Pc Pc ( // @[Main.scala 34:20]
    .clock(Pc_clock),
    .reset(Pc_reset),
    .io_IP_in(Pc_io_IP_in),
    .io_IP_out(Pc_io_IP_out)
  );
  PcInc PcInc ( // @[Main.scala 35:23]
    .io_IPInc_in(PcInc_io_IPInc_in),
    .io_IPInc_out(PcInc_io_IPInc_out)
  );
  IMemory IMemory ( // @[Main.scala 36:25]
    .clock(IMemory_clock),
    .io_IPmem_in(IMemory_io_IPmem_in),
    .io_instruction(IMemory_io_instruction)
  );
  OPR1read OPR1read ( // @[Main.scala 37:27]
    .io_addrs1in(OPR1read_io_addrs1in),
    .io_datas1in(OPR1read_io_datas1in),
    .io_addrs1out(OPR1read_io_addrs1out),
    .io_datas1out(OPR1read_io_datas1out)
  );
  OPR1read OPR2read ( // @[Main.scala 38:27]
    .io_addrs1in(OPR2read_io_addrs1in),
    .io_datas1in(OPR2read_io_datas1in),
    .io_addrs1out(OPR2read_io_addrs1out),
    .io_datas1out(OPR2read_io_datas1out)
  );
  Imm Imm ( // @[Main.scala 39:21]
    .io_ImmSrc(Imm_io_ImmSrc),
    .io_Imm_Itype(Imm_io_Imm_Itype),
    .io_Imm_Stype(Imm_io_Imm_Stype),
    .io_Imm_Btype(Imm_io_Imm_Btype),
    .io_Imm_Jtype(Imm_io_Imm_Jtype),
    .io_Imm_output(Imm_io_Imm_output)
  );
  ImmOpr2Sel ImmOpr2Sel ( // @[Main.scala 40:28]
    .io_AluSrc(ImmOpr2Sel_io_AluSrc),
    .io_Opr2_input(ImmOpr2Sel_io_Opr2_input),
    .io_Imm_input(ImmOpr2Sel_io_Imm_input),
    .io_ImmOp2Sel_output(ImmOpr2Sel_io_ImmOp2Sel_output)
  );
  ADD ADD ( // @[Main.scala 43:21]
    .io_op1(ADD_io_op1),
    .io_op2(ADD_io_op2),
    .io_result(ADD_io_result)
  );
  SUB SUB ( // @[Main.scala 44:21]
    .io_op1(SUB_io_op1),
    .io_op2(SUB_io_op2),
    .io_result(SUB_io_result)
  );
  AND AND ( // @[Main.scala 45:21]
    .io_op1(AND_io_op1),
    .io_op2(AND_io_op2),
    .io_result(AND_io_result)
  );
  OR OR ( // @[Main.scala 46:20]
    .io_op1(OR_io_op1),
    .io_op2(OR_io_op2),
    .io_result(OR_io_result)
  );
  Jump Jump ( // @[Main.scala 47:22]
    .io_Jal_imm(Jump_io_Jal_imm),
    .io_JalR_imm(Jump_io_JalR_imm),
    .io_Datas1(Jump_io_Datas1),
    .io_JmpCtrl(Jump_io_JmpCtrl),
    .io_J_output(Jump_io_J_output)
  );
  Branch Branch ( // @[Main.scala 48:24]
    .io_BrCtrl(Branch_io_BrCtrl),
    .io_Br(Branch_io_Br),
    .io_Datas1(Branch_io_Datas1),
    .io_Datas2(Branch_io_Datas2),
    .io_Br_up(Branch_io_Br_up)
  );
  BrTarget BrTarget ( // @[Main.scala 49:26]
    .io_Br_up(BrTarget_io_Br_up),
    .io_IP_init(BrTarget_io_IP_init),
    .io_B_imm(BrTarget_io_B_imm),
    .io_B_output(BrTarget_io_B_output)
  );
  AluOutput AluOutput ( // @[Main.scala 51:27]
    .io_AddRes(AluOutput_io_AddRes),
    .io_SubRes(AluOutput_io_SubRes),
    .io_AndRes(AluOutput_io_AndRes),
    .io_OrRes(AluOutput_io_OrRes),
    .io_output(AluOutput_io_output),
    .io_AluCtrl(AluOutput_io_AluCtrl)
  );
  DataMemory DataMemory ( // @[Main.scala 52:28]
    .clock(DataMemory_clock),
    .io_dataSin(DataMemory_io_dataSin),
    .io_ReadAddr(DataMemory_io_ReadAddr),
    .io_ReadData(DataMemory_io_ReadData),
    .io_MemWrite(DataMemory_io_MemWrite)
  );
  ResultSel ResultSel ( // @[Main.scala 53:27]
    .io_ResSrc(ResultSel_io_ResSrc),
    .io_AluRes(ResultSel_io_AluRes),
    .io_ReadData(ResultSel_io_ReadData),
    .io_nextPcAddr(ResultSel_io_nextPcAddr),
    .io_Result(ResultSel_io_Result)
  );
  assign io_Data1 = ADD_io_op1; // @[Main.scala 147:14]
  assign io_Data2 = ADD_io_op2; // @[Main.scala 148:14]
  assign io_Dataout = AluOutput_io_output; // @[Main.scala 167:16]
  assign io_Brpc = BrTarget_io_IP_init; // @[Main.scala 139:13]
  assign io_Brimm = BrTarget_io_B_imm; // @[Main.scala 140:14]
  assign io_BrDtaout = BrTarget_io_B_output; // @[Main.scala 141:17]
  assign io_BrData1 = Branch_io_Datas1; // @[Main.scala 132:16]
  assign io_BrData2 = Branch_io_Datas2; // @[Main.scala 133:16]
  assign io_output = Pc_io_IP_out; // @[Main.scala 62:15]
  assign Controler_io_opcode = IMemory_io_instruction[6:0]; // @[Main.scala 68:50]
  assign Controler_io_funct3 = IMemory_io_instruction[14:12]; // @[Main.scala 69:50]
  assign Controler_io_funct7 = IMemory_io_instruction[31:25]; // @[Main.scala 70:50]
  assign RegisterFile_clock = clock;
  assign RegisterFile_io_addr1 = OPR1read_io_addrs1out; // @[Main.scala 80:27]
  assign RegisterFile_io_addr2 = OPR2read_io_addrs1out; // @[Main.scala 94:27]
  assign RegisterFile_io_addrwr = IMemory_io_instruction[11:7]; // @[Main.scala 76:53]
  assign RegisterFile_io_datawr = ResultSel_io_Result; // @[Main.scala 184:28]
  assign RegisterFile_io_RegWrite = Controler_io_RegWrite; // @[Main.scala 75:30]
  assign PcCtrl_io_PcCtrl = Controler_io_PcCtrl; // @[Main.scala 72:22]
  assign PcCtrl_io_IP_incremented = PcInc_io_IPInc_out; // @[Main.scala 190:30]
  assign PcCtrl_io_IP_Branched = BrTarget_io_B_output; // @[Main.scala 191:27]
  assign PcCtrl_io_IP_Jumped = Jump_io_J_output; // @[Main.scala 192:25]
  assign Pc_clock = clock;
  assign Pc_reset = reset;
  assign Pc_io_IP_in = PcCtrl_io_IP; // @[Main.scala 194:17]
  assign PcInc_io_IPInc_in = Pc_io_IP_out; // @[Main.scala 187:23]
  assign IMemory_clock = clock;
  assign IMemory_io_IPmem_in = Pc_io_IP_out; // @[Main.scala 65:35]
  assign OPR1read_io_addrs1in = IMemory_io_instruction[19:15]; // @[Main.scala 79:51]
  assign OPR1read_io_datas1in = RegisterFile_io_data1; // @[Main.scala 81:26]
  assign OPR2read_io_addrs1in = IMemory_io_instruction[24:20]; // @[Main.scala 93:51]
  assign OPR2read_io_datas1in = RegisterFile_io_data2; // @[Main.scala 95:26]
  assign Imm_io_ImmSrc = Controler_io_ImmSrc; // @[Main.scala 108:19]
  assign Imm_io_Imm_Itype = {_Imm_io_Imm_Itype_T_2,IMemory_io_instruction[31:20]}; // @[Main.scala 113:98]
  assign Imm_io_Imm_Stype = _Imm_io_Imm_Stype_T_4[31:0]; // @[Main.scala 114:22]
  assign Imm_io_Imm_Btype = _Imm_io_Imm_Btype_T_4[31:0]; // @[Main.scala 115:22]
  assign Imm_io_Imm_Jtype = _Imm_io_Imm_Jtype_T_4[31:0]; // @[Main.scala 116:22]
  assign ImmOpr2Sel_io_AluSrc = Controler_io_AluSrc; // @[Main.scala 118:26]
  assign ImmOpr2Sel_io_Opr2_input = OPR2read_io_datas1out; // @[Main.scala 119:30]
  assign ImmOpr2Sel_io_Imm_input = Imm_io_Imm_output; // @[Main.scala 120:29]
  assign ADD_io_op1 = OPR1read_io_datas1out; // @[Main.scala 143:16]
  assign ADD_io_op2 = ImmOpr2Sel_io_ImmOp2Sel_output; // @[Main.scala 145:16]
  assign SUB_io_op1 = OPR1read_io_datas1out; // @[Main.scala 150:16]
  assign SUB_io_op2 = ImmOpr2Sel_io_ImmOp2Sel_output; // @[Main.scala 151:16]
  assign AND_io_op1 = OPR1read_io_datas1out; // @[Main.scala 156:16]
  assign AND_io_op2 = ImmOpr2Sel_io_ImmOp2Sel_output; // @[Main.scala 157:16]
  assign OR_io_op1 = OPR1read_io_datas1out; // @[Main.scala 153:15]
  assign OR_io_op2 = ImmOpr2Sel_io_ImmOp2Sel_output; // @[Main.scala 154:15]
  assign Jump_io_Jal_imm = Imm_io_Imm_Jtype; // @[Main.scala 123:21]
  assign Jump_io_JalR_imm = Imm_io_Imm_Itype; // @[Main.scala 124:22]
  assign Jump_io_Datas1 = OPR1read_io_datas1out; // @[Main.scala 125:20]
  assign Jump_io_JmpCtrl = Controler_io_JmpCtrl; // @[Main.scala 122:21]
  assign Branch_io_BrCtrl = Controler_io_BrCtrl; // @[Main.scala 128:22]
  assign Branch_io_Br = Controler_io_Br; // @[Main.scala 127:18]
  assign Branch_io_Datas1 = OPR1read_io_datas1out; // @[Main.scala 130:22]
  assign Branch_io_Datas2 = OPR2read_io_datas1out; // @[Main.scala 131:22]
  assign BrTarget_io_Br_up = Branch_io_Br_up; // @[Main.scala 136:23]
  assign BrTarget_io_IP_init = Pc_io_IP_out; // @[Main.scala 135:25]
  assign BrTarget_io_B_imm = Imm_io_Imm_Btype; // @[Main.scala 137:23]
  assign AluOutput_io_AddRes = ADD_io_result; // @[Main.scala 162:25]
  assign AluOutput_io_SubRes = SUB_io_result; // @[Main.scala 163:25]
  assign AluOutput_io_AndRes = AND_io_result; // @[Main.scala 164:25]
  assign AluOutput_io_OrRes = OR_io_result; // @[Main.scala 165:24]
  assign AluOutput_io_AluCtrl = Controler_io_AluCtrl; // @[Main.scala 161:26]
  assign DataMemory_clock = clock;
  assign DataMemory_io_dataSin = OPR2read_io_datas1out; // @[Main.scala 175:27]
  assign DataMemory_io_ReadAddr = AluOutput_io_output; // @[Main.scala 174:42]
  assign DataMemory_io_MemWrite = Controler_io_MemWrite; // @[Main.scala 173:28]
  assign ResultSel_io_ResSrc = Controler_io_ResSrc; // @[Main.scala 179:25]
  assign ResultSel_io_AluRes = AluOutput_io_output; // @[Main.scala 181:25]
  assign ResultSel_io_ReadData = DataMemory_io_ReadData; // @[Main.scala 180:27]
  assign ResultSel_io_nextPcAddr = PcInc_io_IPInc_out; // @[Main.scala 182:29]
endmodule
