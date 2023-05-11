circuit Main :
  module RegisterFile :
    input clock : Clock
    input reset : Reset
    output io : { flip addr1 : UInt<5>, data1 : UInt<32>, flip addr2 : UInt<5>, data2 : UInt<32>, flip addrwr : UInt<5>, flip datawr : UInt<32>, wrtest : UInt<32>}

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

    cmem Memory : UInt<32> [32] @[IMemory.scala 15:22]
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
    node _io_instruction_T = bits(io.IP_in, 4, 0) @[IMemory.scala 29:29]
    infer mport io_instruction_MPORT = Memory[_io_instruction_T], clock @[IMemory.scala 29:29]
    io.instruction <= io_instruction_MPORT @[IMemory.scala 29:20]

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
    output io : { flip Imm_type : UInt<1>, flip R_type : UInt<1>, flip immin : UInt<32>, flip addrs2in : UInt<5>, flip datas2in : UInt<32>, addrs2out : UInt<5>, datas2out : UInt<32>}

    wire OPR2addr2 : UInt<5> @[OPR2read.scala 20:25]
    wire OPR2data2 : UInt<32> @[OPR2read.scala 21:25]
    OPR2addr2 <= io.addrs2in @[OPR2read.scala 23:15]
    OPR2data2 <= io.datas2in @[OPR2read.scala 24:15]
    io.addrs2out <= OPR2addr2 @[OPR2read.scala 26:18]
    when io.R_type : @[OPR2read.scala 27:20]
      io.datas2out <= OPR2data2 @[OPR2read.scala 28:18]
    else :
      when io.Imm_type : @[OPR2read.scala 29:28]
        io.datas2out <= io.immin @[OPR2read.scala 30:18]
      else :
        io.datas2out <= UInt<5>("h16") @[OPR2read.scala 31:30]

  module OPR2Sel :
    input clock : Clock
    input reset : Reset
    output io : { flip opcode : UInt<7>, R_type : UInt<1>, Imm_type : UInt<1>}

    io.Imm_type <= UInt<1>("h0") @[OPR2Sel.scala 14:16]
    io.R_type <= UInt<1>("h0") @[OPR2Sel.scala 15:14]
    node _T = eq(io.opcode, UInt<6>("h33")) @[OPR2Sel.scala 16:21]
    when _T : @[OPR2Sel.scala 16:38]
      io.R_type <= UInt<1>("h1") @[OPR2Sel.scala 17:17]
    else :
      node _T_1 = eq(io.opcode, UInt<5>("h13")) @[OPR2Sel.scala 18:27]
      when _T_1 : @[OPR2Sel.scala 18:44]
        io.Imm_type <= UInt<1>("h1") @[OPR2Sel.scala 19:19]
      else :
        io.Imm_type <= UInt<1>("h0") @[OPR2Sel.scala 21:16]
        io.R_type <= UInt<1>("h0") @[OPR2Sel.scala 22:14]

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

  module OperationSel :
    input clock : Clock
    input reset : Reset
    output io : { flip opcode : UInt<7>, flip funct3 : UInt<3>, flip funct7 : UInt<7>, operation : UInt<5>}

    node _T = eq(io.opcode, UInt<6>("h33")) @[OperationSel.scala 14:21]
    node _T_1 = eq(io.funct3, UInt<1>("h0")) @[OperationSel.scala 14:51]
    node _T_2 = and(_T, _T_1) @[OperationSel.scala 14:38]
    node _T_3 = eq(io.funct7, UInt<1>("h0")) @[OperationSel.scala 14:76]
    node _T_4 = and(_T_2, _T_3) @[OperationSel.scala 14:64]
    when _T_4 : @[OperationSel.scala 14:92]
      io.operation <= UInt<1>("h1") @[OperationSel.scala 15:21]
    else :
      node _T_5 = eq(io.opcode, UInt<5>("h13")) @[OperationSel.scala 17:26]
      node _T_6 = eq(io.funct3, UInt<1>("h0")) @[OperationSel.scala 17:56]
      node _T_7 = and(_T_5, _T_6) @[OperationSel.scala 17:43]
      when _T_7 : @[OperationSel.scala 17:69]
        io.operation <= UInt<1>("h1") @[OperationSel.scala 18:21]
      else :
        node _T_8 = eq(io.opcode, UInt<6>("h33")) @[OperationSel.scala 20:26]
        node _T_9 = eq(io.funct3, UInt<1>("h0")) @[OperationSel.scala 20:55]
        node _T_10 = and(_T_8, _T_9) @[OperationSel.scala 20:43]
        node _T_11 = eq(io.funct7, UInt<6>("h20")) @[OperationSel.scala 20:80]
        node _T_12 = and(_T_10, _T_11) @[OperationSel.scala 20:68]
        when _T_12 : @[OperationSel.scala 20:97]
          io.operation <= UInt<2>("h2") @[OperationSel.scala 21:21]
        else :
          node _T_13 = eq(io.opcode, UInt<6>("h33")) @[OperationSel.scala 23:26]
          node _T_14 = eq(io.funct3, UInt<3>("h7")) @[OperationSel.scala 23:55]
          node _T_15 = and(_T_13, _T_14) @[OperationSel.scala 23:43]
          node _T_16 = eq(io.funct7, UInt<1>("h0")) @[OperationSel.scala 23:80]
          node _T_17 = and(_T_15, _T_16) @[OperationSel.scala 23:68]
          when _T_17 : @[OperationSel.scala 23:97]
            io.operation <= UInt<2>("h3") @[OperationSel.scala 24:21]
          else :
            node _T_18 = eq(io.opcode, UInt<6>("h33")) @[OperationSel.scala 26:26]
            node _T_19 = eq(io.funct3, UInt<3>("h6")) @[OperationSel.scala 26:55]
            node _T_20 = and(_T_18, _T_19) @[OperationSel.scala 26:43]
            node _T_21 = eq(io.funct7, UInt<1>("h0")) @[OperationSel.scala 26:80]
            node _T_22 = and(_T_20, _T_21) @[OperationSel.scala 26:68]
            when _T_22 : @[OperationSel.scala 26:97]
              io.operation <= UInt<3>("h5") @[OperationSel.scala 27:21]
            else :
              io.operation <= UInt<5>("h16") @[OperationSel.scala 30:18]

  module AluSel :
    input clock : Clock
    input reset : Reset
    output io : { flip operation : UInt<32>, flip AddRes : UInt<32>, flip SubRes : UInt<32>, flip AndRes : UInt<32>, flip OrRes : UInt<32>, output : UInt<32>}

    node _T = eq(io.operation, UInt<1>("h1")) @[AluSel.scala 15:24]
    when _T : @[AluSel.scala 15:40]
      io.output <= io.AddRes @[AluSel.scala 16:19]
    else :
      node _T_1 = eq(io.operation, UInt<2>("h2")) @[AluSel.scala 17:34]
      when _T_1 : @[AluSel.scala 17:49]
        io.output <= io.SubRes @[AluSel.scala 18:19]
      else :
        node _T_2 = eq(io.operation, UInt<2>("h3")) @[AluSel.scala 19:34]
        when _T_2 : @[AluSel.scala 19:50]
          io.output <= io.AndRes @[AluSel.scala 20:19]
        else :
          node _T_3 = eq(io.operation, UInt<3>("h5")) @[AluSel.scala 21:34]
          when _T_3 : @[AluSel.scala 21:49]
            io.output <= io.OrRes @[AluSel.scala 22:19]
          else :
            io.output <= UInt<1>("h0") @[AluSel.scala 24:19]

  module WRresult :
    input clock : Clock
    input reset : Reset
    output io : { flip resultin : UInt<32>, resultout : UInt<32>}

    wire Result : UInt<32> @[WRresult.scala 15:22]
    Result <= io.resultin @[WRresult.scala 17:12]
    io.resultout <= Result @[WRresult.scala 20:18]

  module Main :
    input clock : Clock
    input reset : UInt<1>
    output io : { flip input : UInt<32>, input1 : UInt<5>, input2 : UInt<5>, input3 : UInt<5>, input4 : UInt<32>, input5 : UInt<32>, input6 : UInt<32>, output : UInt<32>}

    inst RegisterFile of RegisterFile @[Main.scala 25:30]
    RegisterFile.clock <= clock
    RegisterFile.reset <= reset
    inst IMemory of IMemory @[Main.scala 26:25]
    IMemory.clock <= clock
    IMemory.reset <= reset
    inst OPR1read of OPR1read @[Main.scala 27:27]
    OPR1read.clock <= clock
    OPR1read.reset <= reset
    inst OPR2read of OPR2read @[Main.scala 28:27]
    OPR2read.clock <= clock
    OPR2read.reset <= reset
    inst OPR2Sel of OPR2Sel @[Main.scala 29:26]
    OPR2Sel.clock <= clock
    OPR2Sel.reset <= reset
    inst ADD of ADD @[Main.scala 30:21]
    ADD.clock <= clock
    ADD.reset <= reset
    inst SUB of SUB @[Main.scala 31:21]
    SUB.clock <= clock
    SUB.reset <= reset
    inst AND of AND @[Main.scala 32:21]
    AND.clock <= clock
    AND.reset <= reset
    inst OR of OR @[Main.scala 33:20]
    OR.clock <= clock
    OR.reset <= reset
    inst OperationSel of OperationSel @[Main.scala 34:30]
    OperationSel.clock <= clock
    OperationSel.reset <= reset
    inst AluSel of AluSel @[Main.scala 35:24]
    AluSel.clock <= clock
    AluSel.reset <= reset
    inst WRresult of WRresult @[Main.scala 36:26]
    WRresult.clock <= clock
    WRresult.reset <= reset
    IMemory.io.IP_in <= io.input @[Main.scala 43:22]
    node _OPR1read_io_addrs1in_T = bits(IMemory.io.instruction, 19, 15) @[Main.scala 46:51]
    OPR1read.io.addrs1in <= _OPR1read_io_addrs1in_T @[Main.scala 46:26]
    RegisterFile.io.addr1 <= OPR1read.io.addrs1out @[Main.scala 47:27]
    OPR1read.io.datas1in <= RegisterFile.io.data1 @[Main.scala 48:26]
    io.input1 <= OPR1read.io.datas1in @[Main.scala 50:15]
    node _OPR2Sel_io_opcode_T = bits(IMemory.io.instruction, 6, 0) @[Main.scala 52:48]
    OPR2Sel.io.opcode <= _OPR2Sel_io_opcode_T @[Main.scala 52:23]
    OPR2read.io.R_type <= OPR2Sel.io.R_type @[Main.scala 53:24]
    OPR2read.io.Imm_type <= OPR2Sel.io.Imm_type @[Main.scala 54:26]
    node _OPR2read_io_immin_T = bits(IMemory.io.instruction, 31, 20) @[Main.scala 57:48]
    OPR2read.io.immin <= _OPR2read_io_immin_T @[Main.scala 57:23]
    node _OPR2read_io_addrs2in_T = bits(IMemory.io.instruction, 24, 20) @[Main.scala 58:51]
    OPR2read.io.addrs2in <= _OPR2read_io_addrs2in_T @[Main.scala 58:26]
    RegisterFile.io.addr2 <= OPR2read.io.addrs2out @[Main.scala 59:27]
    OPR2read.io.datas2in <= RegisterFile.io.data2 @[Main.scala 60:26]
    io.input2 <= OPR2read.io.datas2in @[Main.scala 62:15]
    node _RegisterFile_io_addrwr_T = bits(IMemory.io.instruction, 11, 7) @[Main.scala 64:53]
    RegisterFile.io.addrwr <= _RegisterFile_io_addrwr_T @[Main.scala 64:28]
    node _OperationSel_io_opcode_T = bits(IMemory.io.instruction, 6, 0) @[Main.scala 66:53]
    OperationSel.io.opcode <= _OperationSel_io_opcode_T @[Main.scala 66:28]
    node _OperationSel_io_funct3_T = bits(IMemory.io.instruction, 14, 12) @[Main.scala 67:53]
    OperationSel.io.funct3 <= _OperationSel_io_funct3_T @[Main.scala 67:28]
    node _OperationSel_io_funct7_T = bits(IMemory.io.instruction, 31, 25) @[Main.scala 68:53]
    OperationSel.io.funct7 <= _OperationSel_io_funct7_T @[Main.scala 68:28]
    AluSel.io.operation <= OperationSel.io.operation @[Main.scala 69:25]
    ADD.io.op1 <= OPR1read.io.datas1out @[Main.scala 73:16]
    ADD.io.op2 <= OPR2read.io.datas2out @[Main.scala 74:16]
    io.input5 <= ADD.io.op1 @[Main.scala 76:15]
    io.input6 <= ADD.io.op2 @[Main.scala 77:15]
    SUB.io.op1 <= OPR1read.io.datas1out @[Main.scala 79:16]
    SUB.io.op2 <= OPR2read.io.datas2out @[Main.scala 80:16]
    OR.io.op1 <= OPR1read.io.datas1out @[Main.scala 82:15]
    OR.io.op2 <= OPR2read.io.datas2out @[Main.scala 83:15]
    AND.io.op1 <= OPR1read.io.datas1out @[Main.scala 85:16]
    AND.io.op2 <= OPR2read.io.datas2out @[Main.scala 86:16]
    AluSel.io.AddRes <= ADD.io.result @[Main.scala 91:22]
    AluSel.io.SubRes <= SUB.io.result @[Main.scala 92:22]
    AluSel.io.AndRes <= AND.io.result @[Main.scala 93:22]
    AluSel.io.OrRes <= OR.io.result @[Main.scala 94:21]
    WRresult.io.resultin <= AluSel.io.output @[Main.scala 99:26]
    RegisterFile.io.datawr <= WRresult.io.resultout @[Main.scala 103:28]
    io.input3 <= RegisterFile.io.addrwr @[Main.scala 108:15]
    io.input4 <= RegisterFile.io.datawr @[Main.scala 109:15]
    io.output <= RegisterFile.io.wrtest @[Main.scala 112:15]

