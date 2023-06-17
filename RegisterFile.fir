circuit RegisterFile :
  module RegisterFile :
    input clock : Clock
    input reset : UInt<1>
    output io : { flip instruction_addrwr : UInt<32>, flip addr1 : UInt<5>, data1 : SInt<32>, flip addr2 : UInt<5>, data2 : SInt<32>, flip datawr : SInt<32>, flip RegWrite : UInt<1>}

    wire addrwr : UInt<5> @[RegisterFile.scala 24:22]
    node _addrwr_T = bits(io.instruction_addrwr, 11, 7) @[RegisterFile.scala 25:36]
    addrwr <= _addrwr_T @[RegisterFile.scala 25:12]
    cmem registers : SInt<32> [32] @[RegisterFile.scala 26:24]
    when io.RegWrite : @[RegisterFile.scala 27:23]
      infer mport MPORT = registers[addrwr], clock @[RegisterFile.scala 29:18]
      MPORT <= io.datawr @[RegisterFile.scala 29:27]
    else :
      infer mport MPORT_1 = registers[addrwr], clock @[RegisterFile.scala 32:18]
      MPORT_1 <= asSInt(UInt<6>("h16")) @[RegisterFile.scala 32:27]
    infer mport io_data1_MPORT = registers[io.addr1], clock @[RegisterFile.scala 44:26]
    io.data1 <= io_data1_MPORT @[RegisterFile.scala 44:14]
    infer mport io_data2_MPORT = registers[io.addr2], clock @[RegisterFile.scala 45:26]
    io.data2 <= io_data2_MPORT @[RegisterFile.scala 45:14]

