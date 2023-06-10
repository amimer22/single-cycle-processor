package riscv

import chisel3._
import chiseltest._
import org.scalatest._

class Jumptest extends FlatSpec with  ChiselScalatestTester {
  behavior of "Pc"

  it should "increment PC depending on jump jalr" in {
    test(new Main) { c =>
      
      c.io.output.expect(0.S)
      c.clock.step()
      c.io.output.expect(1.S)
      //c.io.input1.expect("b10000".U)
      c.clock.step()
      c.io.output.expect(5.S) //branch to pc=5
      c.clock.step()
      c.io.output.expect(6.S)
      c.clock.step()
      c.io.output.expect(7.S)
      c.clock.step()
      c.io.output.expect(8.S)
      //c.io.input1.expect(9.U)//next pc address
      c.clock.step()
      c.io.output.expect(2.S) //jump to pc =2
      //c.io.input1.expect(6.U)
      
    }
  }

  // Add more test cases as needed for other instruction types
}