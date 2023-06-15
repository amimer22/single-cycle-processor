circuit OPR2read :
  module OPR2read :
    input clock : Clock
    input reset : UInt<1>
    output io : { flip addrs2in : UInt<5>, flip datas2in : SInt<32>, addrs2out : UInt<5>, datas2out : SInt<32>}

    wire OPR2addr2 : UInt<5> @[OPR2read.scala 23:25]
    wire OPR2data2 : SInt<32> @[OPR2read.scala 24:25]
    OPR2addr2 <= io.addrs2in @[OPR2read.scala 26:15]
    OPR2data2 <= io.datas2in @[OPR2read.scala 27:15]
    io.addrs2out <= OPR2addr2 @[OPR2read.scala 29:18]
    io.datas2out <= OPR2data2 @[OPR2read.scala 30:18]

