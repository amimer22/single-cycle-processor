package riscv
import chisel3._

class AND extends Module {
  val io = IO(new Bundle {
    val op1 = Input(UInt(32.W))
    val op2 = Input(UInt(32.W))
    //val aluop = Input(UInt(3.W))
    val result = Output(UInt(32.W))
    //val zero = Output(Bool()) //flag of zero
  })

  /*io.result := 0.U
  io.zero := false.B*/

  io.result := io.op1 & io.op2

  /*
  when(io.result === 0.U) {
    io.zero := true.B
  } .otherwise {
    io.zero := false.B
  }*/

}
