package riscv 
import chisel3._ 

class Pc extends Module {
    val io = IO(new Bundle {
        val IP_in = Input(UInt(32.W))
        val IP_out = Output(UInt(32.W))
    })
    val PcReg=RegInit(0.U(32.W))
    //io.IP_in= 0.U;
    //io.IP_in = io.IP_out + 1.U
    PcReg := io.IP_in

    io.IP_out := PcReg
}