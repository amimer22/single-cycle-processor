circuit Pc :
  module Pc :
    input clock : Clock
    input reset : UInt<1>
    output io : { flip IP_in : SInt<32>, IP_out : SInt<32>}

    reg PcReg : SInt<32>, clock with :
      reset => (reset, asSInt(UInt<32>("h0"))) @[Pc.scala 11:22]
    PcReg <= io.IP_in @[Pc.scala 14:11]
    io.IP_out <= PcReg @[Pc.scala 16:15]

