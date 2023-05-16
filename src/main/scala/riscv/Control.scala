package riscv 
import chisel3._
import chisel3.util._

class Control extends Module {
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



        
    })
    val operation = UInt(3.W)
    switch (io.opcode){
        is ("b0110011".U){ //R instructions
            io.RegWrite := true.B
            io.MemWrite := false.B
            //io.ImmSrc := 
            io.AluSrc := false.B
            io.ResSrc := true.B
            operation := "b000".U
        }
        is ("b0010011".U ){ //I instructions
            io.RegWrite := true.B
            io.MemWrite := false.B
            io.ImmSrc := "b00".U
            io.AluSrc := true.B
            io.ResSrc := true.B
            operation := "b001".U
        }
        is ("b0000011".U ){ //I Load instructions
            io.RegWrite := true.B
            io.MemWrite := false.B
            io.ImmSrc := "b01".U
            io.AluSrc := true.B
            io.ResSrc := true.B
            operation := "b010".U
        }
        is ("b0100011".U ){ //S instructions
            io.RegWrite := false.B
            io.MemWrite := true.B
            io.ImmSrc := "b10".U
            io.AluSrc := true.B
            //io.ResSrc := true.B
            operation := "b010".U
        }
    }

    when(operation === "b000" && funct3 === "b000" && funct7 === "b0000000"){
        io.AluCtrl := "b000" //add
    }
    .elsewhen(operation === "b000" && funct3 === "b000" && funct7 === "b0100000"){
        io.AluCtrl := "b001" //sub
    }
    .elsewhen(operation === "b000" && funct3 === "b111" && funct7 === "b0000000"){
        io.AluCtrl := "b010" //And
    }
    .elsewhen(operation === "b000" && funct3 === "b110" && funct7 === "b0000000"){
        io.AluCtrl := "b011" //or
    }
    .elsewhen(operation === "b001" && funct3 === "b000"){//addi
        io.AluCtrl := "b000" //add
    }
    .elsewhen(operation === "b001" && funct3 === "b111"){//Andi
        io.AluCtrl := "b010" //And
    }
    .elsewhen(operation === "b010" && funct3 === "b110"){
        io.AluCtrl := "b000" //add
    }
    .elsewhen(operation === "b010" && funct3 === "b110"){
        io.AluCtrl := "b000" //add
    }

}