package riscv 
import chisel3._
import chisel3.util._

class Controler extends Module {
    val io = IO(new Bundle {
        val opcode = Input(UInt(7.W))
        val funct3 = Input(UInt(3.W))
        val funct7 = Input(UInt(7.W))

        val RegWrite = Output(Bool())
        val MemWrite = Output(Bool())
        val ImmSrc = Output(UInt(2.W))
        val AluSrc = Output(Bool())     
        val ResSrc = Output(Bool())

        val AluCtrl = Output(UInt(3.W))
        val operation = Output(UInt(3.W))


        
    })
    
    io.RegWrite := false.B
    io.MemWrite := false.B
    io.ImmSrc := "b00".U //doesnt matter
    io.AluSrc := false.B
    io.ResSrc := false.B
    io.operation := "b000".U
    switch (io.opcode){
        is ("b0110011".U){ //R instructions
            io.RegWrite := true.B
            io.MemWrite := false.B
            io.ImmSrc := "b00".U //doesnt matter
            io.AluSrc := false.B
            io.ResSrc := true.B
            io.operation := "b000".U
        }
        is ("b0010011".U ){ //I instructions
            io.RegWrite := true.B
            io.MemWrite := false.B
            io.ImmSrc := "b00".U
            io.AluSrc := true.B
            io.ResSrc := true.B
            io.operation := "b001".U
        }
        is ("b0000011".U ){ //I Load instructions
            io.RegWrite := true.B
            io.MemWrite := false.B
            io.ImmSrc := "b00".U
            io.AluSrc := true.B
            io.ResSrc := true.B
            io.operation := "b010".U
        }
        is ("b0100011".U ){ //S instructions
            io.RegWrite := false.B
            io.MemWrite := true.B
            io.ImmSrc := "b01".U
            io.AluSrc := true.B
            io.ResSrc := true.B //doesnt matter
            io.operation := "b010".U
        }
    }

    when(io.operation === "b000".U && io.funct3 === "b000".U && io.funct7 === "b0000000".U){
        io.AluCtrl := "b000".U //add
    }
    .elsewhen(io.operation === "b000".U && io.funct3 === "b000".U && io.funct7 === "b0100000".U){
        io.AluCtrl := "b001".U //sub
    }
    .elsewhen(io.operation === "b000".U && io.funct3 === "b111".U && io.funct7 === "b0000000".U){
        io.AluCtrl := "b010".U //And
    }
    .elsewhen(io.operation === "b000".U && io.funct3 === "b110".U && io.funct7 === "b0000000".U){
        io.AluCtrl := "b011".U //or
    }
    .elsewhen(io.operation === "b001".U && io.funct3 === "b000".U){//addi
        io.AluCtrl := "b000".U //add
    }
    .elsewhen(io.operation === "b001".U && io.funct3 === "b111".U){//Andi
        io.AluCtrl := "b010".U //And
    }
    .elsewhen(io.operation === "b010".U && io.funct3 === "b010".U){//store
        io.AluCtrl := "b000".U //add
    }
    .elsewhen(io.operation === "b010".U && io.funct3 === "b010".U){
        io.AluCtrl := "b000".U //add
    }
    .otherwise {
        io.AluCtrl := 4.U //err
    }

}