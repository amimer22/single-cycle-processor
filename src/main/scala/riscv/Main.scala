package riscv 
import chisel3._

class Main extends Module {
    val io = IO(new Bundle {
        val input = Input(UInt(32.W))  //only for test 
        

        val output = Output(UInt(32.W))
    })
    //module objects
    //val RegisterFile = Module(new RegisterFile())
    val IMemory = Module(new IMemory())
    val OPR1read =  Module(new OPR1read())
    val OPR2read =  Module(new OPR2read())
    val ALU = Module(new ALU())

    IMemory.io.IP_in := io.input    // only for test
    

    OPR1read.io.addrs1 := IMemory.io.instruction(19,15)
    OPR2read.io.addrs2 := IMemory.io.instruction(24,20)

    //RegisterFile.io.addr := OPR1read.io.addrs1
    //OPR1read.io.datas1 := RegisterFile.io.data

    //RegisterFile.io.addr := OPR2read.io.addrs2
    //OPR2read.io.datas2 := RegisterFile.io.data
    
    ALU.io.op1 := OPR1read.io.datas1
    ALU.io.op2 := OPR2read.io.datas2
    
    io.output := ALU.io.result
    
    //val IFetch = Module(new IFetch())
    //val IDecode = Module(new IDecode())
    //val Registers = Module(new Registers())
    //val myIOP = Module(new IOP())
    //val ALU = Module(new ALU())
    //val Pc = Module(new Pc())
    //val IMemory = Module(new IMemory())

    /*Pc.io.IP_in = PrePc.io.IP
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
    ALU.io.op2 = Registers.io.rs2data*/

    
    //Pc.io.IP_in = Pc.io.IP_out
    

}