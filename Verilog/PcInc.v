module PcInc(
  input         clock,
  input         reset,
  input  [31:0] io_IPInc_in,
  output [31:0] io_IPInc_out
);
  assign io_IPInc_out = $signed(io_IPInc_in) + 32'sh1; // @[PcInc.scala 12:30]
endmodule
