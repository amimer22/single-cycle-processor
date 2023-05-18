// this module works if theres a br jmp 
package riscv 
import chisel3._
// all this module should be only a multiplexer taking input from the control 
// to determin if it's from load or normal arithmetic
class ResultSel extends Module {
    val io = IO(new Bundle {
        val ResSrc = Input(Bool())
        val AluRes = Input(UInt(32.W))
        val ReadData = Input(UInt(32.W))

        val Result = Output(UInt(32.W))
        //val err = Output(UInt(32.W))
    })
    
    when (io.ResSrc){ //From ALU
        io.Result := io.AluRes
    }.otherwise { //From Memory
        io.Result := io.ReadData
    }
 
    
}