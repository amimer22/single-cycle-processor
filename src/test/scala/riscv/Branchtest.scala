package riscv

import chisel3._
import chiseltest._
import org.scalatest._

class Branchtest extends FlatSpec with  ChiselScalatestTester {
  behavior of "Pc"

  it should "increment PC depending on branch" in {
    test(new Main) { c =>
      
      c.io.output.expect(0.S)
      c.clock.step()
      c.io.output.expect(1.S)
      //c.io.input1.expect("b10000".U)
      c.clock.step()
      c.io.output.expect(5.S)
      
    }
  }

  // Add more test cases as needed for other instruction types
}