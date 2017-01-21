--Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2016.2 (lin64) Build 1577090 Thu Jun  2 16:32:35 MDT 2016
--Date        : Sat Nov  5 15:41:51 2016
--Host        : Inspiron-5547 running 64-bit Ubuntu 14.04.4 LTS
--Command     : generate_target xc7z020_wrapper.bd
--Design      : xc7z020_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
use ieee.numeric_std.all;

use work.xc7z020_wrapper;

entity top is
  port (
    DDR_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_cas_n : inout STD_LOGIC;
    DDR_ck_n : inout STD_LOGIC;
    DDR_ck_p : inout STD_LOGIC;
    DDR_cke : inout STD_LOGIC;
    DDR_cs_n : inout STD_LOGIC;
    DDR_dm : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_odt : inout STD_LOGIC;
    DDR_ras_n : inout STD_LOGIC;
    DDR_reset_n : inout STD_LOGIC;
    DDR_we_n : inout STD_LOGIC;
    FIXED_IO_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC;
    LD0: out std_logic;
    LD1: out std_logic;
    LD2: out std_logic;
    LD3: out std_logic;
    LD4: out std_logic;
    LD5: out std_logic
  );
end top;

architecture STRUCTURE of top is
    
 
    component xc7z020 is
    port (
        DDR_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
        DDR_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
        DDR_cas_n : inout STD_LOGIC;
        DDR_ck_n : inout STD_LOGIC;
        DDR_ck_p : inout STD_LOGIC;
        DDR_cke : inout STD_LOGIC;
        DDR_cs_n : inout STD_LOGIC;
        DDR_dm : inout STD_LOGIC_VECTOR ( 3 downto 0 );
        DDR_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
        DDR_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
        DDR_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
        DDR_odt : inout STD_LOGIC;
        DDR_ras_n : inout STD_LOGIC;
        DDR_reset_n : inout STD_LOGIC;
        DDR_we_n : inout STD_LOGIC;
        FIXED_IO_ddr_vrn : inout STD_LOGIC;
        FIXED_IO_ddr_vrp : inout STD_LOGIC;
        FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
        FIXED_IO_ps_clk : inout STD_LOGIC;
        FIXED_IO_ps_porb : inout STD_LOGIC;
        FIXED_IO_ps_srstb : inout STD_LOGIC;
        clk_125Mhz : out STD_LOGIC;
        clk_200Mhz : out STD_LOGIC;
        clk_50Mhz : out STD_LOGIC
    );
    end component xc7z020;
    
begin
    
    xc7z020_i: component xc7z020
    port map (
        DDR_addr(14 downto 0) => DDR_addr(14 downto 0),
          DDR_ba(2 downto 0) => DDR_ba(2 downto 0),
          DDR_cas_n => DDR_cas_n,
          DDR_ck_n => DDR_ck_n,
          DDR_ck_p => DDR_ck_p,
          DDR_cke => DDR_cke,
          DDR_cs_n => DDR_cs_n,
          DDR_dm(3 downto 0) => DDR_dm(3 downto 0),
          DDR_dq(31 downto 0) => DDR_dq(31 downto 0),
          DDR_dqs_n(3 downto 0) => DDR_dqs_n(3 downto 0),
          DDR_dqs_p(3 downto 0) => DDR_dqs_p(3 downto 0),
          DDR_odt => DDR_odt,
          DDR_ras_n => DDR_ras_n,
          DDR_reset_n => DDR_reset_n,
          DDR_we_n => DDR_we_n,
          FIXED_IO_ddr_vrn => FIXED_IO_ddr_vrn,
          FIXED_IO_ddr_vrp => FIXED_IO_ddr_vrp,
          FIXED_IO_mio(53 downto 0) => FIXED_IO_mio(53 downto 0),
          FIXED_IO_ps_clk => FIXED_IO_ps_clk,
          FIXED_IO_ps_porb => FIXED_IO_ps_porb,
          FIXED_IO_ps_srstb => FIXED_IO_ps_srstb,
          clk_125Mhz => open,
          clk_200Mhz => open,
          clk_50Mhz => open);
       
    
end STRUCTURE;
