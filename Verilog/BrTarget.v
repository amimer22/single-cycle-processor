module BrTarget(
  input         clock,
  input         reset,
  input         io_Br_up,
  input  [31:0] io_IP_init,
  input  [31:0] io_B_imm,
  output [31:0] io_B_output
);
  wire [31:0] B_imm_inc = $signed(io_IP_init) + 32'sh1; // @[BrTarget.scala 17:29]
  wire [31:0] _io_B_output_T_2 = $signed(io_B_imm) + $signed(io_IP_init); // @[BrTarget.scala 19:33]
  assign io_B_output = io_Br_up ? $signed(_io_B_output_T_2) : $signed(B_imm_inc); // @[BrTarget.scala 18:19 19:21 21:28]
endmodule
