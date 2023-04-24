package riscv 
import chisel3._


class WRresult extends Module {
    val io = IO(new Bundle {
        val addrwrin = Input(UInt(5.W))
        val resultin = Input(UInt(32.W))
        val addrwrout = Output(UInt(5.W))
        val resultout = Output(UInt(32.W))
        val WE = Input(Bool())
       
    })
    val ADDRwr = Wire(UInt(5.W)) //addr output 
    val Result = Wire(UInt(32.W)) //data output
    ADDRwr := io.addrwrin
    Result := io.resultin

    io.addrwrout := ADDRwr
    io.resultout := Result
    //val RegisterFile =Module( new RegisterFile())

    //RegisterFile.io.addrwr := ADDRWr//
    //RegisterFile.io.datawr := DataWr//


    //RegisterFile.io.addr := io.addrs2
    //RegisterFile.io.data := */
    
    /*val addrRead = Wire(UInt(32.W))
    val dataRead = Wire(UInt(32.W))

    // Assign the updated values to the Wire variables
    addrRead := io.addrs2
    dataRead := RegisterFile.io.data

    // Use RegNext registers to assign the updated values to the output ports
    io.datas2 := RegNext(dataRead)*/

}