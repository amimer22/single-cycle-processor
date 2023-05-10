// this module works if theres a br jmp 
package riscv 
import chisel3._


class OPR2read extends Module {
    val io = IO(new Bundle {
        val Imm_type = Input(Bool())
        val R_type = Input(Bool())

        val immin = Input(UInt(32.W))
        val addrs2in = Input(UInt(5.W))
        val datas2in = Input(UInt(32.W))
        val addrs2out = Output(UInt(5.W))
        val datas2out = Output(UInt(32.W))
        //val immout = Output(UInt(32.W))


    })
    val OPR2addr2 = Wire(UInt(5.W)) //addr output 
    val OPR2data2 = Wire(UInt(32.W)) //data output

    OPR2addr2 := io.addrs2in
    OPR2data2 := io.datas2in
    //
    io.addrs2out := OPR2addr2
    when(io.R_type){
    io.datas2out := OPR2data2
    }.elsewhen(io.Imm_type){
    io.datas2out := io.immin   
    }.otherwise{io.datas2out := 22.U}


    //io.addrs2_out := io.addrs2_in
    //io.datas2_out := io.datas2_in
//
    //val RegisterFile = Module(new RegisterFile())//

    //RegisterFile.io.addr := OPR2addr2 //
    //io.datas2 := RegisterFile.io.data
    //RegisterFile.io.addr := io.addrs2
    //io.datas2 := RegisterFile.io.data
    
    /*val addrRead = Wire(UInt(32.W))
    val dataRead = Wire(UInt(32.W))

    // Assign the updated values to the Wire variables
    addrRead := io.addrs2
    dataRead := RegisterFile.io.data

    // Use RegNext registers to assign the updated values to the output ports
    io.datas2 := RegNext(dataRead)*/

}