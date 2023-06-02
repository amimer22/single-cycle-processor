package riscv 
import chisel3._ 
import chisel3.util._

class Jump extends Module {
    val io = IO(new Bundle {
        
        val Jal_imm = Input(UInt(32.W))
        val JalR_imm = Input(UInt(32.W))
        val Datas1 = Input(UInt(32.W))
        val JmpCtrl = Input(UInt(2.W))
        val J_output = Output(UInt(32.W))
    })

    when(io.JmpCtrl === "b00".U) {
        io.J_output := io.Jal_imm
    }.elsewhen(io.JmpCtrl === "b01".U){
        io.J_output := io.JalR_imm + io.Datas1
    }
    .otherwise {io.J_output:= 22.U}
    
}