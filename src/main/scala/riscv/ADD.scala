package riscv
import chisel3._

class ADD extends Module {
  val io = IO(new Bundle {
    val op1 = Input(SInt(32.W))
    val op2 = Input(SInt(32.W))
    //val aluop = Input(UInt(3.W))
    val result = Output(SInt(32.W))
    //val zero = Output(Bool()) //flag of zero
  })

  /*io.result := 0.U
  io.zero := false.B*/

  io.result := io.op1 + io.op2

}
