package riscv 
import chisel3._

class Main extends Module {
    val io = IO(new Bundle {
        val input = Input(UInt(32.W))  //only for test 
        
        val input1 = Output(UInt(5.W))
        val input2 = Output(UInt(5.W))
        val input3 = Output(UInt(5.W))
        //val input4 = Output(UInt(32.W))

        val output = Output(UInt(32.W))
    })
    //module objects
    val RegisterFile = Module(new RegisterFile())
    val IMemory = Module(new IMemory())
    val OPR1read =  Module(new OPR1read())
    val OPR2read =  Module(new OPR2read())
    val ALU = Module(new ALU())
    val WRresult = Module(new WRresult())
    

    //io.input1 := IMemory.io.instruction(19,15)
    //io.input2 := IMemory.io.instruction(24,20)
    IMemory.io.IP_in := io.input    // only for test
    
    //OPR1
    OPR1read.io.addrs1in := IMemory.io.instruction(19,15)  
    RegisterFile.io.addr1 := OPR1read.io.addrs1out
    OPR1read.io.datas1in := RegisterFile.io.data1
   
    io.input1 :=  OPR1read.io.datas1in

    //OPR2
    OPR2read.io.addrs2in := IMemory.io.instruction(24,20)
    RegisterFile.io.addr2 := OPR2read.io.addrs2out
    OPR2read.io.datas2in := RegisterFile.io.data2    

    io.input2 :=  OPR2read.io.datas2in
    
    //ALU
    ALU.io.op1 := OPR1read.io.datas1out
    ALU.io.op2 := OPR2read.io.datas2out
    
    //Wresult
    WRresult.io.addrwrin := IMemory.io.instruction(11,7)
    WRresult.io.resultin := ALU.io.result  

    //val isOne = WRresult.io.WE === 1.U
    WRresult.io.WE := false.B
    
    RegisterFile.io.WE := WRresult.io.WE
    RegisterFile.io.addrwr := WRresult.io.addrwrout
    RegisterFile.io.datawr := WRresult.io.resultout
    //test
    //io.output := ALU.io.result
    io.input3 := RegisterFile.io.addrwr
    

    io.output := RegisterFile.io.datawr
    //io.input4 := RegisterFile.io.wrtest
    

}