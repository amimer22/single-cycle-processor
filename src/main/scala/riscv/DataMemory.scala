package riscv 
import chisel3._
import chisel3.util._

class DataMemory extends Module{
    val io = IO(new Bundle {
        val dataSin = Input(UInt(32.W))
        val ReadAddr = Input(UInt(32.W))
        val ReadData = Output(UInt(32.W))

    })
    
    val DMemory = Mem(1024, UInt(32.W))
    // my memory data
    DMemory.write(0.U, 22.U) //in cas it returns 0
    DMemory.write(1.U, 9.U)
    DMemory.write(2.U, 9.U)
    DMemory.write(3.U, 9.U)
    DMemory.write(4.U, 9.U)
    DMemory.write(5.U, 9.U)
    DMemory.write(6.U, 9.U)
    DMemory.write(7.U, 9.U)
    DMemory.write(8.U, 9.U)
    DMemory.write(9.U, 9.U)
    DMemory.write(10.U, 20.U)
    DMemory.write(11.U, 20.U)
    DMemory.write(12.U, 9.U)
    DMemory.write(13.U, 9.U)
    DMemory.write(14.U, 9.U)
    //
    DMemory(io.ReadAddr) := io.dataSin /// this should be conditioned controlled**
    
    io.ReadData := DMemory(io.ReadAddr)

}