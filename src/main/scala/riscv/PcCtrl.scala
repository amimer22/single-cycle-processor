// this module works if theres a br jmp 
/*package riscv 
import chisel3._


class PrePc extends Module {
    val io = IO(new Bundle {
        val Br = Input(UInt(32.W))
        val Jmp = Input(UInt(32.W))
        val IP_out = Input(UInt(32.W))
        //val pc = Input(UInt(32.W))
        val IP = Output(UInt(32.W))

    })

    io.IP = io.IP_out + 1.U
    
    when(io.Br) {
    }
    when(io.Jmp) {
    }

}*/