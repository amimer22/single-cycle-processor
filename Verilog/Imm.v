module Imm(
  input         clock,
  input         reset,
  input  [1:0]  io_ImmSrc,
  input  [31:0] io_instruction,
  output [31:0] io_Imm_Itype_out,
  output [31:0] io_Imm_Btype_out,
  output [31:0] io_Imm_Jtype_out,
  output [31:0] io_Imm_output
);
  wire [11:0] _Stype_T_3 = {io_instruction[31:25],io_instruction[11:7]}; // @[Imm.scala 28:62]
  wire [11:0] _Btype_T_5 = {io_instruction[31],io_instruction[7],io_instruction[30:25],io_instruction[11:8]}; // @[Imm.scala 29:100]
  wire [19:0] _Jtype_T_5 = {io_instruction[31],io_instruction[19:12],io_instruction[20],io_instruction[30:21]}; // @[Imm.scala 30:101]
  wire [19:0] _Imm_Itype_T_2 = io_instruction[31] ? 20'hfffff : 20'h0; // @[Bitwise.scala 74:12]
  wire [31:0] Imm_Itype = {_Imm_Itype_T_2,io_instruction[31:20]}; // @[Imm.scala 32:75]
  wire [31:0] Stype = {{20{_Stype_T_3[11]}},_Stype_T_3}; // @[Imm.scala 19:21 28:11]
  wire [19:0] _Imm_Stype_T_2 = Stype[11] ? 20'hfffff : 20'h0; // @[Bitwise.scala 74:12]
  wire [31:0] Imm_Stype_lo = {{20{_Stype_T_3[11]}},_Stype_T_3}; // @[Cat.scala 31:58]
  wire [51:0] _Imm_Stype_T_4 = {_Imm_Stype_T_2,Imm_Stype_lo}; // @[Imm.scala 33:50]
  wire [18:0] _Imm_Btype_T_2 = io_instruction[31] ? 19'h7ffff : 19'h0; // @[Bitwise.scala 74:12]
  wire [31:0] Imm_Btype_lo = {{20{_Btype_T_5[11]}},_Btype_T_5}; // @[Cat.scala 31:58]
  wire [50:0] _Imm_Btype_T_4 = {_Imm_Btype_T_2,Imm_Btype_lo}; // @[Imm.scala 34:59]
  wire [31:0] Jtype = {{12{_Jtype_T_5[19]}},_Jtype_T_5}; // @[Imm.scala 21:21 30:11]
  wire [11:0] _Imm_Jtype_T_2 = Jtype[20] ? 12'hfff : 12'h0; // @[Bitwise.scala 74:12]
  wire [31:0] Imm_Jtype_lo = {{12{_Jtype_T_5[19]}},_Jtype_T_5}; // @[Cat.scala 31:58]
  wire [43:0] _Imm_Jtype_T_4 = {_Imm_Jtype_T_2,Imm_Jtype_lo}; // @[Imm.scala 35:50]
  wire [31:0] Imm_Jtype = _Imm_Jtype_T_4[31:0]; // @[Imm.scala 26:25 35:15]
  wire [31:0] _GEN_0 = io_ImmSrc == 2'h3 ? $signed(Imm_Jtype) : $signed(32'sh14); // @[Imm.scala 47:40 48:23 50:23]
  wire [31:0] Imm_Btype = _Imm_Btype_T_4[31:0]; // @[Imm.scala 25:25 34:15]
  wire [31:0] _GEN_1 = io_ImmSrc == 2'h2 ? $signed(Imm_Btype) : $signed(_GEN_0); // @[Imm.scala 45:40 46:23]
  wire [31:0] Imm_Stype = _Imm_Stype_T_4[31:0]; // @[Imm.scala 24:25 33:15]
  wire [31:0] _GEN_2 = io_ImmSrc == 2'h1 ? $signed(Imm_Stype) : $signed(_GEN_1); // @[Imm.scala 43:40 44:23]
  assign io_Imm_Itype_out = {_Imm_Itype_T_2,io_instruction[31:20]}; // @[Imm.scala 32:75]
  assign io_Imm_Btype_out = _Imm_Btype_T_4[31:0]; // @[Imm.scala 25:25 34:15]
  assign io_Imm_Jtype_out = _Imm_Jtype_T_4[31:0]; // @[Imm.scala 26:25 35:15]
  assign io_Imm_output = io_ImmSrc == 2'h0 ? $signed(Imm_Itype) : $signed(_GEN_2); // @[Imm.scala 41:33 42:23]
endmodule
