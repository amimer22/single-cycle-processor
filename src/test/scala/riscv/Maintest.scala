package riscv

import chisel3._
import chiseltest._
import org.scalatest._

class Maintest extends FlatSpec with  ChiselScalatestTester {
  behavior of "alu result"

  it should "get alu result of add 2 operands" in {
    test(new Main) { c =>
      // Example R-type instruction: ADD rd, rs1, rs2
      val IP = "h2".U
      c.io.input.poke(IP) 
//
      //val addrs1 = "b00001".U
      //c.io.input1.poke(addrs1)
//
      //val addrs2 = "b00002".U
      //c.io.input2.poke(addrs2)
      c.io.input2.expect("b00101".U)
      c.io.input1.expect("b00110".U)


      c.io.input3.expect("b00011".U) //operation
      c.io.input4.expect("b000100".U)
      //c.io.input5.expect(true.B) 



      //c.io.output.expect("b000000_000000_000000_001011".U)     // 11 for add 
      //c.io.output.expect("b000000_000000_000000_000001".U)     // 1 for sub
      //c.io.output.expect("b000000_000000_000000_000100".U)     // 4  for and


      //c.io.input4.expect("hb".U)
      //c.io.input1.expect("b00001".U)
      //c.io.input2.expect("b00010".U)
      //c.io.rd.expect("b00010".U)
      //c.io.rs1.expect("b00001".U)
      //c.io.rs2.expect("b00010".U)
      //c.io.funct3.expect("b000".U)
      //c.io.funct7.expect("b0000000".U)
    }
  }

  // Add more test cases as needed for other instruction types
}