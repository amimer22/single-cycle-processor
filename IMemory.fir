circuit IMemory :
  module IMemory :
    input clock : Clock
    input reset : UInt<1>
    output io : { flip IPmem_in : UInt<32>, instruction : UInt<32>}

    cmem Memory : UInt<32> [32] @[IMemory.scala 16:22]
    write mport MPORT = Memory[UInt<1>("h0")], clock
    MPORT <= UInt<23>("h508113")
    write mport MPORT_1 = Memory[UInt<1>("h1")], clock
    MPORT_1 <= UInt<24>("hc08193")
    write mport MPORT_2 = Memory[UInt<2>("h2")], clock
    MPORT_2 <= UInt<32>("hff718393")
    write mport MPORT_3 = Memory[UInt<2>("h3")], clock
    MPORT_3 <= UInt<23>("h716233")
    write mport MPORT_4 = Memory[UInt<3>("h4")], clock
    MPORT_4 <= UInt<23>("h41f2b3")
    write mport MPORT_5 = Memory[UInt<3>("h5")], clock
    MPORT_5 <= UInt<23>("h4282b3")
    write mport MPORT_6 = Memory[UInt<3>("h6")], clock
    MPORT_6 <= UInt<18>("h20863")
    write mport MPORT_7 = Memory[UInt<3>("h7")], clock
    MPORT_7 <= UInt<24>("hb08313")
    write mport MPORT_8 = Memory[UInt<4>("h8")], clock
    MPORT_8 <= UInt<32>("hfe628ce3")
    node _io_instruction_T = bits(io.IPmem_in, 4, 0) @[IMemory.scala 46:29]
    infer mport io_instruction_MPORT = Memory[_io_instruction_T], clock @[IMemory.scala 46:29]
    io.instruction <= io_instruction_MPORT @[IMemory.scala 46:20]

