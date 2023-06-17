circuit Jump :
  module Jump :
    input clock : Clock
    input reset : UInt<1>
    output io : { flip Jal_imm : SInt<32>, flip JalR_imm : SInt<32>, flip Datas1 : SInt<32>, flip JmpCtrl : UInt<2>, J_output : SInt<32>}

    node _T = eq(io.JmpCtrl, UInt<1>("h0")) @[Jump.scala 17:21]
    when _T : @[Jump.scala 17:34]
      io.J_output <= io.Jal_imm @[Jump.scala 18:21]
    else :
      node _T_1 = eq(io.JmpCtrl, UInt<1>("h1")) @[Jump.scala 19:27]
      when _T_1 : @[Jump.scala 19:39]
        node _io_J_output_T = add(io.JalR_imm, io.Datas1) @[Jump.scala 20:36]
        node _io_J_output_T_1 = tail(_io_J_output_T, 1) @[Jump.scala 20:36]
        node _io_J_output_T_2 = asSInt(_io_J_output_T_1) @[Jump.scala 20:36]
        io.J_output <= _io_J_output_T_2 @[Jump.scala 20:21]
      else :
        io.J_output <= asSInt(UInt<6>("h16")) @[Jump.scala 22:28]

