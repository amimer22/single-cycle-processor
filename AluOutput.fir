circuit AluOutput :
  module AluOutput :
    input clock : Clock
    input reset : UInt<1>
    output io : { flip AddRes : SInt<32>, flip SubRes : SInt<32>, flip AndRes : SInt<32>, flip OrRes : SInt<32>, output : SInt<32>, flip AluCtrl : UInt<3>}

    node _T = eq(io.AluCtrl, UInt<1>("h0")) @[AluOutput.scala 17:22]
    when _T : @[AluOutput.scala 17:36]
      io.output <= io.AddRes @[AluOutput.scala 18:19]
    else :
      node _T_1 = eq(io.AluCtrl, UInt<1>("h1")) @[AluOutput.scala 19:32]
      when _T_1 : @[AluOutput.scala 19:45]
        io.output <= io.SubRes @[AluOutput.scala 20:19]
      else :
        node _T_2 = eq(io.AluCtrl, UInt<2>("h2")) @[AluOutput.scala 21:32]
        when _T_2 : @[AluOutput.scala 21:46]
          io.output <= io.AndRes @[AluOutput.scala 22:19]
        else :
          node _T_3 = eq(io.AluCtrl, UInt<2>("h3")) @[AluOutput.scala 23:32]
          when _T_3 : @[AluOutput.scala 23:45]
            io.output <= io.OrRes @[AluOutput.scala 24:19]
          else :
            io.output <= asSInt(UInt<3>("h2")) @[AluOutput.scala 26:19]

