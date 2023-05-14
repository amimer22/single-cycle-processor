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
    when (io.opcode === "b0110011".U && io.funct3 === "b000".U && io.funct7==="b0000000".U){
       io.operation := "b00001".U //add
    }
    .elsewhen (io.opcode === "b0010011".U && io.funct3 === "b000".U){
       io.operation := "b00001".U //addi
    }
    .elsewhen (io.opcode === "b0000011".U && io.funct3 === "b010".U){
       io.operation := "b00001".U //LW
    }			   
    .elsewhen (io.opcode === "b0110011".U && io.funct3=== "b000".U && io.funct7=== "b0100000".U){
       io.operation := "b00010".U //sub
    }	
    .elsewhen (io.opcode === "b0110011".U && io.funct3=== "b111".U && io.funct7=== "b0000000".U){
       io.operation := "b00011".U //and
    }	
    .elsewhen (io.opcode === "b0110011".U && io.funct3=== "b110".U && io.funct7=== "b0000000".U){
       io.operation := "b00101".U //or
    }	
    .otherwise {
    io.operation := 22.U //22 code error for having no operation
    } 
  
}