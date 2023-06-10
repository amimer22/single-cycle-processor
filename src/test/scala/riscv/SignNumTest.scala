package riscv

import chisel3._
import chiseltest._
import org.scalatest._

class SignNumTest extends FlatSpec with  ChiselScalatestTester {
  behavior of "imm and alu"

  it should "test modules for signed numbers calcs" in {
    test(new Main) { c =>
      

      //c.io.op1.poke(-5.S)
      //c.io.op2.poke(6.S)
      //
      //c.io.result.expect(-11.S)
      c.io.Data1.expect(-5.S)
      c.io.Data2.expect(-3.S)
      c.io.Dataout.expect(-8.S)
      

    }
  }

  // Add more test cases as needed for other instruction types
}