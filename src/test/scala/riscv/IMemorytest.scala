/*package riscv

import chisel3._
import chiseltest._
import org.scalatest._

class IMemorytest extends FlatSpec with  ChiselScalatestTester {
  behavior of "alu result"

  it should "i decode" in {
    test(new IMemory) { c =>
      // Example R-type instruction: ADD rd, rs1, rs2
      //val IP = "b0000000_00000_00000_000_00000_0000000".U
      //c.io.input.poke(IP) 
//
      //val addrs1 = "b00001".U
      //c.io.input1.poke(addrs1)
//
      //val addrs2 = "b00002".U
      //c.io.input2.poke(addrs2)
      
      c.io.instruction.expect("b0000000_00010_00001_000_00101_0110011".U)
      c.io.instructionadd1.expect("b00001".U)
      c.io.instructionadd2.expect("b00010".U)

      //c.io.rd.expect("b00010".U)
      //c.io.rs1.expect("b00001".U)
      //c.io.rs2.expect("b00010".U)
      //c.io.funct3.expect("b000".U)
      //c.io.funct7.expect("b0000000".U)
    }
  }

  // Add more test cases as needed for other instruction types
}*/