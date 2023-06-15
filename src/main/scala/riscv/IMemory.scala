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
    Memory.write(0.U, "b000000000101_00001_000_00010_0010011".U)//addi x2,x0,5 # initialise x2=5
    Memory.write(1.U, "b000000001100_00001_000_00011_0010011".U)//addi x3,x0,12 # initialise x3=12
    Memory.write(2.U, "b111111110111_00011_000_00111_0010011".U)//addi x7,x3,-9 # initialise x7=3
    Memory.write(3.U, "b0000000_00111_00010_110_00100_0110011".U)//or x4,x7,x2 # x4=(3 or 5) = 7 
    Memory.write(4.U, "b0000000_00100_00011_111_00101_0110011".U)//and x5,x3,x4 # x5 (12 and 7 ) = 4
    Memory.write(5.U, "b0000000_00100_00101_000_00101_0110011".U)//add x5,x5,x4 # x5 = 4+5 = 11
    Memory.write(6.U, "b0000000_00000_00100_000_10000_1100011".U)//beq x4,x0,around=8 #shouldnt be taken 
    Memory.write(7.U, "b000000001011_00001_000_00110_0010011".U)//addi x6,x0,11 # initialise x6=11 
    Memory.write(8.U, "b0000000_00110_00101_000_00100_1100011".U)//beq x4,x0,around=8 #should be taken
    Memory.write(9.U, "b000000000101_00000_000_00010_00100111".U)//addi x2,x0,5 # initialise x2=5 //not happening
    /*around*/ Memory.write(10.U,"b0000001_00111_00011_010_10110_0100011".U)//sw x7,54(x3) # [66] = 3
    Memory.write(11.U, "b00000001101000000000_01000_1101111".U)//jal x8,13 # jal x8,end
    Memory.write(12.U, "b000000001011_00001_000_00110_0010011".U)//addi x6,x0,11 # initialise x6=11 
    /*end*/Memory.write(13.U, "b000000110111_00101_010_01001_0000011".U)//LW x9,5(x5) result 55+11=11 memory(11)=20
    Memory.write(14.U, "b000000000101_01000_000_01010_0010011".U)//addi x10,x8,5 # 12+5=17
    Memory.write(15.U,"b0000000_00111_00001_010_10001_0100011".U)//sw x7,17(x1) # [17] = 3






    //io.instructionadd1 := io.instruction(19,15)
    //io.instructionadd2 := io.instruction(24,20)
    //Memory.write(0.U, "b000000000101_00001_000_00011_0010011".U)//addi x3,x1,-2
    ////Memory.write(0.U, "b0000000_00010_00001_000_00011_0110011".U)//add x3,x2,x1
    //Memory.write(1.U, "b0000000_00001_00000_000_01000_1100011".U)//beq x0,x1,4
    //Memory.write(2.U, "b0100000_00010_00001_000_00000_0110011".U)//sub x0,x2,x1
    //Memory.write(3.U, "b0000000_00001_00010_111_00011_0110011".U)//and x3,x2,x1
    //Memory.write(4.U, "b0000000_00010_00001_110_00011_0110011".U)//or x3,x2,x1
    //Memory.write(5.U, "b0000000_00010_00001_000_00011_0010011".U)//addi x3,x2,x1
    //Memory.write(6.U, "b0000000_00101_00001_010_00011_0000011".U)//LW x3,5(x1) result 5+6=11 memory(11)=20
    //Memory.write(7.U, "b0000000_00010_00001_010_00011_0100011".U)//SW x2,3(x1) result 3+6=9 memory(9)=5
    ////Memory.write(8.U, "b0000000_00100_00000_000_00011_1101111".U)//jal x3,2
    //Memory.write(8.U, "b0000000_00010_00010_000_00011_1100111".U)//jalr x3,x2,2




    //loadMemoryFromFile ( imem , "/home/mrrobot/usthb-chip/src/main/scala/riscv/IFile.txt" )
    io.instruction := Memory( io.IPmem_in)
}

object IMemory extends App {
  (new ChiselStage).emitVerilog(new IMemory)
}
