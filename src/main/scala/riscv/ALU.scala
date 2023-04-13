package riscv
import chisel3._

class ALU extends Module {
  val io = IO(new Bundle {
    val op1 = Input(UInt(32.W))
    val op2 = Input(UInt(32.W))
    //val aluop = Input(UInt(3.W))
    val result = Output(UInt(32.W))
    //val zero = Output(Bool()) //flag of zero
  })

  /*io.result := 0.U
  io.zero := false.B*/

  io.result := io.op1 + io.op2

  /*switch(io.aluop) {
    is(0.U) {
      io.result := io.op1 + io.op2 //add
    }
    is(1.U) {
      io.result := io.op1 - io.op2 //sub
    }
    is(2.U) {
      io.result := io.op1 >> io.op2(4, 0)
    }
    is(3.U) {
      io.result := io.op1 ^ io.op2
    }
    is(4.U) {
      io.result := io.op1 | io.op2
    }
    is(5.U) {
      io.result := io.op1 & io.op2
    }
    is(6.U) {
      when(io.op1.asSInt() < io.op2.asSInt()) {
        io.result := 1.U
      } .otherwise {
        io.result := 0.U
      }
    }
    is(7.U) {
      when(io.op1 === io.op2) {
        io.result := 1.U
      } .otherwise {
        io.result := 0.U
      }
    }
  }
  
  when(io.result === 0.U) {
    io.zero := true.B
  } .otherwise {
    io.zero := false.B
  }*/

}
