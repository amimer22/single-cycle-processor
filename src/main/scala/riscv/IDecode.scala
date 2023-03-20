package riscv

import chisel3._

class IDecode extends Module {
  val io = IO(new Bundle {
    val instruction = Input(UInt(32.W))
    val opcode = Output(UInt(7.W))
    val rd = Output(UInt(5.W))
    val rs1 = Output(UInt(5.W))
    val rs2 = Output(UInt(5.W))
    val funct3 = Output(UInt(3.W))
    val funct7 = Output(UInt(7.W))
    //val imm = Output(UInt(32.W))
  })	 
  io.opcode := io.instruction(6, 0)
  io.rd := io.instruction(11, 7)
  io.funct3 := io.instruction(14, 12)
  io.rs1 := io.instruction(19, 15)
  io.rs2 := io.instruction(24, 20)
  io.funct7 := io.instruction(31, 25)
  //result
  printf("Decoded instruction: opcode=%d, rd=%d, funct3=%d, rs1=%d, rs2=%d, funct7=%d\n",
  opcode, rd, funct3, rs1, rs2, funct7)
}
