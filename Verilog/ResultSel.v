module ResultSel(
  input         clock,
  input         reset,
  input  [1:0]  io_ResSrc,
  input  [31:0] io_AluRes,
  input  [31:0] io_ReadData,
  input  [31:0] io_nextPcAddr,
  output [31:0] io_Result
);
  wire [31:0] _GEN_0 = io_ResSrc == 2'h2 ? $signed(io_nextPcAddr) : $signed(32'sh16); // @[ResultSel.scala 23:38 24:19 26:19]
  wire [31:0] _GEN_1 = io_ResSrc == 2'h1 ? $signed(io_ReadData) : $signed(_GEN_0); // @[ResultSel.scala 21:37 22:19]
  assign io_Result = io_ResSrc == 2'h0 ? $signed(io_AluRes) : $signed(_GEN_1); // @[ResultSel.scala 18:33 19:19]
endmodule
