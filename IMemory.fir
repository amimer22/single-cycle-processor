circuit IMemory :
  module IMemory :
    input clock : Clock
    input reset : UInt<1>
    output io : { flip IP_in : UInt<32>, instruction : UInt<32>}

    cmem Memory : UInt<32> [32] @[IMemory.scala 16:22]
    write mport MPORT = Memory[UInt<1>("h0")], clock
    MPORT <= UInt<22>("h2081b3")
    write mport MPORT_1 = Memory[UInt<1>("h1")], clock
    MPORT_1 <= UInt<31>("h402081b3")
    write mport MPORT_2 = Memory[UInt<2>("h2")], clock
    MPORT_2 <= UInt<22>("h20f1b3")
    write mport MPORT_3 = Memory[UInt<2>("h3")], clock
    MPORT_3 <= UInt<22>("h20e1b3")
    write mport MPORT_4 = Memory[UInt<3>("h4")], clock
    MPORT_4 <= UInt<22>("h208193")
    node _io_instruction_T = bits(io.IP_in, 4, 0) @[IMemory.scala 30:29]
    infer mport io_instruction_MPORT = Memory[_io_instruction_T], clock @[IMemory.scala 30:29]
    io.instruction <= io_instruction_MPORT @[IMemory.scala 30:20]

