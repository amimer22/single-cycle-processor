circuit OPR1read :
  module OPR1read :
    input clock : Clock
    input reset : UInt<1>
    output io : { flip instruction_addr1 : UInt<32>, flip datas1in : SInt<32>, addrs1out : UInt<5>, datas1out : SInt<32>}

    wire OPR1addr1 : UInt<5> @[OPR1read.scala 16:25]
    wire OPR1data1 : SInt<32> @[OPR1read.scala 17:25]
    node _OPR1addr1_T = bits(io.instruction_addr1, 19, 15) @[OPR1read.scala 18:38]
    OPR1addr1 <= _OPR1addr1_T @[OPR1read.scala 18:15]
    OPR1data1 <= io.datas1in @[OPR1read.scala 20:15]
    io.addrs1out <= OPR1addr1 @[OPR1read.scala 22:18]
    io.datas1out <= OPR1data1 @[OPR1read.scala 23:18]

