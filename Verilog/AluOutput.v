module AluOutput(
  input         clock,
  input         reset,
  input  [31:0] io_AddRes,
  input  [31:0] io_SubRes,
  input  [31:0] io_AndRes,
  input  [31:0] io_OrRes,
  output [31:0] io_output,
  input  [2:0]  io_AluCtrl
);
  wire [31:0] _GEN_0 = io_AluCtrl == 3'h3 ? $signed(io_OrRes) : $signed(32'sh2); // @[AluOutput.scala 23:45 24:19 26:19]
  wire [31:0] _GEN_1 = io_AluCtrl == 3'h2 ? $signed(io_AndRes) : $signed(_GEN_0); // @[AluOutput.scala 21:46 22:19]
  wire [31:0] _GEN_2 = io_AluCtrl == 3'h1 ? $signed(io_SubRes) : $signed(_GEN_1); // @[AluOutput.scala 19:45 20:19]
  assign io_output = io_AluCtrl == 3'h0 ? $signed(io_AddRes) : $signed(_GEN_2); // @[AluOutput.scala 17:36 18:19]
endmodule
