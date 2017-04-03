// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.2
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _bigint_math_bigint_rightshift_HH_
#define _bigint_math_bigint_rightshift_HH_

#include "systemc.h"
#include "AESL_pkg.h"


namespace ap_rtl {

struct bigint_math_bigint_rightshift : public sc_module {
    // Port declarations 14
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<8> > out_r_address0;
    sc_out< sc_logic > out_r_ce0;
    sc_out< sc_logic > out_r_we0;
    sc_out< sc_lv<8> > out_r_d0;
    sc_in< sc_lv<8> > out_r_q0;
    sc_out< sc_lv<8> > a_address0;
    sc_out< sc_logic > a_ce0;
    sc_in< sc_lv<8> > a_q0;


    // Module declarations
    bigint_math_bigint_rightshift(sc_module_name name);
    SC_HAS_PROCESS(bigint_math_bigint_rightshift);

    ~bigint_math_bigint_rightshift();

    sc_trace_file* mVcdFile;

    sc_signal< sc_lv<6> > ap_CS_fsm;
    sc_signal< sc_logic > ap_sig_cseq_ST_st1_fsm_0;
    sc_signal< bool > ap_sig_23;
    sc_signal< sc_lv<9> > i_5_fu_186_p2;
    sc_signal< sc_logic > ap_sig_cseq_ST_st2_fsm_1;
    sc_signal< bool > ap_sig_47;
    sc_signal< sc_lv<9> > i_3_fu_203_p2;
    sc_signal< sc_lv<9> > i_3_reg_335;
    sc_signal< sc_logic > ap_sig_cseq_ST_st3_fsm_2;
    sc_signal< bool > ap_sig_56;
    sc_signal< sc_lv<8> > a_addr_reg_340;
    sc_signal< sc_lv<1> > exitcond_fu_197_p2;
    sc_signal< sc_lv<8> > j_cast_fu_214_p1;
    sc_signal< sc_lv<8> > j_cast_reg_345;
    sc_signal< sc_logic > ap_sig_cseq_ST_st4_fsm_3;
    sc_signal< bool > ap_sig_71;
    sc_signal< sc_lv<32> > p_k_1_fu_238_p3;
    sc_signal< sc_lv<1> > tmp_4_fu_218_p3;
    sc_signal< sc_lv<8> > b_fu_257_p2;
    sc_signal< sc_lv<8> > b_reg_359;
    sc_signal< sc_logic > ap_sig_cseq_ST_st5_fsm_4;
    sc_signal< bool > ap_sig_86;
    sc_signal< sc_lv<1> > tmp_17_fu_262_p2;
    sc_signal< sc_lv<1> > tmp_17_reg_365;
    sc_signal< sc_lv<8> > out_addr_1_reg_369;
    sc_signal< sc_lv<32> > k_4_fu_273_p2;
    sc_signal< sc_lv<32> > k_4_reg_374;
    sc_signal< sc_lv<8> > out_addr_reg_379;
    sc_signal< sc_lv<32> > outputBit_2_fu_312_p2;
    sc_signal< sc_logic > ap_sig_cseq_ST_st6_fsm_5;
    sc_signal< bool > ap_sig_107;
    sc_signal< sc_lv<4> > j_4_fu_318_p2;
    sc_signal< sc_lv<9> > i_i_reg_88;
    sc_signal< sc_lv<1> > exitcond_i_fu_180_p2;
    sc_signal< sc_lv<9> > i_reg_99;
    sc_signal< sc_lv<32> > k_reg_110;
    sc_signal< sc_lv<4> > j_reg_122;
    sc_signal< sc_lv<32> > k_1_reg_134;
    sc_signal< sc_lv<32> > k_2_phi_fu_161_p4;
    sc_signal< sc_lv<32> > outputBit_reg_145;
    sc_signal< sc_lv<32> > outputBit_1_phi_fu_172_p4;
    sc_signal< sc_lv<64> > tmp_i_fu_192_p1;
    sc_signal< sc_lv<64> > tmp_fu_209_p1;
    sc_signal< sc_lv<64> > tmp_21_fu_268_p1;
    sc_signal< sc_lv<64> > tmp_18_fu_279_p1;
    sc_signal< sc_lv<8> > tmp_22_fu_293_p2;
    sc_signal< sc_lv<8> > tmp_19_fu_305_p2;
    sc_signal< sc_lv<1> > tmp_s_fu_226_p2;
    sc_signal< sc_lv<32> > k_3_fu_232_p2;
    sc_signal< sc_lv<8> > tmp_15_fu_246_p2;
    sc_signal< sc_lv<8> > tmp_16_fu_251_p2;
    sc_signal< sc_lv<8> > tmp_6_fu_284_p1;
    sc_signal< sc_lv<8> > tmp_20_fu_288_p2;
    sc_signal< sc_lv<8> > tmp_5_fu_300_p2;
    sc_signal< sc_lv<6> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<6> ap_ST_st1_fsm_0;
    static const sc_lv<6> ap_ST_st2_fsm_1;
    static const sc_lv<6> ap_ST_st3_fsm_2;
    static const sc_lv<6> ap_ST_st4_fsm_3;
    static const sc_lv<6> ap_ST_st5_fsm_4;
    static const sc_lv<6> ap_ST_st6_fsm_5;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<9> ap_const_lv9_0;
    static const sc_lv<4> ap_const_lv4_7;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<8> ap_const_lv8_0;
    static const sc_lv<9> ap_const_lv9_100;
    static const sc_lv<9> ap_const_lv9_1;
    static const sc_lv<8> ap_const_lv8_1;
    static const sc_lv<32> ap_const_lv32_FFFFFFFF;
    static const sc_lv<8> ap_const_lv8_7;
    static const sc_lv<4> ap_const_lv4_F;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_a_address0();
    void thread_a_ce0();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_ap_sig_107();
    void thread_ap_sig_23();
    void thread_ap_sig_47();
    void thread_ap_sig_56();
    void thread_ap_sig_71();
    void thread_ap_sig_86();
    void thread_ap_sig_cseq_ST_st1_fsm_0();
    void thread_ap_sig_cseq_ST_st2_fsm_1();
    void thread_ap_sig_cseq_ST_st3_fsm_2();
    void thread_ap_sig_cseq_ST_st4_fsm_3();
    void thread_ap_sig_cseq_ST_st5_fsm_4();
    void thread_ap_sig_cseq_ST_st6_fsm_5();
    void thread_b_fu_257_p2();
    void thread_exitcond_fu_197_p2();
    void thread_exitcond_i_fu_180_p2();
    void thread_i_3_fu_203_p2();
    void thread_i_5_fu_186_p2();
    void thread_j_4_fu_318_p2();
    void thread_j_cast_fu_214_p1();
    void thread_k_2_phi_fu_161_p4();
    void thread_k_3_fu_232_p2();
    void thread_k_4_fu_273_p2();
    void thread_out_r_address0();
    void thread_out_r_ce0();
    void thread_out_r_d0();
    void thread_out_r_we0();
    void thread_outputBit_1_phi_fu_172_p4();
    void thread_outputBit_2_fu_312_p2();
    void thread_p_k_1_fu_238_p3();
    void thread_tmp_15_fu_246_p2();
    void thread_tmp_16_fu_251_p2();
    void thread_tmp_17_fu_262_p2();
    void thread_tmp_18_fu_279_p1();
    void thread_tmp_19_fu_305_p2();
    void thread_tmp_20_fu_288_p2();
    void thread_tmp_21_fu_268_p1();
    void thread_tmp_22_fu_293_p2();
    void thread_tmp_4_fu_218_p3();
    void thread_tmp_5_fu_300_p2();
    void thread_tmp_6_fu_284_p1();
    void thread_tmp_fu_209_p1();
    void thread_tmp_i_fu_192_p1();
    void thread_tmp_s_fu_226_p2();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif