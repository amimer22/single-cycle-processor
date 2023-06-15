package riscv 
import chisel3._ 
import chisel3.stage.ChiselStage


class Pc extends Module {
    val io = IO(new Bundle {
        val IP_in = Input(SInt(32.W))
        val IP_out = Output(SInt(32.W))
    })
    val PcReg=RegInit(0.S(32.W))
    //io.IP_in= 0.U;
    //io.IP_in = io.IP_out + 1.U
    PcReg := io.IP_in

    io.IP_out := PcReg
}
object Pc extends App {
  (new ChiselStage).emitVerilog(new Pc)
}