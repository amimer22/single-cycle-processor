// this module works if theres a br jmp 
package riscv 
import chisel3._
import chisel3.util._
import chisel3.stage.ChiselStage

class RegisterFile extends Module{
    val io = IO(new Bundle {
        val addr1 = Input(UInt(5.W))
        val data1 = Output(SInt(32.W))
        val addr2 = Input(UInt(5.W))
        val data2 = Output(SInt(32.W))
        val addrwr = Input(UInt(5.W))
        val datawr = Input(SInt(32.W))
        //val WE = Input(Bool())
        val RegWrite = Input(Bool())
        //val wrtest = Output(UInt(32.W))
        //val wrtest1 = Input(UInt(32.W))
       
    })
    //val adress = io.addrwr
    //val data = io.datawr
    val registers = Mem(32, SInt(32.W))
    when(io.RegWrite) {
    //registers.write(io.addrwr, io.datawr)
        registers(io.addrwr) := io.datawr
        //io.wrtest := registers(3.U)
    }.otherwise {
        registers(io.addrwr) := 22.S //22 code error for having no data
    } 
    
    // when writing data on specific register on li or mv instructions or when writing alu result
    //registers.write(0.U, 10.S)
    //registers.write(1.U, 15.S)
    //registers.write(2.U, 26.S)
    //registers.write(3.U, 35.S)
    
    //registers.write(3.U, 9.U)
//io.wrtest := io.wrtest1
    //
    io.data1 := registers(io.addr1)
    io.data2 := registers(io.addr2)



}
object RegisterFile extends App {
  (new ChiselStage).emitVerilog(new RegisterFile)
}