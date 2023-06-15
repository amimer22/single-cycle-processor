module OPR1read(
  input         clock,
  input         reset,
  input  [4:0]  io_addrs1in,
  input  [31:0] io_datas1in,
  output [4:0]  io_addrs1out,
  output [31:0] io_datas1out
);
  assign io_addrs1out = io_addrs1in; // @[OPR1read.scala 15:25 17:15]
  assign io_datas1out = io_datas1in; // @[OPR1read.scala 16:25 18:15]
endmodule
