circuit DataMemory :
  module DataMemory :
    input clock : Clock
    input reset : UInt<1>
    output io : { flip dataSin : SInt<32>, flip ReadAddr : UInt<32>, ReadData : SInt<32>, flip MemWrite : UInt<1>}

    cmem DMemory : SInt<32> [1024] @[DataMemory.scala 15:22]
    write mport MPORT = DMemory[UInt<1>("h0")], clock
    MPORT <= asSInt(UInt<6>("h13"))
    write mport MPORT_1 = DMemory[UInt<1>("h1")], clock
    MPORT_1 <= asSInt(UInt<5>("h9"))
    write mport MPORT_2 = DMemory[UInt<2>("h2")], clock
    MPORT_2 <= asSInt(UInt<5>("h9"))
    write mport MPORT_3 = DMemory[UInt<2>("h3")], clock
    MPORT_3 <= asSInt(UInt<5>("h9"))
    write mport MPORT_4 = DMemory[UInt<3>("h4")], clock
    MPORT_4 <= asSInt(UInt<5>("h9"))
    write mport MPORT_5 = DMemory[UInt<3>("h5")], clock
    MPORT_5 <= asSInt(UInt<5>("h9"))
    write mport MPORT_6 = DMemory[UInt<3>("h6")], clock
    MPORT_6 <= asSInt(UInt<5>("h9"))
    write mport MPORT_7 = DMemory[UInt<3>("h7")], clock
    MPORT_7 <= asSInt(UInt<5>("h9"))
    write mport MPORT_8 = DMemory[UInt<4>("h8")], clock
    MPORT_8 <= asSInt(UInt<5>("h9"))
    when io.MemWrite : @[DataMemory.scala 33:22]
      node _T = bits(io.ReadAddr, 9, 0) @[DataMemory.scala 34:12]
      infer mport MPORT_9 = DMemory[_T], clock @[DataMemory.scala 34:12]
      MPORT_9 <= io.dataSin @[DataMemory.scala 34:26]
    else :
      node _T_1 = bits(io.ReadAddr, 9, 0) @[DataMemory.scala 35:25]
      infer mport MPORT_10 = DMemory[_T_1], clock @[DataMemory.scala 35:25]
      MPORT_10 <= asSInt(UInt<6>("h16")) @[DataMemory.scala 35:39]
    node _io_ReadData_T = bits(io.ReadAddr, 9, 0) @[DataMemory.scala 37:27]
    infer mport io_ReadData_MPORT = DMemory[_io_ReadData_T], clock @[DataMemory.scala 37:27]
    io.ReadData <= io_ReadData_MPORT @[DataMemory.scala 37:17]

