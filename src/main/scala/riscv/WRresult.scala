// this module works if theres a br jmp 
/*package riscv 
import chisel3._


class OPR2read extends Module {
    val io = IO(new Bundle {
        val addrs2 = Input(UInt(32.W))
        val datas2 = Output(UInt(32.W))

    })

    val RegisterFile = Module(new RegisterFile())

    RegisterFile.io.addr := io.addrs2
    io.datas2 := RegisterFile.io.data
    
    /*val addrRead = Wire(UInt(32.W))
    val dataRead = Wire(UInt(32.W))

    // Assign the updated values to the Wire variables
    addrRead := io.addrs2
    dataRead := RegisterFile.io.data

    // Use RegNext registers to assign the updated values to the output ports
    io.datas2 := RegNext(dataRead)*/

}*/