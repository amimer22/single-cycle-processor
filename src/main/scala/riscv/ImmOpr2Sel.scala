package riscv 
import chisel3._
import chisel3.util._
import chisel3.stage.ChiselStage


class ImmOpr2Sel extends Module {
    val io = IO(new Bundle {
        val AluSrc = Input(Bool())
        val Opr2_input = Input(SInt(32.W))
        val Imm_input = Input(SInt(32.W))
        val ImmOp2Sel_output = Output(SInt(32.W))
        
    })
    
    when (io.AluSrc){
        io.ImmOp2Sel_output := io.Imm_input
    }
    .otherwise {
        io.ImmOp2Sel_output := io.Opr2_input
    }
 
    
}
object ImmOpr2Sel extends App {
  (new ChiselStage).emitVerilog(new ImmOpr2Sel)
}