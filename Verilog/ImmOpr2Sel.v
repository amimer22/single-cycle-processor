module ImmOpr2Sel(
  input         clock,
  input         reset,
  input         io_AluSrc,
  input  [31:0] io_Opr2_input,
  input  [31:0] io_Imm_input,
  output [31:0] io_ImmOp2Sel_output
);
  assign io_ImmOp2Sel_output = io_AluSrc ? $signed(io_Imm_input) : $signed(io_Opr2_input); // @[ImmOpr2Sel.scala 16:21 17:29 20:29]
endmodule
