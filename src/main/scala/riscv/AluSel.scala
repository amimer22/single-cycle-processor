package riscv
import chisel3._

class AluSel extends Module {
  val io = IO(new Bundle {
    val operation = Input(UInt(32.W))
    val AddRes = Input(UInt(32.W))
    val SubRes = Input(UInt(32.W))
    val AndRes = Input(UInt(32.W))
    val OrRes = Input(UInt(32.W))
    val output = Output(UInt(32.W))

  })

    when (io.operation === "b00001".U) {
        io.output := io.AddRes
        }.elsewhen (io.operation ==="b00010".U) {
        io.output := io.SubRes
        }.elsewhen (io.operation === "b00011".U) {
        io.output := io.AndRes
        }.elsewhen (io.operation ==="b00101".U) {
        io.output := io.OrRes
        }.otherwise {
        io.output := 0.U
        }
    /*switch(io.operation) {
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
