package riscv 
import chisel3._ 
import chisel3.util._

class Branch extends Module {
    val io = IO(new Bundle {
        val BrCtrl = Input(UInt(3.W))
        val Br = Input(Bool())
        val Datas1 = Input(UInt(32.W))
        val Datas2 = Input(UInt(32.W))
        val Br_up = Output(Bool())
    })
    val sig = Wire(Bool())
    sig := false.B
    switch(io.BrCtrl){
        is("b10000".U){sig:=io.Datas1 === io.Datas2} //equal
        is("b10001".U){sig:=io.Datas1 =/= io.Datas2} //not equal
        is("b10100".U){sig:=io.Datas1<=io.Datas2} //lesser equal
        is("b10101".U){sig:=io.Datas1>=io.Datas2 }// greater equal
        is("b10110".U){sig:=io.Datas1<io.Datas2} //lesser than unsign
        is("b10111".U){sig:=io.Datas1>io.Datas2} //greater than unsign
    }

    io.Br_up := io.Br & sig //pcsrc
}