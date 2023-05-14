// this module works if theres a br jmp 
package riscv 
import chisel3._
// all this module should be only a multiplexer taking input from the control 
// to determin if it's from load or normal arithmetic
class ResultSel extends Module {
    val io = IO(new Bundle {
        val opcode = Input(UInt(7.W))
        val AluRes = Input(UInt(32.W))
        val ReadData = Input(UInt(32.W))

        val Result = Output(UInt(32.W))
        //val err = Output(UInt(32.W))
    })
    
    when (io.opcode === "b0110011".U){ //Rtype instructions
        io.Result := io.AluRes
    }.elsewhen (io.opcode === "b0000011".U ){ //Load instructions
        io.Result := io.ReadData
    }.otherwise {
        io.Result := 22.U // 22 is code err
    }
 
    
}