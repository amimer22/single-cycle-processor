/*package riscv 

import chisel3._ 
import chisel3.util._
//import chisel3.util . experimental.loadMemoryFromFile

class IMemory extends Module {
    val io = IO(new Bundle {
        val IP_in = Input(UInt(32.w))
        val instruction = Output(UInt(32.w))
    })
    val Memory = Mem ( 32 , UInt ( 32.W ) )
    loadMemoryFromFile ( imem , "/home/mrrobot/usthb-chip/src/main/scala/riscv/IFile.txt" )
    io.instruction := Memory( io.IP_in)
}*/