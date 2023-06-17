module PcCtrl(
  input         clock,
  input         reset,
  input  [2:0]  io_PcCtrl,
  input  [31:0] io_IP_incremented,
  input  [31:0] io_IP_Branched,
  input  [31:0] io_IP_Jumped,
  output [31:0] io_IP
);
  wire [31:0] _GEN_0 = io_PcCtrl == 3'h2 ? $signed(io_IP_Jumped) : $signed(32'sh2c); // @[PcCtrl.scala 25:39 26:15 29:15]
  wire [31:0] _GEN_1 = io_PcCtrl == 3'h1 ? $signed(io_IP_Branched) : $signed(_GEN_0); // @[PcCtrl.scala 22:39 23:15]
  assign io_IP = io_PcCtrl == 3'h0 ? $signed(io_IP_incremented) : $signed(_GEN_1); // @[PcCtrl.scala 19:34 20:14]
endmodule
