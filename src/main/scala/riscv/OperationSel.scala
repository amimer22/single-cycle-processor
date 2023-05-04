package riscv

import chisel3._

class OperationSel extends Module {
  val io = IO(new Bundle {
   
    val opcode = Input(UInt(7.W))
    val funct3 = Input(UInt(3.W))
    val funct7 = Input(UInt(7.W))
    //val imm = Input(UInt(12.W))
    val operation = Output(UInt(5.W)) //to change 5.w
  })
    when (opcode === "b0110011".U && funct3= "b000".U && funct7="b0000000".U){
        operation := "b00001".U //add
    }	
    when (opcode === "b0110011".U && funct3= "b000".U && funct7= "b0100000".U){
        operation := "b00010".U //sub
    }	
    when (opcode === "b0110011".U && funct3= "b111".U && funct7= "b0000000".U){
        operation := "b00011".U //and
    }	
    when (opcode === "b0110011".U && funct3= "b110".U && funct7= "b0000000"){
        operation := "b00101".U //or
    }	 
  
}