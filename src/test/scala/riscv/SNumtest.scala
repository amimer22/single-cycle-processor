package riscv

import chisel3._
import chiseltest._
import org.scalatest._

class SNumtest extends FlatSpec with  ChiselScalatestTester {
  behavior of "imm and alu"

  it should "test modules for signed numbers calcs" in {
    test(new Imm) { c =>
      


      //c.io.Imm_Itypetest.poke("b111111111110".U)
      //c.io.op2.poke(6.S)
      //
      //c.io.extendedImmediate.expect(-1.S)
      //c.io.immtest.expect(-2.S)
      //c.io.Data1.expect(-3.S)
      //c.io.Data2.expect(2.S)
      //c.io.Dataout.expect(-1.S)
      

    }
  }

  // Add more test cases as needed for other instruction types
}