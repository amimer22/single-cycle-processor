package riscv
import chisel3._
import chisel3.stage.ChiselStage


class AluOutput extends Module {
  val io = IO(new Bundle {
    //val operation = Input(UInt(32.W))
    val AddRes = Input(SInt(32.W))
    val SubRes = Input(SInt(32.W))
    val AndRes = Input(SInt(32.W))
    val OrRes = Input(SInt(32.W))
    val output = Output(SInt(32.W))
    val AluCtrl = Input(UInt(3.W))
  })

    when (io.AluCtrl === "b000".U) {
        io.output := io.AddRes
        }.elsewhen (io.AluCtrl ==="b001".U) {
        io.output := io.SubRes
        }.elsewhen (io.AluCtrl === "b010".U) {
        io.output := io.AndRes
        }.elsewhen (io.AluCtrl ==="b011".U) {
        io.output := io.OrRes
        }.otherwise {
        io.output := 2.S
        }
    /*switch(io.AluCtrl) {
        is("b00001".U) {
        output := io.AddRes
        }
        is("b00010".U) {
        output := io.SubRes
        }
        is("b00011".U) {
        output := io.AndRes
        }
        is("b00101".U) {
        output := io.OrRes
        }
    }*/
  

}
object AluOutput extends App {
  (new ChiselStage).emitVerilog(new AluOutput)
}