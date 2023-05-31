package riscv 
import chisel3._ 
import chisel3.util._

class BrTarget extends Module {
    val io = IO(new Bundle {
        
        val Br_up = Input(Bool())
        val IP_init = Input(UInt(32.W))
        val B_imm = Input(UInt(32.W))
        val B_output = Output(UInt(32.W))

    })
    val B_imm_inc = Wire(UInt(32.W))
    B_imm_inc := io.IP_init + 1.U
    when(io.Br_up){
        io.B_output := io.B_imm + io.IP_init
    }
    .otherwise{io.B_output := B_imm_inc}
    

}