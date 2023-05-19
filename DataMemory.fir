circuit DataMemory :
  module DataMemory :
    input clock : Clock
    input reset : UInt<1>
    output io : { flip dataSin : UInt<32>, flip ReadAddr : UInt<32>, ReadData : UInt<32>, flip MemWrite : UInt<1>}

    cmem DMemory : UInt<32> [1024] @[DataMemory.scala 15:22]
    write mport MPORT = DMemory[UInt<1>("h0")], clock
    MPORT <= UInt<5>("h13")
    write mport MPORT_1 = DMemory[UInt<1>("h1")], clock
    MPORT_1 <= UInt<4>("h9")
    write mport MPORT_2 = DMemory[UInt<2>("h2")], clock
    MPORT_2 <= UInt<4>("h9")
    write mport MPORT_3 = DMemory[UInt<2>("h3")], clock
    MPORT_3 <= UInt<4>("h9")
    write mport MPORT_4 = DMemory[UInt<3>("h4")], clock
    MPORT_4 <= UInt<4>("h9")
    write mport MPORT_5 = DMemory[UInt<3>("h5")], clock
    MPORT_5 <= UInt<4>("h9")
    write mport MPORT_6 = DMemory[UInt<3>("h6")], clock
    MPORT_6 <= UInt<4>("h9")
    write mport MPORT_7 = DMemory[UInt<3>("h7")], clock
    MPORT_7 <= UInt<4>("h9")
    write mport MPORT_8 = DMemory[UInt<4>("h8")], clock
    MPORT_8 <= UInt<4>("h9")
    write mport MPORT_9 = DMemory[UInt<4>("h9")], clock
    MPORT_9 <= UInt<4>("h9")
    write mport MPORT_10 = DMemory[UInt<4>("ha")], clock
    MPORT_10 <= UInt<5>("h14")
    write mport MPORT_11 = DMemory[UInt<4>("hb")], clock
    MPORT_11 <= UInt<5>("h14")
    write mport MPORT_12 = DMemory[UInt<4>("hc")], clock
    MPORT_12 <= UInt<4>("h9")
    write mport MPORT_13 = DMemory[UInt<4>("hd")], clock
    MPORT_13 <= UInt<4>("h9")
    write mport MPORT_14 = DMemory[UInt<4>("he")], clock
    MPORT_14 <= UInt<4>("h9")
    node _T = bits(io.ReadAddr, 9, 0) @[DataMemory.scala 33:12]
    infer mport MPORT_15 = DMemory[_T], clock @[DataMemory.scala 33:12]
    MPORT_15 <= io.dataSin @[DataMemory.scala 33:26]
    node _io_ReadData_T = bits(io.ReadAddr, 9, 0) @[DataMemory.scala 35:27]
    infer mport io_ReadData_MPORT = DMemory[_io_ReadData_T], clock @[DataMemory.scala 35:27]
    io.ReadData <= io_ReadData_MPORT @[DataMemory.scala 35:17]

