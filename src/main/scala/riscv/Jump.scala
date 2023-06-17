package riscv 
import chisel3._ 
import chisel3.util._
import chisel3.stage.ChiselStage


class Jump extends Module {
    val io = IO(new Bundle {
        
        val Jal_imm = Input(SInt(32.W))
        val JalR_imm = Input(SInt(32.W))
        val Datas1 = Input(SInt(32.W))
        val JmpCtrl = Input(UInt(2.W))
        val J_output = Output(SInt(32.W))
    })

    when(io.JmpCtrl === "b00".U) {
        io.J_output := io.Jal_imm
    }.elsewhen(io.JmpCtrl === "b01".U){
        io.J_output := io.JalR_imm + io.Datas1
    }
    .otherwise {io.J_output:= 22.S}
    
}
object Jump extends App {
  (new ChiselStage).emitVerilog(new Jump)
}