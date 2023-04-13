/*package riscv
import chisel3._


class IFetch extends Module {
    val io = IO(new Bundle {
        val instruction_in = Input(UInt(32.W))
        //val pc = Input(UInt(32.W))
        val instruction = Output(UInt(32.W))

    })

    //val IMemory = Module(new IMemory())

    //IMemory.io.pc = io.pc
    io.istruction = io.instruction_in


}*/