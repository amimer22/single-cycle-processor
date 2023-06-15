circuit OPR1read :
  module OPR1read :
    input clock : Clock
    input reset : UInt<1>
    output io : { flip addrs1in : UInt<5>, flip datas1in : SInt<32>, addrs1out : UInt<5>, datas1out : SInt<32>}

    wire OPR1addr1 : UInt<5> @[OPR1read.scala 15:25]
    wire OPR1data1 : SInt<32> @[OPR1read.scala 16:25]
    OPR1addr1 <= io.addrs1in @[OPR1read.scala 17:15]
    OPR1data1 <= io.datas1in @[OPR1read.scala 18:15]
    io.addrs1out <= OPR1addr1 @[OPR1read.scala 20:18]
    io.datas1out <= OPR1data1 @[OPR1read.scala 21:18]

