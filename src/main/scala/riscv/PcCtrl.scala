// this module works if theres a br jmp 
package riscv 
import chisel3._
import chisel3.stage.ChiselStage


class PcCtrl extends Module {
    val io = IO(new Bundle {
        val PcCtrl = Input(UInt(3.W))
        val IP_incremented = Input(SInt(32.W))
        val IP_Branched = Input(SInt(32.W))
        val IP_Jumped = Input(SInt(32.W))
        val IP = Output(SInt(32.W))

    })

    
    
    when(io.PcCtrl === "b000".U) { //normal
       io.IP := io.IP_incremented
    }
    .elsewhen(io.PcCtrl === "b001".U) { //branch    
        io.IP := io.IP_Branched
    }
    .elsewhen(io.PcCtrl === "b010".U) { //jump   
        io.IP := io.IP_Jumped
    }
    .otherwise { //normal
        io.IP := 44.S//err just testing
    }

}
object PcCtrl extends App {
  (new ChiselStage).emitVerilog(new PcCtrl)
}