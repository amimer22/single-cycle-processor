module OPR2read(
  input         clock,
  input         reset,
  input  [31:0] io_instruction_addr2,
  input  [31:0] io_datas2in,
  output [4:0]  io_addrs2out,
  output [31:0] io_datas2out
);
  assign io_addrs2out = io_instruction_addr2[24:20]; // @[OPR2read.scala 26:38]
  assign io_datas2out = io_datas2in; // @[OPR2read.scala 24:25 28:15]
endmodule
