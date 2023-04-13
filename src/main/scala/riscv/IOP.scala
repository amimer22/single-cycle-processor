// figuring what operation to execute and pass it to ALU
/*package riscv

import chisel3._

class IOP extends Module {
 val io = IO(new Bundle {
    val opcode = Input(UInt(7.W))
    val funct3 = Input(UInt(3.W))
    val funct7 = Input(UInt(7.W)) 
    //imm for I type 
    val operation = Output(UInt(3.W))
    val WE = Output(Bool()) // depends on how many instructions there is 3 means we can go from 000 to 111 defining istructions
 })

 //R-type
 when (opcode === 0110011 && funct3=000 && funct7= 0000000){
    operation := 000 //add
    WE = true
 }
 when (opcode === 0110011 && funct3=000 && funct7= 0100000){
    operation := 001 //sub
    WE = true
 }

}*/