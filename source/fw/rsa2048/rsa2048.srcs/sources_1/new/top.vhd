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
    
    component encrypt is
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        key : IN STD_LOGIC_VECTOR (511 downto 0);
        exponent : IN STD_LOGIC_VECTOR (511 downto 0);
        ap_return : OUT STD_LOGIC_VECTOR (511 downto 0) );
    end component;
    
    component xc7z020 is
    port (
        BRAM_PORTB_addr : in STD_LOGIC_VECTOR ( 31 downto 0 );
        BRAM_PORTB_clk : in STD_LOGIC;
        BRAM_PORTB_din : in STD_LOGIC_VECTOR ( 31 downto 0 );
        BRAM_PORTB_dout : out STD_LOGIC_VECTOR ( 31 downto 0 );
        BRAM_PORTB_en : in STD_LOGIC;
        BRAM_PORTB_rst : in STD_LOGIC;
        BRAM_PORTB_we : in STD_LOGIC_VECTOR ( 3 downto 0 );
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

    
    signal clk : std_logic;
    
    signal BRAM_PORTB_clk : std_logic;
    signal BRAM_PORTB_din : std_logic_vector(31 downto 0);
    signal BRAM_PORTB_dout : std_logic_vector(31 downto 0);
    signal BRAM_PORTB_en : std_logic := '1';
    signal BRAM_PORTB_we : std_logic_vector(3 downto 0);
    --signal state : integer := 0; 
    
    signal BRAM_PORTB_addr : std_logic_vector(31 downto 0) := x"00000004";
    
    signal STATUS_REG: std_logic_vector(31 downto 0) :=     x"00000000";
    signal CTRL_REG : std_logic_vector(31 downto 0) :=      x"00000004";
    signal KEY_REG : std_logic_vector(31 downto 0) :=       x"00000100";
    signal EXP_REG : std_logic_vector(31 downto 0) :=        x"00000200";
    signal OUT_REG : std_logic_vector(31 downto 0) :=       x"00000300";
    
    signal key : std_logic_vector(511 downto 0);
    signal exponent : std_logic_vector(511 downto 0);
    signal output : std_logic_vector(511 downto 0);
    
    signal LED : std_logic_vector(4 downto 0);

begin

--    encryption: component encrypt
--    port map (
--        ap_clk => clk,
--        ap_rst => '1',
--        ap_start => '1',
--        ap_done  => open,
--        ap_idle  => open,
--        ap_ready => open,
--        key => key,
--        exponent => exponent,
--        ap_return => output );
    
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
        DDR_reset_n => DDR_reset_n,
        DDR_we_n => DDR_we_n,
        FIXED_IO_ddr_vrn => FIXED_IO_ddr_vrn,
        FIXED_IO_ddr_vrp => FIXED_IO_ddr_vrp,
        FIXED_IO_mio(53 downto 0) => FIXED_IO_mio(53 downto 0),
        FIXED_IO_ps_clk => FIXED_IO_ps_clk,
        FIXED_IO_ps_porb => FIXED_IO_ps_porb,
        FIXED_IO_ps_srstb => FIXED_IO_ps_srstb,
        BRAM_PORTB_addr(31 downto 0) => BRAM_PORTB_addr,
        BRAM_PORTB_clk => BRAM_PORTB_clk,
        BRAM_PORTB_din(31 downto 0) => BRAM_PORTB_din,
        BRAM_PORTB_dout(31 downto 0) => BRAM_PORTB_dout,
        BRAM_PORTB_we(3 downto 0) => BRAM_PORTB_we,
        BRAM_PORTB_en => '1',
        BRAM_PORTB_rst => '0',
        clk_125Mhz => open,
        clk_200Mhz => open,
        clk_50Mhz => clk);
       
    BRAM_PORTB_clk <= clk;
    LD0 <= LED(0);
    LD1 <= LED(1);
    LD2 <= LED(2);
    LD3 <= LED(3);
    LD4 <= LED(4);
    
    process(clk) 
        variable CTRL_IN : integer;
        variable keysize : integer := 0;
        variable state : integer := 0;
       
    begin
        CTRL_IN := to_integer(unsigned(BRAM_PORTB_dout));
        
        if(clk'event and clk='1') then
            if(state = 0) then
                if(CTRL_IN = 1) then
                    state := 1;   
                    LED <= "00001";
                elsif(CTRL_IN = 2) then
                    state := 2;                  
                    LED <= "00010";
                elsif(CTRL_IN = 0) then
                    state := 0;
                    LED <= "00000";
                    LD5 <= '0';
                end if;
            end if;
                
            case state is
                when 1 =>
                    BRAM_PORTB_addr <= STATUS_REG;
                    BRAM_PORTB_din <= x"01010101";
                    BRAM_PORTB_we <= "1111"; 
                    state := 8;
                when 2 => 
                    LD5 <= '1';
                    BRAM_PORTB_addr <= std_logic_vector(unsigned(KEY_REG) + 4*(keysize));
                    key(31+(32*keysize) downto 0+(32*keysize)) <= BRAM_PORTB_dout;
                    BRAM_PORTB_we <= "0000"; 
                    keysize := keysize + 1;
                    if(keysize >= 4) then
                        BRAM_PORTB_addr <= CTRL_REG;
                        state := 3;
                        keysize := 0;
                    end if;  
                when 3 =>
                    LED <= "00100";
                    BRAM_PORTB_addr <= std_logic_vector(unsigned(EXP_REG) + 4*(keysize));
                    exponent(31+(32*keysize) downto 0+(32*keysize)) <= BRAM_PORTB_dout;
                    keysize := keysize + 1;
                    BRAM_PORTB_we <= "0000"; 
                    if(keysize >= 4) then
                        BRAM_PORTB_addr <= CTRL_REG;    
                        state := 4;
                        keysize := 0;
                    end if;
                when 4 => 
                    BRAM_PORTB_addr <= OUT_REG;
                    BRAM_PORTB_din <= key(31 downto 0) and exponent(31 downto 0);
                    BRAM_PORTB_we <= "1111";
                    state := 5;
                when others =>
                    BRAM_PORTB_addr <= CTRL_REG;
                    BRAM_PORTB_din <= x"00000000";
                    BRAM_PORTB_we <= "0000";
                    state := 0;
            end case;       
        end if;
    end process;
    
end STRUCTURE;
