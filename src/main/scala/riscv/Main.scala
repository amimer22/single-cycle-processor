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
    val ADD = Module(new ADD())
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
    
    //ADD
    ADD.io.op1 := OPR1read.io.datas1out
    ADD.io.op2 := OPR2read.io.datas2out
    //SUB
    SUB.io.op1 := OPR1read.io.datas1out
    SUB.io.op2 := OPR2read.io.datas2out
    //OR
    OR.io.op1 := OPR1read.io.datas1out
    OR.io.op2 := OPR2read.io.datas2out
    //AND
    AND.io.op1 := OPR1read.io.datas1out
    AND.io.op2 := OPR2read.io.datas2out
    
    //Wresult
    WRresult.io.addrwrin := IMemory.io.instruction(11,7)
    WRresult.io.resultin := ADD.io.result  

    //val isOne = WRresult.io.WE === 1.U
    WRresult.io.WE := true.B
    
    RegisterFile.io.WE := WRresult.io.WE
    RegisterFile.io.addrwr := WRresult.io.addrwrout
    RegisterFile.io.datawr := WRresult.io.resultout
    //test
    //io.output := ADD.io.result
    io.input3 := RegisterFile.io.addrwr
    

    io.output := RegisterFile.io.datawr
    //io.input4 := RegisterFile.io.wrtest
    

}