module Jump(
  input         clock,
  input         reset,
  input  [31:0] io_Jal_imm,
  input  [31:0] io_JalR_imm,
  input  [31:0] io_Datas1,
  input  [1:0]  io_JmpCtrl,
  output [31:0] io_J_output
);
  wire [31:0] _io_J_output_T_2 = $signed(io_JalR_imm) + $signed(io_Datas1); // @[Jump.scala 20:36]
  wire [31:0] _GEN_0 = io_JmpCtrl == 2'h1 ? $signed(_io_J_output_T_2) : $signed(32'sh16); // @[Jump.scala 19:39 20:21 22:28]
  assign io_J_output = io_JmpCtrl == 2'h0 ? $signed(io_Jal_imm) : $signed(_GEN_0); // @[Jump.scala 17:34 18:21]
endmodule
