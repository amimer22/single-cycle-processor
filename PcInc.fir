circuit PcInc :
  module PcInc :
    input clock : Clock
    input reset : UInt<1>
    output io : { flip IPInc_in : SInt<32>, IPInc_out : SInt<32>}

    wire IPInc_tmp : SInt<32> @[PcInc.scala 11:25]
    node _IPInc_tmp_T = add(io.IPInc_in, asSInt(UInt<2>("h1"))) @[PcInc.scala 12:30]
    node _IPInc_tmp_T_1 = tail(_IPInc_tmp_T, 1) @[PcInc.scala 12:30]
    node _IPInc_tmp_T_2 = asSInt(_IPInc_tmp_T_1) @[PcInc.scala 12:30]
    IPInc_tmp <= _IPInc_tmp_T_2 @[PcInc.scala 12:15]
    io.IPInc_out <= IPInc_tmp @[PcInc.scala 13:18]

