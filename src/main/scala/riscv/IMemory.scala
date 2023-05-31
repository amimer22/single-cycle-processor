package riscv 

import chisel3._ 
import chisel3.util._
import chisel3.stage.ChiselStage
//import chisel3.util . experimental.loadMemoryFromFile

class IMemory extends Module {
    val io = IO(new Bundle {
        val IPmem_in = Input(UInt(32.W))
        val instruction = Output(UInt(32.W))
        //val instructionadd1 = Output(UInt(5.W))
        //val instructionadd2 = Output(UInt(5.W))

    })
    val Memory = Mem ( 32 , UInt ( 32.W ) )
    //io.instructionadd1 := io.instruction(19,15)
    //io.instructionadd2 := io.instruction(24,20)

    Memory.write(0.U, "b0000000_00010_00001_000_00011_0110011".U)//add x3,x2,x1
    Memory.write(1.U, "b0000000_00001_00000_000_01000_1100011".U)//beq x0,x1,x4
    Memory.write(2.U, "b0100000_00010_00001_000_00011_0110011".U)//sub x3,x2,x1
    Memory.write(3.U, "b0000000_00010_00001_111_00011_0110011".U)//and x3,x2,x1
    Memory.write(4.U, "b0000000_00010_00001_110_00011_0110011".U)//or x3,x2,x1
    Memory.write(5.U, "b0000000_00010_00001_000_00011_0010011".U)//addi x3,x2,x1
    Memory.write(6.U, "b0000000_00101_00001_010_00011_0000011".U)//LW x3,5(x1) result 5+6=11 memory(11)=20
    Memory.write(7.U, "b0000000_00010_00001_010_00011_0100011".U)//SW x2,3(x1) result 3+6=9 memory(9)=5






    //loadMemoryFromFile ( imem , "/home/mrrobot/usthb-chip/src/main/scala/riscv/IFile.txt" )
    io.instruction := Memory( io.IPmem_in)
}

object IMemory extends App {
  (new ChiselStage).emitVerilog(new IMemory)
}