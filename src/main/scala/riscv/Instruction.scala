package core

import chisel3.UInt
import chisel3.util._
object Instruction {
def ADD:                  BitPat = BitPat("b0000000??????????000?????0110011")
def SUB:                  BitPat = BitPat("b0100000??????????000?????0110011")
}
