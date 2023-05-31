package riscv

import chisel3._
import chiseltest._
import org.scalatest._

class Maintest extends FlatSpec with  ChiselScalatestTester {
  behavior of "Pc"

  it should "increment PC after every cycle" in {
    test(new Main) { c =>
      // Example R-type instruction: ADD rd, rs1, rs2
      //val IP = "h6".U
      //c.io.input.poke(IP) 
//
      //val addrs1 = "b00001".U
      //c.io.input1.poke(addrs1)
      
      c.io.output.expect("h0".U)
      c.clock.step()
      c.io.output.expect("h1".U)
      c.clock.step()
      c.io.output.expect("h2".U)
      c.clock.step()
      c.io.output.expect("h3".U)
      c.clock.step()
      c.io.output.expect("h4".U)
      c.clock.step()
      c.io.output.expect("h5".U)
      //c.clock.step()
      //c.io.output.expect("h1".U)
      //c.clock.step()
      //c.io.output.expect("h2".U)
      ////val addrs2 = "b00002".U
      //c.io.input2.poke(addrs2)
      //c.io.input2.expect("b00101".U) //5 inside register(1)
      //c.io.input1.expect("b00110".U) //6 inside register(2)
      //c.io.input3.expect("b000".U) //register x3
//

      //c.io.input4.expect("b001000".U)
      //c.io.input4.expect("b000000_000000_000000_000011".U)// result to be written inside immin in this case 3
      //c.io.input5.expect("b000000_000000_000000_000101".U) // 5
      //c.io.input6.expect("b000000_000000_000000_001001".U) // 9
      //c.io.input5.expect(true.B) 



      //c.io.output.expect("b000000_000000_000000_000101".U)     // 11 for add // 5 for store 
      //c.io.output.expect("b000000_000000_000000_000001".U)     // 1 for sub
      //c.io.output.expect("b000000_000000_000000_000100".U)     // 4  for and
      //c.io.output.expect("b000000_000000_000000_010100".U)     // 20  for load

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