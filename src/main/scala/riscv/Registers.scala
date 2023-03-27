package riscv

import chisel3._

class Registers extends Module {
  val io = IO(new Bundle {
    val rs1addr = Input(UInt(5.W)) // adress of rs1 - input from IDecode
    val rs2addr = Input(UInt(5.W)) // adress of rs1 - input from IDecode
    val rdaddr = Input(UInt(5.W)) // adress of rd - input from IDecode
    val result = Input(UInt(32.W)) // data to insert in the vector indexed by adress rdaddr - input from ALU (result) writedata
    val WE = Input(Bool()) // true if operation depends on register false if not - input from IOP writeenable
    val rs1data = Output(UInt(32.W)) // data to extract from registers vector indexed by rs1addr
    val rs2data = Output(UInt(32.W)) // data to extract from registers vector indexed by rs2addr
  })

  val registers = Mem(32, UInt(32.W))

  when(io.WE) {
    registers(io.rdaddr) := io.result // turn this to a logical without when
  }

  io.rs1data := registers(io.rs1addr)
  io.rs2data := registers(io.rs2addr)
}
