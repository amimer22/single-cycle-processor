package riscv 
import chisel3._ 
import chisel3.util._
import chisel3.stage.ChiselStage


class BrTarget extends Module {
    val io = IO(new Bundle {
        
        val Br_up = Input(Bool())
        val IP_init = Input(SInt(32.W))
        val B_imm = Input(SInt(32.W))
        val B_output = Output(SInt(32.W))

    })
    val B_imm_inc = Wire(SInt(32.W))
    B_imm_inc := io.IP_init + 1.S
    when(io.Br_up){
        io.B_output := io.B_imm + io.IP_init
    }
    .otherwise{io.B_output := B_imm_inc}
    

}
object BrTarget extends App {
  (new ChiselStage).emitVerilog(new BrTarget)
}