-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2016.2
-- Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity bigint_math_bigint_leftshift is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    out_r_address0 : OUT STD_LOGIC_VECTOR (7 downto 0);
    out_r_ce0 : OUT STD_LOGIC;
    out_r_we0 : OUT STD_LOGIC;
    out_r_d0 : OUT STD_LOGIC_VECTOR (7 downto 0);
    out_r_q0 : IN STD_LOGIC_VECTOR (7 downto 0);
    a_address0 : OUT STD_LOGIC_VECTOR (7 downto 0);
    a_ce0 : OUT STD_LOGIC;
    a_q0 : IN STD_LOGIC_VECTOR (7 downto 0);
    shift : IN STD_LOGIC_VECTOR (31 downto 0) );
end;


architecture behav of bigint_math_bigint_leftshift is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_st1_fsm_0 : STD_LOGIC_VECTOR (7 downto 0) := "00000001";
    constant ap_ST_st2_fsm_1 : STD_LOGIC_VECTOR (7 downto 0) := "00000010";
    constant ap_ST_st3_fsm_2 : STD_LOGIC_VECTOR (7 downto 0) := "00000100";
    constant ap_ST_st4_fsm_3 : STD_LOGIC_VECTOR (7 downto 0) := "00001000";
    constant ap_ST_st5_fsm_4 : STD_LOGIC_VECTOR (7 downto 0) := "00010000";
    constant ap_ST_st6_fsm_5 : STD_LOGIC_VECTOR (7 downto 0) := "00100000";
    constant ap_ST_st7_fsm_6 : STD_LOGIC_VECTOR (7 downto 0) := "01000000";
    constant ap_ST_st8_fsm_7 : STD_LOGIC_VECTOR (7 downto 0) := "10000000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv32_4 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000100";
    constant ap_const_lv32_5 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000101";
    constant ap_const_lv32_6 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000110";
    constant ap_const_lv9_0 : STD_LOGIC_VECTOR (8 downto 0) := "000000000";
    constant ap_const_lv9_FF : STD_LOGIC_VECTOR (8 downto 0) := "011111111";
    constant ap_const_lv4_0 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    constant ap_const_lv32_7 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000111";
    constant ap_const_lv8_0 : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
    constant ap_const_lv32_8 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001000";
    constant ap_const_lv32_FFFFFFFF : STD_LOGIC_VECTOR (31 downto 0) := "11111111111111111111111111111111";
    constant ap_const_lv32_1F : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000011111";
    constant ap_const_lv30_0 : STD_LOGIC_VECTOR (29 downto 0) := "000000000000000000000000000000";
    constant ap_const_lv29_0 : STD_LOGIC_VECTOR (28 downto 0) := "00000000000000000000000000000";
    constant ap_const_lv31_FF : STD_LOGIC_VECTOR (30 downto 0) := "0000000000000000000000011111111";
    constant ap_const_lv9_100 : STD_LOGIC_VECTOR (8 downto 0) := "100000000";
    constant ap_const_lv9_1 : STD_LOGIC_VECTOR (8 downto 0) := "000000001";
    constant ap_const_lv4_8 : STD_LOGIC_VECTOR (3 downto 0) := "1000";
    constant ap_const_lv4_1 : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    constant ap_const_lv9_1FF : STD_LOGIC_VECTOR (8 downto 0) := "111111111";
    constant ap_const_lv8_1 : STD_LOGIC_VECTOR (7 downto 0) := "00000001";

    signal ap_CS_fsm : STD_LOGIC_VECTOR (7 downto 0) := "00000001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_sig_cseq_ST_st1_fsm_0 : STD_LOGIC;
    signal ap_sig_25 : BOOLEAN;
    signal tmp_fu_244_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_reg_493 : STD_LOGIC_VECTOR (0 downto 0);
    signal outputBit_5_fu_340_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal outputBit_5_reg_497 : STD_LOGIC_VECTOR (31 downto 0);
    signal k_cast_fu_354_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal k_cast_reg_502 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_11_fu_364_p2 : STD_LOGIC_VECTOR (8 downto 0);
    signal ap_sig_cseq_ST_st2_fsm_1 : STD_LOGIC;
    signal ap_sig_62 : BOOLEAN;
    signal a_addr_reg_518 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_sig_cseq_ST_st3_fsm_2 : STD_LOGIC;
    signal ap_sig_71 : BOOLEAN;
    signal tmp_19_fu_379_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal j_cast1_fu_392_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal j_cast1_reg_523 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_sig_cseq_ST_st4_fsm_3 : STD_LOGIC;
    signal ap_sig_85 : BOOLEAN;
    signal j_9_fu_402_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal j_9_reg_532 : STD_LOGIC_VECTOR (3 downto 0);
    signal p_k_1_fu_408_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal exitcond_fu_396_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_8_fu_416_p2 : STD_LOGIC_VECTOR (8 downto 0);
    signal b_fu_433_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal b_reg_547 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_sig_cseq_ST_st5_fsm_4 : STD_LOGIC;
    signal ap_sig_104 : BOOLEAN;
    signal grp_fu_230_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal tmp_79_reg_553 : STD_LOGIC_VECTOR (0 downto 0);
    signal out_addr_2_reg_557 : STD_LOGIC_VECTOR (7 downto 0);
    signal grp_fu_237_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal k_7_reg_562 : STD_LOGIC_VECTOR (31 downto 0);
    signal out_addr_reg_567 : STD_LOGIC_VECTOR (7 downto 0);
    signal outputBit_3_fu_470_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal ap_sig_cseq_ST_st6_fsm_5 : STD_LOGIC;
    signal ap_sig_125 : BOOLEAN;
    signal exitcond_i_fu_476_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal exitcond_i_reg_577 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_sig_cseq_ST_st7_fsm_6 : STD_LOGIC;
    signal ap_sig_134 : BOOLEAN;
    signal i_10_fu_482_p2 : STD_LOGIC_VECTOR (8 downto 0);
    signal i_10_reg_581 : STD_LOGIC_VECTOR (8 downto 0);
    signal tmp_i_fu_488_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_i_reg_586 : STD_LOGIC_VECTOR (63 downto 0);
    signal i_i7_reg_131 : STD_LOGIC_VECTOR (8 downto 0);
    signal exitcond_i8_fu_358_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal i_reg_142 : STD_LOGIC_VECTOR (8 downto 0);
    signal k7_reg_154 : STD_LOGIC_VECTOR (31 downto 0);
    signal j_reg_164 : STD_LOGIC_VECTOR (3 downto 0);
    signal k_2_phi_fu_200_p4 : STD_LOGIC_VECTOR (31 downto 0);
    signal k_1_phi_fu_178_p4 : STD_LOGIC_VECTOR (31 downto 0);
    signal k_1_reg_175 : STD_LOGIC_VECTOR (31 downto 0);
    signal outputBit_phi_fu_189_p4 : STD_LOGIC_VECTOR (31 downto 0);
    signal outputBit_reg_186 : STD_LOGIC_VECTOR (31 downto 0);
    signal outputBit_1_phi_fu_211_p4 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_i_reg_219 : STD_LOGIC_VECTOR (8 downto 0);
    signal ap_sig_cseq_ST_st8_fsm_7 : STD_LOGIC;
    signal ap_sig_179 : BOOLEAN;
    signal tmp_i9_fu_370_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_s_fu_387_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_83_fu_438_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_80_fu_443_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal tmp_84_fu_457_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_81_fu_464_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal grp_fu_230_p0 : STD_LOGIC_VECTOR (31 downto 0);
    signal grp_fu_237_p0 : STD_LOGIC_VECTOR (31 downto 0);
    signal p_neg_fu_258_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_6_fu_264_p4 : STD_LOGIC_VECTOR (28 downto 0);
    signal p_lshr_cast_fu_274_p1 : STD_LOGIC_VECTOR (29 downto 0);
    signal tmp_7_fu_284_p4 : STD_LOGIC_VECTOR (28 downto 0);
    signal tmp_16_fu_250_p3 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_neg_t_fu_278_p2 : STD_LOGIC_VECTOR (29 downto 0);
    signal p_lshr_f_cast_fu_294_p1 : STD_LOGIC_VECTOR (29 downto 0);
    signal start_fu_298_p3 : STD_LOGIC_VECTOR (29 downto 0);
    signal tmp_17_fu_310_p1 : STD_LOGIC_VECTOR (2 downto 0);
    signal tmp_18_fu_322_p1 : STD_LOGIC_VECTOR (2 downto 0);
    signal p_and_t_fu_326_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal p_neg_t5_fu_334_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal p_and_f_fu_314_p3 : STD_LOGIC_VECTOR (31 downto 0);
    signal start_cast_fu_306_p1 : STD_LOGIC_VECTOR (30 downto 0);
    signal k_fu_348_p2 : STD_LOGIC_VECTOR (30 downto 0);
    signal i_cast_fu_375_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal tmp_77_fu_422_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_78_fu_427_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_20_fu_448_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal tmp_82_fu_452_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (7 downto 0);


begin




    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_st1_fsm_0;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    i_i7_reg_131_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_sig_cseq_ST_st2_fsm_1) and (ap_const_lv1_0 = exitcond_i8_fu_358_p2))) then 
                i_i7_reg_131 <= i_11_fu_364_p2;
            elsif (((ap_const_logic_1 = ap_sig_cseq_ST_st1_fsm_0) and not((ap_start = ap_const_logic_0)) and (tmp_fu_244_p2 = ap_const_lv1_0))) then 
                i_i7_reg_131 <= ap_const_lv9_0;
            end if; 
        end if;
    end process;

    i_i_reg_219_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_sig_cseq_ST_st1_fsm_0) and not((ap_start = ap_const_logic_0)) and not((tmp_fu_244_p2 = ap_const_lv1_0)))) then 
                i_i_reg_219 <= ap_const_lv9_0;
            elsif ((ap_const_logic_1 = ap_sig_cseq_ST_st8_fsm_7)) then 
                i_i_reg_219 <= i_10_reg_581;
            end if; 
        end if;
    end process;

    i_reg_142_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_sig_cseq_ST_st2_fsm_1) and not((ap_const_lv1_0 = exitcond_i8_fu_358_p2)))) then 
                i_reg_142 <= ap_const_lv9_FF;
            elsif (((ap_const_logic_1 = ap_sig_cseq_ST_st4_fsm_3) and not((ap_const_lv1_0 = exitcond_fu_396_p2)))) then 
                i_reg_142 <= i_8_fu_416_p2;
            end if; 
        end if;
    end process;

    j_reg_164_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_sig_cseq_ST_st3_fsm_2) and (tmp_reg_493 = ap_const_lv1_0) and (ap_const_lv1_0 = tmp_19_fu_379_p3))) then 
                j_reg_164 <= ap_const_lv4_0;
            elsif ((ap_const_logic_1 = ap_sig_cseq_ST_st6_fsm_5)) then 
                j_reg_164 <= j_9_reg_532;
            end if; 
        end if;
    end process;

    k7_reg_154_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_sig_cseq_ST_st2_fsm_1) and not((ap_const_lv1_0 = exitcond_i8_fu_358_p2)))) then 
                k7_reg_154 <= k_cast_reg_502;
            elsif (((ap_const_logic_1 = ap_sig_cseq_ST_st4_fsm_3) and not((ap_const_lv1_0 = exitcond_fu_396_p2)))) then 
                k7_reg_154 <= p_k_1_fu_408_p3;
            end if; 
        end if;
    end process;

    k_1_reg_175_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_sig_cseq_ST_st3_fsm_2) and (tmp_reg_493 = ap_const_lv1_0) and (ap_const_lv1_0 = tmp_19_fu_379_p3))) then 
                k_1_reg_175 <= k7_reg_154;
            elsif ((ap_const_logic_1 = ap_sig_cseq_ST_st6_fsm_5)) then 
                k_1_reg_175 <= k_2_phi_fu_200_p4;
            end if; 
        end if;
    end process;

    outputBit_reg_186_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_sig_cseq_ST_st3_fsm_2) and (tmp_reg_493 = ap_const_lv1_0) and (ap_const_lv1_0 = tmp_19_fu_379_p3))) then 
                outputBit_reg_186 <= outputBit_5_reg_497;
            elsif ((ap_const_logic_1 = ap_sig_cseq_ST_st6_fsm_5)) then 
                outputBit_reg_186 <= outputBit_3_fu_470_p2;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_sig_cseq_ST_st3_fsm_2) and (tmp_reg_493 = ap_const_lv1_0) and (ap_const_lv1_0 = tmp_19_fu_379_p3))) then
                a_addr_reg_518 <= tmp_s_fu_387_p1(8 - 1 downto 0);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_sig_cseq_ST_st5_fsm_4)) then
                b_reg_547 <= b_fu_433_p2;
                tmp_79_reg_553 <= grp_fu_230_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_sig_cseq_ST_st7_fsm_6)) then
                exitcond_i_reg_577 <= exitcond_i_fu_476_p2;
                i_10_reg_581 <= i_10_fu_482_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_sig_cseq_ST_st4_fsm_3)) then
                j_9_reg_532 <= j_9_fu_402_p2;
                    j_cast1_reg_523(3 downto 0) <= j_cast1_fu_392_p1(3 downto 0);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_sig_cseq_ST_st5_fsm_4) and not((ap_const_lv1_0 = grp_fu_230_p2)))) then
                k_7_reg_562 <= grp_fu_237_p2;
                out_addr_reg_567 <= tmp_80_fu_443_p1(8 - 1 downto 0);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_sig_cseq_ST_st1_fsm_0) and not((ap_start = ap_const_logic_0)) and (tmp_fu_244_p2 = ap_const_lv1_0))) then
                k_cast_reg_502 <= k_cast_fu_354_p1;
                outputBit_5_reg_497 <= outputBit_5_fu_340_p3;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_sig_cseq_ST_st5_fsm_4) and (ap_const_lv1_0 = grp_fu_230_p2))) then
                out_addr_2_reg_557 <= tmp_83_fu_438_p1(8 - 1 downto 0);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_sig_cseq_ST_st7_fsm_6) and (ap_const_lv1_0 = exitcond_i_fu_476_p2))) then
                    tmp_i_reg_586(8 downto 0) <= tmp_i_fu_488_p1(8 downto 0);
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_sig_cseq_ST_st1_fsm_0) and not((ap_start = ap_const_logic_0)))) then
                tmp_reg_493 <= tmp_fu_244_p2;
            end if;
        end if;
    end process;
    j_cast1_reg_523(7 downto 4) <= "0000";
    tmp_i_reg_586(63 downto 9) <= "0000000000000000000000000000000000000000000000000000000";

    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, tmp_fu_244_p2, tmp_reg_493, tmp_19_fu_379_p3, exitcond_fu_396_p2, exitcond_i_fu_476_p2, exitcond_i_reg_577, exitcond_i8_fu_358_p2)
    begin
        case ap_CS_fsm is
            when ap_ST_st1_fsm_0 => 
                if ((not((ap_start = ap_const_logic_0)) and (tmp_fu_244_p2 = ap_const_lv1_0))) then
                    ap_NS_fsm <= ap_ST_st2_fsm_1;
                elsif ((not((ap_start = ap_const_logic_0)) and not((tmp_fu_244_p2 = ap_const_lv1_0)))) then
                    ap_NS_fsm <= ap_ST_st7_fsm_6;
                else
                    ap_NS_fsm <= ap_ST_st1_fsm_0;
                end if;
            when ap_ST_st2_fsm_1 => 
                if ((ap_const_lv1_0 = exitcond_i8_fu_358_p2)) then
                    ap_NS_fsm <= ap_ST_st2_fsm_1;
                else
                    ap_NS_fsm <= ap_ST_st3_fsm_2;
                end if;
            when ap_ST_st3_fsm_2 => 
                if ((((tmp_reg_493 = ap_const_lv1_0) and not((ap_const_lv1_0 = tmp_19_fu_379_p3))) or (not((tmp_reg_493 = ap_const_lv1_0)) and not((ap_const_lv1_0 = exitcond_i_reg_577))))) then
                    ap_NS_fsm <= ap_ST_st1_fsm_0;
                else
                    ap_NS_fsm <= ap_ST_st4_fsm_3;
                end if;
            when ap_ST_st4_fsm_3 => 
                if (not((ap_const_lv1_0 = exitcond_fu_396_p2))) then
                    ap_NS_fsm <= ap_ST_st3_fsm_2;
                else
                    ap_NS_fsm <= ap_ST_st5_fsm_4;
                end if;
            when ap_ST_st5_fsm_4 => 
                ap_NS_fsm <= ap_ST_st6_fsm_5;
            when ap_ST_st6_fsm_5 => 
                ap_NS_fsm <= ap_ST_st4_fsm_3;
            when ap_ST_st7_fsm_6 => 
                if ((ap_const_lv1_0 = exitcond_i_fu_476_p2)) then
                    ap_NS_fsm <= ap_ST_st8_fsm_7;
                else
                    ap_NS_fsm <= ap_ST_st3_fsm_2;
                end if;
            when ap_ST_st8_fsm_7 => 
                ap_NS_fsm <= ap_ST_st7_fsm_6;
            when others =>  
                ap_NS_fsm <= "XXXXXXXX";
        end case;
    end process;

    a_address0_assign_proc : process(a_addr_reg_518, ap_sig_cseq_ST_st4_fsm_3, ap_sig_cseq_ST_st7_fsm_6, tmp_i_fu_488_p1)
    begin
        if ((ap_const_logic_1 = ap_sig_cseq_ST_st7_fsm_6)) then 
            a_address0 <= tmp_i_fu_488_p1(8 - 1 downto 0);
        elsif ((ap_const_logic_1 = ap_sig_cseq_ST_st4_fsm_3)) then 
            a_address0 <= a_addr_reg_518;
        else 
            a_address0 <= "XXXXXXXX";
        end if; 
    end process;


    a_ce0_assign_proc : process(ap_sig_cseq_ST_st4_fsm_3, ap_sig_cseq_ST_st7_fsm_6)
    begin
        if (((ap_const_logic_1 = ap_sig_cseq_ST_st4_fsm_3) or (ap_const_logic_1 = ap_sig_cseq_ST_st7_fsm_6))) then 
            a_ce0 <= ap_const_logic_1;
        else 
            a_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_assign_proc : process(ap_start, ap_sig_cseq_ST_st1_fsm_0, tmp_reg_493, ap_sig_cseq_ST_st3_fsm_2, tmp_19_fu_379_p3, exitcond_i_reg_577)
    begin
        if ((((ap_const_logic_0 = ap_start) and (ap_const_logic_1 = ap_sig_cseq_ST_st1_fsm_0)) or ((ap_const_logic_1 = ap_sig_cseq_ST_st3_fsm_2) and (((tmp_reg_493 = ap_const_lv1_0) and not((ap_const_lv1_0 = tmp_19_fu_379_p3))) or (not((tmp_reg_493 = ap_const_lv1_0)) and not((ap_const_lv1_0 = exitcond_i_reg_577))))))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_assign_proc : process(ap_start, ap_sig_cseq_ST_st1_fsm_0)
    begin
        if (((ap_const_logic_0 = ap_start) and (ap_const_logic_1 = ap_sig_cseq_ST_st1_fsm_0))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_ready_assign_proc : process(tmp_reg_493, ap_sig_cseq_ST_st3_fsm_2, tmp_19_fu_379_p3, exitcond_i_reg_577)
    begin
        if (((ap_const_logic_1 = ap_sig_cseq_ST_st3_fsm_2) and (((tmp_reg_493 = ap_const_lv1_0) and not((ap_const_lv1_0 = tmp_19_fu_379_p3))) or (not((tmp_reg_493 = ap_const_lv1_0)) and not((ap_const_lv1_0 = exitcond_i_reg_577)))))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;


    ap_sig_104_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_104 <= (ap_const_lv1_1 = ap_CS_fsm(4 downto 4));
    end process;


    ap_sig_125_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_125 <= (ap_const_lv1_1 = ap_CS_fsm(5 downto 5));
    end process;


    ap_sig_134_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_134 <= (ap_const_lv1_1 = ap_CS_fsm(6 downto 6));
    end process;


    ap_sig_179_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_179 <= (ap_const_lv1_1 = ap_CS_fsm(7 downto 7));
    end process;


    ap_sig_25_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_25 <= (ap_CS_fsm(0 downto 0) = ap_const_lv1_1);
    end process;


    ap_sig_62_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_62 <= (ap_const_lv1_1 = ap_CS_fsm(1 downto 1));
    end process;


    ap_sig_71_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_71 <= (ap_const_lv1_1 = ap_CS_fsm(2 downto 2));
    end process;


    ap_sig_85_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_85 <= (ap_const_lv1_1 = ap_CS_fsm(3 downto 3));
    end process;


    ap_sig_cseq_ST_st1_fsm_0_assign_proc : process(ap_sig_25)
    begin
        if (ap_sig_25) then 
            ap_sig_cseq_ST_st1_fsm_0 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st1_fsm_0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_sig_cseq_ST_st2_fsm_1_assign_proc : process(ap_sig_62)
    begin
        if (ap_sig_62) then 
            ap_sig_cseq_ST_st2_fsm_1 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st2_fsm_1 <= ap_const_logic_0;
        end if; 
    end process;


    ap_sig_cseq_ST_st3_fsm_2_assign_proc : process(ap_sig_71)
    begin
        if (ap_sig_71) then 
            ap_sig_cseq_ST_st3_fsm_2 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st3_fsm_2 <= ap_const_logic_0;
        end if; 
    end process;


    ap_sig_cseq_ST_st4_fsm_3_assign_proc : process(ap_sig_85)
    begin
        if (ap_sig_85) then 
            ap_sig_cseq_ST_st4_fsm_3 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st4_fsm_3 <= ap_const_logic_0;
        end if; 
    end process;


    ap_sig_cseq_ST_st5_fsm_4_assign_proc : process(ap_sig_104)
    begin
        if (ap_sig_104) then 
            ap_sig_cseq_ST_st5_fsm_4 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st5_fsm_4 <= ap_const_logic_0;
        end if; 
    end process;


    ap_sig_cseq_ST_st6_fsm_5_assign_proc : process(ap_sig_125)
    begin
        if (ap_sig_125) then 
            ap_sig_cseq_ST_st6_fsm_5 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st6_fsm_5 <= ap_const_logic_0;
        end if; 
    end process;


    ap_sig_cseq_ST_st7_fsm_6_assign_proc : process(ap_sig_134)
    begin
        if (ap_sig_134) then 
            ap_sig_cseq_ST_st7_fsm_6 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st7_fsm_6 <= ap_const_logic_0;
        end if; 
    end process;


    ap_sig_cseq_ST_st8_fsm_7_assign_proc : process(ap_sig_179)
    begin
        if (ap_sig_179) then 
            ap_sig_cseq_ST_st8_fsm_7 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st8_fsm_7 <= ap_const_logic_0;
        end if; 
    end process;

    b_fu_433_p2 <= std_logic_vector(shift_right(unsigned(tmp_78_fu_427_p2),to_integer(unsigned('0' & j_cast1_reg_523(8-1 downto 0)))));
    exitcond_fu_396_p2 <= "1" when (j_reg_164 = ap_const_lv4_8) else "0";
    exitcond_i8_fu_358_p2 <= "1" when (i_i7_reg_131 = ap_const_lv9_100) else "0";
    exitcond_i_fu_476_p2 <= "1" when (i_i_reg_219 = ap_const_lv9_100) else "0";

    grp_fu_230_p0_assign_proc : process(ap_sig_cseq_ST_st4_fsm_3, ap_sig_cseq_ST_st5_fsm_4, outputBit_phi_fu_189_p4, outputBit_reg_186)
    begin
        if ((ap_const_logic_1 = ap_sig_cseq_ST_st5_fsm_4)) then 
            grp_fu_230_p0 <= outputBit_reg_186;
        elsif ((ap_const_logic_1 = ap_sig_cseq_ST_st4_fsm_3)) then 
            grp_fu_230_p0 <= outputBit_phi_fu_189_p4;
        else 
            grp_fu_230_p0 <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        end if; 
    end process;

    grp_fu_230_p2 <= "1" when (grp_fu_230_p0 = ap_const_lv32_8) else "0";

    grp_fu_237_p0_assign_proc : process(ap_sig_cseq_ST_st4_fsm_3, ap_sig_cseq_ST_st5_fsm_4, k_1_phi_fu_178_p4, k_1_reg_175)
    begin
        if ((ap_const_logic_1 = ap_sig_cseq_ST_st5_fsm_4)) then 
            grp_fu_237_p0 <= k_1_reg_175;
        elsif ((ap_const_logic_1 = ap_sig_cseq_ST_st4_fsm_3)) then 
            grp_fu_237_p0 <= k_1_phi_fu_178_p4;
        else 
            grp_fu_237_p0 <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        end if; 
    end process;

    grp_fu_237_p2 <= std_logic_vector(unsigned(grp_fu_237_p0) + unsigned(ap_const_lv32_FFFFFFFF));
    i_10_fu_482_p2 <= std_logic_vector(unsigned(i_i_reg_219) + unsigned(ap_const_lv9_1));
    i_11_fu_364_p2 <= std_logic_vector(unsigned(i_i7_reg_131) + unsigned(ap_const_lv9_1));
    i_8_fu_416_p2 <= std_logic_vector(unsigned(i_reg_142) + unsigned(ap_const_lv9_1FF));
        i_cast_fu_375_p1 <= std_logic_vector(resize(signed(i_reg_142),32));

    j_9_fu_402_p2 <= std_logic_vector(unsigned(j_reg_164) + unsigned(ap_const_lv4_1));
    j_cast1_fu_392_p1 <= std_logic_vector(resize(unsigned(j_reg_164),8));
    k_1_phi_fu_178_p4 <= k_1_reg_175;

    k_2_phi_fu_200_p4_assign_proc : process(tmp_79_reg_553, k_7_reg_562, ap_sig_cseq_ST_st6_fsm_5, k_1_reg_175)
    begin
        if ((ap_const_logic_1 = ap_sig_cseq_ST_st6_fsm_5)) then
            if ((ap_const_lv1_0 = tmp_79_reg_553)) then 
                k_2_phi_fu_200_p4 <= k_1_reg_175;
            elsif (not((ap_const_lv1_0 = tmp_79_reg_553))) then 
                k_2_phi_fu_200_p4 <= k_7_reg_562;
            else 
                k_2_phi_fu_200_p4 <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
            end if;
        else 
            k_2_phi_fu_200_p4 <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        end if; 
    end process;

        k_cast_fu_354_p1 <= std_logic_vector(resize(signed(k_fu_348_p2),32));

    k_fu_348_p2 <= std_logic_vector(unsigned(ap_const_lv31_FF) - unsigned(start_cast_fu_306_p1));

    out_r_address0_assign_proc : process(ap_sig_cseq_ST_st2_fsm_1, ap_sig_cseq_ST_st5_fsm_4, grp_fu_230_p2, tmp_79_reg_553, out_addr_2_reg_557, out_addr_reg_567, ap_sig_cseq_ST_st6_fsm_5, tmp_i_reg_586, ap_sig_cseq_ST_st8_fsm_7, tmp_i9_fu_370_p1, tmp_83_fu_438_p1, tmp_80_fu_443_p1)
    begin
        if ((ap_const_logic_1 = ap_sig_cseq_ST_st8_fsm_7)) then 
            out_r_address0 <= tmp_i_reg_586(8 - 1 downto 0);
        elsif (((ap_const_logic_1 = ap_sig_cseq_ST_st6_fsm_5) and not((ap_const_lv1_0 = tmp_79_reg_553)))) then 
            out_r_address0 <= out_addr_reg_567;
        elsif (((ap_const_logic_1 = ap_sig_cseq_ST_st6_fsm_5) and (ap_const_lv1_0 = tmp_79_reg_553))) then 
            out_r_address0 <= out_addr_2_reg_557;
        elsif ((ap_const_logic_1 = ap_sig_cseq_ST_st2_fsm_1)) then 
            out_r_address0 <= tmp_i9_fu_370_p1(8 - 1 downto 0);
        elsif (((ap_const_logic_1 = ap_sig_cseq_ST_st5_fsm_4) and not((ap_const_lv1_0 = grp_fu_230_p2)))) then 
            out_r_address0 <= tmp_80_fu_443_p1(8 - 1 downto 0);
        elsif (((ap_const_logic_1 = ap_sig_cseq_ST_st5_fsm_4) and (ap_const_lv1_0 = grp_fu_230_p2))) then 
            out_r_address0 <= tmp_83_fu_438_p1(8 - 1 downto 0);
        else 
            out_r_address0 <= "XXXXXXXX";
        end if; 
    end process;


    out_r_ce0_assign_proc : process(ap_sig_cseq_ST_st2_fsm_1, ap_sig_cseq_ST_st5_fsm_4, grp_fu_230_p2, tmp_79_reg_553, ap_sig_cseq_ST_st6_fsm_5, ap_sig_cseq_ST_st8_fsm_7)
    begin
        if (((ap_const_logic_1 = ap_sig_cseq_ST_st2_fsm_1) or ((ap_const_logic_1 = ap_sig_cseq_ST_st5_fsm_4) and (ap_const_lv1_0 = grp_fu_230_p2)) or ((ap_const_logic_1 = ap_sig_cseq_ST_st5_fsm_4) and not((ap_const_lv1_0 = grp_fu_230_p2))) or ((ap_const_logic_1 = ap_sig_cseq_ST_st6_fsm_5) and not((ap_const_lv1_0 = tmp_79_reg_553))) or ((ap_const_logic_1 = ap_sig_cseq_ST_st6_fsm_5) and (ap_const_lv1_0 = tmp_79_reg_553)) or (ap_const_logic_1 = ap_sig_cseq_ST_st8_fsm_7))) then 
            out_r_ce0 <= ap_const_logic_1;
        else 
            out_r_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    out_r_d0_assign_proc : process(a_q0, ap_sig_cseq_ST_st2_fsm_1, tmp_79_reg_553, ap_sig_cseq_ST_st6_fsm_5, ap_sig_cseq_ST_st8_fsm_7, tmp_84_fu_457_p2, tmp_81_fu_464_p2)
    begin
        if ((ap_const_logic_1 = ap_sig_cseq_ST_st8_fsm_7)) then 
            out_r_d0 <= a_q0;
        elsif (((ap_const_logic_1 = ap_sig_cseq_ST_st6_fsm_5) and not((ap_const_lv1_0 = tmp_79_reg_553)))) then 
            out_r_d0 <= tmp_81_fu_464_p2;
        elsif (((ap_const_logic_1 = ap_sig_cseq_ST_st6_fsm_5) and (ap_const_lv1_0 = tmp_79_reg_553))) then 
            out_r_d0 <= tmp_84_fu_457_p2;
        elsif ((ap_const_logic_1 = ap_sig_cseq_ST_st2_fsm_1)) then 
            out_r_d0 <= ap_const_lv8_0;
        else 
            out_r_d0 <= "XXXXXXXX";
        end if; 
    end process;


    out_r_we0_assign_proc : process(ap_sig_cseq_ST_st2_fsm_1, tmp_79_reg_553, ap_sig_cseq_ST_st6_fsm_5, exitcond_i8_fu_358_p2, ap_sig_cseq_ST_st8_fsm_7)
    begin
        if ((((ap_const_logic_1 = ap_sig_cseq_ST_st2_fsm_1) and (ap_const_lv1_0 = exitcond_i8_fu_358_p2)) or ((ap_const_logic_1 = ap_sig_cseq_ST_st6_fsm_5) and not((ap_const_lv1_0 = tmp_79_reg_553))) or ((ap_const_logic_1 = ap_sig_cseq_ST_st6_fsm_5) and (ap_const_lv1_0 = tmp_79_reg_553)) or (ap_const_logic_1 = ap_sig_cseq_ST_st8_fsm_7))) then 
            out_r_we0 <= ap_const_logic_1;
        else 
            out_r_we0 <= ap_const_logic_0;
        end if; 
    end process;


    outputBit_1_phi_fu_211_p4_assign_proc : process(tmp_79_reg_553, ap_sig_cseq_ST_st6_fsm_5, outputBit_reg_186)
    begin
        if ((ap_const_logic_1 = ap_sig_cseq_ST_st6_fsm_5)) then
            if ((ap_const_lv1_0 = tmp_79_reg_553)) then 
                outputBit_1_phi_fu_211_p4 <= outputBit_reg_186;
            elsif (not((ap_const_lv1_0 = tmp_79_reg_553))) then 
                outputBit_1_phi_fu_211_p4 <= ap_const_lv32_0;
            else 
                outputBit_1_phi_fu_211_p4 <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
            end if;
        else 
            outputBit_1_phi_fu_211_p4 <= "XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX";
        end if; 
    end process;

    outputBit_3_fu_470_p2 <= std_logic_vector(unsigned(outputBit_1_phi_fu_211_p4) + unsigned(ap_const_lv32_1));
    outputBit_5_fu_340_p3 <= 
        p_neg_t5_fu_334_p2 when (tmp_16_fu_250_p3(0) = '1') else 
        p_and_f_fu_314_p3;
    outputBit_phi_fu_189_p4 <= outputBit_reg_186;
    p_and_f_fu_314_p3 <= (ap_const_lv29_0 & tmp_17_fu_310_p1);
    p_and_t_fu_326_p3 <= (ap_const_lv29_0 & tmp_18_fu_322_p1);
    p_k_1_fu_408_p3 <= 
        grp_fu_237_p2 when (grp_fu_230_p2(0) = '1') else 
        k_1_reg_175;
    p_lshr_cast_fu_274_p1 <= std_logic_vector(resize(unsigned(tmp_6_fu_264_p4),30));
    p_lshr_f_cast_fu_294_p1 <= std_logic_vector(resize(unsigned(tmp_7_fu_284_p4),30));
    p_neg_fu_258_p2 <= std_logic_vector(unsigned(ap_const_lv32_0) - unsigned(shift));
    p_neg_t5_fu_334_p2 <= std_logic_vector(unsigned(ap_const_lv32_0) - unsigned(p_and_t_fu_326_p3));
    p_neg_t_fu_278_p2 <= std_logic_vector(unsigned(ap_const_lv30_0) - unsigned(p_lshr_cast_fu_274_p1));
        start_cast_fu_306_p1 <= std_logic_vector(resize(signed(start_fu_298_p3),31));

    start_fu_298_p3 <= 
        p_neg_t_fu_278_p2 when (tmp_16_fu_250_p3(0) = '1') else 
        p_lshr_f_cast_fu_294_p1;
    tmp_16_fu_250_p3 <= shift(31 downto 31);
    tmp_17_fu_310_p1 <= shift(3 - 1 downto 0);
    tmp_18_fu_322_p1 <= p_neg_fu_258_p2(3 - 1 downto 0);
    tmp_19_fu_379_p3 <= i_reg_142(8 downto 8);
    tmp_20_fu_448_p1 <= outputBit_reg_186(8 - 1 downto 0);
    tmp_6_fu_264_p4 <= p_neg_fu_258_p2(31 downto 3);
    tmp_77_fu_422_p2 <= std_logic_vector(shift_left(unsigned(ap_const_lv8_1),to_integer(unsigned('0' & j_cast1_reg_523(8-1 downto 0)))));
    tmp_78_fu_427_p2 <= (tmp_77_fu_422_p2 and a_q0);
    tmp_7_fu_284_p4 <= shift(31 downto 3);
        tmp_80_fu_443_p1 <= std_logic_vector(resize(signed(grp_fu_237_p2),64));

    tmp_81_fu_464_p2 <= std_logic_vector(unsigned(out_r_q0) + unsigned(b_reg_547));
    tmp_82_fu_452_p2 <= std_logic_vector(shift_left(unsigned(b_reg_547),to_integer(unsigned('0' & tmp_20_fu_448_p1(8-1 downto 0)))));
        tmp_83_fu_438_p1 <= std_logic_vector(resize(signed(k_1_reg_175),64));

    tmp_84_fu_457_p2 <= std_logic_vector(unsigned(tmp_82_fu_452_p2) + unsigned(out_r_q0));
    tmp_fu_244_p2 <= "1" when (shift = ap_const_lv32_0) else "0";
    tmp_i9_fu_370_p1 <= std_logic_vector(resize(unsigned(i_i7_reg_131),64));
    tmp_i_fu_488_p1 <= std_logic_vector(resize(unsigned(i_i_reg_219),64));
    tmp_s_fu_387_p1 <= std_logic_vector(resize(unsigned(i_cast_fu_375_p1),64));
end behav;
