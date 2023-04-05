package riscv 

import chisel3._ 

class Pc extends module {
    val io = IO(new Bundle {
        val IP_in = Input(UInt(32.w))
        val IP_out = Output(UInt(32.w))
    })
    io.IP_out = io.IP_in + 4.U
}