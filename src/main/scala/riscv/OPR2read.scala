// this module works if theres a br jmp 
package riscv 
import chisel3._
import chisel3.stage.ChiselStage


class OPR2read extends Module {
    val io = IO(new Bundle {
        //val Imm_type = Input(Bool())
        //val R_type = Input(Bool())
        //val S_type = Input(Bool())
        //val Simmin = Input(UInt(32.W))
        val instruction_addr2 = Input(UInt(32.W))
        ///val addrs2in = Input(UInt(5.W))
        val datas2in = Input(SInt(32.W))
        val addrs2out = Output(UInt(5.W))
        val datas2out = Output(SInt(32.W))
        //val dataSout = Output(UInt(32.W))
        //val immout = Output(UInt(32.W))


    })
    val OPR2addr2 = Wire(UInt(5.W)) //addr output 
    val OPR2data2 = Wire(SInt(32.W)) //data output

    OPR2addr2 := io.instruction_addr2(24,20)
    //OPR2addr2 := io.addrs2in
    OPR2data2 := io.datas2in
    //
    io.addrs2out := OPR2addr2
    io.datas2out := OPR2data2 // vers DataMemory
   
    
}
object OPR2read extends App {
  (new ChiselStage).emitVerilog(new OPR2read)
}