circuit ImmOpr2Sel :
  module ImmOpr2Sel :
    input clock : Clock
    input reset : UInt<1>
    output io : { flip AluSrc : UInt<1>, flip Opr2_input : SInt<32>, flip Imm_input : SInt<32>, ImmOp2Sel_output : SInt<32>}

    when io.AluSrc : @[ImmOpr2Sel.scala 16:21]
      io.ImmOp2Sel_output <= io.Imm_input @[ImmOpr2Sel.scala 17:29]
    else :
      io.ImmOp2Sel_output <= io.Opr2_input @[ImmOpr2Sel.scala 20:29]

