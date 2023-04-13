/*package riscv 
import chisel3._

class Main extends Module {
    val io = IO(new Bundle {
        val output = Input(UInt(32.w))
    })
    //module objects
    val IFetch = Module(new IFetch())
    val IDecode = Module(new IDecode())
    val Registers = Module(new Registers())
    val myIOP = Module(new IOP())
    val ALU = Module(new ALU())
    val Pc = Module(new Pc())
    val IMemory = Module(new IMemory())

    Pc.io.IP_in = PrePc.io.IP
    IMemory.io.IP_in = Pc.io.IP_out

    IFetch.io.instruction = IMemory.io.instruction

    IDecode.io.instruction = IFetch.io.instruction

    Registers.io.rs1addr := IDecode.io.rs1
    Registers.io.rs2addr := IDecode.io.rs2
    Registers.io.rdaddr := IDecode.io.rd
    Registers.io.WE := IOP.io.WE
    Registers.io.result := ALU.io.result

    IOP.io.opcode := IDecode.io.opcode
    IOP.io.funct3 := IDecode.io.funct3
    IOP.io.funct7 := IDecode.io.funct7

    ALU.io.operation = IOP.io.operation
    ALU.io.op1 = Registers.io.rs1data
    ALU.io.op2 = Registers.io.rs2data

    
    //Pc.io.IP_in = Pc.io.IP_out
    

}*/