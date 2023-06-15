circuit Main :
  module Controler :
    input clock : Clock
    input reset : Reset
    output io : { flip opcode : UInt<7>, flip funct3 : UInt<3>, flip funct7 : UInt<7>, RegWrite : UInt<1>, MemWrite : UInt<1>, ImmSrc : UInt<2>, AluSrc : UInt<1>, ResSrc : UInt<2>, Br : UInt<1>, AluCtrl : UInt<3>, operation : UInt<3>, BrCtrl : UInt<5>, JmpCtrl : UInt<2>, PcCtrl : UInt<3>}

    io.RegWrite <= UInt<1>("h0") @[Controler.scala 27:17]
    io.MemWrite <= UInt<1>("h0") @[Controler.scala 28:17]
    io.ImmSrc <= UInt<1>("h0") @[Controler.scala 29:15]
    io.AluSrc <= UInt<1>("h0") @[Controler.scala 30:15]
    io.ResSrc <= UInt<1>("h0") @[Controler.scala 31:15]
    io.Br <= UInt<1>("h0") @[Controler.scala 32:11]
    io.operation <= UInt<1>("h0") @[Controler.scala 33:18]
    io.PcCtrl <= UInt<1>("h0") @[Controler.scala 34:15]
    node _T = eq(UInt<6>("h33"), io.opcode) @[Controler.scala 35:23]
    when _T : @[Controler.scala 35:23]
      io.RegWrite <= UInt<1>("h1") @[Controler.scala 37:25]
      io.MemWrite <= UInt<1>("h0") @[Controler.scala 38:25]
      io.ImmSrc <= UInt<1>("h0") @[Controler.scala 39:23]
      io.AluSrc <= UInt<1>("h0") @[Controler.scala 40:23]
      io.ResSrc <= UInt<1>("h0") @[Controler.scala 41:23]
      io.Br <= UInt<1>("h0") @[Controler.scala 42:19]
      io.operation <= UInt<1>("h0") @[Controler.scala 43:26]
      io.PcCtrl <= UInt<1>("h0") @[Controler.scala 44:23]
    else :
      node _T_1 = eq(UInt<5>("h13"), io.opcode) @[Controler.scala 35:23]
      when _T_1 : @[Controler.scala 35:23]
        io.RegWrite <= UInt<1>("h1") @[Controler.scala 47:25]
        io.MemWrite <= UInt<1>("h0") @[Controler.scala 48:25]
        io.ImmSrc <= UInt<1>("h0") @[Controler.scala 49:23]
        io.AluSrc <= UInt<1>("h1") @[Controler.scala 50:23]
        io.ResSrc <= UInt<1>("h0") @[Controler.scala 51:23]
        io.Br <= UInt<1>("h0") @[Controler.scala 52:19]
        io.operation <= UInt<1>("h1") @[Controler.scala 53:26]
        io.PcCtrl <= UInt<1>("h0") @[Controler.scala 54:23]
      else :
        node _T_2 = eq(UInt<2>("h3"), io.opcode) @[Controler.scala 35:23]
        when _T_2 : @[Controler.scala 35:23]
          io.RegWrite <= UInt<1>("h1") @[Controler.scala 57:25]
          io.MemWrite <= UInt<1>("h0") @[Controler.scala 58:25]
          io.ImmSrc <= UInt<1>("h0") @[Controler.scala 59:23]
          io.AluSrc <= UInt<1>("h1") @[Controler.scala 60:23]
          io.ResSrc <= UInt<1>("h1") @[Controler.scala 61:23]
          io.Br <= UInt<1>("h0") @[Controler.scala 62:19]
          io.operation <= UInt<2>("h2") @[Controler.scala 63:26]
          io.PcCtrl <= UInt<1>("h0") @[Controler.scala 64:23]
        else :
          node _T_3 = eq(UInt<6>("h23"), io.opcode) @[Controler.scala 35:23]
          when _T_3 : @[Controler.scala 35:23]
            io.RegWrite <= UInt<1>("h0") @[Controler.scala 67:25]
            io.MemWrite <= UInt<1>("h1") @[Controler.scala 68:25]
            io.ImmSrc <= UInt<1>("h1") @[Controler.scala 69:23]
            io.AluSrc <= UInt<1>("h1") @[Controler.scala 70:23]
            io.ResSrc <= UInt<1>("h0") @[Controler.scala 71:23]
            io.Br <= UInt<1>("h0") @[Controler.scala 72:19]
            io.operation <= UInt<2>("h2") @[Controler.scala 73:26]
            io.PcCtrl <= UInt<1>("h0") @[Controler.scala 74:23]
          else :
            node _T_4 = eq(UInt<7>("h63"), io.opcode) @[Controler.scala 35:23]
            when _T_4 : @[Controler.scala 35:23]
              io.RegWrite <= UInt<1>("h0") @[Controler.scala 77:25]
              io.MemWrite <= UInt<1>("h0") @[Controler.scala 78:25]
              io.ImmSrc <= UInt<2>("h2") @[Controler.scala 79:23]
              io.AluSrc <= UInt<1>("h0") @[Controler.scala 80:23]
              io.ResSrc <= UInt<1>("h0") @[Controler.scala 81:23]
              io.Br <= UInt<1>("h1") @[Controler.scala 82:19]
              io.operation <= UInt<2>("h3") @[Controler.scala 83:26]
              io.PcCtrl <= UInt<1>("h1") @[Controler.scala 84:23]
            else :
              node _T_5 = eq(UInt<7>("h6f"), io.opcode) @[Controler.scala 35:23]
              when _T_5 : @[Controler.scala 35:23]
                io.RegWrite <= UInt<1>("h1") @[Controler.scala 87:25]
                io.MemWrite <= UInt<1>("h0") @[Controler.scala 88:25]
                io.ImmSrc <= UInt<2>("h3") @[Controler.scala 89:23]
                io.AluSrc <= UInt<1>("h0") @[Controler.scala 90:23]
                io.ResSrc <= UInt<2>("h2") @[Controler.scala 91:23]
                io.Br <= UInt<1>("h0") @[Controler.scala 92:19]
                io.operation <= UInt<3>("h4") @[Controler.scala 93:26]
                io.PcCtrl <= UInt<2>("h2") @[Controler.scala 94:23]
              else :
                node _T_6 = eq(UInt<7>("h67"), io.opcode) @[Controler.scala 35:23]
                when _T_6 : @[Controler.scala 35:23]
                  io.RegWrite <= UInt<1>("h1") @[Controler.scala 97:25]
                  io.MemWrite <= UInt<1>("h0") @[Controler.scala 98:25]
                  io.ImmSrc <= UInt<1>("h0") @[Controler.scala 99:23]
                  io.AluSrc <= UInt<1>("h0") @[Controler.scala 100:23]
                  io.ResSrc <= UInt<2>("h2") @[Controler.scala 101:23]
                  io.Br <= UInt<1>("h0") @[Controler.scala 102:19]
                  io.operation <= UInt<3>("h5") @[Controler.scala 103:26]
                  io.PcCtrl <= UInt<2>("h2") @[Controler.scala 104:23]
    node _T_7 = eq(io.operation, UInt<1>("h0")) @[Controler.scala 108:23]
    node _T_8 = eq(io.funct3, UInt<1>("h0")) @[Controler.scala 108:49]
    node _T_9 = and(_T_7, _T_8) @[Controler.scala 108:36]
    node _T_10 = eq(io.funct7, UInt<1>("h0")) @[Controler.scala 108:75]
    node _T_11 = and(_T_9, _T_10) @[Controler.scala 108:62]
    when _T_11 : @[Controler.scala 108:92]
      io.AluCtrl <= UInt<1>("h0") @[Controler.scala 109:20]
    else :
      node _T_12 = eq(io.operation, UInt<1>("h0")) @[Controler.scala 111:28]
      node _T_13 = eq(io.funct3, UInt<1>("h0")) @[Controler.scala 111:54]
      node _T_14 = and(_T_12, _T_13) @[Controler.scala 111:41]
      node _T_15 = eq(io.funct7, UInt<6>("h20")) @[Controler.scala 111:80]
      node _T_16 = and(_T_14, _T_15) @[Controler.scala 111:67]
      when _T_16 : @[Controler.scala 111:97]
        io.AluCtrl <= UInt<1>("h1") @[Controler.scala 112:20]
      else :
        node _T_17 = eq(io.operation, UInt<1>("h0")) @[Controler.scala 114:28]
        node _T_18 = eq(io.funct3, UInt<3>("h7")) @[Controler.scala 114:54]
        node _T_19 = and(_T_17, _T_18) @[Controler.scala 114:41]
        node _T_20 = eq(io.funct7, UInt<1>("h0")) @[Controler.scala 114:80]
        node _T_21 = and(_T_19, _T_20) @[Controler.scala 114:67]
        when _T_21 : @[Controler.scala 114:97]
          io.AluCtrl <= UInt<2>("h2") @[Controler.scala 115:20]
        else :
          node _T_22 = eq(io.operation, UInt<1>("h0")) @[Controler.scala 117:28]
          node _T_23 = eq(io.funct3, UInt<3>("h6")) @[Controler.scala 117:54]
          node _T_24 = and(_T_22, _T_23) @[Controler.scala 117:41]
          node _T_25 = eq(io.funct7, UInt<1>("h0")) @[Controler.scala 117:80]
          node _T_26 = and(_T_24, _T_25) @[Controler.scala 117:67]
          when _T_26 : @[Controler.scala 117:97]
            io.AluCtrl <= UInt<2>("h3") @[Controler.scala 118:20]
          else :
            node _T_27 = eq(io.operation, UInt<1>("h1")) @[Controler.scala 120:28]
            node _T_28 = eq(io.funct3, UInt<1>("h0")) @[Controler.scala 120:54]
            node _T_29 = and(_T_27, _T_28) @[Controler.scala 120:41]
            when _T_29 : @[Controler.scala 120:67]
              io.AluCtrl <= UInt<1>("h0") @[Controler.scala 121:20]
            else :
              node _T_30 = eq(io.operation, UInt<1>("h1")) @[Controler.scala 123:28]
              node _T_31 = eq(io.funct3, UInt<3>("h7")) @[Controler.scala 123:54]
              node _T_32 = and(_T_30, _T_31) @[Controler.scala 123:41]
              when _T_32 : @[Controler.scala 123:67]
                io.AluCtrl <= UInt<2>("h2") @[Controler.scala 124:20]
              else :
                node _T_33 = eq(io.operation, UInt<2>("h2")) @[Controler.scala 126:28]
                node _T_34 = eq(io.funct3, UInt<2>("h2")) @[Controler.scala 126:54]
                node _T_35 = and(_T_33, _T_34) @[Controler.scala 126:41]
                when _T_35 : @[Controler.scala 126:67]
                  io.AluCtrl <= UInt<1>("h0") @[Controler.scala 127:20]
                else :
                  node _T_36 = eq(io.operation, UInt<2>("h2")) @[Controler.scala 129:28]
                  node _T_37 = eq(io.funct3, UInt<2>("h2")) @[Controler.scala 129:54]
                  node _T_38 = and(_T_36, _T_37) @[Controler.scala 129:41]
                  when _T_38 : @[Controler.scala 129:67]
                    io.AluCtrl <= UInt<1>("h0") @[Controler.scala 130:20]
                  else :
                    io.AluCtrl <= UInt<3>("h4") @[Controler.scala 133:20]
    node _T_39 = eq(io.operation, UInt<2>("h3")) @[Controler.scala 136:23]
    node _T_40 = eq(io.funct3, UInt<1>("h0")) @[Controler.scala 136:49]
    node _T_41 = and(_T_39, _T_40) @[Controler.scala 136:36]
    when _T_41 : @[Controler.scala 136:62]
      io.BrCtrl <= UInt<5>("h10") @[Controler.scala 137:19]
    else :
      node _T_42 = eq(io.operation, UInt<2>("h3")) @[Controler.scala 139:28]
      node _T_43 = eq(io.funct3, UInt<1>("h1")) @[Controler.scala 139:54]
      node _T_44 = and(_T_42, _T_43) @[Controler.scala 139:41]
      when _T_44 : @[Controler.scala 139:67]
        io.BrCtrl <= UInt<5>("h11") @[Controler.scala 140:19]
      else :
        node _T_45 = eq(io.operation, UInt<2>("h3")) @[Controler.scala 142:28]
        node _T_46 = eq(io.funct3, UInt<3>("h4")) @[Controler.scala 142:54]
        node _T_47 = and(_T_45, _T_46) @[Controler.scala 142:41]
        when _T_47 : @[Controler.scala 142:67]
          io.BrCtrl <= UInt<5>("h14") @[Controler.scala 143:19]
        else :
          node _T_48 = eq(io.operation, UInt<2>("h3")) @[Controler.scala 145:28]
          node _T_49 = eq(io.funct3, UInt<3>("h5")) @[Controler.scala 145:54]
          node _T_50 = and(_T_48, _T_49) @[Controler.scala 145:41]
          when _T_50 : @[Controler.scala 145:67]
            io.BrCtrl <= UInt<5>("h15") @[Controler.scala 146:19]
          else :
            node _T_51 = eq(io.operation, UInt<2>("h3")) @[Controler.scala 148:28]
            node _T_52 = eq(io.funct3, UInt<3>("h6")) @[Controler.scala 148:54]
            node _T_53 = and(_T_51, _T_52) @[Controler.scala 148:41]
            when _T_53 : @[Controler.scala 148:67]
              io.BrCtrl <= UInt<5>("h16") @[Controler.scala 149:19]
            else :
              node _T_54 = eq(io.operation, UInt<2>("h3")) @[Controler.scala 151:28]
              node _T_55 = eq(io.funct3, UInt<3>("h7")) @[Controler.scala 151:54]
              node _T_56 = and(_T_54, _T_55) @[Controler.scala 151:41]
              when _T_56 : @[Controler.scala 151:67]
                io.BrCtrl <= UInt<5>("h17") @[Controler.scala 152:19]
              else :
                io.BrCtrl <= UInt<5>("h1a") @[Controler.scala 154:26]
    node _T_57 = eq(io.operation, UInt<3>("h4")) @[Controler.scala 157:23]
    when _T_57 : @[Controler.scala 157:37]
      io.JmpCtrl <= UInt<1>("h0") @[Controler.scala 158:20]
    else :
      node _T_58 = eq(io.operation, UInt<3>("h5")) @[Controler.scala 159:29]
      node _T_59 = eq(io.funct3, UInt<1>("h0")) @[Controler.scala 159:55]
      node _T_60 = and(_T_58, _T_59) @[Controler.scala 159:42]
      when _T_60 : @[Controler.scala 159:68]
        io.JmpCtrl <= UInt<1>("h1") @[Controler.scala 160:20]
      else :
        io.JmpCtrl <= UInt<5>("h1a") @[Controler.scala 162:27]

  module RegisterFile :
    input clock : Clock
    input reset : Reset
    output io : { flip addr1 : UInt<5>, data1 : SInt<32>, flip addr2 : UInt<5>, data2 : SInt<32>, flip addrwr : UInt<5>, flip datawr : SInt<32>, flip RegWrite : UInt<1>}

    cmem registers : SInt<32> [32] @[RegisterFile.scala 22:24]
    when io.RegWrite : @[RegisterFile.scala 23:23]
      infer mport MPORT = registers[io.addrwr], clock @[RegisterFile.scala 25:18]
      MPORT <= io.datawr @[RegisterFile.scala 25:30]
    else :
      infer mport MPORT_1 = registers[io.addrwr], clock @[RegisterFile.scala 28:18]
      MPORT_1 <= asSInt(UInt<6>("h16")) @[RegisterFile.scala 28:30]
    infer mport io_data1_MPORT = registers[io.addr1], clock @[RegisterFile.scala 40:26]
    io.data1 <= io_data1_MPORT @[RegisterFile.scala 40:14]
    infer mport io_data2_MPORT = registers[io.addr2], clock @[RegisterFile.scala 41:26]
    io.data2 <= io_data2_MPORT @[RegisterFile.scala 41:14]

  module PcCtrl :
    input clock : Clock
    input reset : Reset
    output io : { flip PcCtrl : UInt<3>, flip IP_incremented : SInt<32>, flip IP_Branched : SInt<32>, flip IP_Jumped : SInt<32>, IP : SInt<32>}

    node _T = eq(io.PcCtrl, UInt<1>("h0")) @[PcCtrl.scala 18:20]
    when _T : @[PcCtrl.scala 18:34]
      io.IP <= io.IP_incremented @[PcCtrl.scala 19:14]
    else :
      node _T_1 = eq(io.PcCtrl, UInt<1>("h1")) @[PcCtrl.scala 21:25]
      when _T_1 : @[PcCtrl.scala 21:39]
        io.IP <= io.IP_Branched @[PcCtrl.scala 22:15]
      else :
        node _T_2 = eq(io.PcCtrl, UInt<2>("h2")) @[PcCtrl.scala 24:25]
        when _T_2 : @[PcCtrl.scala 24:39]
          io.IP <= io.IP_Jumped @[PcCtrl.scala 25:15]
        else :
          io.IP <= asSInt(UInt<7>("h2c")) @[PcCtrl.scala 28:15]

  module Pc :
    input clock : Clock
    input reset : Reset
    output io : { flip IP_in : SInt<32>, IP_out : SInt<32>}

    reg PcReg : SInt<32>, clock with :
      reset => (reset, asSInt(UInt<32>("h0"))) @[Pc.scala 11:22]
    PcReg <= io.IP_in @[Pc.scala 14:11]
    io.IP_out <= PcReg @[Pc.scala 16:15]

  module PcInc :
    input clock : Clock
    input reset : Reset
    output io : { flip IPInc_in : SInt<32>, IPInc_out : SInt<32>}

    wire IPInc_tmp : SInt<32> @[PcInc.scala 11:25]
    node _IPInc_tmp_T = add(io.IPInc_in, asSInt(UInt<2>("h1"))) @[PcInc.scala 12:30]
    node _IPInc_tmp_T_1 = tail(_IPInc_tmp_T, 1) @[PcInc.scala 12:30]
    node _IPInc_tmp_T_2 = asSInt(_IPInc_tmp_T_1) @[PcInc.scala 12:30]
    IPInc_tmp <= _IPInc_tmp_T_2 @[PcInc.scala 12:15]
    io.IPInc_out <= IPInc_tmp @[PcInc.scala 13:18]

  module IMemory :
    input clock : Clock
    input reset : Reset
    output io : { flip IPmem_in : UInt<32>, instruction : UInt<32>}

    cmem Memory : UInt<32> [32] @[IMemory.scala 16:22]
    write mport MPORT = Memory[UInt<1>("h0")], clock
    MPORT <= UInt<23>("h508113")
    write mport MPORT_1 = Memory[UInt<1>("h1")], clock
    MPORT_1 <= UInt<24>("hc08193")
    write mport MPORT_2 = Memory[UInt<2>("h2")], clock
    MPORT_2 <= UInt<32>("hff718393")
    write mport MPORT_3 = Memory[UInt<2>("h3")], clock
    MPORT_3 <= UInt<23>("h716233")
    write mport MPORT_4 = Memory[UInt<3>("h4")], clock
    MPORT_4 <= UInt<23>("h41f2b3")
    write mport MPORT_5 = Memory[UInt<3>("h5")], clock
    MPORT_5 <= UInt<23>("h4282b3")
    write mport MPORT_6 = Memory[UInt<3>("h6")], clock
    MPORT_6 <= UInt<18>("h20863")
    write mport MPORT_7 = Memory[UInt<3>("h7")], clock
    MPORT_7 <= UInt<24>("hb08313")
    write mport MPORT_8 = Memory[UInt<4>("h8")], clock
    MPORT_8 <= UInt<32>("hfe628ce3")
    node _io_instruction_T = bits(io.IPmem_in, 4, 0) @[IMemory.scala 46:29]
    infer mport io_instruction_MPORT = Memory[_io_instruction_T], clock @[IMemory.scala 46:29]
    io.instruction <= io_instruction_MPORT @[IMemory.scala 46:20]

  module OPR1read :
    input clock : Clock
    input reset : Reset
    output io : { flip addrs1in : UInt<5>, flip datas1in : SInt<32>, addrs1out : UInt<5>, datas1out : SInt<32>}

    wire OPR1addr1 : UInt<5> @[OPR1read.scala 14:25]
    wire OPR1data1 : SInt<32> @[OPR1read.scala 15:25]
    OPR1addr1 <= io.addrs1in @[OPR1read.scala 16:15]
    OPR1data1 <= io.datas1in @[OPR1read.scala 17:15]
    io.addrs1out <= OPR1addr1 @[OPR1read.scala 19:18]
    io.datas1out <= OPR1data1 @[OPR1read.scala 20:18]

  module OPR2read :
    input clock : Clock
    input reset : Reset
    output io : { flip addrs2in : UInt<5>, flip datas2in : SInt<32>, addrs2out : UInt<5>, datas2out : SInt<32>}

    wire OPR2addr2 : UInt<5> @[OPR2read.scala 22:25]
    wire OPR2data2 : SInt<32> @[OPR2read.scala 23:25]
    OPR2addr2 <= io.addrs2in @[OPR2read.scala 25:15]
    OPR2data2 <= io.datas2in @[OPR2read.scala 26:15]
    io.addrs2out <= OPR2addr2 @[OPR2read.scala 28:18]
    io.datas2out <= OPR2data2 @[OPR2read.scala 29:18]

  module Imm :
    input clock : Clock
    input reset : Reset
    output io : { flip ImmSrc : UInt<2>, flip Imm_Itype : SInt<32>, flip Imm_Stype : SInt<32>, flip Imm_Btype : SInt<32>, flip Imm_Jtype : SInt<32>, Imm_output : SInt<32>}

    node _T = eq(io.ImmSrc, UInt<1>("h0")) @[Imm.scala 35:21]
    when _T : @[Imm.scala 35:33]
      io.Imm_output <= io.Imm_Itype @[Imm.scala 36:23]
    else :
      node _T_1 = eq(io.ImmSrc, UInt<1>("h1")) @[Imm.scala 37:27]
      when _T_1 : @[Imm.scala 37:40]
        io.Imm_output <= io.Imm_Stype @[Imm.scala 38:23]
      else :
        node _T_2 = eq(io.ImmSrc, UInt<2>("h2")) @[Imm.scala 39:27]
        when _T_2 : @[Imm.scala 39:40]
          io.Imm_output <= io.Imm_Btype @[Imm.scala 40:23]
        else :
          node _T_3 = eq(io.ImmSrc, UInt<2>("h3")) @[Imm.scala 41:27]
          when _T_3 : @[Imm.scala 41:40]
            io.Imm_output <= io.Imm_Jtype @[Imm.scala 42:23]
          else :
            io.Imm_output <= asSInt(UInt<6>("h14")) @[Imm.scala 44:23]

  module ImmOpr2Sel :
    input clock : Clock
    input reset : Reset
    output io : { flip AluSrc : UInt<1>, flip Opr2_input : SInt<32>, flip Imm_input : SInt<32>, ImmOp2Sel_output : SInt<32>}

    when io.AluSrc : @[ImmOpr2Sel.scala 14:21]
      io.ImmOp2Sel_output <= io.Imm_input @[ImmOpr2Sel.scala 15:29]
    else :
      io.ImmOp2Sel_output <= io.Opr2_input @[ImmOpr2Sel.scala 18:29]

  module ADD :
    input clock : Clock
    input reset : Reset
    output io : { flip op1 : SInt<32>, flip op2 : SInt<32>, result : SInt<32>}

    node _io_result_T = add(io.op1, io.op2) @[ADD.scala 16:23]
    node _io_result_T_1 = tail(_io_result_T, 1) @[ADD.scala 16:23]
    node _io_result_T_2 = asSInt(_io_result_T_1) @[ADD.scala 16:23]
    io.result <= _io_result_T_2 @[ADD.scala 16:13]

  module SUB :
    input clock : Clock
    input reset : Reset
    output io : { flip op1 : SInt<32>, flip op2 : SInt<32>, result : SInt<32>}

    node _io_result_T = sub(io.op1, io.op2) @[SUB.scala 16:23]
    node _io_result_T_1 = tail(_io_result_T, 1) @[SUB.scala 16:23]
    node _io_result_T_2 = asSInt(_io_result_T_1) @[SUB.scala 16:23]
    io.result <= _io_result_T_2 @[SUB.scala 16:13]

  module AND :
    input clock : Clock
    input reset : Reset
    output io : { flip op1 : SInt<32>, flip op2 : SInt<32>, result : SInt<32>}

    node _io_result_T = and(io.op1, io.op2) @[AND.scala 16:23]
    node _io_result_T_1 = asSInt(_io_result_T) @[AND.scala 16:23]
    io.result <= _io_result_T_1 @[AND.scala 16:13]

  module OR :
    input clock : Clock
    input reset : Reset
    output io : { flip op1 : SInt<32>, flip op2 : SInt<32>, result : SInt<32>}

    node _io_result_T = or(io.op1, io.op2) @[OR.scala 16:23]
    node _io_result_T_1 = asSInt(_io_result_T) @[OR.scala 16:23]
    io.result <= _io_result_T_1 @[OR.scala 16:13]

  module Jump :
    input clock : Clock
    input reset : Reset
    output io : { flip Jal_imm : SInt<32>, flip JalR_imm : SInt<32>, flip Datas1 : SInt<32>, flip JmpCtrl : UInt<2>, J_output : SInt<32>}

    node _T = eq(io.JmpCtrl, UInt<1>("h0")) @[Jump.scala 15:21]
    when _T : @[Jump.scala 15:34]
      io.J_output <= io.Jal_imm @[Jump.scala 16:21]
    else :
      node _T_1 = eq(io.JmpCtrl, UInt<1>("h1")) @[Jump.scala 17:27]
      when _T_1 : @[Jump.scala 17:39]
        node _io_J_output_T = add(io.JalR_imm, io.Datas1) @[Jump.scala 18:36]
        node _io_J_output_T_1 = tail(_io_J_output_T, 1) @[Jump.scala 18:36]
        node _io_J_output_T_2 = asSInt(_io_J_output_T_1) @[Jump.scala 18:36]
        io.J_output <= _io_J_output_T_2 @[Jump.scala 18:21]
      else :
        io.J_output <= asSInt(UInt<6>("h16")) @[Jump.scala 20:28]

  module Branch :
    input clock : Clock
    input reset : Reset
    output io : { flip BrCtrl : UInt<5>, flip Br : UInt<1>, flip Datas1 : SInt<32>, flip Datas2 : SInt<32>, Br_up : UInt<1>}

    wire sig : UInt<1> @[Branch.scala 13:19]
    sig <= UInt<1>("h0") @[Branch.scala 14:9]
    node _T = eq(UInt<5>("h10"), io.BrCtrl) @[Branch.scala 15:22]
    when _T : @[Branch.scala 15:22]
      node _sig_T = eq(io.Datas1, io.Datas2) @[Branch.scala 16:39]
      sig <= _sig_T @[Branch.scala 16:27]
    else :
      node _T_1 = eq(UInt<5>("h11"), io.BrCtrl) @[Branch.scala 15:22]
      when _T_1 : @[Branch.scala 15:22]
        node _sig_T_1 = neq(io.Datas1, io.Datas2) @[Branch.scala 17:39]
        sig <= _sig_T_1 @[Branch.scala 17:27]
      else :
        node _T_2 = eq(UInt<5>("h14"), io.BrCtrl) @[Branch.scala 15:22]
        when _T_2 : @[Branch.scala 15:22]
          node _sig_T_2 = leq(io.Datas1, io.Datas2) @[Branch.scala 18:38]
          sig <= _sig_T_2 @[Branch.scala 18:27]
        else :
          node _T_3 = eq(UInt<5>("h15"), io.BrCtrl) @[Branch.scala 15:22]
          when _T_3 : @[Branch.scala 15:22]
            node _sig_T_3 = geq(io.Datas1, io.Datas2) @[Branch.scala 19:38]
            sig <= _sig_T_3 @[Branch.scala 19:27]
          else :
            node _T_4 = eq(UInt<5>("h16"), io.BrCtrl) @[Branch.scala 15:22]
            when _T_4 : @[Branch.scala 15:22]
              node _sig_T_4 = lt(io.Datas1, io.Datas2) @[Branch.scala 20:38]
              sig <= _sig_T_4 @[Branch.scala 20:27]
            else :
              node _T_5 = eq(UInt<5>("h17"), io.BrCtrl) @[Branch.scala 15:22]
              when _T_5 : @[Branch.scala 15:22]
                node _sig_T_5 = gt(io.Datas1, io.Datas2) @[Branch.scala 21:38]
                sig <= _sig_T_5 @[Branch.scala 21:27]
    node _io_Br_up_T = and(io.Br, sig) @[Branch.scala 24:23]
    io.Br_up <= _io_Br_up_T @[Branch.scala 24:14]

  module BrTarget :
    input clock : Clock
    input reset : Reset
    output io : { flip Br_up : UInt<1>, flip IP_init : SInt<32>, flip B_imm : SInt<32>, B_output : SInt<32>}

    wire B_imm_inc : SInt<32> @[BrTarget.scala 14:25]
    node _B_imm_inc_T = add(io.IP_init, asSInt(UInt<2>("h1"))) @[BrTarget.scala 15:29]
    node _B_imm_inc_T_1 = tail(_B_imm_inc_T, 1) @[BrTarget.scala 15:29]
    node _B_imm_inc_T_2 = asSInt(_B_imm_inc_T_1) @[BrTarget.scala 15:29]
    B_imm_inc <= _B_imm_inc_T_2 @[BrTarget.scala 15:15]
    when io.Br_up : @[BrTarget.scala 16:19]
      node _io_B_output_T = add(io.B_imm, io.IP_init) @[BrTarget.scala 17:33]
      node _io_B_output_T_1 = tail(_io_B_output_T, 1) @[BrTarget.scala 17:33]
      node _io_B_output_T_2 = asSInt(_io_B_output_T_1) @[BrTarget.scala 17:33]
      io.B_output <= _io_B_output_T_2 @[BrTarget.scala 17:21]
    else :
      io.B_output <= B_imm_inc @[BrTarget.scala 19:28]

  module AluOutput :
    input clock : Clock
    input reset : Reset
    output io : { flip AddRes : SInt<32>, flip SubRes : SInt<32>, flip AndRes : SInt<32>, flip OrRes : SInt<32>, output : SInt<32>, flip AluCtrl : UInt<3>}

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
            io.output <= asSInt(UInt<1>("h0")) @[AluOutput.scala 24:19]

  module DataMemory :
    input clock : Clock
    input reset : Reset
    output io : { flip dataSin : SInt<32>, flip ReadAddr : UInt<32>, ReadData : SInt<32>, flip MemWrite : UInt<1>}

    cmem DMemory : SInt<32> [1024] @[DataMemory.scala 15:22]
    write mport MPORT = DMemory[UInt<1>("h0")], clock
    MPORT <= asSInt(UInt<6>("h13"))
    write mport MPORT_1 = DMemory[UInt<1>("h1")], clock
    MPORT_1 <= asSInt(UInt<5>("h9"))
    write mport MPORT_2 = DMemory[UInt<2>("h2")], clock
    MPORT_2 <= asSInt(UInt<5>("h9"))
    write mport MPORT_3 = DMemory[UInt<2>("h3")], clock
    MPORT_3 <= asSInt(UInt<5>("h9"))
    write mport MPORT_4 = DMemory[UInt<3>("h4")], clock
    MPORT_4 <= asSInt(UInt<5>("h9"))
    write mport MPORT_5 = DMemory[UInt<3>("h5")], clock
    MPORT_5 <= asSInt(UInt<5>("h9"))
    write mport MPORT_6 = DMemory[UInt<3>("h6")], clock
    MPORT_6 <= asSInt(UInt<5>("h9"))
    write mport MPORT_7 = DMemory[UInt<3>("h7")], clock
    MPORT_7 <= asSInt(UInt<5>("h9"))
    write mport MPORT_8 = DMemory[UInt<4>("h8")], clock
    MPORT_8 <= asSInt(UInt<5>("h9"))
    when io.MemWrite : @[DataMemory.scala 33:22]
      node _T = bits(io.ReadAddr, 9, 0) @[DataMemory.scala 34:12]
      infer mport MPORT_9 = DMemory[_T], clock @[DataMemory.scala 34:12]
      MPORT_9 <= io.dataSin @[DataMemory.scala 34:26]
    else :
      node _T_1 = bits(io.ReadAddr, 9, 0) @[DataMemory.scala 35:25]
      infer mport MPORT_10 = DMemory[_T_1], clock @[DataMemory.scala 35:25]
      MPORT_10 <= asSInt(UInt<6>("h16")) @[DataMemory.scala 35:39]
    node _io_ReadData_T = bits(io.ReadAddr, 9, 0) @[DataMemory.scala 37:27]
    infer mport io_ReadData_MPORT = DMemory[_io_ReadData_T], clock @[DataMemory.scala 37:27]
    io.ReadData <= io_ReadData_MPORT @[DataMemory.scala 37:17]

  module ResultSel :
    input clock : Clock
    input reset : Reset
    output io : { flip ResSrc : UInt<2>, flip AluRes : SInt<32>, flip ReadData : SInt<32>, flip nextPcAddr : SInt<32>, Result : SInt<32>}

    node _T = eq(io.ResSrc, UInt<1>("h0")) @[ResultSel.scala 16:21]
    when _T : @[ResultSel.scala 16:33]
      io.Result <= io.AluRes @[ResultSel.scala 17:19]
    else :
      node _T_1 = eq(io.ResSrc, UInt<1>("h1")) @[ResultSel.scala 19:25]
      when _T_1 : @[ResultSel.scala 19:37]
        io.Result <= io.ReadData @[ResultSel.scala 20:19]
      else :
        node _T_2 = eq(io.ResSrc, UInt<2>("h2")) @[ResultSel.scala 21:26]
        when _T_2 : @[ResultSel.scala 21:38]
          io.Result <= io.nextPcAddr @[ResultSel.scala 22:19]
        else :
          io.Result <= asSInt(UInt<6>("h16")) @[ResultSel.scala 24:19]

  module Main :
    input clock : Clock
    input reset : UInt<1>
    output io : { Data1 : SInt<32>, Data2 : SInt<32>, Dataout : SInt<32>, Brpc : SInt<32>, Brimm : SInt<32>, BrDtaout : SInt<32>, BrData1 : SInt<32>, BrData2 : SInt<32>, output : SInt<32>}

    inst Controler of Controler @[Main.scala 31:27]
    Controler.clock <= clock
    Controler.reset <= reset
    inst RegisterFile of RegisterFile @[Main.scala 32:30]
    RegisterFile.clock <= clock
    RegisterFile.reset <= reset
    inst PcCtrl of PcCtrl @[Main.scala 33:24]
    PcCtrl.clock <= clock
    PcCtrl.reset <= reset
    inst Pc of Pc @[Main.scala 34:20]
    Pc.clock <= clock
    Pc.reset <= reset
    inst PcInc of PcInc @[Main.scala 35:23]
    PcInc.clock <= clock
    PcInc.reset <= reset
    inst IMemory of IMemory @[Main.scala 36:25]
    IMemory.clock <= clock
    IMemory.reset <= reset
    inst OPR1read of OPR1read @[Main.scala 37:27]
    OPR1read.clock <= clock
    OPR1read.reset <= reset
    inst OPR2read of OPR2read @[Main.scala 38:27]
    OPR2read.clock <= clock
    OPR2read.reset <= reset
    inst Imm of Imm @[Main.scala 39:21]
    Imm.clock <= clock
    Imm.reset <= reset
    inst ImmOpr2Sel of ImmOpr2Sel @[Main.scala 40:28]
    ImmOpr2Sel.clock <= clock
    ImmOpr2Sel.reset <= reset
    inst ADD of ADD @[Main.scala 43:21]
    ADD.clock <= clock
    ADD.reset <= reset
    inst SUB of SUB @[Main.scala 44:21]
    SUB.clock <= clock
    SUB.reset <= reset
    inst AND of AND @[Main.scala 45:21]
    AND.clock <= clock
    AND.reset <= reset
    inst OR of OR @[Main.scala 46:20]
    OR.clock <= clock
    OR.reset <= reset
    inst Jump of Jump @[Main.scala 47:22]
    Jump.clock <= clock
    Jump.reset <= reset
    inst Branch of Branch @[Main.scala 48:24]
    Branch.clock <= clock
    Branch.reset <= reset
    inst BrTarget of BrTarget @[Main.scala 49:26]
    BrTarget.clock <= clock
    BrTarget.reset <= reset
    inst AluOutput of AluOutput @[Main.scala 51:27]
    AluOutput.clock <= clock
    AluOutput.reset <= reset
    inst DataMemory of DataMemory @[Main.scala 52:28]
    DataMemory.clock <= clock
    DataMemory.reset <= reset
    inst ResultSel of ResultSel @[Main.scala 53:27]
    ResultSel.clock <= clock
    ResultSel.reset <= reset
    io.output <= Pc.io.IP_out @[Main.scala 62:15]
    wire IPunit : SInt<32> @[Main.scala 63:22]
    IPunit <= Pc.io.IP_out @[Main.scala 64:12]
    node _IMemory_io_IPmem_in_T = asUInt(IPunit) @[Main.scala 65:35]
    IMemory.io.IPmem_in <= _IMemory_io_IPmem_in_T @[Main.scala 65:25]
    node _Controler_io_opcode_T = bits(IMemory.io.instruction, 6, 0) @[Main.scala 68:50]
    Controler.io.opcode <= _Controler_io_opcode_T @[Main.scala 68:25]
    node _Controler_io_funct3_T = bits(IMemory.io.instruction, 14, 12) @[Main.scala 69:50]
    Controler.io.funct3 <= _Controler_io_funct3_T @[Main.scala 69:25]
    node _Controler_io_funct7_T = bits(IMemory.io.instruction, 31, 25) @[Main.scala 70:50]
    Controler.io.funct7 <= _Controler_io_funct7_T @[Main.scala 70:25]
    PcCtrl.io.PcCtrl <= Controler.io.PcCtrl @[Main.scala 72:22]
    RegisterFile.io.RegWrite <= Controler.io.RegWrite @[Main.scala 75:30]
    node _RegisterFile_io_addrwr_T = bits(IMemory.io.instruction, 11, 7) @[Main.scala 76:53]
    RegisterFile.io.addrwr <= _RegisterFile_io_addrwr_T @[Main.scala 76:28]
    node _OPR1read_io_addrs1in_T = bits(IMemory.io.instruction, 19, 15) @[Main.scala 79:51]
    OPR1read.io.addrs1in <= _OPR1read_io_addrs1in_T @[Main.scala 79:26]
    RegisterFile.io.addr1 <= OPR1read.io.addrs1out @[Main.scala 80:27]
    OPR1read.io.datas1in <= RegisterFile.io.data1 @[Main.scala 81:26]
    node _OPR2read_io_addrs2in_T = bits(IMemory.io.instruction, 24, 20) @[Main.scala 93:51]
    OPR2read.io.addrs2in <= _OPR2read_io_addrs2in_T @[Main.scala 93:26]
    RegisterFile.io.addr2 <= OPR2read.io.addrs2out @[Main.scala 94:27]
    OPR2read.io.datas2in <= RegisterFile.io.data2 @[Main.scala 95:26]
    wire Stype : SInt<32> @[Main.scala 101:21]
    wire Btype : SInt<32> @[Main.scala 102:21]
    wire Jtype : SInt<32> @[Main.scala 103:21]
    node _Stype_T = bits(IMemory.io.instruction, 31, 25) @[Main.scala 105:40]
    node _Stype_T_1 = bits(IMemory.io.instruction, 11, 7) @[Main.scala 105:70]
    node _Stype_T_2 = cat(_Stype_T, _Stype_T_1) @[Cat.scala 31:58]
    node _Stype_T_3 = asSInt(_Stype_T_2) @[Main.scala 105:78]
    Stype <= _Stype_T_3 @[Main.scala 105:11]
    node _Btype_T = bits(IMemory.io.instruction, 31, 31) @[Main.scala 106:41]
    node _Btype_T_1 = bits(IMemory.io.instruction, 7, 7) @[Main.scala 106:68]
    node _Btype_T_2 = bits(IMemory.io.instruction, 30, 25) @[Main.scala 106:94]
    node _Btype_T_3 = bits(IMemory.io.instruction, 11, 8) @[Main.scala 106:124]
    node Btype_lo = cat(_Btype_T_2, _Btype_T_3) @[Cat.scala 31:58]
    node Btype_hi = cat(_Btype_T, _Btype_T_1) @[Cat.scala 31:58]
    node _Btype_T_4 = cat(Btype_hi, Btype_lo) @[Cat.scala 31:58]
    node _Btype_T_5 = asSInt(_Btype_T_4) @[Main.scala 106:132]
    Btype <= _Btype_T_5 @[Main.scala 106:11]
    node _Jtype_T = bits(IMemory.io.instruction, 31, 31) @[Main.scala 107:40]
    node _Jtype_T_1 = bits(IMemory.io.instruction, 19, 12) @[Main.scala 107:67]
    node _Jtype_T_2 = bits(IMemory.io.instruction, 20, 20) @[Main.scala 107:97]
    node _Jtype_T_3 = bits(IMemory.io.instruction, 30, 21) @[Main.scala 107:124]
    node Jtype_lo = cat(_Jtype_T_2, _Jtype_T_3) @[Cat.scala 31:58]
    node Jtype_hi = cat(_Jtype_T, _Jtype_T_1) @[Cat.scala 31:58]
    node _Jtype_T_4 = cat(Jtype_hi, Jtype_lo) @[Cat.scala 31:58]
    node _Jtype_T_5 = asSInt(_Jtype_T_4) @[Main.scala 107:133]
    Jtype <= _Jtype_T_5 @[Main.scala 107:11]
    Imm.io.ImmSrc <= Controler.io.ImmSrc @[Main.scala 108:19]
    node _Imm_io_Imm_Itype_T = bits(IMemory.io.instruction, 31, 31) @[Main.scala 113:60]
    node _Imm_io_Imm_Itype_T_1 = bits(_Imm_io_Imm_Itype_T, 0, 0) @[Bitwise.scala 74:15]
    node _Imm_io_Imm_Itype_T_2 = mux(_Imm_io_Imm_Itype_T_1, UInt<20>("hfffff"), UInt<20>("h0")) @[Bitwise.scala 74:12]
    node _Imm_io_Imm_Itype_T_3 = bits(IMemory.io.instruction, 31, 20) @[Main.scala 113:88]
    node _Imm_io_Imm_Itype_T_4 = cat(_Imm_io_Imm_Itype_T_2, _Imm_io_Imm_Itype_T_3) @[Cat.scala 31:58]
    node _Imm_io_Imm_Itype_T_5 = asSInt(_Imm_io_Imm_Itype_T_4) @[Main.scala 113:98]
    Imm.io.Imm_Itype <= _Imm_io_Imm_Itype_T_5 @[Main.scala 113:22]
    node _Imm_io_Imm_Stype_T = bits(Stype, 11, 11) @[Main.scala 114:43]
    node _Imm_io_Imm_Stype_T_1 = bits(_Imm_io_Imm_Stype_T, 0, 0) @[Bitwise.scala 74:15]
    node _Imm_io_Imm_Stype_T_2 = mux(_Imm_io_Imm_Stype_T_1, UInt<20>("hfffff"), UInt<20>("h0")) @[Bitwise.scala 74:12]
    node Imm_io_Imm_Stype_lo = asUInt(Stype) @[Cat.scala 31:58]
    node _Imm_io_Imm_Stype_T_3 = cat(_Imm_io_Imm_Stype_T_2, Imm_io_Imm_Stype_lo) @[Cat.scala 31:58]
    node _Imm_io_Imm_Stype_T_4 = asSInt(_Imm_io_Imm_Stype_T_3) @[Main.scala 114:57]
    Imm.io.Imm_Stype <= _Imm_io_Imm_Stype_T_4 @[Main.scala 114:22]
    node _Imm_io_Imm_Btype_T = bits(IMemory.io.instruction, 31, 31) @[Main.scala 115:60]
    node _Imm_io_Imm_Btype_T_1 = bits(_Imm_io_Imm_Btype_T, 0, 0) @[Bitwise.scala 74:15]
    node _Imm_io_Imm_Btype_T_2 = mux(_Imm_io_Imm_Btype_T_1, UInt<19>("h7ffff"), UInt<19>("h0")) @[Bitwise.scala 74:12]
    node Imm_io_Imm_Btype_lo = asUInt(Btype) @[Cat.scala 31:58]
    node _Imm_io_Imm_Btype_T_3 = cat(_Imm_io_Imm_Btype_T_2, Imm_io_Imm_Btype_lo) @[Cat.scala 31:58]
    node _Imm_io_Imm_Btype_T_4 = asSInt(_Imm_io_Imm_Btype_T_3) @[Main.scala 115:74]
    Imm.io.Imm_Btype <= _Imm_io_Imm_Btype_T_4 @[Main.scala 115:22]
    node _Imm_io_Imm_Jtype_T = bits(Jtype, 20, 20) @[Main.scala 116:43]
    node _Imm_io_Imm_Jtype_T_1 = bits(_Imm_io_Imm_Jtype_T, 0, 0) @[Bitwise.scala 74:15]
    node _Imm_io_Imm_Jtype_T_2 = mux(_Imm_io_Imm_Jtype_T_1, UInt<12>("hfff"), UInt<12>("h0")) @[Bitwise.scala 74:12]
    node Imm_io_Imm_Jtype_lo = asUInt(Jtype) @[Cat.scala 31:58]
    node _Imm_io_Imm_Jtype_T_3 = cat(_Imm_io_Imm_Jtype_T_2, Imm_io_Imm_Jtype_lo) @[Cat.scala 31:58]
    node _Imm_io_Imm_Jtype_T_4 = asSInt(_Imm_io_Imm_Jtype_T_3) @[Main.scala 116:57]
    Imm.io.Imm_Jtype <= _Imm_io_Imm_Jtype_T_4 @[Main.scala 116:22]
    ImmOpr2Sel.io.AluSrc <= Controler.io.AluSrc @[Main.scala 118:26]
    ImmOpr2Sel.io.Opr2_input <= OPR2read.io.datas2out @[Main.scala 119:30]
    ImmOpr2Sel.io.Imm_input <= Imm.io.Imm_output @[Main.scala 120:29]
    Jump.io.JmpCtrl <= Controler.io.JmpCtrl @[Main.scala 122:21]
    Jump.io.Jal_imm <= Imm.io.Imm_Jtype @[Main.scala 123:21]
    Jump.io.JalR_imm <= Imm.io.Imm_Itype @[Main.scala 124:22]
    Jump.io.Datas1 <= OPR1read.io.datas1out @[Main.scala 125:20]
    Branch.io.Br <= Controler.io.Br @[Main.scala 127:18]
    Branch.io.BrCtrl <= Controler.io.BrCtrl @[Main.scala 128:22]
    Branch.io.Datas1 <= OPR1read.io.datas1out @[Main.scala 130:22]
    Branch.io.Datas2 <= OPR2read.io.datas2out @[Main.scala 131:22]
    io.BrData1 <= Branch.io.Datas1 @[Main.scala 132:16]
    io.BrData2 <= Branch.io.Datas2 @[Main.scala 133:16]
    BrTarget.io.IP_init <= Pc.io.IP_out @[Main.scala 135:25]
    BrTarget.io.Br_up <= Branch.io.Br_up @[Main.scala 136:23]
    BrTarget.io.B_imm <= Imm.io.Imm_Btype @[Main.scala 137:23]
    io.Brpc <= BrTarget.io.IP_init @[Main.scala 139:13]
    io.Brimm <= BrTarget.io.B_imm @[Main.scala 140:14]
    io.BrDtaout <= BrTarget.io.B_output @[Main.scala 141:17]
    ADD.io.op1 <= OPR1read.io.datas1out @[Main.scala 143:16]
    ADD.io.op2 <= ImmOpr2Sel.io.ImmOp2Sel_output @[Main.scala 145:16]
    io.Data1 <= ADD.io.op1 @[Main.scala 147:14]
    io.Data2 <= ADD.io.op2 @[Main.scala 148:14]
    SUB.io.op1 <= OPR1read.io.datas1out @[Main.scala 150:16]
    SUB.io.op2 <= ImmOpr2Sel.io.ImmOp2Sel_output @[Main.scala 151:16]
    OR.io.op1 <= OPR1read.io.datas1out @[Main.scala 153:15]
    OR.io.op2 <= ImmOpr2Sel.io.ImmOp2Sel_output @[Main.scala 154:15]
    AND.io.op1 <= OPR1read.io.datas1out @[Main.scala 156:16]
    AND.io.op2 <= ImmOpr2Sel.io.ImmOp2Sel_output @[Main.scala 157:16]
    AluOutput.io.AluCtrl <= Controler.io.AluCtrl @[Main.scala 161:26]
    AluOutput.io.AddRes <= ADD.io.result @[Main.scala 162:25]
    AluOutput.io.SubRes <= SUB.io.result @[Main.scala 163:25]
    AluOutput.io.AndRes <= AND.io.result @[Main.scala 164:25]
    AluOutput.io.OrRes <= OR.io.result @[Main.scala 165:24]
    io.Dataout <= AluOutput.io.output @[Main.scala 167:16]
    wire AluoutUint : SInt<32> @[Main.scala 171:26]
    AluoutUint <= AluOutput.io.output @[Main.scala 172:16]
    DataMemory.io.MemWrite <= Controler.io.MemWrite @[Main.scala 173:28]
    node _DataMemory_io_ReadAddr_T = asUInt(AluoutUint) @[Main.scala 174:42]
    DataMemory.io.ReadAddr <= _DataMemory_io_ReadAddr_T @[Main.scala 174:28]
    DataMemory.io.dataSin <= OPR2read.io.datas2out @[Main.scala 175:27]
    ResultSel.io.ResSrc <= Controler.io.ResSrc @[Main.scala 179:25]
    ResultSel.io.ReadData <= DataMemory.io.ReadData @[Main.scala 180:27]
    ResultSel.io.AluRes <= AluOutput.io.output @[Main.scala 181:25]
    ResultSel.io.nextPcAddr <= PcInc.io.IPInc_out @[Main.scala 182:29]
    RegisterFile.io.datawr <= ResultSel.io.Result @[Main.scala 184:28]
    PcInc.io.IPInc_in <= Pc.io.IP_out @[Main.scala 187:23]
    PcCtrl.io.IP_incremented <= PcInc.io.IPInc_out @[Main.scala 190:30]
    PcCtrl.io.IP_Branched <= BrTarget.io.B_output @[Main.scala 191:27]
    PcCtrl.io.IP_Jumped <= Jump.io.J_output @[Main.scala 192:25]
    Pc.io.IP_in <= PcCtrl.io.IP @[Main.scala 194:17]

