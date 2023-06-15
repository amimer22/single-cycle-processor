// this module works if theres a br jmp 
package riscv 
import chisel3._
import chisel3.stage.ChiselStage


class OPR1read extends Module {
    val io = IO(new Bundle {
        val addrs1in = Input(UInt(5.W))
        val datas1in = Input(SInt(32.W))
        val addrs1out = Output(UInt(5.W))
        val datas1out = Output(SInt(32.W))

    })
    val OPR1addr1 = Wire(UInt(5.W)) //addr output 
    val OPR1data1 = Wire(SInt(32.W)) //data output
    OPR1addr1 := io.addrs1in
    OPR1data1 := io.datas1in

    io.addrs1out := OPR1addr1
    io.datas1out := OPR1data1
    //val RegisterFile = Module(new RegisterFile())
//  

    //RegisterFile.io.addr := OPR1addr1
    //io.datas1 := RegisterFile.io.data 
    //RegisterFile.io.addr := io.addrs1
    //io.datas1 := RegisterFile.io.data

    // Use Wire to hold the updated values
    //val addrRead = Wire(UInt(32.W))
    //val dataRead = Wire(UInt(32.W))
//
    //// Assign the updated values to the Wire variables
    //addrRead := io.addrs1
    //dataRead := RegisterFile.io.data
//
    //// Use RegNext registers to assign the updated values to the output ports
    //io.datas1 := RegNext(dataRead)
    

}
object OPR1read extends App {
  (new ChiselStage).emitVerilog(new OPR1read)
}