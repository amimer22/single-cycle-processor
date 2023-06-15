module OPR2read(
  input         clock,
  input         reset,
  input  [4:0]  io_addrs2in,
  input  [31:0] io_datas2in,
  output [4:0]  io_addrs2out,
  output [31:0] io_datas2out
);
  assign io_addrs2out = io_addrs2in; // @[OPR2read.scala 23:25 26:15]
  assign io_datas2out = io_datas2in; // @[OPR2read.scala 24:25 27:15]
endmodule
