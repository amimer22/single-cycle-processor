package riscv 

import chisel3._ 
import chisel3.util._
//import chisel3.util . experimental.loadMemoryFromFile

class IMemory extends Module {
    val io = IO(new Bundle {
        val IP_in = Input(UInt(32.W))
        val instruction = Output(UInt(32.W))
        //val instructionadd1 = Output(UInt(5.W))
        //val instructionadd2 = Output(UInt(5.W))

    })
    val Memory = Mem ( 32 , UInt ( 32.W ) )
    //io.instructionadd1 := io.instruction(19,15)
    //io.instructionadd2 := io.instruction(24,20)

    Memory.write(0.U, "b0000000_00010_00001_000_00101_0110011".U)
    //loadMemoryFromFile ( imem , "/home/mrrobot/usthb-chip/src/main/scala/riscv/IFile.txt" )
    io.instruction := Memory( io.IP_in)
}