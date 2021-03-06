// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.2
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "bigint_math_bigint_compare.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_logic bigint_math_bigint_compare::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic bigint_math_bigint_compare::ap_const_logic_0 = sc_dt::Log_0;
const sc_lv<6> bigint_math_bigint_compare::ap_ST_st1_fsm_0 = "1";
const sc_lv<6> bigint_math_bigint_compare::ap_ST_st2_fsm_1 = "10";
const sc_lv<6> bigint_math_bigint_compare::ap_ST_st3_fsm_2 = "100";
const sc_lv<6> bigint_math_bigint_compare::ap_ST_st4_fsm_3 = "1000";
const sc_lv<6> bigint_math_bigint_compare::ap_ST_st5_fsm_4 = "10000";
const sc_lv<6> bigint_math_bigint_compare::ap_ST_st6_fsm_5 = "100000";
const sc_lv<32> bigint_math_bigint_compare::ap_const_lv32_0 = "00000000000000000000000000000000";
const sc_lv<1> bigint_math_bigint_compare::ap_const_lv1_1 = "1";
const sc_lv<32> bigint_math_bigint_compare::ap_const_lv32_1 = "1";
const sc_lv<1> bigint_math_bigint_compare::ap_const_lv1_0 = "0";
const sc_lv<32> bigint_math_bigint_compare::ap_const_lv32_3 = "11";
const sc_lv<32> bigint_math_bigint_compare::ap_const_lv32_4 = "100";
const sc_lv<32> bigint_math_bigint_compare::ap_const_lv32_5 = "101";
const sc_lv<9> bigint_math_bigint_compare::ap_const_lv9_0 = "000000000";
const sc_lv<32> bigint_math_bigint_compare::ap_const_lv32_2 = "10";
const sc_lv<2> bigint_math_bigint_compare::ap_const_lv2_0 = "00";
const sc_lv<2> bigint_math_bigint_compare::ap_const_lv2_1 = "1";
const sc_lv<2> bigint_math_bigint_compare::ap_const_lv2_3 = "11";
const sc_lv<64> bigint_math_bigint_compare::ap_const_lv64_0 = "0000000000000000000000000000000000000000000000000000000000000000";
const sc_lv<9> bigint_math_bigint_compare::ap_const_lv9_100 = "100000000";
const sc_lv<9> bigint_math_bigint_compare::ap_const_lv9_1 = "1";
const sc_lv<32> bigint_math_bigint_compare::ap_const_lv32_8 = "1000";

bigint_math_bigint_compare::bigint_math_bigint_compare(sc_module_name name) : sc_module(name), mVcdFile(0) {
    state_U = new bigint_math_bigint_compare_state("state_U");
    state_U->clk(ap_clk);
    state_U->reset(ap_rst);
    state_U->address0(state_address0);
    state_U->ce0(state_ce0);
    state_U->we0(state_we0);
    state_U->d0(state_d0);
    state_U->q0(state_q0);

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_a_address0);
    sensitive << ( ap_sig_cseq_ST_st2_fsm_1 );
    sensitive << ( tmp_s_fu_184_p1 );

    SC_METHOD(thread_a_ce0);
    sensitive << ( ap_sig_cseq_ST_st2_fsm_1 );

    SC_METHOD(thread_ap_done);
    sensitive << ( ap_start );
    sensitive << ( ap_sig_cseq_ST_st1_fsm_0 );
    sensitive << ( tmp_reg_309 );
    sensitive << ( tmp_21_reg_313 );
    sensitive << ( ap_sig_cseq_ST_st6_fsm_5 );
    sensitive << ( or_cond1_fu_259_p2 );
    sensitive << ( or_cond_fu_247_p2 );

    SC_METHOD(thread_ap_idle);
    sensitive << ( ap_start );
    sensitive << ( ap_sig_cseq_ST_st1_fsm_0 );

    SC_METHOD(thread_ap_ready);
    sensitive << ( tmp_reg_309 );
    sensitive << ( tmp_21_reg_313 );
    sensitive << ( ap_sig_cseq_ST_st6_fsm_5 );
    sensitive << ( or_cond1_fu_259_p2 );
    sensitive << ( or_cond_fu_247_p2 );

    SC_METHOD(thread_ap_return);
    sensitive << ( tmp_reg_309 );
    sensitive << ( tmp_21_reg_313 );
    sensitive << ( ap_sig_cseq_ST_st6_fsm_5 );
    sensitive << ( or_cond1_fu_259_p2 );
    sensitive << ( or_cond_fu_247_p2 );
    sensitive << ( p_0_phi_fu_153_p8 );
    sensitive << ( ap_return_preg );

    SC_METHOD(thread_ap_sig_102);
    sensitive << ( tmp_reg_309 );
    sensitive << ( tmp_21_reg_313 );
    sensitive << ( ap_sig_cseq_ST_st6_fsm_5 );

    SC_METHOD(thread_ap_sig_122);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_sig_167);
    sensitive << ( tmp_85_fu_190_p2 );
    sensitive << ( tmp_86_fu_196_p2 );
    sensitive << ( tmp_91_fu_202_p2 );

    SC_METHOD(thread_ap_sig_171);
    sensitive << ( tmp_85_fu_190_p2 );
    sensitive << ( tmp_86_fu_196_p2 );

    SC_METHOD(thread_ap_sig_23);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_sig_272);
    sensitive << ( or_cond1_fu_259_p2 );
    sensitive << ( or_cond_fu_247_p2 );

    SC_METHOD(thread_ap_sig_46);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_sig_69);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_sig_80);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_sig_95);
    sensitive << ( ap_CS_fsm );

    SC_METHOD(thread_ap_sig_cseq_ST_st1_fsm_0);
    sensitive << ( ap_sig_23 );

    SC_METHOD(thread_ap_sig_cseq_ST_st2_fsm_1);
    sensitive << ( ap_sig_46 );

    SC_METHOD(thread_ap_sig_cseq_ST_st3_fsm_2);
    sensitive << ( ap_sig_122 );

    SC_METHOD(thread_ap_sig_cseq_ST_st4_fsm_3);
    sensitive << ( ap_sig_69 );

    SC_METHOD(thread_ap_sig_cseq_ST_st5_fsm_4);
    sensitive << ( ap_sig_80 );

    SC_METHOD(thread_ap_sig_cseq_ST_st6_fsm_5);
    sensitive << ( ap_sig_95 );

    SC_METHOD(thread_b_address0);
    sensitive << ( ap_sig_cseq_ST_st2_fsm_1 );
    sensitive << ( tmp_s_fu_184_p1 );

    SC_METHOD(thread_b_ce0);
    sensitive << ( ap_sig_cseq_ST_st2_fsm_1 );

    SC_METHOD(thread_exitcond_fu_172_p2);
    sensitive << ( ap_sig_cseq_ST_st2_fsm_1 );
    sensitive << ( i_reg_115 );

    SC_METHOD(thread_grp_fu_166_p2);
    sensitive << ( state_q0 );
    sensitive << ( ap_sig_cseq_ST_st4_fsm_3 );
    sensitive << ( tmp_reg_309 );
    sensitive << ( tmp_21_reg_313 );
    sensitive << ( ap_sig_cseq_ST_st6_fsm_5 );

    SC_METHOD(thread_i_12_fu_178_p2);
    sensitive << ( i_reg_115 );

    SC_METHOD(thread_i_2_fu_216_p2);
    sensitive << ( i_1_reg_126 );

    SC_METHOD(thread_or_cond1_fu_259_p2);
    sensitive << ( tmp_90_fu_241_p2 );
    sensitive << ( tmp_92_fu_253_p2 );

    SC_METHOD(thread_or_cond_fu_247_p2);
    sensitive << ( tmp_89_fu_235_p2 );
    sensitive << ( tmp_90_fu_241_p2 );

    SC_METHOD(thread_p_0_phi_fu_153_p8);
    sensitive << ( or_cond_fu_247_p2 );
    sensitive << ( p_0_reg_149 );
    sensitive << ( ap_sig_272 );
    sensitive << ( ap_sig_102 );

    SC_METHOD(thread_p_flag_fu_227_p3);
    sensitive << ( grp_fu_166_p2 );
    sensitive << ( flag_reg_137 );

    SC_METHOD(thread_state_addr_1_gep_fu_100_p3);
    sensitive << ( tmp_s_reg_273 );
    sensitive << ( ap_sig_cseq_ST_st3_fsm_2 );
    sensitive << ( tmp_85_fu_190_p2 );

    SC_METHOD(thread_state_addr_2_gep_fu_92_p3);
    sensitive << ( tmp_s_reg_273 );
    sensitive << ( ap_sig_cseq_ST_st3_fsm_2 );
    sensitive << ( tmp_85_fu_190_p2 );
    sensitive << ( tmp_86_fu_196_p2 );

    SC_METHOD(thread_state_address0);
    sensitive << ( ap_sig_cseq_ST_st2_fsm_1 );
    sensitive << ( tmp_s_reg_273 );
    sensitive << ( ap_sig_cseq_ST_st5_fsm_4 );
    sensitive << ( ap_sig_cseq_ST_st3_fsm_2 );
    sensitive << ( tmp_85_fu_190_p2 );
    sensitive << ( tmp_86_fu_196_p2 );
    sensitive << ( tmp_91_fu_202_p2 );
    sensitive << ( state_addr_2_gep_fu_92_p3 );
    sensitive << ( state_addr_1_gep_fu_100_p3 );
    sensitive << ( tmp_87_fu_222_p1 );

    SC_METHOD(thread_state_ce0);
    sensitive << ( ap_sig_cseq_ST_st2_fsm_1 );
    sensitive << ( ap_sig_cseq_ST_st5_fsm_4 );
    sensitive << ( ap_sig_cseq_ST_st3_fsm_2 );
    sensitive << ( tmp_85_fu_190_p2 );
    sensitive << ( tmp_86_fu_196_p2 );
    sensitive << ( tmp_91_fu_202_p2 );

    SC_METHOD(thread_state_d0);
    sensitive << ( ap_sig_cseq_ST_st3_fsm_2 );
    sensitive << ( tmp_85_fu_190_p2 );
    sensitive << ( ap_sig_167 );
    sensitive << ( ap_sig_171 );

    SC_METHOD(thread_state_we0);
    sensitive << ( ap_sig_cseq_ST_st3_fsm_2 );
    sensitive << ( tmp_85_fu_190_p2 );
    sensitive << ( tmp_86_fu_196_p2 );
    sensitive << ( tmp_91_fu_202_p2 );

    SC_METHOD(thread_tmp_21_fu_208_p3);
    sensitive << ( i_1_reg_126 );

    SC_METHOD(thread_tmp_85_fu_190_p2);
    sensitive << ( a_q0 );
    sensitive << ( b_q0 );
    sensitive << ( ap_sig_cseq_ST_st3_fsm_2 );

    SC_METHOD(thread_tmp_86_fu_196_p2);
    sensitive << ( a_q0 );
    sensitive << ( b_q0 );
    sensitive << ( ap_sig_cseq_ST_st3_fsm_2 );
    sensitive << ( tmp_85_fu_190_p2 );

    SC_METHOD(thread_tmp_87_fu_222_p1);
    sensitive << ( i_1_reg_126 );

    SC_METHOD(thread_tmp_89_fu_235_p2);
    sensitive << ( state_q0 );
    sensitive << ( tmp_reg_309 );
    sensitive << ( tmp_21_reg_313 );
    sensitive << ( ap_sig_cseq_ST_st6_fsm_5 );

    SC_METHOD(thread_tmp_90_fu_241_p2);
    sensitive << ( tmp_reg_309 );
    sensitive << ( tmp_21_reg_313 );
    sensitive << ( p_flag_fu_227_p3 );
    sensitive << ( ap_sig_cseq_ST_st6_fsm_5 );

    SC_METHOD(thread_tmp_91_fu_202_p2);
    sensitive << ( a_q0 );
    sensitive << ( b_q0 );
    sensitive << ( ap_sig_cseq_ST_st3_fsm_2 );
    sensitive << ( tmp_85_fu_190_p2 );
    sensitive << ( tmp_86_fu_196_p2 );

    SC_METHOD(thread_tmp_92_fu_253_p2);
    sensitive << ( state_q0 );
    sensitive << ( tmp_reg_309 );
    sensitive << ( tmp_21_reg_313 );
    sensitive << ( ap_sig_cseq_ST_st6_fsm_5 );
    sensitive << ( or_cond_fu_247_p2 );

    SC_METHOD(thread_tmp_s_fu_184_p1);
    sensitive << ( i_reg_115 );

    SC_METHOD(thread_ap_NS_fsm);
    sensitive << ( ap_start );
    sensitive << ( ap_CS_fsm );
    sensitive << ( exitcond_fu_172_p2 );
    sensitive << ( grp_fu_166_p2 );
    sensitive << ( tmp_reg_309 );
    sensitive << ( tmp_21_reg_313 );
    sensitive << ( or_cond1_fu_259_p2 );
    sensitive << ( or_cond_fu_247_p2 );

    ap_CS_fsm = "000001";
    ap_return_preg = "00";
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "bigint_math_bigint_compare_sc_trace_" << apTFileNum ++;
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
    sc_trace(mVcdFile, a_address0, "(port)a_address0");
    sc_trace(mVcdFile, a_ce0, "(port)a_ce0");
    sc_trace(mVcdFile, a_q0, "(port)a_q0");
    sc_trace(mVcdFile, b_address0, "(port)b_address0");
    sc_trace(mVcdFile, b_ce0, "(port)b_ce0");
    sc_trace(mVcdFile, b_q0, "(port)b_q0");
    sc_trace(mVcdFile, ap_return, "(port)ap_return");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_CS_fsm, "ap_CS_fsm");
    sc_trace(mVcdFile, ap_sig_cseq_ST_st1_fsm_0, "ap_sig_cseq_ST_st1_fsm_0");
    sc_trace(mVcdFile, ap_sig_23, "ap_sig_23");
    sc_trace(mVcdFile, i_12_fu_178_p2, "i_12_fu_178_p2");
    sc_trace(mVcdFile, i_12_reg_268, "i_12_reg_268");
    sc_trace(mVcdFile, ap_sig_cseq_ST_st2_fsm_1, "ap_sig_cseq_ST_st2_fsm_1");
    sc_trace(mVcdFile, ap_sig_46, "ap_sig_46");
    sc_trace(mVcdFile, tmp_s_fu_184_p1, "tmp_s_fu_184_p1");
    sc_trace(mVcdFile, tmp_s_reg_273, "tmp_s_reg_273");
    sc_trace(mVcdFile, exitcond_fu_172_p2, "exitcond_fu_172_p2");
    sc_trace(mVcdFile, state_q0, "state_q0");
    sc_trace(mVcdFile, ap_sig_cseq_ST_st4_fsm_3, "ap_sig_cseq_ST_st4_fsm_3");
    sc_trace(mVcdFile, ap_sig_69, "ap_sig_69");
    sc_trace(mVcdFile, grp_fu_166_p2, "grp_fu_166_p2");
    sc_trace(mVcdFile, tmp_reg_309, "tmp_reg_309");
    sc_trace(mVcdFile, tmp_21_fu_208_p3, "tmp_21_fu_208_p3");
    sc_trace(mVcdFile, tmp_21_reg_313, "tmp_21_reg_313");
    sc_trace(mVcdFile, ap_sig_cseq_ST_st5_fsm_4, "ap_sig_cseq_ST_st5_fsm_4");
    sc_trace(mVcdFile, ap_sig_80, "ap_sig_80");
    sc_trace(mVcdFile, i_2_fu_216_p2, "i_2_fu_216_p2");
    sc_trace(mVcdFile, i_2_reg_317, "i_2_reg_317");
    sc_trace(mVcdFile, p_flag_fu_227_p3, "p_flag_fu_227_p3");
    sc_trace(mVcdFile, ap_sig_cseq_ST_st6_fsm_5, "ap_sig_cseq_ST_st6_fsm_5");
    sc_trace(mVcdFile, ap_sig_95, "ap_sig_95");
    sc_trace(mVcdFile, state_address0, "state_address0");
    sc_trace(mVcdFile, state_ce0, "state_ce0");
    sc_trace(mVcdFile, state_we0, "state_we0");
    sc_trace(mVcdFile, state_d0, "state_d0");
    sc_trace(mVcdFile, i_reg_115, "i_reg_115");
    sc_trace(mVcdFile, ap_sig_cseq_ST_st3_fsm_2, "ap_sig_cseq_ST_st3_fsm_2");
    sc_trace(mVcdFile, ap_sig_122, "ap_sig_122");
    sc_trace(mVcdFile, i_1_reg_126, "i_1_reg_126");
    sc_trace(mVcdFile, or_cond1_fu_259_p2, "or_cond1_fu_259_p2");
    sc_trace(mVcdFile, or_cond_fu_247_p2, "or_cond_fu_247_p2");
    sc_trace(mVcdFile, flag_reg_137, "flag_reg_137");
    sc_trace(mVcdFile, p_0_phi_fu_153_p8, "p_0_phi_fu_153_p8");
    sc_trace(mVcdFile, p_0_reg_149, "p_0_reg_149");
    sc_trace(mVcdFile, tmp_85_fu_190_p2, "tmp_85_fu_190_p2");
    sc_trace(mVcdFile, tmp_86_fu_196_p2, "tmp_86_fu_196_p2");
    sc_trace(mVcdFile, tmp_91_fu_202_p2, "tmp_91_fu_202_p2");
    sc_trace(mVcdFile, state_addr_2_gep_fu_92_p3, "state_addr_2_gep_fu_92_p3");
    sc_trace(mVcdFile, state_addr_1_gep_fu_100_p3, "state_addr_1_gep_fu_100_p3");
    sc_trace(mVcdFile, tmp_87_fu_222_p1, "tmp_87_fu_222_p1");
    sc_trace(mVcdFile, tmp_89_fu_235_p2, "tmp_89_fu_235_p2");
    sc_trace(mVcdFile, tmp_90_fu_241_p2, "tmp_90_fu_241_p2");
    sc_trace(mVcdFile, tmp_92_fu_253_p2, "tmp_92_fu_253_p2");
    sc_trace(mVcdFile, ap_return_preg, "ap_return_preg");
    sc_trace(mVcdFile, ap_NS_fsm, "ap_NS_fsm");
    sc_trace(mVcdFile, ap_sig_272, "ap_sig_272");
    sc_trace(mVcdFile, ap_sig_102, "ap_sig_102");
    sc_trace(mVcdFile, ap_sig_167, "ap_sig_167");
    sc_trace(mVcdFile, ap_sig_171, "ap_sig_171");
#endif

    }
}

bigint_math_bigint_compare::~bigint_math_bigint_compare() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

    delete state_U;
}

void bigint_math_bigint_compare::thread_ap_clk_no_reset_() {
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_CS_fsm = ap_ST_st1_fsm_0;
    } else {
        ap_CS_fsm = ap_NS_fsm.read();
    }
    if ( ap_rst.read() == ap_const_logic_1) {
        ap_return_preg = ap_const_lv2_0;
    } else {
        if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st6_fsm_5.read()) && 
             (esl_seteq<1,1,1>(ap_const_lv1_0, tmp_reg_309.read()) || 
              !esl_seteq<1,1,1>(ap_const_lv1_0, or_cond_fu_247_p2.read()) || 
              !esl_seteq<1,1,1>(ap_const_lv1_0, or_cond1_fu_259_p2.read()) || 
              !esl_seteq<1,1,1>(ap_const_lv1_0, tmp_21_reg_313.read())))) {
            ap_return_preg = p_0_phi_fu_153_p8.read();
        }
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st4_fsm_3.read()) && 
         !esl_seteq<1,1,1>(ap_const_lv1_0, grp_fu_166_p2.read()))) {
        flag_reg_137 = ap_const_lv32_0;
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st6_fsm_5.read()) && 
                !esl_seteq<1,1,1>(ap_const_lv1_0, tmp_reg_309.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, tmp_21_reg_313.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, or_cond1_fu_259_p2.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, or_cond_fu_247_p2.read()))) {
        flag_reg_137 = p_flag_fu_227_p3.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st4_fsm_3.read()) && 
         !esl_seteq<1,1,1>(ap_const_lv1_0, grp_fu_166_p2.read()))) {
        i_1_reg_126 = ap_const_lv9_0;
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st6_fsm_5.read()) && 
                !esl_seteq<1,1,1>(ap_const_lv1_0, tmp_reg_309.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, tmp_21_reg_313.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, or_cond1_fu_259_p2.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, or_cond_fu_247_p2.read()))) {
        i_1_reg_126 = i_2_reg_317.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st3_fsm_2.read())) {
        i_reg_115 = i_12_reg_268.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st1_fsm_0.read()) && 
                !esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_0))) {
        i_reg_115 = ap_const_lv9_0;
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st6_fsm_5.read()) && 
         !esl_seteq<1,1,1>(ap_const_lv1_0, tmp_reg_309.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, tmp_21_reg_313.read()) && 
         esl_seteq<1,1,1>(ap_const_lv1_0, or_cond_fu_247_p2.read()) && 
         !esl_seteq<1,1,1>(ap_const_lv1_0, or_cond1_fu_259_p2.read()))) {
        p_0_reg_149 = ap_const_lv2_3;
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st6_fsm_5.read()) && 
                !esl_seteq<1,1,1>(ap_const_lv1_0, tmp_reg_309.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, tmp_21_reg_313.read()) && 
                !esl_seteq<1,1,1>(ap_const_lv1_0, or_cond_fu_247_p2.read()))) {
        p_0_reg_149 = ap_const_lv2_1;
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st5_fsm_4.read()) && 
                !esl_seteq<1,1,1>(ap_const_lv1_0, tmp_21_fu_208_p3.read()))) {
        p_0_reg_149 = ap_const_lv2_0;
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st4_fsm_3.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, grp_fu_166_p2.read()))) {
        p_0_reg_149 = state_q0.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st2_fsm_1.read())) {
        i_12_reg_268 = i_12_fu_178_p2.read();
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st5_fsm_4.read())) {
        i_2_reg_317 = i_2_fu_216_p2.read();
        tmp_21_reg_313 = i_1_reg_126.read().range(8, 8);
    }
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st4_fsm_3.read())) {
        tmp_reg_309 = grp_fu_166_p2.read();
    }
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st2_fsm_1.read()) && esl_seteq<1,1,1>(exitcond_fu_172_p2.read(), ap_const_lv1_0))) {
        tmp_s_reg_273 = tmp_s_fu_184_p1.read();
    }
}

void bigint_math_bigint_compare::thread_a_address0() {
    a_address0 =  (sc_lv<8>) (tmp_s_fu_184_p1.read());
}

void bigint_math_bigint_compare::thread_a_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st2_fsm_1.read())) {
        a_ce0 = ap_const_logic_1;
    } else {
        a_ce0 = ap_const_logic_0;
    }
}

void bigint_math_bigint_compare::thread_ap_done() {
    if (((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
          esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st1_fsm_0.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st6_fsm_5.read()) && 
          (esl_seteq<1,1,1>(ap_const_lv1_0, tmp_reg_309.read()) || 
           !esl_seteq<1,1,1>(ap_const_lv1_0, or_cond_fu_247_p2.read()) || 
           !esl_seteq<1,1,1>(ap_const_lv1_0, or_cond1_fu_259_p2.read()) || 
           !esl_seteq<1,1,1>(ap_const_lv1_0, tmp_21_reg_313.read()))))) {
        ap_done = ap_const_logic_1;
    } else {
        ap_done = ap_const_logic_0;
    }
}

void bigint_math_bigint_compare::thread_ap_idle() {
    if ((esl_seteq<1,1,1>(ap_const_logic_0, ap_start.read()) && 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st1_fsm_0.read()))) {
        ap_idle = ap_const_logic_1;
    } else {
        ap_idle = ap_const_logic_0;
    }
}

void bigint_math_bigint_compare::thread_ap_ready() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st6_fsm_5.read()) && 
         (esl_seteq<1,1,1>(ap_const_lv1_0, tmp_reg_309.read()) || 
          !esl_seteq<1,1,1>(ap_const_lv1_0, or_cond_fu_247_p2.read()) || 
          !esl_seteq<1,1,1>(ap_const_lv1_0, or_cond1_fu_259_p2.read()) || 
          !esl_seteq<1,1,1>(ap_const_lv1_0, tmp_21_reg_313.read())))) {
        ap_ready = ap_const_logic_1;
    } else {
        ap_ready = ap_const_logic_0;
    }
}

void bigint_math_bigint_compare::thread_ap_return() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st6_fsm_5.read()) && 
         (esl_seteq<1,1,1>(ap_const_lv1_0, tmp_reg_309.read()) || 
          !esl_seteq<1,1,1>(ap_const_lv1_0, or_cond_fu_247_p2.read()) || 
          !esl_seteq<1,1,1>(ap_const_lv1_0, or_cond1_fu_259_p2.read()) || 
          !esl_seteq<1,1,1>(ap_const_lv1_0, tmp_21_reg_313.read())))) {
        ap_return = p_0_phi_fu_153_p8.read();
    } else {
        ap_return = ap_return_preg.read();
    }
}

void bigint_math_bigint_compare::thread_ap_sig_102() {
    ap_sig_102 = (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st6_fsm_5.read()) && !esl_seteq<1,1,1>(ap_const_lv1_0, tmp_reg_309.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, tmp_21_reg_313.read()));
}

void bigint_math_bigint_compare::thread_ap_sig_122() {
    ap_sig_122 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(2, 2));
}

void bigint_math_bigint_compare::thread_ap_sig_167() {
    ap_sig_167 = (esl_seteq<1,1,1>(ap_const_lv1_0, tmp_85_fu_190_p2.read()) && esl_seteq<1,1,1>(ap_const_lv1_0, tmp_86_fu_196_p2.read()) && !esl_seteq<1,1,1>(ap_const_lv1_0, tmp_91_fu_202_p2.read()));
}

void bigint_math_bigint_compare::thread_ap_sig_171() {
    ap_sig_171 = (esl_seteq<1,1,1>(ap_const_lv1_0, tmp_85_fu_190_p2.read()) && !esl_seteq<1,1,1>(ap_const_lv1_0, tmp_86_fu_196_p2.read()));
}

void bigint_math_bigint_compare::thread_ap_sig_23() {
    ap_sig_23 = esl_seteq<1,1,1>(ap_CS_fsm.read().range(0, 0), ap_const_lv1_1);
}

void bigint_math_bigint_compare::thread_ap_sig_272() {
    ap_sig_272 = (esl_seteq<1,1,1>(ap_const_lv1_0, or_cond_fu_247_p2.read()) && !esl_seteq<1,1,1>(ap_const_lv1_0, or_cond1_fu_259_p2.read()));
}

void bigint_math_bigint_compare::thread_ap_sig_46() {
    ap_sig_46 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(1, 1));
}

void bigint_math_bigint_compare::thread_ap_sig_69() {
    ap_sig_69 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(3, 3));
}

void bigint_math_bigint_compare::thread_ap_sig_80() {
    ap_sig_80 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(4, 4));
}

void bigint_math_bigint_compare::thread_ap_sig_95() {
    ap_sig_95 = esl_seteq<1,1,1>(ap_const_lv1_1, ap_CS_fsm.read().range(5, 5));
}

void bigint_math_bigint_compare::thread_ap_sig_cseq_ST_st1_fsm_0() {
    if (ap_sig_23.read()) {
        ap_sig_cseq_ST_st1_fsm_0 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st1_fsm_0 = ap_const_logic_0;
    }
}

void bigint_math_bigint_compare::thread_ap_sig_cseq_ST_st2_fsm_1() {
    if (ap_sig_46.read()) {
        ap_sig_cseq_ST_st2_fsm_1 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st2_fsm_1 = ap_const_logic_0;
    }
}

void bigint_math_bigint_compare::thread_ap_sig_cseq_ST_st3_fsm_2() {
    if (ap_sig_122.read()) {
        ap_sig_cseq_ST_st3_fsm_2 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st3_fsm_2 = ap_const_logic_0;
    }
}

void bigint_math_bigint_compare::thread_ap_sig_cseq_ST_st4_fsm_3() {
    if (ap_sig_69.read()) {
        ap_sig_cseq_ST_st4_fsm_3 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st4_fsm_3 = ap_const_logic_0;
    }
}

void bigint_math_bigint_compare::thread_ap_sig_cseq_ST_st5_fsm_4() {
    if (ap_sig_80.read()) {
        ap_sig_cseq_ST_st5_fsm_4 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st5_fsm_4 = ap_const_logic_0;
    }
}

void bigint_math_bigint_compare::thread_ap_sig_cseq_ST_st6_fsm_5() {
    if (ap_sig_95.read()) {
        ap_sig_cseq_ST_st6_fsm_5 = ap_const_logic_1;
    } else {
        ap_sig_cseq_ST_st6_fsm_5 = ap_const_logic_0;
    }
}

void bigint_math_bigint_compare::thread_b_address0() {
    b_address0 =  (sc_lv<8>) (tmp_s_fu_184_p1.read());
}

void bigint_math_bigint_compare::thread_b_ce0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st2_fsm_1.read())) {
        b_ce0 = ap_const_logic_1;
    } else {
        b_ce0 = ap_const_logic_0;
    }
}

void bigint_math_bigint_compare::thread_exitcond_fu_172_p2() {
    exitcond_fu_172_p2 = (!i_reg_115.read().is_01() || !ap_const_lv9_100.is_01())? sc_lv<1>(): sc_lv<1>(i_reg_115.read() == ap_const_lv9_100);
}

void bigint_math_bigint_compare::thread_grp_fu_166_p2() {
    grp_fu_166_p2 = (!state_q0.read().is_01() || !ap_const_lv2_0.is_01())? sc_lv<1>(): sc_lv<1>(state_q0.read() == ap_const_lv2_0);
}

void bigint_math_bigint_compare::thread_i_12_fu_178_p2() {
    i_12_fu_178_p2 = (!i_reg_115.read().is_01() || !ap_const_lv9_1.is_01())? sc_lv<9>(): (sc_biguint<9>(i_reg_115.read()) + sc_biguint<9>(ap_const_lv9_1));
}

void bigint_math_bigint_compare::thread_i_2_fu_216_p2() {
    i_2_fu_216_p2 = (!i_1_reg_126.read().is_01() || !ap_const_lv9_1.is_01())? sc_lv<9>(): (sc_biguint<9>(i_1_reg_126.read()) + sc_biguint<9>(ap_const_lv9_1));
}

void bigint_math_bigint_compare::thread_or_cond1_fu_259_p2() {
    or_cond1_fu_259_p2 = (tmp_92_fu_253_p2.read() & tmp_90_fu_241_p2.read());
}

void bigint_math_bigint_compare::thread_or_cond_fu_247_p2() {
    or_cond_fu_247_p2 = (tmp_89_fu_235_p2.read() & tmp_90_fu_241_p2.read());
}

void bigint_math_bigint_compare::thread_p_0_phi_fu_153_p8() {
    if (ap_sig_102.read()) {
        if (ap_sig_272.read()) {
            p_0_phi_fu_153_p8 = ap_const_lv2_3;
        } else if (!esl_seteq<1,1,1>(ap_const_lv1_0, or_cond_fu_247_p2.read())) {
            p_0_phi_fu_153_p8 = ap_const_lv2_1;
        } else {
            p_0_phi_fu_153_p8 = p_0_reg_149.read();
        }
    } else {
        p_0_phi_fu_153_p8 = p_0_reg_149.read();
    }
}

void bigint_math_bigint_compare::thread_p_flag_fu_227_p3() {
    p_flag_fu_227_p3 = (!grp_fu_166_p2.read()[0].is_01())? sc_lv<32>(): ((grp_fu_166_p2.read()[0].to_bool())? ap_const_lv32_1: flag_reg_137.read());
}

void bigint_math_bigint_compare::thread_state_addr_1_gep_fu_100_p3() {
    state_addr_1_gep_fu_100_p3 =  (sc_lv<8>) (tmp_s_reg_273.read());
}

void bigint_math_bigint_compare::thread_state_addr_2_gep_fu_92_p3() {
    state_addr_2_gep_fu_92_p3 =  (sc_lv<8>) (tmp_s_reg_273.read());
}

void bigint_math_bigint_compare::thread_state_address0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st3_fsm_2.read()) && 
         !esl_seteq<1,1,1>(ap_const_lv1_0, tmp_85_fu_190_p2.read()))) {
        state_address0 = state_addr_1_gep_fu_100_p3.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st3_fsm_2.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, tmp_85_fu_190_p2.read()) && 
                !esl_seteq<1,1,1>(ap_const_lv1_0, tmp_86_fu_196_p2.read()))) {
        state_address0 = state_addr_2_gep_fu_92_p3.read();
    } else if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st3_fsm_2.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, tmp_85_fu_190_p2.read()) && 
                esl_seteq<1,1,1>(ap_const_lv1_0, tmp_86_fu_196_p2.read()) && 
                !esl_seteq<1,1,1>(ap_const_lv1_0, tmp_91_fu_202_p2.read()))) {
        state_address0 =  (sc_lv<8>) (tmp_s_reg_273.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st5_fsm_4.read())) {
        state_address0 =  (sc_lv<8>) (tmp_87_fu_222_p1.read());
    } else if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st2_fsm_1.read())) {
        state_address0 =  (sc_lv<8>) (ap_const_lv64_0);
    } else {
        state_address0 = "XXXXXXXX";
    }
}

void bigint_math_bigint_compare::thread_state_ce0() {
    if ((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st2_fsm_1.read()) || 
         esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st5_fsm_4.read()) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st3_fsm_2.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, tmp_85_fu_190_p2.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, tmp_86_fu_196_p2.read()) && 
          !esl_seteq<1,1,1>(ap_const_lv1_0, tmp_91_fu_202_p2.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st3_fsm_2.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, tmp_85_fu_190_p2.read()) && 
          !esl_seteq<1,1,1>(ap_const_lv1_0, tmp_86_fu_196_p2.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st3_fsm_2.read()) && 
          !esl_seteq<1,1,1>(ap_const_lv1_0, tmp_85_fu_190_p2.read())))) {
        state_ce0 = ap_const_logic_1;
    } else {
        state_ce0 = ap_const_logic_0;
    }
}

void bigint_math_bigint_compare::thread_state_d0() {
    if (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st3_fsm_2.read())) {
        if (!esl_seteq<1,1,1>(ap_const_lv1_0, tmp_85_fu_190_p2.read())) {
            state_d0 = ap_const_lv2_1;
        } else if (ap_sig_171.read()) {
            state_d0 = ap_const_lv2_3;
        } else if (ap_sig_167.read()) {
            state_d0 = ap_const_lv2_0;
        } else {
            state_d0 =  (sc_lv<2>) ("XX");
        }
    } else {
        state_d0 =  (sc_lv<2>) ("XX");
    }
}

void bigint_math_bigint_compare::thread_state_we0() {
    if (((esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st3_fsm_2.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, tmp_85_fu_190_p2.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, tmp_86_fu_196_p2.read()) && 
          !esl_seteq<1,1,1>(ap_const_lv1_0, tmp_91_fu_202_p2.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st3_fsm_2.read()) && 
          esl_seteq<1,1,1>(ap_const_lv1_0, tmp_85_fu_190_p2.read()) && 
          !esl_seteq<1,1,1>(ap_const_lv1_0, tmp_86_fu_196_p2.read())) || 
         (esl_seteq<1,1,1>(ap_const_logic_1, ap_sig_cseq_ST_st3_fsm_2.read()) && 
          !esl_seteq<1,1,1>(ap_const_lv1_0, tmp_85_fu_190_p2.read())))) {
        state_we0 = ap_const_logic_1;
    } else {
        state_we0 = ap_const_logic_0;
    }
}

void bigint_math_bigint_compare::thread_tmp_21_fu_208_p3() {
    tmp_21_fu_208_p3 = i_1_reg_126.read().range(8, 8);
}

void bigint_math_bigint_compare::thread_tmp_85_fu_190_p2() {
    tmp_85_fu_190_p2 = (!a_q0.read().is_01() || !b_q0.read().is_01())? sc_lv<1>(): (sc_biguint<8>(a_q0.read()) > sc_biguint<8>(b_q0.read()));
}

void bigint_math_bigint_compare::thread_tmp_86_fu_196_p2() {
    tmp_86_fu_196_p2 = (!a_q0.read().is_01() || !b_q0.read().is_01())? sc_lv<1>(): (sc_biguint<8>(a_q0.read()) < sc_biguint<8>(b_q0.read()));
}

void bigint_math_bigint_compare::thread_tmp_87_fu_222_p1() {
    tmp_87_fu_222_p1 = esl_zext<64,9>(i_1_reg_126.read());
}

void bigint_math_bigint_compare::thread_tmp_89_fu_235_p2() {
    tmp_89_fu_235_p2 = (!state_q0.read().is_01() || !ap_const_lv2_1.is_01())? sc_lv<1>(): sc_lv<1>(state_q0.read() == ap_const_lv2_1);
}

void bigint_math_bigint_compare::thread_tmp_90_fu_241_p2() {
    tmp_90_fu_241_p2 = (!p_flag_fu_227_p3.read().is_01() || !ap_const_lv32_1.is_01())? sc_lv<1>(): sc_lv<1>(p_flag_fu_227_p3.read() == ap_const_lv32_1);
}

void bigint_math_bigint_compare::thread_tmp_91_fu_202_p2() {
    tmp_91_fu_202_p2 = (!a_q0.read().is_01() || !b_q0.read().is_01())? sc_lv<1>(): sc_lv<1>(a_q0.read() == b_q0.read());
}

void bigint_math_bigint_compare::thread_tmp_92_fu_253_p2() {
    tmp_92_fu_253_p2 = (!state_q0.read().is_01() || !ap_const_lv2_3.is_01())? sc_lv<1>(): sc_lv<1>(state_q0.read() == ap_const_lv2_3);
}

void bigint_math_bigint_compare::thread_tmp_s_fu_184_p1() {
    tmp_s_fu_184_p1 = esl_zext<64,9>(i_reg_115.read());
}

void bigint_math_bigint_compare::thread_ap_NS_fsm() {
    switch (ap_CS_fsm.read().to_uint64()) {
        case 1 : 
            if (!esl_seteq<1,1,1>(ap_start.read(), ap_const_logic_0)) {
                ap_NS_fsm = ap_ST_st2_fsm_1;
            } else {
                ap_NS_fsm = ap_ST_st1_fsm_0;
            }
            break;
        case 2 : 
            if (!esl_seteq<1,1,1>(exitcond_fu_172_p2.read(), ap_const_lv1_0)) {
                ap_NS_fsm = ap_ST_st4_fsm_3;
            } else {
                ap_NS_fsm = ap_ST_st3_fsm_2;
            }
            break;
        case 4 : 
            ap_NS_fsm = ap_ST_st2_fsm_1;
            break;
        case 8 : 
            if (esl_seteq<1,1,1>(ap_const_lv1_0, grp_fu_166_p2.read())) {
                ap_NS_fsm = ap_ST_st6_fsm_5;
            } else {
                ap_NS_fsm = ap_ST_st5_fsm_4;
            }
            break;
        case 16 : 
            ap_NS_fsm = ap_ST_st6_fsm_5;
            break;
        case 32 : 
            if ((esl_seteq<1,1,1>(ap_const_lv1_0, tmp_reg_309.read()) || !esl_seteq<1,1,1>(ap_const_lv1_0, or_cond_fu_247_p2.read()) || !esl_seteq<1,1,1>(ap_const_lv1_0, or_cond1_fu_259_p2.read()) || !esl_seteq<1,1,1>(ap_const_lv1_0, tmp_21_reg_313.read()))) {
                ap_NS_fsm = ap_ST_st1_fsm_0;
            } else {
                ap_NS_fsm = ap_ST_st5_fsm_4;
            }
            break;
        default : 
            ap_NS_fsm =  (sc_lv<6>) ("XXXXXX");
            break;
    }
}

}

