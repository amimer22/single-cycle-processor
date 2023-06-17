module Branch(
  input         clock,
  input         reset,
  input  [4:0]  io_BrCtrl,
  input         io_Br,
  input  [31:0] io_Datas1,
  input  [31:0] io_Datas2,
  output        io_Br_up
);
  wire  _GEN_0 = 5'h17 == io_BrCtrl & $signed(io_Datas1) > $signed(io_Datas2); // @[Branch.scala 17:22 23:27 16:9]
  wire  _GEN_1 = 5'h16 == io_BrCtrl ? $signed(io_Datas1) < $signed(io_Datas2) : _GEN_0; // @[Branch.scala 17:22 22:27]
  wire  _GEN_2 = 5'h15 == io_BrCtrl ? $signed(io_Datas1) >= $signed(io_Datas2) : _GEN_1; // @[Branch.scala 17:22 21:27]
  wire  _GEN_3 = 5'h14 == io_BrCtrl ? $signed(io_Datas1) <= $signed(io_Datas2) : _GEN_2; // @[Branch.scala 17:22 20:27]
  wire  _GEN_4 = 5'h11 == io_BrCtrl ? $signed(io_Datas1) != $signed(io_Datas2) : _GEN_3; // @[Branch.scala 17:22 19:27]
  wire  sig = 5'h10 == io_BrCtrl ? $signed(io_Datas1) == $signed(io_Datas2) : _GEN_4; // @[Branch.scala 17:22 18:27]
  assign io_Br_up = io_Br & sig; // @[Branch.scala 26:23]
endmodule
