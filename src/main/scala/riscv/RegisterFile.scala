// this module works if theres a br jmp 
package riscv 
import chisel3._
import chisel3.util._

class RegisterFile extends Module{
    val io = IO(new Bundle {
        val addr1 = Input(UInt(5.W))
        val data1 = Output(UInt(32.W))
        val addr2 = Input(UInt(5.W))
        val data2 = Output(UInt(32.W))
        val addrwr = Input(UInt(5.W))
        val datawr = Input(UInt(32.W))
        //val WE = Input(Bool())
        val RegWrite = Input(Bool())
        val wrtest = Output(UInt(32.W))
        //val wrtest1 = Input(UInt(32.W))
       
    })
    val adress = io.addrwr
    val data = io.datawr
    val registers = Mem(32, UInt(32.W))
    //when(io.WE) {
    registers.write(io.addrwr, io.datawr)
        //registers(adress) := data
        io.wrtest := registers(3.U)
    //}.otherwise {
    //io.wrtest := 22.U //22 code error for having no data
    //} 
    
    // when writing data on specific register on li or mv instructions or when writing alu result
    registers.write(0.U, 9.U)
    registers.write(1.U, 6.U)
    registers.write(2.U, 5.U)
    //registers.write(3.U, 5.U)
    
    //registers.write(3.U, 9.U)
//io.wrtest := io.wrtest1
    //
    io.data1 := registers(io.addr1)
    io.data2 := registers(io.addr2)

    

     // reading data from a register

    // Read data from the register file at the specified address
    //val dataRead = registers(io.addr)

    // Use a RegNext register to assign the updated value to io.data
    //io.data := RegNext(dataRead)


}