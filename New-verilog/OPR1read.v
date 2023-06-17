module OPR1read(
  input         clock,
  input         reset,
  input  [31:0] io_instruction_addr1,
  input  [31:0] io_datas1in,
  output [4:0]  io_addrs1out,
  output [31:0] io_datas1out
);
  assign io_addrs1out = io_instruction_addr1[19:15]; // @[OPR1read.scala 18:38]
  assign io_datas1out = io_datas1in; // @[OPR1read.scala 17:25 20:15]
endmodule
