package riscv 
import chisel3._
import chisel3.util._
import chisel3.stage.ChiselStage

//import circt.stage.ChiselStage


class Main extends Module {
    val io = IO(new Bundle {
        //val input = Input(UInt(32.W))  //only for test 
        //
        val Ctrltest = Output(UInt(3.W))
        //val input2 = Output(UInt(5.W))
        //val input3 = Output(UInt(5.W))
        val Data1 = Output(SInt(32.W))
        val Data2 = Output(SInt(32.W))
        val Dataout = Output(SInt(32.W))

        val Brpc = Output(SInt(32.W))
        val Brimm = Output(SInt(32.W))
        val BrDtaout = Output(SInt(32.W))
        val BrData1 = Output(SInt(32.W))
        val BrData2 = Output(SInt(32.W))
        //val input5 = Output(Bool())


        val output = Output(SInt(32.W))
    })
    //module objects
    val Controler = Module(new Controler())
    val RegisterFile = Module(new RegisterFile())
    val PcCtrl = Module(new PcCtrl())
    val Pc = Module(new Pc())
    val PcInc = Module(new PcInc())
    val IMemory = Module(new IMemory())
    val OPR1read =  Module(new OPR1read())
    val OPR2read =  Module(new OPR2read())
    val Imm = Module(new Imm())
    val ImmOpr2Sel = Module(new ImmOpr2Sel())

    //val OPR2Sel =  Module(new OPR2Sel())
    val ADD = Module(new ADD())
    val SUB = Module(new SUB())
    val AND = Module(new AND())
    val OR = Module(new OR())
    val Jump = Module(new Jump())
    val Branch = Module(new Branch())
    val BrTarget = Module(new BrTarget())
    //val OperationSel = Module(new OperationSel())
    val AluOutput = Module(new AluOutput())
    val DataMemory = Module(new DataMemory())
    val ResultSel = Module(new ResultSel())


    //initialisation 
    //RegisterFile.io.WE := false.B

    //io.input1 := IMemory.io.instruction(19,15)
    //io.input2 := IMemory.io.instruction(24,20)
    //IMemory.io.IPmem_in := io.input    // only for test
    io.output := Pc.io.IP_out
    val IPunit = Wire(SInt(32.W))
    IPunit := Pc.io.IP_out 
    IMemory.io.IPmem_in := IPunit.asUInt
    
    //controler
    Controler.io.opcode := IMemory.io.instruction(6,0)
    Controler.io.funct3 := IMemory.io.instruction(14,12)
    Controler.io.funct7 := IMemory.io.instruction(31,25)
    
    PcCtrl.io.PcCtrl := Controler.io.PcCtrl

    //regfile
    RegisterFile.io.RegWrite := Controler.io.RegWrite
    RegisterFile.io.addrwr := IMemory.io.instruction(11,7)

    //OPR1
    OPR1read.io.addrs1in := IMemory.io.instruction(19,15)  
    RegisterFile.io.addr1 := OPR1read.io.addrs1out
    OPR1read.io.datas1in := RegisterFile.io.data1
   
    //io.input1 :=  OPR1read.io.datas1in //6
    //OPR2sel
    //OPR2Sel.io.opcode := IMemory.io.instruction(6,0)
    //OPR2read.io.R_type := OPR2Sel.io.R_type
    //OPR2read.io.Imm_type := OPR2Sel.io.Imm_type
    //OPR2read.io.S_type := OPR2Sel.io.S_type


    //OPR2

    OPR2read.io.addrs2in := IMemory.io.instruction(24,20)
    RegisterFile.io.addr2 := OPR2read.io.addrs2out
    OPR2read.io.datas2in := RegisterFile.io.data2    
    
    //io.input2 :=  OPR2read.io.datas2in //5

    //Imm
    //val Itype = Wire(UInt(32.W))
    val Stype = Wire(SInt(32.W))
    val Btype = Wire(SInt(32.W))
    val Jtype = Wire(SInt(32.W))
    //Itype := IMemory.io.instruction(31,20)
    Stype := Cat(IMemory.io.instruction(31,25),IMemory.io.instruction(11,7)).asSInt
    Btype :=  Cat(IMemory.io.instruction(31),IMemory.io.instruction(7),IMemory.io.instruction(30,25),IMemory.io.instruction(11,8)).asSInt
    Jtype := Cat(IMemory.io.instruction(31),IMemory.io.instruction(19,12),IMemory.io.instruction(20),IMemory.io.instruction(30,21)).asSInt
    Imm.io.ImmSrc := Controler.io.ImmSrc
    //Imm.io.Imm_Itype := Itype.asSInt
    //Imm.io.Imm_Stype := Stype.asSInt
    //Imm.io.Imm_Btype := Btype.asSInt
    //Imm.io.Imm_Jtype := Jtype.asSInt
    Imm.io.Imm_Itype := (Cat(Fill(20,IMemory.io.instruction(31)),IMemory.io.instruction(31,20))).asSInt
    Imm.io.Imm_Stype := (Cat(Fill(20,Stype(11)),Stype)).asSInt
    Imm.io.Imm_Btype := (Cat(Fill(19,IMemory.io.instruction(31)),Btype)).asSInt
    Imm.io.Imm_Jtype := (Cat(Fill(12,Jtype(20)),Jtype)).asSInt
    //ImmOpr2Sel
    ImmOpr2Sel.io.AluSrc := Controler.io.AluSrc
    ImmOpr2Sel.io.Opr2_input := OPR2read.io.datas2out
    ImmOpr2Sel.io.Imm_input := Imm.io.Imm_output
    //
    Jump.io.JmpCtrl := Controler.io.JmpCtrl
    Jump.io.Jal_imm := Imm.io.Imm_Jtype
    Jump.io.JalR_imm := Imm.io.Imm_Itype
    Jump.io.Datas1 := OPR1read.io.datas1out
    //branch
    Branch.io.Br := Controler.io.Br
    Branch.io.BrCtrl := Controler.io.BrCtrl
    //io.input1 := Branch.io.BrCtrl
    Branch.io.Datas1 := OPR1read.io.datas1out
    Branch.io.Datas2 := OPR2read.io.datas2out
    io.BrData1 := Branch.io.Datas1
    io.BrData2 := Branch.io.Datas2
    //BrTarget
    BrTarget.io.IP_init := Pc.io.IP_out
    BrTarget.io.Br_up := Branch.io.Br_up
    BrTarget.io.B_imm := Imm.io.Imm_Btype

    io.Brpc := BrTarget.io.IP_init
    io.Brimm := BrTarget.io.B_imm
    io.BrDtaout := BrTarget.io.B_output
    //ADD
    ADD.io.op1 := OPR1read.io.datas1out
    //ADD.io.op2 := OPR2read.io.datas2out
    ADD.io.op2 := ImmOpr2Sel.io.ImmOp2Sel_output

    io.Data1 := ADD.io.op1
    io.Data2 := ADD.io.op2
    //SUB
    SUB.io.op1 := OPR1read.io.datas1out
    SUB.io.op2 := ImmOpr2Sel.io.ImmOp2Sel_output
    //OR
    OR.io.op1 := OPR1read.io.datas1out
    OR.io.op2 := ImmOpr2Sel.io.ImmOp2Sel_output
    //AND
    AND.io.op1 := OPR1read.io.datas1out
    AND.io.op2 := ImmOpr2Sel.io.ImmOp2Sel_output
    

    //AluOutput
    AluOutput.io.AluCtrl := Controler.io.AluCtrl
    io.Ctrltest := AluOutput.io.AluCtrl
    AluOutput.io.AddRes := ADD.io.result
    AluOutput.io.SubRes := SUB.io.result
    AluOutput.io.AndRes := AND.io.result
    AluOutput.io.OrRes := OR.io.result

    io.Dataout := AluOutput.io.output

    //DataMemory

    val AluoutUint = Wire(SInt(32.W))
    AluoutUint := AluOutput.io.output
    DataMemory.io.MemWrite := Controler.io.MemWrite
    DataMemory.io.ReadAddr := AluoutUint.asUInt 
    DataMemory.io.dataSin := OPR2read.io.datas2out 

    //ResultSel
    //ResultSel.io.opcode := IMemory.io.instruction(6,0) // this should be sent to control unit
    ResultSel.io.ResSrc := Controler.io.ResSrc
    ResultSel.io.ReadData := DataMemory.io.ReadData
    ResultSel.io.AluRes := AluOutput.io.output  // output should be named ALURES
    ResultSel.io.nextPcAddr := PcInc.io.IPInc_out
    //
    RegisterFile.io.datawr := ResultSel.io.Result
    //io.input1 := RegisterFile.io.datawr
    //pcinc
    PcInc.io.IPInc_in := Pc.io.IP_out // maybe err here
    
    //pc cntrl
    PcCtrl.io.IP_incremented := PcInc.io.IPInc_out
    PcCtrl.io.IP_Branched := BrTarget.io.B_output
    PcCtrl.io.IP_Jumped := Jump.io.J_output

    Pc.io.IP_in := PcCtrl.io.IP
    //PcCtrl.io.IP_Jumped 
    //Wresult
   
    //WRresult.io.addrwrin := IMemory.io.instruction(11,7)
    //WRresult.io.resultin := AluOutput.io.output 

    //RegisterFile.io.addrwr := WRresult.io.addrwrout
    //RegisterFile.io.WE := true.B
    //RegisterFile.io.datawr := WRresult.io.resultout //this is a bug -- clock issues 
    //test
    //WRresult.io.WE := true.B
    
    //io.output := ADD.io.result
    //io.input3 := Controler.io.AluCtrl //3
    //io.input4 := RegisterFile.io.datawr // 20
    //io.input4 := ImmOpr2Sel.io.ImmOp2Sel_output // 3
    //io.input5 := DataMemory.io.dataSin // 5
    //io.input6 := DataMemory.io.ReadAddr //9
    //io.output := DataMemory.io.ReadData
    //io.output := Pc.io.IP_in
    //io.input3 := OperationSel.io.operation
    //io.output := RegisterFile.io.wrtest //this is a bug -- clock issues
    //io.input5 := RegisterFile.io.WE
}
object Main extends App {
  (new ChiselStage).emitVerilog(new Main)
}