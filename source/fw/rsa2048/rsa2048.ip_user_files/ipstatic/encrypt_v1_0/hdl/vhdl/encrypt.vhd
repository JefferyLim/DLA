-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
-- Version: 2016.2
-- Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity encrypt is
generic (
    C_S_AXI_PERIPH_BUS_ADDR_WIDTH : INTEGER := 8;
    C_S_AXI_PERIPH_BUS_DATA_WIDTH : INTEGER := 32 );
port (
    ap_clk : IN STD_LOGIC;
    ap_rst_n : IN STD_LOGIC;
    s_axi_PERIPH_BUS_AWVALID : IN STD_LOGIC;
    s_axi_PERIPH_BUS_AWREADY : OUT STD_LOGIC;
    s_axi_PERIPH_BUS_AWADDR : IN STD_LOGIC_VECTOR (C_S_AXI_PERIPH_BUS_ADDR_WIDTH-1 downto 0);
    s_axi_PERIPH_BUS_WVALID : IN STD_LOGIC;
    s_axi_PERIPH_BUS_WREADY : OUT STD_LOGIC;
    s_axi_PERIPH_BUS_WDATA : IN STD_LOGIC_VECTOR (C_S_AXI_PERIPH_BUS_DATA_WIDTH-1 downto 0);
    s_axi_PERIPH_BUS_WSTRB : IN STD_LOGIC_VECTOR (C_S_AXI_PERIPH_BUS_DATA_WIDTH/8-1 downto 0);
    s_axi_PERIPH_BUS_ARVALID : IN STD_LOGIC;
    s_axi_PERIPH_BUS_ARREADY : OUT STD_LOGIC;
    s_axi_PERIPH_BUS_ARADDR : IN STD_LOGIC_VECTOR (C_S_AXI_PERIPH_BUS_ADDR_WIDTH-1 downto 0);
    s_axi_PERIPH_BUS_RVALID : OUT STD_LOGIC;
    s_axi_PERIPH_BUS_RREADY : IN STD_LOGIC;
    s_axi_PERIPH_BUS_RDATA : OUT STD_LOGIC_VECTOR (C_S_AXI_PERIPH_BUS_DATA_WIDTH-1 downto 0);
    s_axi_PERIPH_BUS_RRESP : OUT STD_LOGIC_VECTOR (1 downto 0);
    s_axi_PERIPH_BUS_BVALID : OUT STD_LOGIC;
    s_axi_PERIPH_BUS_BREADY : IN STD_LOGIC;
    s_axi_PERIPH_BUS_BRESP : OUT STD_LOGIC_VECTOR (1 downto 0);
    interrupt : OUT STD_LOGIC );
end;


architecture behav of encrypt is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "encrypt,hls_ip_2016_2,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=1,HLS_INPUT_PART=xc7z020clg484-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=7.690000,HLS_SYN_LAT=2,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=3379,HLS_SYN_LUT=2601}";
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_st1_fsm_0 : STD_LOGIC_VECTOR (2 downto 0) := "001";
    constant ap_ST_st2_fsm_1 : STD_LOGIC_VECTOR (2 downto 0) := "010";
    constant ap_ST_st3_fsm_2 : STD_LOGIC_VECTOR (2 downto 0) := "100";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant C_S_AXI_DATA_WIDTH : INTEGER range 63 downto 0 := 20;
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv512_lc_1 : STD_LOGIC_VECTOR (511 downto 0) := "00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000101";

    signal ap_rst_n_inv : STD_LOGIC;
    signal ap_start : STD_LOGIC;
    signal ap_done : STD_LOGIC;
    signal ap_idle : STD_LOGIC;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (2 downto 0) := "001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_sig_cseq_ST_st1_fsm_0 : STD_LOGIC;
    signal ap_sig_20 : BOOLEAN;
    signal ap_ready : STD_LOGIC;
    signal key_V : STD_LOGIC_VECTOR (511 downto 0);
    signal output_V_ap_vld : STD_LOGIC;
    signal grp_fu_39_p2 : STD_LOGIC_VECTOR (511 downto 0);
    signal ap_sig_cseq_ST_st3_fsm_2 : STD_LOGIC;
    signal ap_sig_77 : BOOLEAN;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (2 downto 0);

    component encrypt_add_512ns_512ns_512_3 IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        din0 : IN STD_LOGIC_VECTOR (511 downto 0);
        din1 : IN STD_LOGIC_VECTOR (511 downto 0);
        ce : IN STD_LOGIC;
        dout : OUT STD_LOGIC_VECTOR (511 downto 0) );
    end component;


    component encrypt_PERIPH_BUS_s_axi IS
    generic (
        C_S_AXI_ADDR_WIDTH : INTEGER;
        C_S_AXI_DATA_WIDTH : INTEGER );
    port (
        AWVALID : IN STD_LOGIC;
        AWREADY : OUT STD_LOGIC;
        AWADDR : IN STD_LOGIC_VECTOR (C_S_AXI_ADDR_WIDTH-1 downto 0);
        WVALID : IN STD_LOGIC;
        WREADY : OUT STD_LOGIC;
        WDATA : IN STD_LOGIC_VECTOR (C_S_AXI_DATA_WIDTH-1 downto 0);
        WSTRB : IN STD_LOGIC_VECTOR (C_S_AXI_DATA_WIDTH/8-1 downto 0);
        ARVALID : IN STD_LOGIC;
        ARREADY : OUT STD_LOGIC;
        ARADDR : IN STD_LOGIC_VECTOR (C_S_AXI_ADDR_WIDTH-1 downto 0);
        RVALID : OUT STD_LOGIC;
        RREADY : IN STD_LOGIC;
        RDATA : OUT STD_LOGIC_VECTOR (C_S_AXI_DATA_WIDTH-1 downto 0);
        RRESP : OUT STD_LOGIC_VECTOR (1 downto 0);
        BVALID : OUT STD_LOGIC;
        BREADY : IN STD_LOGIC;
        BRESP : OUT STD_LOGIC_VECTOR (1 downto 0);
        ACLK : IN STD_LOGIC;
        ARESET : IN STD_LOGIC;
        ACLK_EN : IN STD_LOGIC;
        ap_start : OUT STD_LOGIC;
        interrupt : OUT STD_LOGIC;
        ap_ready : IN STD_LOGIC;
        ap_done : IN STD_LOGIC;
        ap_idle : IN STD_LOGIC;
        key_V : OUT STD_LOGIC_VECTOR (511 downto 0);
        output_V : IN STD_LOGIC_VECTOR (511 downto 0);
        output_V_ap_vld : IN STD_LOGIC );
    end component;



begin
    encrypt_PERIPH_BUS_s_axi_U : component encrypt_PERIPH_BUS_s_axi
    generic map (
        C_S_AXI_ADDR_WIDTH => C_S_AXI_PERIPH_BUS_ADDR_WIDTH,
        C_S_AXI_DATA_WIDTH => C_S_AXI_PERIPH_BUS_DATA_WIDTH)
    port map (
        AWVALID => s_axi_PERIPH_BUS_AWVALID,
        AWREADY => s_axi_PERIPH_BUS_AWREADY,
        AWADDR => s_axi_PERIPH_BUS_AWADDR,
        WVALID => s_axi_PERIPH_BUS_WVALID,
        WREADY => s_axi_PERIPH_BUS_WREADY,
        WDATA => s_axi_PERIPH_BUS_WDATA,
        WSTRB => s_axi_PERIPH_BUS_WSTRB,
        ARVALID => s_axi_PERIPH_BUS_ARVALID,
        ARREADY => s_axi_PERIPH_BUS_ARREADY,
        ARADDR => s_axi_PERIPH_BUS_ARADDR,
        RVALID => s_axi_PERIPH_BUS_RVALID,
        RREADY => s_axi_PERIPH_BUS_RREADY,
        RDATA => s_axi_PERIPH_BUS_RDATA,
        RRESP => s_axi_PERIPH_BUS_RRESP,
        BVALID => s_axi_PERIPH_BUS_BVALID,
        BREADY => s_axi_PERIPH_BUS_BREADY,
        BRESP => s_axi_PERIPH_BUS_BRESP,
        ACLK => ap_clk,
        ARESET => ap_rst_n_inv,
        ACLK_EN => ap_const_logic_1,
        ap_start => ap_start,
        interrupt => interrupt,
        ap_ready => ap_ready,
        ap_done => ap_done,
        ap_idle => ap_idle,
        key_V => key_V,
        output_V => grp_fu_39_p2,
        output_V_ap_vld => output_V_ap_vld);

    encrypt_add_512ns_512ns_512_3_U1 : component encrypt_add_512ns_512ns_512_3
    generic map (
        ID => 1,
        NUM_STAGE => 3,
        din0_WIDTH => 512,
        din1_WIDTH => 512,
        dout_WIDTH => 512)
    port map (
        clk => ap_clk,
        reset => ap_rst_n_inv,
        din0 => key_V,
        din1 => ap_const_lv512_lc_1,
        ce => ap_const_logic_1,
        dout => grp_fu_39_p2);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst_n_inv = '1') then
                ap_CS_fsm <= ap_ST_st1_fsm_0;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm)
    begin
        case ap_CS_fsm is
            when ap_ST_st1_fsm_0 => 
                if (not((ap_start = ap_const_logic_0))) then
                    ap_NS_fsm <= ap_ST_st2_fsm_1;
                else
                    ap_NS_fsm <= ap_ST_st1_fsm_0;
                end if;
            when ap_ST_st2_fsm_1 => 
                ap_NS_fsm <= ap_ST_st3_fsm_2;
            when ap_ST_st3_fsm_2 => 
                ap_NS_fsm <= ap_ST_st1_fsm_0;
            when others =>  
                ap_NS_fsm <= "XXX";
        end case;
    end process;

    ap_done_assign_proc : process(ap_sig_cseq_ST_st3_fsm_2)
    begin
        if ((ap_const_logic_1 = ap_sig_cseq_ST_st3_fsm_2)) then 
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


    ap_ready_assign_proc : process(ap_sig_cseq_ST_st3_fsm_2)
    begin
        if ((ap_const_logic_1 = ap_sig_cseq_ST_st3_fsm_2)) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;


    ap_rst_n_inv_assign_proc : process(ap_rst_n)
    begin
                ap_rst_n_inv <= not(ap_rst_n);
    end process;


    ap_sig_20_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_20 <= (ap_CS_fsm(0 downto 0) = ap_const_lv1_1);
    end process;


    ap_sig_77_assign_proc : process(ap_CS_fsm)
    begin
                ap_sig_77 <= (ap_const_lv1_1 = ap_CS_fsm(2 downto 2));
    end process;


    ap_sig_cseq_ST_st1_fsm_0_assign_proc : process(ap_sig_20)
    begin
        if (ap_sig_20) then 
            ap_sig_cseq_ST_st1_fsm_0 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st1_fsm_0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_sig_cseq_ST_st3_fsm_2_assign_proc : process(ap_sig_77)
    begin
        if (ap_sig_77) then 
            ap_sig_cseq_ST_st3_fsm_2 <= ap_const_logic_1;
        else 
            ap_sig_cseq_ST_st3_fsm_2 <= ap_const_logic_0;
        end if; 
    end process;


    output_V_ap_vld_assign_proc : process(ap_sig_cseq_ST_st3_fsm_2)
    begin
        if ((ap_const_logic_1 = ap_sig_cseq_ST_st3_fsm_2)) then 
            output_V_ap_vld <= ap_const_logic_1;
        else 
            output_V_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

end behav;