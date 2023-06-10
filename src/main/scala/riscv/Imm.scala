package riscv 
import chisel3._
import chisel3.util._

class Imm extends Module {
    val io = IO(new Bundle {
        val ImmSrc = Input(UInt(2.W))
        val Imm_Itype = Input(SInt(32.W))
        val Imm_Stype = Input(SInt(32.W))
        val Imm_Btype = Input(SInt(32.W))
        val Imm_Jtype = Input(SInt(32.W))
        val Imm_output = Output(SInt(32.W))

        //val istest = Output(UInt(32.W))

        //val Imm_Itypetest = Output(SInt(32.W))  
        
        //val immtest = Output(UInt(32.W))
        //val test = Output(SInt(12.W))
        //val extendedImmediate = Output(SInt(32.W))
    })
    //val Memory = Mem ( 32 , UInt ( 32.W ) )
    //Memory.write(0.U,"b100000000010_00001_000_00011_0010011".U)//addi x3,x1,1
    //io.istest := Memory(0)//00000000000
    //io.Imm_Itypetest := (Cat(Fill(20,io.istest(31)),io.istest(31,20))).asSInt
    //io.extendedImmediate := io.Imm_Itypetest.asSInt()
    //io.extendedImmediate :=  (~io.Imm_Itypetest.asUInt() + 1.U).asSInt()
    //val test = Wire(UInt(32.W))
    //test := io.Imm_Itypetest
    //io.immtest := io.extendedImmediate
    //io.test :="b11111111110".U.asSInt//"b11111111110"
    //io.test := -2.S
//"b11111111110"
    //io.immtest := -2.S
    when (io.ImmSrc === "b00".U){
        io.Imm_output := io.Imm_Itype
    }.elsewhen (io.ImmSrc === "b01".U ){
        io.Imm_output := io.Imm_Stype
    }.elsewhen (io.ImmSrc === "b10".U ){
        io.Imm_output := io.Imm_Btype
    }.elsewhen (io.ImmSrc === "b11".U ){
        io.Imm_output := io.Imm_Jtype
    }.otherwise {
        io.Imm_output := 20.S// 20 is code err
    }
 
    
}