package riscv 
import chisel3._
import chisel3.util._
import chisel3.stage.ChiselStage

class Imm extends Module {
    val io = IO(new Bundle {
        //val Imm_Itype = Input(UInt(32.W))
        val ImmSrc = Input(UInt(2.W))
        val instruction = Input(UInt(32.W))
        val Imm_Itype_out = Output(SInt(32.W))
        //val Imm_Stype = Wire(SInt(32.W))
        val Imm_Btype_out = Output(SInt(32.W))
        val Imm_Jtype_out = Output(SInt(32.W))
        val Imm_output = Output(SInt(32.W))

        
    })
    val Stype = Wire(SInt(32.W))
    val Btype = Wire(SInt(32.W))
    val Jtype = Wire(SInt(32.W))

    val Imm_Itype = Wire(SInt(32.W))
    val Imm_Stype = Wire(SInt(32.W))
    val Imm_Btype = Wire(SInt(32.W))
    val Imm_Jtype = Wire(SInt(32.W))
    //Itype := IMemory.io.instruction(31,20)
    Stype := Cat(io.instruction(31,25),io.instruction(11,7)).asSInt
    Btype :=  Cat(io.instruction(31),io.instruction(7),io.instruction(30,25),io.instruction(11,8)).asSInt
    Jtype := Cat(io.instruction(31),io.instruction(19,12),io.instruction(20),io.instruction(30,21)).asSInt

    Imm_Itype := (Cat(Fill(20,io.instruction(31)),io.instruction(31,20))).asSInt
    Imm_Stype := (Cat(Fill(20,Stype(11)),Stype)).asSInt
    Imm_Btype := (Cat(Fill(19,io.instruction(31)),Btype)).asSInt
    Imm_Jtype := (Cat(Fill(12,Jtype(20)),Jtype)).asSInt
    
    io.Imm_Btype_out := Imm_Btype
    io.Imm_Jtype_out := Imm_Jtype
    io.Imm_Itype_out := Imm_Itype

    when (io.ImmSrc === "b00".U){
        io.Imm_output := Imm_Itype
    }.elsewhen (io.ImmSrc === "b01".U ){
        io.Imm_output := Imm_Stype
    }.elsewhen (io.ImmSrc === "b10".U ){
        io.Imm_output := Imm_Btype
    }.elsewhen (io.ImmSrc === "b11".U ){
        io.Imm_output := Imm_Jtype
    }.otherwise {
        io.Imm_output := 20.S// 20 is code err
    }
 
    
}
object Imm extends App {
  (new ChiselStage).emitVerilog(new Imm)
}