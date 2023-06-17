circuit ADD :
  module ADD :
    input clock : Clock
    input reset : UInt<1>
    output io : { flip op1 : SInt<32>, flip op2 : SInt<32>, result : SInt<32>}

    node _io_result_T = add(io.op1, io.op2) @[ADD.scala 17:23]
    node _io_result_T_1 = tail(_io_result_T, 1) @[ADD.scala 17:23]
    node _io_result_T_2 = asSInt(_io_result_T_1) @[ADD.scala 17:23]
    io.result <= _io_result_T_2 @[ADD.scala 17:13]

