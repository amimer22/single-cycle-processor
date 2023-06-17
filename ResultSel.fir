circuit ResultSel :
  module ResultSel :
    input clock : Clock
    input reset : UInt<1>
    output io : { flip ResSrc : UInt<2>, flip AluRes : SInt<32>, flip ReadData : SInt<32>, flip nextPcAddr : SInt<32>, Result : SInt<32>}

    node _T = eq(io.ResSrc, UInt<1>("h0")) @[ResultSel.scala 18:21]
    when _T : @[ResultSel.scala 18:33]
      io.Result <= io.AluRes @[ResultSel.scala 19:19]
    else :
      node _T_1 = eq(io.ResSrc, UInt<1>("h1")) @[ResultSel.scala 21:25]
      when _T_1 : @[ResultSel.scala 21:37]
        io.Result <= io.ReadData @[ResultSel.scala 22:19]
      else :
        node _T_2 = eq(io.ResSrc, UInt<2>("h2")) @[ResultSel.scala 23:26]
        when _T_2 : @[ResultSel.scala 23:38]
          io.Result <= io.nextPcAddr @[ResultSel.scala 24:19]
        else :
          io.Result <= asSInt(UInt<6>("h16")) @[ResultSel.scala 26:19]

