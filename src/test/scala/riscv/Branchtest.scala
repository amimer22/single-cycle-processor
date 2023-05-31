package riscv

import chisel3._
import chiseltest._
import org.scalatest._

class Branchtest extends FlatSpec with  ChiselScalatestTester {
  behavior of "Pc"

  it should "increment PC depending on branch" in {
    test(new Main) { c =>
      
      c.io.output.expect("h0".U)
      c.clock.step()
      c.io.output.expect("h1".U)
      c.io.input1.expect("b10000".U)
      c.clock.step()
      c.io.output.expect("h5".U)
      
    }
  }

  // Add more test cases as needed for other instruction types
}