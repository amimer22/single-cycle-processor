package riscv 
import chisel3._
import chisel3.util._
import chisel3.stage.ChiselStage

//import circt.stage.ChiselStage


class Main extends Module {
    val io = IO(new Bundle {
        val input = Input(UInt(32.W))  //only for test 
        
        val input1 = Output(UInt(5.W))
        val input2 = Output(UInt(5.W))
        //val input3 = Output(UInt(5.W))
        val input4 = Output(UInt(32.W))
        val input5 = Output(UInt(32.W))
        val input6 = Output(UInt(32.W))

        //val input5 = Output(Bool())


        //val output = Output(UInt(32.W))
    })
    //module objects
    val RegisterFile = Module(new RegisterFile())
    val IMemory = Module(new IMemory())
    val OPR1read =  Module(new OPR1read())
    val OPR2read =  Module(new OPR2read())
    val OPR2Sel =  Module(new OPR2Sel())
    val ADD = Module(new ADD())
    val SUB = Module(new SUB())
    val AND = Module(new AND())
    val OR = Module(new OR())
    val OperationSel = Module(new OperationSel())
    val AluSel = Module(new AluSel())
    val DataMemory = Module(new DataMemory())
    val ResultSel = Module(new ResultSel())


    //initialisation 
    //RegisterFile.io.WE := false.B

    //io.input1 := IMemory.io.instruction(19,15)
    //io.input2 := IMemory.io.instruction(24,20)
    IMemory.io.IP_in := io.input    // only for test
    
    //OPR1
    OPR1read.io.addrs1in := IMemory.io.instruction(19,15)  
    RegisterFile.io.addr1 := OPR1read.io.addrs1out
    OPR1read.io.datas1in := RegisterFile.io.data1
   
    io.input1 :=  OPR1read.io.datas1in //6
    //OPR2sel
    OPR2Sel.io.opcode := IMemory.io.instruction(6,0)
    OPR2read.io.R_type := OPR2Sel.io.R_type
    OPR2read.io.Imm_type := OPR2Sel.io.Imm_type
    OPR2read.io.S_type := OPR2Sel.io.S_type


    //OPR2
    OPR2read.io.immin := IMemory.io.instruction(31,20)
    OPR2read.io.Simmin := Cat(IMemory.io.instruction(31,25),IMemory.io.instruction(11,7)) 
    OPR2read.io.addrs2in := IMemory.io.instruction(24,20)
    RegisterFile.io.addr2 := OPR2read.io.addrs2out
    OPR2read.io.datas2in := RegisterFile.io.data2    
    
    io.input2 :=  OPR2read.io.datas2in //5
    //regfile
    RegisterFile.io.addrwr := IMemory.io.instruction(11,7)
    //OperationSel
    OperationSel.io.opcode := IMemory.io.instruction(6,0)
    OperationSel.io.funct3 := IMemory.io.instruction(14,12)
    OperationSel.io.funct7 := IMemory.io.instruction(31,25)
    AluSel.io.operation := OperationSel.io.operation


    //ADD
    ADD.io.op1 := OPR1read.io.datas1out
    ADD.io.op2 := OPR2read.io.datas2out

    io.input5 := ADD.io.op1
    io.input6 := ADD.io.op2
    //SUB
    SUB.io.op1 := OPR1read.io.datas1out
    SUB.io.op2 := OPR2read.io.datas2out
    //OR
    OR.io.op1 := OPR1read.io.datas1out
    OR.io.op2 := OPR2read.io.datas2out
    //AND
    AND.io.op1 := OPR1read.io.datas1out
    AND.io.op2 := OPR2read.io.datas2out

    

    //AluSel
    AluSel.io.AddRes := ADD.io.result
    AluSel.io.SubRes := SUB.io.result
    AluSel.io.AndRes := AND.io.result
    AluSel.io.OrRes := OR.io.result


    //DataMemory
    DataMemory.io.ReadAddr := AluSel.io.output 
    DataMemory.io.dataSin := OPR2read.io.dataSout 

    //ResultSel
    ResultSel.io.opcode := IMemory.io.instruction(6,0) // this should be sent to control unit
    ResultSel.io.ReadData := DataMemory.io.ReadData
    ResultSel.io.AluRes := AluSel.io.output  // output should be named ALURES

    RegisterFile.io.datawr := ResultSel.io.Result

    //Wresult
   
    //WRresult.io.addrwrin := IMemory.io.instruction(11,7)
    //WRresult.io.resultin := AluSel.io.output 

    //RegisterFile.io.addrwr := WRresult.io.addrwrout
    //RegisterFile.io.WE := true.B
    //RegisterFile.io.datawr := WRresult.io.resultout //this is a bug -- clock issues 
    //test
    //WRresult.io.WE := true.B
    
    //io.output := ADD.io.result
    //io.input3 := RegisterFile.io.addrwr //3
    //io.input4 := RegisterFile.io.datawr // 20
    io.input4 := OPR2read.io.datas2out // 3
    io.input5 := DataMemory.io.dataSin // 5
    io.input6 := DataMemory.io.ReadData //9
    //io.output :=
    //io.input3 := OperationSel.io.operation
    //io.output := RegisterFile.io.wrtest //this is a bug -- clock issues
    //io.input5 := RegisterFile.io.WE
}
object Main extends App {
  (new ChiselStage).emitVerilog(new Main)
}