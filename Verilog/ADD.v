module ADD(
  input         clock,
  input         reset,
  input  [31:0] io_op1,
  input  [31:0] io_op2,
  output [31:0] io_result
);
  assign io_result = $signed(io_op1) + $signed(io_op2); // @[ADD.scala 17:23]
endmodule
