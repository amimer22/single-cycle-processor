circuit RegisterFile :
  module RegisterFile :
    input clock : Clock
    input reset : UInt<1>
    output io : { flip addr1 : UInt<5>, data1 : SInt<32>, flip addr2 : UInt<5>, data2 : SInt<32>, flip addrwr : UInt<5>, flip datawr : SInt<32>, flip RegWrite : UInt<1>}

    cmem registers : SInt<32> [32] @[RegisterFile.scala 23:24]
    when io.RegWrite : @[RegisterFile.scala 24:23]
      infer mport MPORT = registers[io.addrwr], clock @[RegisterFile.scala 26:18]
      MPORT <= io.datawr @[RegisterFile.scala 26:30]
    else :
      infer mport MPORT_1 = registers[io.addrwr], clock @[RegisterFile.scala 29:18]
      MPORT_1 <= asSInt(UInt<6>("h16")) @[RegisterFile.scala 29:30]
    write mport MPORT_2 = registers[UInt<1>("h0")], clock
    MPORT_2 <= asSInt(UInt<5>("ha"))
    write mport MPORT_3 = registers[UInt<1>("h1")], clock
    MPORT_3 <= asSInt(UInt<5>("hf"))
    write mport MPORT_4 = registers[UInt<2>("h2")], clock
    MPORT_4 <= asSInt(UInt<6>("h1a"))
    write mport MPORT_5 = registers[UInt<2>("h3")], clock
    MPORT_5 <= asSInt(UInt<7>("h23"))
    infer mport io_data1_MPORT = registers[io.addr1], clock @[RegisterFile.scala 41:26]
    io.data1 <= io_data1_MPORT @[RegisterFile.scala 41:14]
    infer mport io_data2_MPORT = registers[io.addr2], clock @[RegisterFile.scala 42:26]
    io.data2 <= io_data2_MPORT @[RegisterFile.scala 42:14]

