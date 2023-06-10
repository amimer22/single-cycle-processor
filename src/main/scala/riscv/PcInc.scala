package riscv 
import chisel3._ 

class PcInc extends Module {
    val io = IO(new Bundle {
        val IPInc_in = Input(SInt(32.W))
        val IPInc_out = Output(SInt(32.W))
    })
    
    val IPInc_tmp = Wire(SInt(32.W))
    IPInc_tmp := io.IPInc_in + 1.S
    io.IPInc_out := IPInc_tmp
    //io.IP_in= 0.U;
    //io.IP_in = io.IP_out + 1.U
}