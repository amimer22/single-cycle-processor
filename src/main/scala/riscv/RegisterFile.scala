// this module works if theres a br jmp 
package riscv 
import chisel3._
import chisel3.util._

class RegisterFile extends Module {
    val io = IO(new Bundle {
        val addr = Input(UInt(5.W))
        val data = Output(UInt(32.W))

    })

    val registers = Mem(32, UInt(32.W))
    
    registers.write(0.U, 6.U)
    registers.write(1.U, 5.U)
    registers.write(2.U, 9.U)
    registers.write(3.U, 9.U)

    io.data := registers(io.addr)

    // Read data from the register file at the specified address
    //val dataRead = registers(io.addr)

    // Use a RegNext register to assign the updated value to io.data
    //io.data := RegNext(dataRead)


}