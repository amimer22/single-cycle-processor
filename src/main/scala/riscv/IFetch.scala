package riscv

class IFetch extends module {
    val io = IO(new Bundle {

        val pc = Input(UInt(32.W))
        val instruction = Output(UInt(32.W))

    })

    val IMemory = Module(new IMemory())

    IMemory.io.pc = io.pc
    io.istruction = IMemory.io.instruction


}