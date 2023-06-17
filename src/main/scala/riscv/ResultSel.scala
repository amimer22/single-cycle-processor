// this module works if theres a br jmp 
package riscv 
import chisel3._
import chisel3.stage.ChiselStage

// all this module should be only a multiplexer taking input from the control 
// to determin if it's from load or normal arithmetic
class ResultSel extends Module {
    val io = IO(new Bundle {
        val ResSrc = Input(UInt(2.W))
        val AluRes = Input(SInt(32.W))
        val ReadData = Input(SInt(32.W))
        val nextPcAddr = Input(SInt(32.W))
        val Result = Output(SInt(32.W))
        //val err = Output(UInt(32.W))
    })
    
    when (io.ResSrc === "b00".U){ //From ALU
        io.Result := io.AluRes
    }
    .elsewhen(io.ResSrc === "b01".U){ //From Memory
        io.Result := io.ReadData
    }.elsewhen(io.ResSrc === "b10".U){ //From pcinc
        io.Result := io.nextPcAddr
    }.otherwise { //err
        io.Result := 22.S
    }
 
    
}
object ResultSel extends App {
  (new ChiselStage).emitVerilog(new ResultSel)
}