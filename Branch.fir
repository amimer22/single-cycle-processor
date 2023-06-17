circuit Branch :
  module Branch :
    input clock : Clock
    input reset : UInt<1>
    output io : { flip BrCtrl : UInt<5>, flip Br : UInt<1>, flip Datas1 : SInt<32>, flip Datas2 : SInt<32>, Br_up : UInt<1>}

    wire sig : UInt<1> @[Branch.scala 15:19]
    sig <= UInt<1>("h0") @[Branch.scala 16:9]
    node _T = eq(UInt<5>("h10"), io.BrCtrl) @[Branch.scala 17:22]
    when _T : @[Branch.scala 17:22]
      node _sig_T = eq(io.Datas1, io.Datas2) @[Branch.scala 18:39]
      sig <= _sig_T @[Branch.scala 18:27]
    else :
      node _T_1 = eq(UInt<5>("h11"), io.BrCtrl) @[Branch.scala 17:22]
      when _T_1 : @[Branch.scala 17:22]
        node _sig_T_1 = neq(io.Datas1, io.Datas2) @[Branch.scala 19:39]
        sig <= _sig_T_1 @[Branch.scala 19:27]
      else :
        node _T_2 = eq(UInt<5>("h14"), io.BrCtrl) @[Branch.scala 17:22]
        when _T_2 : @[Branch.scala 17:22]
          node _sig_T_2 = leq(io.Datas1, io.Datas2) @[Branch.scala 20:38]
          sig <= _sig_T_2 @[Branch.scala 20:27]
        else :
          node _T_3 = eq(UInt<5>("h15"), io.BrCtrl) @[Branch.scala 17:22]
          when _T_3 : @[Branch.scala 17:22]
            node _sig_T_3 = geq(io.Datas1, io.Datas2) @[Branch.scala 21:38]
            sig <= _sig_T_3 @[Branch.scala 21:27]
          else :
            node _T_4 = eq(UInt<5>("h16"), io.BrCtrl) @[Branch.scala 17:22]
            when _T_4 : @[Branch.scala 17:22]
              node _sig_T_4 = lt(io.Datas1, io.Datas2) @[Branch.scala 22:38]
              sig <= _sig_T_4 @[Branch.scala 22:27]
            else :
              node _T_5 = eq(UInt<5>("h17"), io.BrCtrl) @[Branch.scala 17:22]
              when _T_5 : @[Branch.scala 17:22]
                node _sig_T_5 = gt(io.Datas1, io.Datas2) @[Branch.scala 23:38]
                sig <= _sig_T_5 @[Branch.scala 23:27]
    node _io_Br_up_T = and(io.Br, sig) @[Branch.scala 26:23]
    io.Br_up <= _io_Br_up_T @[Branch.scala 26:14]

