circuit Main :
  module Controler :
    input clock : Clock
    input reset : Reset
    output io : { flip opcode : UInt<7>, flip funct3 : UInt<3>, flip funct7 : UInt<7>, RegWrite : UInt<1>, MemWrite : UInt<1>, ImmSrc : UInt<2>, AluSrc : UInt<1>, ResSrc : UInt<1>, AluCtrl : UInt<3>, operation : UInt<3>}

    io.RegWrite <= UInt<1>("h0") @[Controler.scala 24:17]
    io.MemWrite <= UInt<1>("h0") @[Controler.scala 25:17]
    io.ImmSrc <= UInt<1>("h0") @[Controler.scala 26:15]
    io.AluSrc <= UInt<1>("h0") @[Controler.scala 27:15]
    io.ResSrc <= UInt<1>("h0") @[Controler.scala 28:15]
    io.operation <= UInt<1>("h0") @[Controler.scala 29:18]
    node _T = eq(UInt<6>("h33"), io.opcode) @[Controler.scala 30:23]
    when _T : @[Controler.scala 30:23]
      io.RegWrite <= UInt<1>("h1") @[Controler.scala 32:25]
      io.MemWrite <= UInt<1>("h0") @[Controler.scala 33:25]
      io.ImmSrc <= UInt<1>("h0") @[Controler.scala 34:23]
      io.AluSrc <= UInt<1>("h0") @[Controler.scala 35:23]
      io.ResSrc <= UInt<1>("h1") @[Controler.scala 36:23]
      io.operation <= UInt<1>("h0") @[Controler.scala 37:26]
    else :
      node _T_1 = eq(UInt<5>("h13"), io.opcode) @[Controler.scala 30:23]
      when _T_1 : @[Controler.scala 30:23]
        io.RegWrite <= UInt<1>("h1") @[Controler.scala 40:25]
        io.MemWrite <= UInt<1>("h0") @[Controler.scala 41:25]
        io.ImmSrc <= UInt<1>("h0") @[Controler.scala 42:23]
        io.AluSrc <= UInt<1>("h1") @[Controler.scala 43:23]
        io.ResSrc <= UInt<1>("h1") @[Controler.scala 44:23]
        io.operation <= UInt<1>("h1") @[Controler.scala 45:26]
      else :
        node _T_2 = eq(UInt<2>("h3"), io.opcode) @[Controler.scala 30:23]
        when _T_2 : @[Controler.scala 30:23]
          io.RegWrite <= UInt<1>("h1") @[Controler.scala 48:25]
          io.MemWrite <= UInt<1>("h0") @[Controler.scala 49:25]
          io.ImmSrc <= UInt<1>("h0") @[Controler.scala 50:23]
          io.AluSrc <= UInt<1>("h1") @[Controler.scala 51:23]
          io.ResSrc <= UInt<1>("h1") @[Controler.scala 52:23]
          io.operation <= UInt<2>("h2") @[Controler.scala 53:26]
        else :
          node _T_3 = eq(UInt<6>("h23"), io.opcode) @[Controler.scala 30:23]
          when _T_3 : @[Controler.scala 30:23]
            io.RegWrite <= UInt<1>("h0") @[Controler.scala 56:25]
            io.MemWrite <= UInt<1>("h1") @[Controler.scala 57:25]
            io.ImmSrc <= UInt<1>("h1") @[Controler.scala 58:23]
            io.AluSrc <= UInt<1>("h1") @[Controler.scala 59:23]
            io.ResSrc <= UInt<1>("h1") @[Controler.scala 60:23]
            io.operation <= UInt<2>("h2") @[Controler.scala 61:26]
    node _T_4 = eq(io.operation, UInt<1>("h0")) @[Controler.scala 65:23]
    node _T_5 = eq(io.funct3, UInt<1>("h0")) @[Controler.scala 65:49]
    node _T_6 = and(_T_4, _T_5) @[Controler.scala 65:36]
    node _T_7 = eq(io.funct7, UInt<1>("h0")) @[Controler.scala 65:75]
    node _T_8 = and(_T_6, _T_7) @[Controler.scala 65:62]
    when _T_8 : @[Controler.scala 65:92]
      io.AluCtrl <= UInt<1>("h0") @[Controler.scala 66:20]
    else :
      node _T_9 = eq(io.operation, UInt<1>("h0")) @[Controler.scala 68:28]
      node _T_10 = eq(io.funct3, UInt<1>("h0")) @[Controler.scala 68:54]
      node _T_11 = and(_T_9, _T_10) @[Controler.scala 68:41]
      node _T_12 = eq(io.funct7, UInt<6>("h20")) @[Controler.scala 68:80]
      node _T_13 = and(_T_11, _T_12) @[Controler.scala 68:67]
      when _T_13 : @[Controler.scala 68:97]
        io.AluCtrl <= UInt<1>("h1") @[Controler.scala 69:20]
      else :
        node _T_14 = eq(io.operation, UInt<1>("h0")) @[Controler.scala 71:28]
        node _T_15 = eq(io.funct3, UInt<3>("h7")) @[Controler.scala 71:54]
        node _T_16 = and(_T_14, _T_15) @[Controler.scala 71:41]
        node _T_17 = eq(io.funct7, UInt<1>("h0")) @[Controler.scala 71:80]
        node _T_18 = and(_T_16, _T_17) @[Controler.scala 71:67]
        when _T_18 : @[Controler.scala 71:97]
          io.AluCtrl <= UInt<2>("h2") @[Controler.scala 72:20]
        else :
          node _T_19 = eq(io.operation, UInt<1>("h0")) @[Controler.scala 74:28]
          node _T_20 = eq(io.funct3, UInt<3>("h6")) @[Controler.scala 74:54]
          node _T_21 = and(_T_19, _T_20) @[Controler.scala 74:41]
          node _T_22 = eq(io.funct7, UInt<1>("h0")) @[Controler.scala 74:80]
          node _T_23 = and(_T_21, _T_22) @[Controler.scala 74:67]
          when _T_23 : @[Controler.scala 74:97]
            io.AluCtrl <= UInt<2>("h3") @[Controler.scala 75:20]
          else :
            node _T_24 = eq(io.operation, UInt<1>("h1")) @[Controler.scala 77:28]
            node _T_25 = eq(io.funct3, UInt<1>("h0")) @[Controler.scala 77:54]
            node _T_26 = and(_T_24, _T_25) @[Controler.scala 77:41]
            when _T_26 : @[Controler.scala 77:67]
              io.AluCtrl <= UInt<1>("h0") @[Controler.scala 78:20]
            else :
              node _T_27 = eq(io.operation, UInt<1>("h1")) @[Controler.scala 80:28]
              node _T_28 = eq(io.funct3, UInt<3>("h7")) @[Controler.scala 80:54]
              node _T_29 = and(_T_27, _T_28) @[Controler.scala 80:41]
              when _T_29 : @[Controler.scala 80:67]
                io.AluCtrl <= UInt<2>("h2") @[Controler.scala 81:20]
              else :
                node _T_30 = eq(io.operation, UInt<2>("h2")) @[Controler.scala 83:28]
                node _T_31 = eq(io.funct3, UInt<2>("h2")) @[Controler.scala 83:54]
                node _T_32 = and(_T_30, _T_31) @[Controler.scala 83:41]
                when _T_32 : @[Controler.scala 83:67]
                  io.AluCtrl <= UInt<1>("h0") @[Controler.scala 84:20]
                else :
                  node _T_33 = eq(io.operation, UInt<2>("h2")) @[Controler.scala 86:28]
                  node _T_34 = eq(io.funct3, UInt<2>("h2")) @[Controler.scala 86:54]
                  node _T_35 = and(_T_33, _T_34) @[Controler.scala 86:41]
                  when _T_35 : @[Controler.scala 86:67]
                    io.AluCtrl <= UInt<1>("h0") @[Controler.scala 87:20]
                  else :
                    io.AluCtrl <= UInt<3>("h4") @[Controler.scala 90:20]

  module RegisterFile :
    input clock : Clock
    input reset : Reset
    output io : { flip addr1 : UInt<5>, data1 : UInt<32>, flip addr2 : UInt<5>, data2 : UInt<32>, flip addrwr : UInt<5>, flip datawr : UInt<32>, flip RegWrite : UInt<1>, wrtest : UInt<32>}

    cmem registers : UInt<32> [32] @[RegisterFile.scala 22:24]
    write mport MPORT = registers[io.addrwr], clock
    MPORT <= io.datawr
    infer mport io_wrtest_MPORT = registers[UInt<2>("h3")], clock @[RegisterFile.scala 26:31]
    io.wrtest <= io_wrtest_MPORT @[RegisterFile.scala 26:19]
    write mport MPORT_1 = registers[UInt<1>("h0")], clock
    MPORT_1 <= UInt<4>("h9")
    write mport MPORT_2 = registers[UInt<1>("h1")], clock
    MPORT_2 <= UInt<3>("h6")
    write mport MPORT_3 = registers[UInt<2>("h2")], clock
    MPORT_3 <= UInt<3>("h5")
    infer mport io_data1_MPORT = registers[io.addr1], clock @[RegisterFile.scala 40:26]
    io.data1 <= io_data1_MPORT @[RegisterFile.scala 40:14]
    infer mport io_data2_MPORT = registers[io.addr2], clock @[RegisterFile.scala 41:26]
    io.data2 <= io_data2_MPORT @[RegisterFile.scala 41:14]

  module IMemory :
    input clock : Clock
    input reset : Reset
    output io : { flip IP_in : UInt<32>, instruction : UInt<32>}

    cmem Memory : UInt<32> [32] @[IMemory.scala 16:22]
    write mport MPORT = Memory[UInt<1>("h0")], clock
    MPORT <= UInt<22>("h2081b3")
    write mport MPORT_1 = Memory[UInt<1>("h1")], clock
    MPORT_1 <= UInt<31>("h402081b3")
    write mport MPORT_2 = Memory[UInt<2>("h2")], clock
    MPORT_2 <= UInt<22>("h20f1b3")
    write mport MPORT_3 = Memory[UInt<2>("h3")], clock
    MPORT_3 <= UInt<22>("h20e1b3")
    write mport MPORT_4 = Memory[UInt<3>("h4")], clock
    MPORT_4 <= UInt<22>("h208193")
    write mport MPORT_5 = Memory[UInt<3>("h5")], clock
    MPORT_5 <= UInt<23>("h50a183")
    write mport MPORT_6 = Memory[UInt<3>("h6")], clock
    MPORT_6 <= UInt<22>("h20a1a3")
    node _io_instruction_T = bits(io.IP_in, 4, 0) @[IMemory.scala 34:29]
    infer mport io_instruction_MPORT = Memory[_io_instruction_T], clock @[IMemory.scala 34:29]
    io.instruction <= io_instruction_MPORT @[IMemory.scala 34:20]

  module OPR1read :
    input clock : Clock
    input reset : Reset
    output io : { flip addrs1in : UInt<5>, flip datas1in : UInt<32>, addrs1out : UInt<5>, datas1out : UInt<32>}

    wire OPR1addr1 : UInt<5> @[OPR1read.scala 14:25]
    wire OPR1data1 : UInt<32> @[OPR1read.scala 15:25]
    OPR1addr1 <= io.addrs1in @[OPR1read.scala 16:15]
    OPR1data1 <= io.datas1in @[OPR1read.scala 17:15]
    io.addrs1out <= OPR1addr1 @[OPR1read.scala 19:18]
    io.datas1out <= OPR1data1 @[OPR1read.scala 20:18]

  module OPR2read :
    input clock : Clock
    input reset : Reset
    output io : { flip addrs2in : UInt<5>, flip datas2in : UInt<32>, addrs2out : UInt<5>, datas2out : UInt<32>}

    wire OPR2addr2 : UInt<5> @[OPR2read.scala 22:25]
    wire OPR2data2 : UInt<32> @[OPR2read.scala 23:25]
    OPR2addr2 <= io.addrs2in @[OPR2read.scala 25:15]
    OPR2data2 <= io.datas2in @[OPR2read.scala 26:15]
    io.addrs2out <= OPR2addr2 @[OPR2read.scala 28:18]
    io.datas2out <= OPR2data2 @[OPR2read.scala 29:18]

  module Imm :
    input clock : Clock
    input reset : Reset
    output io : { flip ImmSrc : UInt<2>, flip Imm_Itype : UInt<32>, flip Imm_Stype : UInt<32>, Imm_output : UInt<32>}

    node _T = eq(io.ImmSrc, UInt<1>("h0")) @[Imm.scala 14:21]
    when _T : @[Imm.scala 14:33]
      io.Imm_output <= io.Imm_Itype @[Imm.scala 15:23]
    else :
      node _T_1 = eq(io.ImmSrc, UInt<1>("h1")) @[Imm.scala 16:27]
      when _T_1 : @[Imm.scala 16:40]
        io.Imm_output <= io.Imm_Stype @[Imm.scala 17:23]
      else :
        io.Imm_output <= UInt<5>("h14") @[Imm.scala 19:23]

  module ImmOpr2Sel :
    input clock : Clock
    input reset : Reset
    output io : { flip AluSrc : UInt<1>, flip Opr2_input : UInt<32>, flip Imm_input : UInt<32>, ImmOp2Sel_output : UInt<32>}

    when io.AluSrc : @[ImmOpr2Sel.scala 14:21]
      io.ImmOp2Sel_output <= io.Imm_input @[ImmOpr2Sel.scala 15:29]
    else :
      io.ImmOp2Sel_output <= io.Opr2_input @[ImmOpr2Sel.scala 18:29]

  module ADD :
    input clock : Clock
    input reset : Reset
    output io : { flip op1 : UInt<32>, flip op2 : UInt<32>, result : UInt<32>}

    node _io_result_T = add(io.op1, io.op2) @[ADD.scala 16:23]
    node _io_result_T_1 = tail(_io_result_T, 1) @[ADD.scala 16:23]
    io.result <= _io_result_T_1 @[ADD.scala 16:13]

  module SUB :
    input clock : Clock
    input reset : Reset
    output io : { flip op1 : UInt<32>, flip op2 : UInt<32>, result : UInt<32>}

    node _io_result_T = sub(io.op1, io.op2) @[SUB.scala 16:23]
    node _io_result_T_1 = tail(_io_result_T, 1) @[SUB.scala 16:23]
    io.result <= _io_result_T_1 @[SUB.scala 16:13]

  module AND :
    input clock : Clock
    input reset : Reset
    output io : { flip op1 : UInt<32>, flip op2 : UInt<32>, result : UInt<32>}

    node _io_result_T = and(io.op1, io.op2) @[AND.scala 16:23]
    io.result <= _io_result_T @[AND.scala 16:13]

  module OR :
    input clock : Clock
    input reset : Reset
    output io : { flip op1 : UInt<32>, flip op2 : UInt<32>, result : UInt<32>}

    node _io_result_T = or(io.op1, io.op2) @[OR.scala 16:23]
    io.result <= _io_result_T @[OR.scala 16:13]

  module AluOutput :
    input clock : Clock
    input reset : Reset
    output io : { flip AddRes : UInt<32>, flip SubRes : UInt<32>, flip AndRes : UInt<32>, flip OrRes : UInt<32>, output : UInt<32>, flip AluCtrl : UInt<3>}

    node _T = eq(io.AluCtrl, UInt<1>("h0")) @[AluOutput.scala 15:22]
    when _T : @[AluOutput.scala 15:36]
      io.output <= io.AddRes @[AluOutput.scala 16:19]
    else :
      node _T_1 = eq(io.AluCtrl, UInt<1>("h1")) @[AluOutput.scala 17:32]
      when _T_1 : @[AluOutput.scala 17:45]
        io.output <= io.SubRes @[AluOutput.scala 18:19]
      else :
        node _T_2 = eq(io.AluCtrl, UInt<2>("h2")) @[AluOutput.scala 19:32]
        when _T_2 : @[AluOutput.scala 19:46]
          io.output <= io.AndRes @[AluOutput.scala 20:19]
        else :
          node _T_3 = eq(io.AluCtrl, UInt<2>("h3")) @[AluOutput.scala 21:32]
          when _T_3 : @[AluOutput.scala 21:45]
            io.output <= io.OrRes @[AluOutput.scala 22:19]
          else :
            io.output <= UInt<1>("h0") @[AluOutput.scala 24:19]

  module DataMemory :
    input clock : Clock
    input reset : Reset
    output io : { flip dataSin : UInt<32>, flip ReadAddr : UInt<32>, ReadData : UInt<32>, flip MemWrite : UInt<1>}

    cmem DMemory : UInt<32> [1024] @[DataMemory.scala 13:22]
    write mport MPORT = DMemory[UInt<1>("h0")], clock
    MPORT <= UInt<5>("h13")
    write mport MPORT_1 = DMemory[UInt<1>("h1")], clock
    MPORT_1 <= UInt<4>("h9")
    write mport MPORT_2 = DMemory[UInt<2>("h2")], clock
    MPORT_2 <= UInt<4>("h9")
    write mport MPORT_3 = DMemory[UInt<2>("h3")], clock
    MPORT_3 <= UInt<4>("h9")
    write mport MPORT_4 = DMemory[UInt<3>("h4")], clock
    MPORT_4 <= UInt<4>("h9")
    write mport MPORT_5 = DMemory[UInt<3>("h5")], clock
    MPORT_5 <= UInt<4>("h9")
    write mport MPORT_6 = DMemory[UInt<3>("h6")], clock
    MPORT_6 <= UInt<4>("h9")
    write mport MPORT_7 = DMemory[UInt<3>("h7")], clock
    MPORT_7 <= UInt<4>("h9")
    write mport MPORT_8 = DMemory[UInt<4>("h8")], clock
    MPORT_8 <= UInt<4>("h9")
    write mport MPORT_9 = DMemory[UInt<4>("h9")], clock
    MPORT_9 <= UInt<4>("h9")
    write mport MPORT_10 = DMemory[UInt<4>("ha")], clock
    MPORT_10 <= UInt<5>("h14")
    write mport MPORT_11 = DMemory[UInt<4>("hb")], clock
    MPORT_11 <= UInt<5>("h14")
    write mport MPORT_12 = DMemory[UInt<4>("hc")], clock
    MPORT_12 <= UInt<4>("h9")
    write mport MPORT_13 = DMemory[UInt<4>("hd")], clock
    MPORT_13 <= UInt<4>("h9")
    write mport MPORT_14 = DMemory[UInt<4>("he")], clock
    MPORT_14 <= UInt<4>("h9")
    node _T = bits(io.ReadAddr, 9, 0) @[DataMemory.scala 31:12]
    infer mport MPORT_15 = DMemory[_T], clock @[DataMemory.scala 31:12]
    MPORT_15 <= io.dataSin @[DataMemory.scala 31:26]
    node _io_ReadData_T = bits(io.ReadAddr, 9, 0) @[DataMemory.scala 33:27]
    infer mport io_ReadData_MPORT = DMemory[_io_ReadData_T], clock @[DataMemory.scala 33:27]
    io.ReadData <= io_ReadData_MPORT @[DataMemory.scala 33:17]

  module ResultSel :
    input clock : Clock
    input reset : Reset
    output io : { flip ResSrc : UInt<1>, flip AluRes : UInt<32>, flip ReadData : UInt<32>, Result : UInt<32>}

    when io.ResSrc : @[ResultSel.scala 16:21]
      io.Result <= io.AluRes @[ResultSel.scala 17:19]
    else :
      io.Result <= io.ReadData @[ResultSel.scala 19:19]

  module Main :
    input clock : Clock
    input reset : UInt<1>
    output io : { flip input : UInt<32>, input1 : UInt<5>, input2 : UInt<5>, input3 : UInt<5>, input4 : UInt<32>, input5 : UInt<32>, input6 : UInt<32>}

    inst Controler of Controler @[Main.scala 26:27]
    Controler.clock <= clock
    Controler.reset <= reset
    inst RegisterFile of RegisterFile @[Main.scala 27:30]
    RegisterFile.clock <= clock
    RegisterFile.reset <= reset
    inst IMemory of IMemory @[Main.scala 28:25]
    IMemory.clock <= clock
    IMemory.reset <= reset
    inst OPR1read of OPR1read @[Main.scala 29:27]
    OPR1read.clock <= clock
    OPR1read.reset <= reset
    inst OPR2read of OPR2read @[Main.scala 30:27]
    OPR2read.clock <= clock
    OPR2read.reset <= reset
    inst Imm of Imm @[Main.scala 31:21]
    Imm.clock <= clock
    Imm.reset <= reset
    inst ImmOpr2Sel of ImmOpr2Sel @[Main.scala 32:28]
    ImmOpr2Sel.clock <= clock
    ImmOpr2Sel.reset <= reset
    inst ADD of ADD @[Main.scala 35:21]
    ADD.clock <= clock
    ADD.reset <= reset
    inst SUB of SUB @[Main.scala 36:21]
    SUB.clock <= clock
    SUB.reset <= reset
    inst AND of AND @[Main.scala 37:21]
    AND.clock <= clock
    AND.reset <= reset
    inst OR of OR @[Main.scala 38:20]
    OR.clock <= clock
    OR.reset <= reset
    inst AluOutput of AluOutput @[Main.scala 40:27]
    AluOutput.clock <= clock
    AluOutput.reset <= reset
    inst DataMemory of DataMemory @[Main.scala 41:28]
    DataMemory.clock <= clock
    DataMemory.reset <= reset
    inst ResultSel of ResultSel @[Main.scala 42:27]
    ResultSel.clock <= clock
    ResultSel.reset <= reset
    IMemory.io.IP_in <= io.input @[Main.scala 50:22]
    node _Controler_io_opcode_T = bits(IMemory.io.instruction, 6, 0) @[Main.scala 55:50]
    Controler.io.opcode <= _Controler_io_opcode_T @[Main.scala 55:25]
    node _Controler_io_funct3_T = bits(IMemory.io.instruction, 14, 12) @[Main.scala 56:50]
    Controler.io.funct3 <= _Controler_io_funct3_T @[Main.scala 56:25]
    node _Controler_io_funct7_T = bits(IMemory.io.instruction, 31, 25) @[Main.scala 57:50]
    Controler.io.funct7 <= _Controler_io_funct7_T @[Main.scala 57:25]
    RegisterFile.io.RegWrite <= Controler.io.RegWrite @[Main.scala 60:30]
    node _RegisterFile_io_addrwr_T = bits(IMemory.io.instruction, 11, 7) @[Main.scala 61:53]
    RegisterFile.io.addrwr <= _RegisterFile_io_addrwr_T @[Main.scala 61:28]
    node _OPR1read_io_addrs1in_T = bits(IMemory.io.instruction, 19, 15) @[Main.scala 64:51]
    OPR1read.io.addrs1in <= _OPR1read_io_addrs1in_T @[Main.scala 64:26]
    RegisterFile.io.addr1 <= OPR1read.io.addrs1out @[Main.scala 65:27]
    OPR1read.io.datas1in <= RegisterFile.io.data1 @[Main.scala 66:26]
    io.input1 <= OPR1read.io.datas1in @[Main.scala 68:15]
    node _OPR2read_io_addrs2in_T = bits(IMemory.io.instruction, 24, 20) @[Main.scala 78:51]
    OPR2read.io.addrs2in <= _OPR2read_io_addrs2in_T @[Main.scala 78:26]
    RegisterFile.io.addr2 <= OPR2read.io.addrs2out @[Main.scala 79:27]
    OPR2read.io.datas2in <= RegisterFile.io.data2 @[Main.scala 80:26]
    io.input2 <= OPR2read.io.datas2in @[Main.scala 82:15]
    Imm.io.ImmSrc <= Controler.io.ImmSrc @[Main.scala 85:19]
    node _Imm_io_Imm_Itype_T = bits(IMemory.io.instruction, 31, 20) @[Main.scala 86:47]
    Imm.io.Imm_Itype <= _Imm_io_Imm_Itype_T @[Main.scala 86:22]
    node _Imm_io_Imm_Stype_T = bits(IMemory.io.instruction, 31, 25) @[Main.scala 87:51]
    node _Imm_io_Imm_Stype_T_1 = bits(IMemory.io.instruction, 11, 7) @[Main.scala 87:81]
    node _Imm_io_Imm_Stype_T_2 = cat(_Imm_io_Imm_Stype_T, _Imm_io_Imm_Stype_T_1) @[Cat.scala 31:58]
    Imm.io.Imm_Stype <= _Imm_io_Imm_Stype_T_2 @[Main.scala 87:22]
    ImmOpr2Sel.io.AluSrc <= Controler.io.AluSrc @[Main.scala 90:26]
    ImmOpr2Sel.io.Opr2_input <= OPR2read.io.datas2out @[Main.scala 91:30]
    ImmOpr2Sel.io.Imm_input <= Imm.io.Imm_output @[Main.scala 92:29]
    ADD.io.op1 <= OPR1read.io.datas1out @[Main.scala 96:16]
    ADD.io.op2 <= ImmOpr2Sel.io.ImmOp2Sel_output @[Main.scala 98:16]
    io.input5 <= ADD.io.op1 @[Main.scala 100:15]
    io.input6 <= ADD.io.op2 @[Main.scala 101:15]
    SUB.io.op1 <= OPR1read.io.datas1out @[Main.scala 103:16]
    SUB.io.op2 <= ImmOpr2Sel.io.ImmOp2Sel_output @[Main.scala 104:16]
    OR.io.op1 <= OPR1read.io.datas1out @[Main.scala 106:15]
    OR.io.op2 <= ImmOpr2Sel.io.ImmOp2Sel_output @[Main.scala 107:15]
    AND.io.op1 <= OPR1read.io.datas1out @[Main.scala 109:16]
    AND.io.op2 <= ImmOpr2Sel.io.ImmOp2Sel_output @[Main.scala 110:16]
    AluOutput.io.AluCtrl <= Controler.io.AluCtrl @[Main.scala 114:26]
    AluOutput.io.AddRes <= ADD.io.result @[Main.scala 115:25]
    AluOutput.io.SubRes <= SUB.io.result @[Main.scala 116:25]
    AluOutput.io.AndRes <= AND.io.result @[Main.scala 117:25]
    AluOutput.io.OrRes <= OR.io.result @[Main.scala 118:24]
    DataMemory.io.MemWrite <= Controler.io.MemWrite @[Main.scala 122:28]
    DataMemory.io.ReadAddr <= AluOutput.io.output @[Main.scala 123:28]
    DataMemory.io.dataSin <= OPR2read.io.datas2out @[Main.scala 124:27]
    ResultSel.io.ResSrc <= Controler.io.ResSrc @[Main.scala 128:25]
    ResultSel.io.ReadData <= DataMemory.io.ReadData @[Main.scala 129:27]
    ResultSel.io.AluRes <= AluOutput.io.output @[Main.scala 130:25]
    RegisterFile.io.datawr <= ResultSel.io.Result @[Main.scala 132:28]
    io.input3 <= Controler.io.AluCtrl @[Main.scala 146:15]
    io.input4 <= ImmOpr2Sel.io.ImmOp2Sel_output @[Main.scala 148:15]
    io.input5 <= DataMemory.io.dataSin @[Main.scala 149:15]
    io.input6 <= DataMemory.io.ReadAddr @[Main.scala 150:15]

