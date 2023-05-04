package riscv
import chisel3._

class AluSel extends Module {
  val io = IO(new Bundle {
    val Operation = Input(UInt(32.W))
    val AddRes = Input(UInt(32.W))
    val SubRes = Input(UInt(32.W))
    val AndRes = Input(UInt(32.W))
    val OrRes = Input(UInt(32.W))
    val output = Output(UInt(32.W))

  })


  // code
  

}
