circuit BrTarget :
  module BrTarget :
    input clock : Clock
    input reset : UInt<1>
    output io : { flip Br_up : UInt<1>, flip IP_init : SInt<32>, flip B_imm : SInt<32>, B_output : SInt<32>}

    wire B_imm_inc : SInt<32> @[BrTarget.scala 16:25]
    node _B_imm_inc_T = add(io.IP_init, asSInt(UInt<2>("h1"))) @[BrTarget.scala 17:29]
    node _B_imm_inc_T_1 = tail(_B_imm_inc_T, 1) @[BrTarget.scala 17:29]
    node _B_imm_inc_T_2 = asSInt(_B_imm_inc_T_1) @[BrTarget.scala 17:29]
    B_imm_inc <= _B_imm_inc_T_2 @[BrTarget.scala 17:15]
    when io.Br_up : @[BrTarget.scala 18:19]
      node _io_B_output_T = add(io.B_imm, io.IP_init) @[BrTarget.scala 19:33]
      node _io_B_output_T_1 = tail(_io_B_output_T, 1) @[BrTarget.scala 19:33]
      node _io_B_output_T_2 = asSInt(_io_B_output_T_1) @[BrTarget.scala 19:33]
      io.B_output <= _io_B_output_T_2 @[BrTarget.scala 19:21]
    else :
      io.B_output <= B_imm_inc @[BrTarget.scala 21:28]

