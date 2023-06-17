circuit OPR2read :
  module OPR2read :
    input clock : Clock
    input reset : UInt<1>
    output io : { flip instruction_addr2 : UInt<32>, flip datas2in : SInt<32>, addrs2out : UInt<5>, datas2out : SInt<32>}

    wire OPR2addr2 : UInt<5> @[OPR2read.scala 23:25]
    wire OPR2data2 : SInt<32> @[OPR2read.scala 24:25]
    node _OPR2addr2_T = bits(io.instruction_addr2, 24, 20) @[OPR2read.scala 26:38]
    OPR2addr2 <= _OPR2addr2_T @[OPR2read.scala 26:15]
    OPR2data2 <= io.datas2in @[OPR2read.scala 28:15]
    io.addrs2out <= OPR2addr2 @[OPR2read.scala 30:18]
    io.datas2out <= OPR2data2 @[OPR2read.scala 31:18]

