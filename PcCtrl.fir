circuit PcCtrl :
  module PcCtrl :
    input clock : Clock
    input reset : UInt<1>
    output io : { flip PcCtrl : UInt<3>, flip IP_incremented : SInt<32>, flip IP_Branched : SInt<32>, flip IP_Jumped : SInt<32>, IP : SInt<32>}

    node _T = eq(io.PcCtrl, UInt<1>("h0")) @[PcCtrl.scala 19:20]
    when _T : @[PcCtrl.scala 19:34]
      io.IP <= io.IP_incremented @[PcCtrl.scala 20:14]
    else :
      node _T_1 = eq(io.PcCtrl, UInt<1>("h1")) @[PcCtrl.scala 22:25]
      when _T_1 : @[PcCtrl.scala 22:39]
        io.IP <= io.IP_Branched @[PcCtrl.scala 23:15]
      else :
        node _T_2 = eq(io.PcCtrl, UInt<2>("h2")) @[PcCtrl.scala 25:25]
        when _T_2 : @[PcCtrl.scala 25:39]
          io.IP <= io.IP_Jumped @[PcCtrl.scala 26:15]
        else :
          io.IP <= asSInt(UInt<7>("h2c")) @[PcCtrl.scala 29:15]

