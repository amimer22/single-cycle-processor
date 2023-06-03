package riscv

import chisel3._
import chiseltest._
import org.scalatest._

class Jumptest extends FlatSpec with  ChiselScalatestTester {
  behavior of "Pc"

  it should "increment PC depending on jump jalr" in {
    test(new Main) { c =>
      
      c.io.output.expect("h0".U)
      c.clock.step()
      c.io.output.expect("h1".U)
      //c.io.input1.expect("b10000".U)
      c.clock.step()
      c.io.output.expect("h5".U) //branch to pc=5
      c.clock.step()
      c.io.output.expect("h6".U)
      c.clock.step()
      c.io.output.expect("h7".U)
      c.clock.step()
      c.io.output.expect("h8".U)
      c.io.input1.expect("h9".U)//next pc address
      c.clock.step()
      c.io.output.expect("h2".U) //jump to pc =2
      c.io.input1.expect("h6".U)
      
    }
  }

  // Add more test cases as needed for other instruction types
}