import chisel3._
import chiseltest._
import org.scalatest._

class IDecodeTest extends FlatSpec with ChiselScalatestTester {
  behavior of "InstructionDecode"

  it should "decode an R-type instruction" in {
    test(new IDecode) { c =>
      // Example R-type instruction: ADD rd, rs1, rs2
      val instruction = "b0000000_00010_00001_000_00010_0110011".U // ADD
      c.io.instruction.poke(instruction)
      c.io.opcode.expect("b0110011".U)
      c.io.rd.expect("b00010".U)
      c.io.rs1.expect("b00001".U)
      c.io.rs2.expect("b00010".U)
      c.io.funct3.expect("b000".U)
      c.io.funct7.expect("b0000000".U)
    }
  }

  it should "decode an I-type instruction" in {
    test(new InstructionDecode) { c =>
      // Example I-type instruction: ADDI rd, rs1, imm
      val instruction = "b000000000000_00001_00010_0010011".U // ADDI
      c.io.instruction.poke(instruction)
      c.io.opcode.expect("b0010011".U)
      c.io.rd.expect("b00001".U)
      c.io.rs1.expect("b00010".U)
      c.io.rs2.expect("b00000".U)
      c.io.funct3.expect("b000".U)
      c.io.funct7.expect("b0000000".U)
    }
  }

  // Add more test cases as needed for other instruction types
}

