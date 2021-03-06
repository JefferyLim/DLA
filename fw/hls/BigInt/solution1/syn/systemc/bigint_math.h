// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.2
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _bigint_math_HH_
#define _bigint_math_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "bigint_math_bigint_modexp.h"
#include "bigint_math_PERIPH_BUS_s_axi.h"

namespace ap_rtl {

template<unsigned int C_S_AXI_PERIPH_BUS_ADDR_WIDTH = 11,
         unsigned int C_S_AXI_PERIPH_BUS_DATA_WIDTH = 32>
struct bigint_math : public sc_module {
    // Port declarations 20
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst_n;
    sc_in< sc_logic > s_axi_PERIPH_BUS_AWVALID;
    sc_out< sc_logic > s_axi_PERIPH_BUS_AWREADY;
    sc_in< sc_uint<C_S_AXI_PERIPH_BUS_ADDR_WIDTH> > s_axi_PERIPH_BUS_AWADDR;
    sc_in< sc_logic > s_axi_PERIPH_BUS_WVALID;
    sc_out< sc_logic > s_axi_PERIPH_BUS_WREADY;
    sc_in< sc_uint<C_S_AXI_PERIPH_BUS_DATA_WIDTH> > s_axi_PERIPH_BUS_WDATA;
    sc_in< sc_uint<C_S_AXI_PERIPH_BUS_DATA_WIDTH/8> > s_axi_PERIPH_BUS_WSTRB;
    sc_in< sc_logic > s_axi_PERIPH_BUS_ARVALID;
    sc_out< sc_logic > s_axi_PERIPH_BUS_ARREADY;
    sc_in< sc_uint<C_S_AXI_PERIPH_BUS_ADDR_WIDTH> > s_axi_PERIPH_BUS_ARADDR;
    sc_out< sc_logic > s_axi_PERIPH_BUS_RVALID;
    sc_in< sc_logic > s_axi_PERIPH_BUS_RREADY;
    sc_out< sc_uint<C_S_AXI_PERIPH_BUS_DATA_WIDTH> > s_axi_PERIPH_BUS_RDATA;
    sc_out< sc_lv<2> > s_axi_PERIPH_BUS_RRESP;
    sc_out< sc_logic > s_axi_PERIPH_BUS_BVALID;
    sc_in< sc_logic > s_axi_PERIPH_BUS_BREADY;
    sc_out< sc_lv<2> > s_axi_PERIPH_BUS_BRESP;
    sc_out< sc_logic > interrupt;
    sc_signal< sc_logic > ap_var_for_const0;


    // Module declarations
    bigint_math(sc_module_name name);
    SC_HAS_PROCESS(bigint_math);

    ~bigint_math();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    bigint_math_PERIPH_BUS_s_axi<C_S_AXI_PERIPH_BUS_ADDR_WIDTH,C_S_AXI_PERIPH_BUS_DATA_WIDTH>* bigint_math_PERIPH_BUS_s_axi_U;
    bigint_math_bigint_modexp* grp_bigint_math_bigint_modexp_fu_82;
    sc_signal< sc_logic > ap_rst_n_inv;
    sc_signal< sc_logic > ap_start;
    sc_signal< sc_logic > ap_done;
    sc_signal< sc_logic > ap_idle;
    sc_signal< sc_lv<3> > ap_CS_fsm;
    sc_signal< sc_logic > ap_sig_cseq_ST_st1_fsm_0;
    sc_signal< bool > ap_sig_20;
    sc_signal< sc_logic > ap_ready;
    sc_signal< sc_lv<8> > a_address0;
    sc_signal< sc_logic > a_ce0;
    sc_signal< sc_logic > a_we0;
    sc_signal< sc_lv<8> > a_d0;
    sc_signal< sc_lv<8> > b_q0;
    sc_signal< sc_lv<8> > c_q0;
    sc_signal< sc_lv<8> > d_q0;
    sc_signal< sc_lv<9> > i_fu_104_p2;
    sc_signal< sc_logic > ap_sig_cseq_ST_st2_fsm_1;
    sc_signal< bool > ap_sig_91;
    sc_signal< sc_logic > grp_bigint_math_bigint_modexp_fu_82_ap_start;
    sc_signal< sc_logic > grp_bigint_math_bigint_modexp_fu_82_ap_done;
    sc_signal< sc_logic > grp_bigint_math_bigint_modexp_fu_82_ap_idle;
    sc_signal< sc_logic > grp_bigint_math_bigint_modexp_fu_82_ap_ready;
    sc_signal< sc_lv<8> > grp_bigint_math_bigint_modexp_fu_82_out_r_address0;
    sc_signal< sc_logic > grp_bigint_math_bigint_modexp_fu_82_out_r_ce0;
    sc_signal< sc_logic > grp_bigint_math_bigint_modexp_fu_82_out_r_we0;
    sc_signal< sc_lv<8> > grp_bigint_math_bigint_modexp_fu_82_out_r_d0;
    sc_signal< sc_lv<8> > grp_bigint_math_bigint_modexp_fu_82_base_r_address0;
    sc_signal< sc_logic > grp_bigint_math_bigint_modexp_fu_82_base_r_ce0;
    sc_signal< sc_lv<8> > grp_bigint_math_bigint_modexp_fu_82_exp_address0;
    sc_signal< sc_logic > grp_bigint_math_bigint_modexp_fu_82_exp_ce0;
    sc_signal< sc_lv<8> > grp_bigint_math_bigint_modexp_fu_82_mod_r_address0;
    sc_signal< sc_logic > grp_bigint_math_bigint_modexp_fu_82_mod_r_ce0;
    sc_signal< sc_lv<9> > i_i_reg_71;
    sc_signal< sc_lv<1> > exitcond_i_fu_98_p2;
    sc_signal< sc_logic > ap_reg_grp_bigint_math_bigint_modexp_fu_82_ap_start;
    sc_signal< sc_logic > ap_sig_cseq_ST_st3_fsm_2;
    sc_signal< bool > ap_sig_131;
    sc_signal< sc_lv<64> > tmp_i_fu_110_p1;
    sc_signal< sc_lv<3> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<3> ap_ST_st1_fsm_0;
    static const sc_lv<3> ap_ST_st2_fsm_1;
    static const sc_lv<3> ap_ST_st3_fsm_2;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const int C_S_AXI_DATA_WIDTH;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<9> ap_const_lv9_0;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<8> ap_const_lv8_0;
    static const sc_lv<9> ap_const_lv9_100;
    static const sc_lv<9> ap_const_lv9_1;
    // Thread declarations
    void thread_ap_var_for_const0();
    void thread_ap_clk_no_reset_();
    void thread_a_address0();
    void thread_a_ce0();
    void thread_a_d0();
    void thread_a_we0();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_ap_rst_n_inv();
    void thread_ap_sig_131();
    void thread_ap_sig_20();
    void thread_ap_sig_91();
    void thread_ap_sig_cseq_ST_st1_fsm_0();
    void thread_ap_sig_cseq_ST_st2_fsm_1();
    void thread_ap_sig_cseq_ST_st3_fsm_2();
    void thread_exitcond_i_fu_98_p2();
    void thread_grp_bigint_math_bigint_modexp_fu_82_ap_start();
    void thread_i_fu_104_p2();
    void thread_tmp_i_fu_110_p1();
    void thread_ap_NS_fsm();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif
