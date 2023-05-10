// this module works if theres a br jmp 
package riscv 
import chisel3._


class OPR2Sel extends Module {
    val io = IO(new Bundle {
        val opcode = Input(UInt(7.W))
        val R_type = Output(Bool())
        val Imm_type =  Output(Bool())
        //val err = Output(UInt(32.W))
    })
    io.Imm_type:= false.B
    io.R_type:= false.B
    when (io.opcode === "b0110011".U){
       io.R_type:= true.B
    }.elsewhen (io.opcode === "b0010011".U){
       io.Imm_type:= true.B
    }.otherwise {
    io.Imm_type:= false.B
    io.R_type:= false.B}
 
    
}