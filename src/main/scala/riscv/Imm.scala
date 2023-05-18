package riscv 
import chisel3._
import chisel3.util._

class Imm extends Module {
    val io = IO(new Bundle {
        val ImmSrc = Input(UInt(2.W))
        val Imm_Itype = Input(UInt(32.W))
        val Imm_Stype = Input(UInt(32.W))
        val Imm_output = Output(UInt(32.W))
        
    })
    
    when (io.ImmSrc === "b00".U){
        io.Imm_output := io.Imm_Itype
    }.elsewhen (io.ImmSrc === "b01".U ){
        io.Imm_output := io.Imm_Stype
    }.otherwise {
        io.Imm_output := 20.U // 22 is code err
    }
 
    
}