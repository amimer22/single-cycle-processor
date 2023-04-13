// this module works if theres a br jmp 
package riscv 
import chisel3._


class OPR1read extends Module {
    val io = IO(new Bundle {
        val addrs1 = Input(UInt(5.W))
        val datas1 = Output(UInt(32.W))

    })

    val RegisterFile = Module(new RegisterFile()) 

    RegisterFile.io.addr := io.addrs1
    io.datas1 := RegisterFile.io.data

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