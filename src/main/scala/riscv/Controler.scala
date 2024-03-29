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
        val ResSrc = Output(UInt(2.W))
        val Br = Output(Bool())
        val AluCtrl = Output(UInt(3.W))
        val operation = Output(UInt(3.W))
        val BrCtrl = Output(UInt(5.W))
        val JmpCtrl = Output(UInt(2.W))
        val PcCtrl = Output(UInt(3.W))


        
    })
    
    io.RegWrite := false.B
    io.MemWrite := false.B
    io.ImmSrc := "b00".U //doesnt matter
    io.AluSrc := false.B
    io.ResSrc := "b00".U
    io.Br := false.B
    io.operation := "b000".U
    io.PcCtrl := "b000".U
    switch (io.opcode){
        is ("b0110011".U){ //R instructions
            io.RegWrite := true.B
            io.MemWrite := false.B
            io.ImmSrc := "b00".U //doesnt matter
            io.AluSrc := false.B
            io.ResSrc := "b00".U
            io.Br := false.B
            io.operation := "b000".U
            io.PcCtrl := "b000".U
        }
        is ("b0010011".U ){ //I instructions
            io.RegWrite := true.B
            io.MemWrite := false.B
            io.ImmSrc := "b00".U
            io.AluSrc := true.B
            io.ResSrc := "b00".U
            io.Br := false.B
            io.operation := "b001".U
            io.PcCtrl := "b000".U
        }
        is ("b0000011".U ){ //I Load instructions
            io.RegWrite := true.B
            io.MemWrite := false.B
            io.ImmSrc := "b00".U
            io.AluSrc := true.B
            io.ResSrc := "b01".U
            io.Br := false.B
            io.operation := "b010".U
            io.PcCtrl := "b000".U
        }
        is ("b0100011".U ){ //S instructions
            io.RegWrite := false.B
            io.MemWrite := true.B
            io.ImmSrc := "b01".U
            io.AluSrc := true.B
            io.ResSrc := "b00".U //doesnt matter 
            io.Br := false.B
            io.operation := "b010".U
            io.PcCtrl := "b000".U
        }
        is ("b1100011".U ){ //B instructions
            io.RegWrite := false.B
            io.MemWrite := false.B
            io.ImmSrc := "b10".U
            io.AluSrc := false.B //doesnt matter
            io.ResSrc := "b00".U //doesnt matter
            io.Br := true.B
            io.operation := "b011".U
            io.PcCtrl := "b001".U
        }
        is ("b1101111".U ){ //jal instructions
            io.RegWrite := true.B
            io.MemWrite := false.B
            io.ImmSrc := "b11".U
            io.AluSrc := false.B //doesnt matter
            io.ResSrc := "b10".U // needs to change
            io.Br := false.B
            io.operation := "b100".U
            io.PcCtrl := "b010".U 
        }
        is ("b1100111".U ){ //jalR instructions
            io.RegWrite := true.B
            io.MemWrite := false.B
            io.ImmSrc := "b00".U
            io.AluSrc := false.B //doesnt matter
            io.ResSrc := "b10".U // needs to change
            io.Br := false.B
            io.operation := "b101".U
            io.PcCtrl := "b010".U 
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
    .elsewhen(io.operation === "b010".U && io.funct3 === "b010".U){//load repitition
        io.AluCtrl := "b000".U //add
    }
    .otherwise {
        io.AluCtrl := 4.U //err
    }

    when(io.operation === "b011".U && io.funct3 === "b000".U){
        io.BrCtrl := "b10000".U //beq
    }
    .elsewhen(io.operation === "b011".U && io.funct3 === "b001".U){
        io.BrCtrl := "b10001".U //bne
    }
    .elsewhen(io.operation === "b011".U && io.funct3 === "b100".U){
        io.BrCtrl := "b10100".U //blt
    }
    .elsewhen(io.operation === "b011".U && io.funct3 === "b101".U){
        io.BrCtrl := "b10101".U //bge
    }
    .elsewhen(io.operation === "b011".U && io.funct3 === "b110".U){
        io.BrCtrl := "b10110".U //bltu
    }
    .elsewhen(io.operation === "b011".U && io.funct3 === "b111".U){
        io.BrCtrl := "b10111".U //gue
    }
    .otherwise{io.BrCtrl := 26.U //err
    }

    when(io.operation === "b100".U) { //jal
        io.JmpCtrl := "b00".U
    }.elsewhen(io.operation === "b101".U && io.funct3 === "b000".U){ //jalR
        io.JmpCtrl := "b01".U
    }
    .otherwise{io.JmpCtrl := 26.U //err 
    }


}