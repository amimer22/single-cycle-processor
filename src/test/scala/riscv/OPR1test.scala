/*package riscv

import chisel3._
import chiseltest._
import org.scalatest._

class OPR1test extends FlatSpec with  ChiselScalatestTester {
  behavior of "op1readtest"
  it should "read data of addr1 from register" in {
    test(new OPR1read) { c =>
      // Example R-type instruction: ADD rd, rs1, rs2
      //val addrs1 = "b0000000_00010_00001_000_00010_0110011".U // ADD
      //val addrs1 = "b00000".U
      //c.io.addrs1.poke(addrs1)
      //c.io.datas1_in.expect("b000000_000000_000000_000101".U)
      c.io.addrs1in.expect("b00001".U)
      //c.io.addrs1_out.expect("b00000".U)

      /*c.io.rd.expect("b00010".U)
      c.io.rs1.expect("b00001".U)
      c.io.rs2.expect("b00010".U)
      c.io.funct3.expect("b000".U)
      c.io.funct7.expect("b0000000".U)*/
    }
  }

}
*/
