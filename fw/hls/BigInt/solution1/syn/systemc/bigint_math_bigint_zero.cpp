// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.2
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "bigint_math_bigint_zero.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic bigint_math_bigint_zero::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic bigint_math_bigint_zero::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<2> bigint_math_bigint_zero::ap_ST_st1_fsm_0 = "1";
const sc_lv<2> bigint_math_bigint_zero::ap_ST_st2_fsm_1 = "10";
const sc_lv<32> bigint_math_bigint_zero::ap_const_lv32_0 = "00000000000000000000000000000000";
const sc_lv<1> bigint_math_bigint_zero::ap_const_lv1_1 = "1";
const sc_lv<32> bigint_math_bigint_zero::ap_const_lv32_1 = "1";
const sc_lv<9> bigint_math_bigint_zero::ap_const_lv9_0 = "000000000";
const sc_lv<1> bigint_math_bigint_zero::ap_const_lv1_0 = "0";
const sc_lv<8> bigint_math_bigint_zero::ap_const_lv8_0 = "00000000";
const sc_lv<9> bigint_math_bigint_zero::ap_const_lv9_100 = "100000000";
const sc_lv<9> bigint_math_bigint_zero::ap_const_lv9_1 = "1";

bigint_math_bigint_zero::bigint_math_bigint_zero(sc_module_name name) : sc_module(name), mVcdFile(0) {

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_start );
    sensitive << ( ap_sig_cseq_ST_st1_fsm_0 );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_sig_cseq_ST_st1_fsm_0 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( ap_sig_cseq_ST_st2_fsm_1 );
    sensitive << ( exitcond_fu_48_p2 );

    SC_METHOD(thread_ap_sig_19);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_sig_37);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_sig_cseq_ST_st1_fsm_0);
    sensitive << ( ap_sig_19 );

    SC_METHOD(thread_ap_sig_cseq_ST_st2_fsm_1);
    sensitive << ( ap_sig_37 );

    SC_METHOD(thread_exitcond_fu_48_p2);
    sensitive << ( ap_sig_cseq_ST_st2_fsm_1 );
    sensitive << ( i_reg_37 );

    SC_METHOD(thread_i_1_fu_54_p2);
    sensitive << ( i_reg_37 );

    SC_METHOD(thread_in_r_address0);
    sensitive << ( ap_sig_cseq_ST_st2_fsm_1 );
    sensitive << ( tmp_fu_60_p1 );

    SC_METHOD(thread_in_r_ce0);
    sensitive << ( ap_sig_cseq_ST_st2_fsm_1 );

    SC_METHOD(thread_in_r_d0);
    sensitive << ( ap_sig_cseq_ST_st2_fsm_1 );

    SC_METHOD(thread_in_r_we0);
    sensitive << ( ap_sig_cseq_ST_st2_fsm_1 );
    sensitive << ( exitcond_fu_48_p2 );

    SC_METHOD(thread_tmp_fu_60_p1);
    sensitive << ( i_reg_37 );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm );
    sensitive << ( exitcond_fu_48_p2 );

    ap_CS_fsm = "01";
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "bigint_math_bigint_zero_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT_HIER__
    sc_trace(mVcdFile, ap_clk, "(port)ap_clk");
    sc_trace(mVcdFile, ap_rst, "(port)ap_rst");
    sc_trace(mVcdFile, ap_start, "(port)ap_start");
    sc_trace(mVcdFile, ap_done, "(port)ap_done");
    sc_trace(mVcdFile, ap_idle, "(port)ap_idle");
    sc_trace(mVcdFile, ap_ready, "(port)ap_ready");
    sc_trace(mVcdFile, in_r_address0, "(port)in_r_address0");
    sc_trace(mVcdFile, in_r_ce0, "(port)in_r_ce0");
    sc_trace(mVcdFile, in_r_we0, "(port)in_r_we0");
    sc_trace(mVcdFile, in_r_d0, "(port)in_r_d0");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_sig_cseq_ST_st1_fsm_0, "ap_sig_cseq_ST_st1_fsm_0");
    sc_trace(mVcdFile, ap_sig_19, "ap_sig_19");
    sc_trace(mVcdFile, i_1_fu_54_p2, "i_1_fu_54_p2");
    sc_trace(mVcdFile, ap_sig_cseq_ST_st2_fsm_1, "ap_sig_cseq_ST_st2_fsm_1");
    sc_trace(mVcdFile, ap_sig_37, "ap_sig_37");
    sc_trace(mVcdFile, i_reg_37, "i_reg_37");
    sc_trace(mVcdFile, exitcond_fu_48_p2, "exitcond_fu_48_p2");
    sc_trace(mVcdFile, tmp_fu_60_p1, "tmp_fu_60_p1");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
#endif

    }
}

bigint_math_bigint_zero::~bigint_math_bigint_zero() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

}

void bigint_math_bigint_zero::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_st1_fsm_0;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st2_fsm_1.read()) && 
         esl_seteq<1,1,1>(exitcond_fu_48_p2.read(), ap_const_lv1_0))) {
        i_reg_37 = i_1_fu_54_p2.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st1_fsm_0.read()) && 
                !esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_0))) {
        i_reg_37 = ap_const_lv9_0;
    }
}

void bigint_math_bigint_zero::thread_ap_done() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st1_fsm_0.read()))) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_const_logic_0;
    }
}

void bigint_math_bigint_zero::thread_ap_idle() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st1_fsm_0.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void bigint_math_bigint_zero::thread_ap_ready() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st2_fsm_1.read()) && 
         !esl_seteq<1,1,1>(exitcond_fu_48_p2.read(), ap_const_lv1_0))) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void bigint_math_bigint_zero::thread_ap_sig_19() {
    ap_sig_19 = esl_seteq<1,1,1>(ap_CS_fsm.read().range(0, 0), ap_const_lv1_1);
}

void bigint_math_bigint_zero::thread_ap_sig_37() {
    ap_sig_37 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(1, 1));
}

void bigint_math_bigint_zero::thread_ap_sig_cseq_ST_st1_fsm_0() {
    if (ap_sig_19.read()) {
        ap_sig_cseq_ST_st1_fsm_0 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st1_fsm_0 = ap_const_logic_0;
    }
}

void bigint_math_bigint_zero::thread_ap_sig_cseq_ST_st2_fsm_1() {
    if (ap_sig_37.read()) {
        ap_sig_cseq_ST_st2_fsm_1 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st2_fsm_1 = ap_const_logic_0;
    }
}

void bigint_math_bigint_zero::thread_exitcond_fu_48_p2() {
    exitcond_fu_48_p2 = (!i_reg_37.read().is_01() || !ap_const_lv9_100.is_01())? sc_lv<1>(): sc_lv<1>(i_reg_37.read() == ap_const_lv9_100);
}

void bigint_math_bigint_zero::thread_i_1_fu_54_p2() {
    i_1_fu_54_p2 = (!i_reg_37.read().is_01() || !ap_const_lv9_1.is_01())? sc_lv<9>(): (sc_biguint<9>(i_reg_37.read()) + sc_biguint<9>(ap_const_lv9_1));
}

void bigint_math_bigint_zero::thread_in_r_address0() {
    in_r_address0 =  (sc_lv<8>) (tmp_fu_60_p1.read());
}

void bigint_math_bigint_zero::thread_in_r_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st2_fsm_1.read())) {
        in_r_ce0 = ap_const_logic_1;
    } else {
        in_r_ce0 = ap_const_logic_0;
    }
}

void bigint_math_bigint_zero::thread_in_r_d0() {
    in_r_d0 = ap_const_lv8_0;
}

void bigint_math_bigint_zero::thread_in_r_we0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st2_fsm_1.read()) && 
          esl_seteq<1,1,1>(exitcond_fu_48_p2.read(), ap_const_lv1_0)))) {
        in_r_we0 = ap_const_logic_1;
    } else {
        in_r_we0 = ap_const_logic_0;
    }
}

void bigint_math_bigint_zero::thread_tmp_fu_60_p1() {
    tmp_fu_60_p1 = esl_zext<64,9>(i_reg_37.read());
}

void bigint_math_bigint_zero::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            if (!esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_0)) {
                ap_NS_fsm = ap_ST_st2_fsm_1;
            } else {
                ap_NS_fsm = ap_ST_st1_fsm_0;
            }
            break;
        case 2 : 
            if (!esl_seteq<1,1,1>(exitcond_fu_48_p2.read(), ap_const_lv1_0)) {
                ap_NS_fsm = ap_ST_st1_fsm_0;
            } else {
                ap_NS_fsm = ap_ST_st2_fsm_1;
            }
            break;
        default : 
            ap_NS_fsm = "XX";
            break;
    }
}

}

