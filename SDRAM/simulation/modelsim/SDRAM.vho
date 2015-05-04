-- Copyright (C) 1991-2014 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus II License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 14.0.0 Build 200 06/17/2014 SJ Web Edition"

-- DATE "04/30/2015 04:27:50"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	sdram IS
    PORT (
	CLOCK_50 : IN std_logic;
	SW : IN std_logic_vector(9 DOWNTO 0);
	VGA_B : OUT std_logic_vector(7 DOWNTO 0);
	VGA_G : OUT std_logic_vector(7 DOWNTO 0);
	VGA_R : OUT std_logic_vector(7 DOWNTO 0);
	VGA_CLK : OUT std_logic;
	VGA_BLANK_N : OUT std_logic;
	VGA_HS : OUT std_logic;
	VGA_VS : OUT std_logic;
	VGA_SYNC_N : OUT std_logic;
	LEDR : OUT std_logic_vector(9 DOWNTO 0);
	KEY : IN std_logic_vector(3 DOWNTO 0);
	DRAM_ADDR : OUT std_logic_vector(12 DOWNTO 0);
	DRAM_BA : OUT std_logic_vector(1 DOWNTO 0);
	DRAM_CAS_N : OUT std_logic;
	DRAM_CKE : OUT std_logic;
	DRAM_CLK : OUT std_logic;
	DRAM_CS_N : OUT std_logic;
	DRAM_DQ : INOUT std_logic_vector(15 DOWNTO 0);
	DRAM_RAS_N : OUT std_logic;
	DRAM_WE_N : OUT std_logic;
	DRAM_LDQM : OUT std_logic;
	DRAM_UDQM : OUT std_logic
	);
END sdram;

-- Design Ports Information
-- VGA_B[0]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[1]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[2]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[3]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[4]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[5]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[6]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[7]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[0]	=>  Location: PIN_J9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[1]	=>  Location: PIN_J10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[2]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[3]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[4]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[5]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[6]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[7]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[0]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[1]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[2]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[3]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[4]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[5]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[6]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[7]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_CLK	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_BLANK_N	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_HS	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_VS	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_SYNC_N	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_V17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_Y19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_W20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[8]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[9]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_ADDR[0]	=>  Location: PIN_AK14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_ADDR[1]	=>  Location: PIN_AH14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_ADDR[2]	=>  Location: PIN_AG15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_ADDR[3]	=>  Location: PIN_AE14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_ADDR[4]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_ADDR[5]	=>  Location: PIN_AC14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_ADDR[6]	=>  Location: PIN_AD14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_ADDR[7]	=>  Location: PIN_AF15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_ADDR[8]	=>  Location: PIN_AH15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_ADDR[9]	=>  Location: PIN_AG13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_ADDR[10]	=>  Location: PIN_AG12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_ADDR[11]	=>  Location: PIN_AH13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_ADDR[12]	=>  Location: PIN_AJ14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_BA[0]	=>  Location: PIN_AF13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_BA[1]	=>  Location: PIN_AJ12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_CAS_N	=>  Location: PIN_AF11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_CKE	=>  Location: PIN_AK13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_CLK	=>  Location: PIN_AH12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_CS_N	=>  Location: PIN_AG11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_RAS_N	=>  Location: PIN_AE13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_WE_N	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_LDQM	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_UDQM	=>  Location: PIN_AK12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_DQ[0]	=>  Location: PIN_AK6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_DQ[1]	=>  Location: PIN_AJ7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_DQ[2]	=>  Location: PIN_AK7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_DQ[3]	=>  Location: PIN_AK8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_DQ[4]	=>  Location: PIN_AK9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_DQ[5]	=>  Location: PIN_AG10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_DQ[6]	=>  Location: PIN_AK11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_DQ[7]	=>  Location: PIN_AJ11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_DQ[8]	=>  Location: PIN_AH10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_DQ[9]	=>  Location: PIN_AJ10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_DQ[10]	=>  Location: PIN_AJ9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_DQ[11]	=>  Location: PIN_AH9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_DQ[12]	=>  Location: PIN_AH8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_DQ[13]	=>  Location: PIN_AH7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_DQ[14]	=>  Location: PIN_AJ6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DRAM_DQ[15]	=>  Location: PIN_AJ5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AC9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AD10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF sdram IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_SW : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_VGA_B : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_VGA_G : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_VGA_R : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_VGA_CLK : std_logic;
SIGNAL ww_VGA_BLANK_N : std_logic;
SIGNAL ww_VGA_HS : std_logic;
SIGNAL ww_VGA_VS : std_logic;
SIGNAL ww_VGA_SYNC_N : std_logic;
SIGNAL ww_LEDR : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_DRAM_ADDR : std_logic_vector(12 DOWNTO 0);
SIGNAL ww_DRAM_BA : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_DRAM_CAS_N : std_logic;
SIGNAL ww_DRAM_CKE : std_logic;
SIGNAL ww_DRAM_CLK : std_logic;
SIGNAL ww_DRAM_CS_N : std_logic;
SIGNAL ww_DRAM_RAS_N : std_logic;
SIGNAL ww_DRAM_WE_N : std_logic;
SIGNAL ww_DRAM_LDQM : std_logic;
SIGNAL ww_DRAM_UDQM : std_logic;
SIGNAL \u3|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \u3|ram_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \u3|ram_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \u3|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \Add4~8_AX_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Add4~8_AY_bus\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \Add4~8_BX_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \Add4~8_BY_bus\ : std_logic_vector(18 DOWNTO 0);
SIGNAL \Add4~8_RESULTA_bus\ : std_logic_vector(63 DOWNTO 0);
SIGNAL \u0|pll_0|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u0|pll_0|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u0|pll_0|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_CLKIN_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u0|pll_0|altera_pll_i|general[0].gpll~PLL_RECONFIG_MHI_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u0|pll_0|altera_pll_i|general[0].gpll~PLL_RECONFIG_SHIFTEN_bus\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \u0|pll_0|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER_VCO0PH_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u0|pll_0|altera_pll_i|general[2].gpll~PLL_OUTPUT_COUNTER_VCO0PH_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u0|pll_0|altera_pll_i|general[1].gpll~PLL_OUTPUT_COUNTER_VCO0PH_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Add4~8_resulta\ : std_logic;
SIGNAL \Add4~9\ : std_logic;
SIGNAL \Add4~10\ : std_logic;
SIGNAL \Add4~11\ : std_logic;
SIGNAL \Add4~12\ : std_logic;
SIGNAL \Add4~13\ : std_logic;
SIGNAL \Add4~33\ : std_logic;
SIGNAL \Add4~34\ : std_logic;
SIGNAL \Add4~35\ : std_logic;
SIGNAL \Add4~36\ : std_logic;
SIGNAL \Add4~37\ : std_logic;
SIGNAL \Add4~38\ : std_logic;
SIGNAL \Add4~39\ : std_logic;
SIGNAL \Add4~40\ : std_logic;
SIGNAL \Add4~41\ : std_logic;
SIGNAL \Add4~42\ : std_logic;
SIGNAL \Add4~43\ : std_logic;
SIGNAL \Add4~44\ : std_logic;
SIGNAL \Add4~45\ : std_logic;
SIGNAL \Add4~46\ : std_logic;
SIGNAL \Add4~47\ : std_logic;
SIGNAL \Add4~48\ : std_logic;
SIGNAL \Add4~49\ : std_logic;
SIGNAL \Add4~50\ : std_logic;
SIGNAL \Add4~51\ : std_logic;
SIGNAL \Add4~52\ : std_logic;
SIGNAL \Add4~53\ : std_logic;
SIGNAL \Add4~54\ : std_logic;
SIGNAL \Add4~55\ : std_logic;
SIGNAL \Add4~56\ : std_logic;
SIGNAL \Add4~57\ : std_logic;
SIGNAL \Add4~58\ : std_logic;
SIGNAL \Add4~59\ : std_logic;
SIGNAL \Add4~60\ : std_logic;
SIGNAL \Add4~61\ : std_logic;
SIGNAL \Add4~62\ : std_logic;
SIGNAL \Add4~63\ : std_logic;
SIGNAL \Add4~64\ : std_logic;
SIGNAL \Add4~65\ : std_logic;
SIGNAL \Add4~66\ : std_logic;
SIGNAL \Add4~67\ : std_logic;
SIGNAL \Add4~68\ : std_logic;
SIGNAL \Add4~69\ : std_logic;
SIGNAL \Add4~70\ : std_logic;
SIGNAL \Add4~71\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \DRAM_DQ[8]~input_o\ : std_logic;
SIGNAL \DRAM_DQ[9]~input_o\ : std_logic;
SIGNAL \DRAM_DQ[10]~input_o\ : std_logic;
SIGNAL \DRAM_DQ[11]~input_o\ : std_logic;
SIGNAL \DRAM_DQ[12]~input_o\ : std_logic;
SIGNAL \DRAM_DQ[13]~input_o\ : std_logic;
SIGNAL \DRAM_DQ[14]~input_o\ : std_logic;
SIGNAL \DRAM_DQ[15]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \u0|pll_0|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_O_EXTSWITCHBUF\ : std_logic;
SIGNAL \CLOCK_50~inputCLKENA0_outclk\ : std_logic;
SIGNAL \u0|rst_controller_001|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain[1]~feeder_combout\ : std_logic;
SIGNAL \u0|rst_controller_001|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\ : std_logic;
SIGNAL \u0|pll_0|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_O_CLKOUT\ : std_logic;
SIGNAL \u0|pll_0|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI2\ : std_logic;
SIGNAL \u0|pll_0|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI3\ : std_logic;
SIGNAL \u0|pll_0|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI4\ : std_logic;
SIGNAL \u0|pll_0|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI5\ : std_logic;
SIGNAL \u0|pll_0|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI6\ : std_logic;
SIGNAL \u0|pll_0|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI7\ : std_logic;
SIGNAL \u0|pll_0|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_UP\ : std_logic;
SIGNAL \u0|pll_0|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI1\ : std_logic;
SIGNAL \u0|pll_0|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFTENM\ : std_logic;
SIGNAL \u0|pll_0|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI0\ : std_logic;
SIGNAL \u0|pll_0|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFT\ : std_logic;
SIGNAL \u0|pll_0|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_CNTNEN\ : std_logic;
SIGNAL \u0|pll_0|altera_pll_i|general[0].gpll~PLL_RECONFIGSHIFTEN5\ : std_logic;
SIGNAL \u0|pll_0|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_TCLK\ : std_logic;
SIGNAL \u0|pll_0|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH0\ : std_logic;
SIGNAL \u0|pll_0|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH1\ : std_logic;
SIGNAL \u0|pll_0|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH2\ : std_logic;
SIGNAL \u0|pll_0|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH3\ : std_logic;
SIGNAL \u0|pll_0|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH4\ : std_logic;
SIGNAL \u0|pll_0|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH5\ : std_logic;
SIGNAL \u0|pll_0|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH6\ : std_logic;
SIGNAL \u0|pll_0|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH7\ : std_logic;
SIGNAL \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\ : std_logic;
SIGNAL \Add6~61_sumout\ : std_logic;
SIGNAL \u0|pll_0|altera_pll_i|general[0].gpll~PLL_RECONFIGSHIFTEN6\ : std_logic;
SIGNAL \u0|pll_0|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\ : std_logic;
SIGNAL \u1|Add1~41_sumout\ : std_logic;
SIGNAL \u1|Add1~34\ : std_logic;
SIGNAL \u1|Add1~37_sumout\ : std_logic;
SIGNAL \u1|Add0~29_sumout\ : std_logic;
SIGNAL \u1|Add0~30\ : std_logic;
SIGNAL \u1|Add0~25_sumout\ : std_logic;
SIGNAL \u1|Add0~26\ : std_logic;
SIGNAL \u1|Add0~21_sumout\ : std_logic;
SIGNAL \u1|Add0~22\ : std_logic;
SIGNAL \u1|Add0~17_sumout\ : std_logic;
SIGNAL \u1|Add0~18\ : std_logic;
SIGNAL \u1|Add0~13_sumout\ : std_logic;
SIGNAL \u1|Add0~14\ : std_logic;
SIGNAL \u1|Add0~41_sumout\ : std_logic;
SIGNAL \u1|Add0~42\ : std_logic;
SIGNAL \u1|Add0~37_sumout\ : std_logic;
SIGNAL \u1|Add0~38\ : std_logic;
SIGNAL \u1|Add0~33_sumout\ : std_logic;
SIGNAL \u1|Add0~34\ : std_logic;
SIGNAL \u1|Add0~9_sumout\ : std_logic;
SIGNAL \u1|Add0~10\ : std_logic;
SIGNAL \u1|Add0~5_sumout\ : std_logic;
SIGNAL \u1|Add0~6\ : std_logic;
SIGNAL \u1|Add0~1_sumout\ : std_logic;
SIGNAL \u1|LessThan0~2_combout\ : std_logic;
SIGNAL \u1|Xpos[6]~0_combout\ : std_logic;
SIGNAL \u1|Equal3~0_combout\ : std_logic;
SIGNAL \u1|LessThan0~0_combout\ : std_logic;
SIGNAL \u1|LessThan0~3_combout\ : std_logic;
SIGNAL \u1|Equal3~2_combout\ : std_logic;
SIGNAL \u1|Equal2~0_combout\ : std_logic;
SIGNAL \u1|Ypos[4]~0_combout\ : std_logic;
SIGNAL \u1|Add1~38\ : std_logic;
SIGNAL \u1|Add1~21_sumout\ : std_logic;
SIGNAL \u1|Add1~22\ : std_logic;
SIGNAL \u1|Add1~17_sumout\ : std_logic;
SIGNAL \u1|Add1~18\ : std_logic;
SIGNAL \u1|Add1~13_sumout\ : std_logic;
SIGNAL \u1|Add1~14\ : std_logic;
SIGNAL \u1|Add1~9_sumout\ : std_logic;
SIGNAL \u1|Add1~10\ : std_logic;
SIGNAL \u1|Add1~25_sumout\ : std_logic;
SIGNAL \u1|Add1~26\ : std_logic;
SIGNAL \u1|Add1~29_sumout\ : std_logic;
SIGNAL \u1|Add1~30\ : std_logic;
SIGNAL \u1|Add1~5_sumout\ : std_logic;
SIGNAL \u1|Add1~6\ : std_logic;
SIGNAL \u1|Add1~1_sumout\ : std_logic;
SIGNAL \u1|Equal0~0_combout\ : std_logic;
SIGNAL \u1|Equal0~1_combout\ : std_logic;
SIGNAL \u1|Add1~42\ : std_logic;
SIGNAL \u1|Add1~33_sumout\ : std_logic;
SIGNAL \u1|Ypos[3]~DUPLICATE_q\ : std_logic;
SIGNAL \u1|Equal1~0_combout\ : std_logic;
SIGNAL \u1|VGA_FRAMEEND~q\ : std_logic;
SIGNAL \u1|VGA_FRAMESTART~q\ : std_logic;
SIGNAL \Add11~1_sumout\ : std_logic;
SIGNAL \Add10~1_sumout\ : std_logic;
SIGNAL \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain[1]~feeder_combout\ : std_logic;
SIGNAL \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain[0]~feeder_combout\ : std_logic;
SIGNAL \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~feeder_combout\ : std_logic;
SIGNAL \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|i_state.111~DUPLICATE_q\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|Selector14~0_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|Selector14~1_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|i_state.011~q\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|Add2~0_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|i_count[3]~2_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|i_count[0]~0_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|i_count[0]~1_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|i_count[0]~3_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|Selector15~0_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|Selector10~0_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|Selector10~1_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|i_state.011~DUPLICATE_q\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|WideOr6~combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|i_next.000~0_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|i_next.000~q\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|Add0~13_sumout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|refresh_counter[0]~11_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|Add0~14\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|Add0~9_sumout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|refresh_counter[1]~10_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|Add0~10\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|Add0~5_sumout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|refresh_counter[2]~9_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|Add0~6\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|Add0~53_sumout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|refresh_counter[3]~18_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|Add0~54\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|Add0~49_sumout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|refresh_counter~7_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|Add0~50\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|Add0~45_sumout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|refresh_counter~6_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|refresh_counter[7]~DUPLICATE_q\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|Add0~46\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|Add0~41_sumout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|Add0~42\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|Add0~37_sumout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|refresh_counter~5_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|Equal0~1_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|Add0~38\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|Add0~1_sumout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|refresh_counter~0_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|Add0~2\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|Add0~33_sumout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|refresh_counter~4_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|Add0~34\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|Add0~29_sumout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|refresh_counter[10]~14_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|Add0~30\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|Add0~25_sumout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|refresh_counter~3_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|Add0~26\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|Add0~21_sumout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|refresh_counter~2_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|Add0~22\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|Add0~17_sumout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|refresh_counter~1_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|Equal0~0_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|Equal0~2_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|Selector7~0_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|i_state.000~q\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|Selector8~0_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|i_state.001~q\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|Selector17~0_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|i_next.010~q\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|Selector9~0_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|i_state.010~q\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|i_state.000~DUPLICATE_q\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|Selector6~0_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|Selector5~0_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|Selector4~0_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|Selector19~0_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|Selector19~1_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|i_next.111~q\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|Selector12~0_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|i_state.111~q\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|Selector18~0_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|i_next.101~q\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|i_state.101~0_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|i_state.101~q\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|init_done~0_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|init_done~q\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|Selector1~0_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|init_done~DUPLICATE_q\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|refresh_request~q\ : std_logic;
SIGNAL \SDRAM_WE_N~q\ : std_logic;
SIGNAL \SDRAM_WE_N~0_combout\ : std_logic;
SIGNAL \SDRAM_WE_N~DUPLICATE_q\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|Equal1~0_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|m_state.000010000~q\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|m_addr~0_combout\ : std_logic;
SIGNAL \SDRAM_RE_N~0_combout\ : std_logic;
SIGNAL \gray~13_combout\ : std_logic;
SIGNAL \RAMADDR2GR_sync1[2]~feeder_combout\ : std_logic;
SIGNAL \gray~15_combout\ : std_logic;
SIGNAL \RAMADDR2GR_sync1[0]~feeder_combout\ : std_logic;
SIGNAL \gray~10_combout\ : std_logic;
SIGNAL \RAMADDR2GR_sync1[5]~feeder_combout\ : std_logic;
SIGNAL \gray~12_combout\ : std_logic;
SIGNAL \RAMADDR2GR_sync1[3]~feeder_combout\ : std_logic;
SIGNAL \gray~8_combout\ : std_logic;
SIGNAL \RAMADDR2GR_sync1[7]~feeder_combout\ : std_logic;
SIGNAL \gray~9_combout\ : std_logic;
SIGNAL \RAMADDR2GR_sync1[6]~feeder_combout\ : std_logic;
SIGNAL \gray~11_combout\ : std_logic;
SIGNAL \binary~10_combout\ : std_logic;
SIGNAL \gray~14_combout\ : std_logic;
SIGNAL \binary~11_combout\ : std_logic;
SIGNAL \Add5~13_sumout\ : std_logic;
SIGNAL \RAMFULL_POINTER~7_combout\ : std_logic;
SIGNAL \Add5~22\ : std_logic;
SIGNAL \Add5~25_sumout\ : std_logic;
SIGNAL \RAMFULL_POINTER~10_combout\ : std_logic;
SIGNAL \RAMFULL_POINTER[0]~4_combout\ : std_logic;
SIGNAL \Add5~26\ : std_logic;
SIGNAL \Add5~29_sumout\ : std_logic;
SIGNAL \RAMFULL_POINTER~11_combout\ : std_logic;
SIGNAL \Add5~30\ : std_logic;
SIGNAL \Add5~33_sumout\ : std_logic;
SIGNAL \RAMFULL_POINTER~12_combout\ : std_logic;
SIGNAL \Add5~34\ : std_logic;
SIGNAL \Add5~1_sumout\ : std_logic;
SIGNAL \RAMFULL_POINTER~0_combout\ : std_logic;
SIGNAL \Add5~2\ : std_logic;
SIGNAL \Add5~5_sumout\ : std_logic;
SIGNAL \RAMFULL_POINTER~5_combout\ : std_logic;
SIGNAL \Add5~6\ : std_logic;
SIGNAL \Add5~9_sumout\ : std_logic;
SIGNAL \RAMFULL_POINTER~6_combout\ : std_logic;
SIGNAL \RAMFULL_POINTER[0]~2_combout\ : std_logic;
SIGNAL \RAMFULL_POINTER[0]~1_combout\ : std_logic;
SIGNAL \RAMFULL_POINTER[0]~3_combout\ : std_logic;
SIGNAL \Add5~14\ : std_logic;
SIGNAL \Add5~17_sumout\ : std_logic;
SIGNAL \RAMFULL_POINTER~8_combout\ : std_logic;
SIGNAL \RAMFULL_POINTER[1]~feeder_combout\ : std_logic;
SIGNAL \Add5~18\ : std_logic;
SIGNAL \Add5~21_sumout\ : std_logic;
SIGNAL \RAMFULL_POINTER~9_combout\ : std_logic;
SIGNAL \binary~13_combout\ : std_logic;
SIGNAL \binary~12_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \binary~15_combout\ : std_logic;
SIGNAL \binary~14_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \SDRAM_RE_N~1_combout\ : std_logic;
SIGNAL \SDRAM_RE_N~q\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|wr_address~0_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|wr_address~q\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1[43]~0_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0[43]~0_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[28]~12_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1[32]~feeder_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0[32]~feeder_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[32]~20_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0[33]~DUPLICATE_q\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[33]~21_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0[34]~feeder_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[34]~22_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|pending~8_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[37]~25_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|Equal3~2_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0[36]~DUPLICATE_q\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[36]~24_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|Equal3~1_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[35]~23_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|pending~7_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|pending~3_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|m_count[1]~0_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|Selector33~0_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|m_state.100000000~q\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|active_rnw~1_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|active_rnw~2_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|active_rnw~0_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[31]~19_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|active_addr[13]~DUPLICATE_q\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|Equal3~0_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[29]~14_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[30]~18_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|pending~5_combout\ : std_logic;
SIGNAL \Add6~10\ : std_logic;
SIGNAL \Add6~13_sumout\ : std_logic;
SIGNAL \Add6~14\ : std_logic;
SIGNAL \Add6~21_sumout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[42]~13_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|pending~6_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|Selector31~0_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|active_cs_n~0_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|active_cs_n~q\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[43]~15_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|active_rnw~q\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|pending~1_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|pending~2_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|Selector34~0_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|Selector36~0_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|Selector34~1_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|Selector26~0_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|m_state.000000010~q\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|Selector36~1_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|Selector36~2_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|m_next.000010000~q\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|Selector29~0_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|Selector29~2_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|Selector29~3_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|m_count[2]~3_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|m_count[0]~8_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|m_count[1]~1_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|m_count[1]~2_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|m_count[1]~12_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|m_count[0]~9_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|Add3~0_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|m_count[3]~4_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|m_count[3]~5_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|m_count[1]~DUPLICATE_q\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|Selector27~1_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|Selector27~2_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|Selector27~0_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|Selector27~3_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|m_state.000000100~q\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|Selector25~0_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|Selector29~1_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|Selector29~12_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|m_state.000010000~DUPLICATE_q\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|Selector29~8_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|m_count[1]~11_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|m_count[1]~7_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|m_count[2]~10_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|m_count[2]~6_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|Selector30~0_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|Selector30~1_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|m_state.000100000~q\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|Selector25~1_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|Selector29~9_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|Selector29~7_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|Selector29~5_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|Selector29~10_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|Selector29~6_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|Selector29~4_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|pending~4_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|Selector29~11_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|Selector35~0_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|Selector35~1_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|m_next.000001000~q\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|Selector28~0_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|m_state.000001000~q\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|Selector43~0_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|f_pop~q\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|f_select~combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entries[1]~0_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entries[0]~1_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entries[0]~DUPLICATE_q\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|Selector25~2_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|Selector37~0_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|Selector37~1_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|Selector37~2_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|m_next.010000000~q\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|Selector32~0_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|m_state.010000000~q\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|Selector24~0_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|ack_refresh_request~q\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|refresh_request~0_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|refresh_request~DUPLICATE_q\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|Selector31~1_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|m_state.001000000~q\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|WideOr8~0_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|Selector34~2_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|Selector37~3_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|Selector34~3_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|Selector34~4_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|m_next.000000001~q\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|Selector25~3_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|Selector25~4_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|m_state.000000001~q\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|Selector21~0_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|m_cmd[2]~_Duplicate_1_q\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|Selector3~0_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|always5~0_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|Selector23~0_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|m_cmd[0]~_Duplicate_1_q\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|Selector2~0_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|Selector22~0_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|m_cmd[1]~_Duplicate_1_q\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|Equal4~0_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|za_valid~q\ : std_logic;
SIGNAL \RAMADDR1[0]~1_combout\ : std_logic;
SIGNAL \Add10~26\ : std_logic;
SIGNAL \Add10~29_sumout\ : std_logic;
SIGNAL \RAMADDR1[7]~DUPLICATE_q\ : std_logic;
SIGNAL \Add10~30\ : std_logic;
SIGNAL \Add10~33_sumout\ : std_logic;
SIGNAL \RAMADDR1[6]~DUPLICATE_q\ : std_logic;
SIGNAL \RAMADDR1[4]~DUPLICATE_q\ : std_logic;
SIGNAL \RAMADDR1[1]~DUPLICATE_q\ : std_logic;
SIGNAL \RAMADDR1[2]~DUPLICATE_q\ : std_logic;
SIGNAL \LessThan6~0_combout\ : std_logic;
SIGNAL \RAMADDR1[0]~0_combout\ : std_logic;
SIGNAL \Add10~2\ : std_logic;
SIGNAL \Add10~5_sumout\ : std_logic;
SIGNAL \Add10~6\ : std_logic;
SIGNAL \Add10~9_sumout\ : std_logic;
SIGNAL \Add10~10\ : std_logic;
SIGNAL \Add10~13_sumout\ : std_logic;
SIGNAL \Add10~14\ : std_logic;
SIGNAL \Add10~17_sumout\ : std_logic;
SIGNAL \Add10~18\ : std_logic;
SIGNAL \Add10~21_sumout\ : std_logic;
SIGNAL \Add10~22\ : std_logic;
SIGNAL \Add10~25_sumout\ : std_logic;
SIGNAL \gray~1_combout\ : std_logic;
SIGNAL \RAMADDR1GR_sync0[6]~feeder_combout\ : std_logic;
SIGNAL \RAMADDR1GR_sync1[6]~feeder_combout\ : std_logic;
SIGNAL \gray~4_combout\ : std_logic;
SIGNAL \gray~3_combout\ : std_logic;
SIGNAL \RAMADDR1GR_sync0[4]~feeder_combout\ : std_logic;
SIGNAL \RAMADDR1GR_sync0[8]~feeder_combout\ : std_logic;
SIGNAL \RAMADDR1GR_sync1[8]~feeder_combout\ : std_logic;
SIGNAL \gray~2_combout\ : std_logic;
SIGNAL \RAMADDR1GR_sync0[5]~feeder_combout\ : std_logic;
SIGNAL \gray~0_combout\ : std_logic;
SIGNAL \RAMADDR1GR_sync0[7]~feeder_combout\ : std_logic;
SIGNAL \binary~2_combout\ : std_logic;
SIGNAL \binary~6_combout\ : std_logic;
SIGNAL \binary~7_combout\ : std_logic;
SIGNAL \Equal2~2_combout\ : std_logic;
SIGNAL \u1|Equal3~1_combout\ : std_logic;
SIGNAL \u1|LessThan7~0_combout\ : std_logic;
SIGNAL \u1|ACTVID~0_combout\ : std_logic;
SIGNAL \u1|ACTVID~1_combout\ : std_logic;
SIGNAL \u1|ACTVID~q\ : std_logic;
SIGNAL \gray~5_combout\ : std_logic;
SIGNAL \RAMADDR1GR_sync0[2]~feeder_combout\ : std_logic;
SIGNAL \RAMADDR1GR_sync1[2]~feeder_combout\ : std_logic;
SIGNAL \gray~6_combout\ : std_logic;
SIGNAL \RAMADDR1GR_sync0[1]~feeder_combout\ : std_logic;
SIGNAL \binary~4_combout\ : std_logic;
SIGNAL \gray~7_combout\ : std_logic;
SIGNAL \RAMADDR1GR_sync0[0]~feeder_combout\ : std_logic;
SIGNAL \binary~3_combout\ : std_logic;
SIGNAL \binary~5_combout\ : std_logic;
SIGNAL \Equal2~1_combout\ : std_logic;
SIGNAL \binary~1_combout\ : std_logic;
SIGNAL \binary~0_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \process_1~0_combout\ : std_logic;
SIGNAL \RAMADDR2~0_combout\ : std_logic;
SIGNAL \RAMADDR2~1_combout\ : std_logic;
SIGNAL \RAMADDR2~11_combout\ : std_logic;
SIGNAL \RAMADDR2[0]~12_combout\ : std_logic;
SIGNAL \Add11~2\ : std_logic;
SIGNAL \Add11~5_sumout\ : std_logic;
SIGNAL \Add11~6\ : std_logic;
SIGNAL \Add11~9_sumout\ : std_logic;
SIGNAL \Add11~10\ : std_logic;
SIGNAL \Add11~13_sumout\ : std_logic;
SIGNAL \Add11~14\ : std_logic;
SIGNAL \Add11~17_sumout\ : std_logic;
SIGNAL \Add11~18\ : std_logic;
SIGNAL \Add11~21_sumout\ : std_logic;
SIGNAL \Add11~22\ : std_logic;
SIGNAL \Add11~25_sumout\ : std_logic;
SIGNAL \Add11~26\ : std_logic;
SIGNAL \Add11~29_sumout\ : std_logic;
SIGNAL \Add11~30\ : std_logic;
SIGNAL \Add11~33_sumout\ : std_logic;
SIGNAL \RAMADDR2GR_sync1[8]~DUPLICATE_q\ : std_logic;
SIGNAL \binary~9_combout\ : std_logic;
SIGNAL \RAMADDR2_bin[7]~DUPLICATE_q\ : std_logic;
SIGNAL \binary~8_combout\ : std_logic;
SIGNAL \RAMFULL_POINTER[8]~DUPLICATE_q\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \VGAFLAG~0_combout\ : std_logic;
SIGNAL \VGAFLAG[1]~feeder_combout\ : std_logic;
SIGNAL \VGABEGIN~0_combout\ : std_logic;
SIGNAL \VGABEGIN~q\ : std_logic;
SIGNAL \process_1~1_combout\ : std_logic;
SIGNAL \BUFF_CTRL~0_combout\ : std_logic;
SIGNAL \BUFF_CTRL~q\ : std_logic;
SIGNAL \Add8~18\ : std_logic;
SIGNAL \Add8~22\ : std_logic;
SIGNAL \Add8~26\ : std_logic;
SIGNAL \Add8~30\ : std_logic;
SIGNAL \Add8~34\ : std_logic;
SIGNAL \Add8~2\ : std_logic;
SIGNAL \Add8~6\ : std_logic;
SIGNAL \Add8~9_sumout\ : std_logic;
SIGNAL \Add8~5_sumout\ : std_logic;
SIGNAL \Add8~1_sumout\ : std_logic;
SIGNAL \Add8~33_sumout\ : std_logic;
SIGNAL \Add8~29_sumout\ : std_logic;
SIGNAL \Add8~25_sumout\ : std_logic;
SIGNAL \Add8~21_sumout\ : std_logic;
SIGNAL \Add8~17_sumout\ : std_logic;
SIGNAL \Add9~30_cout\ : std_logic;
SIGNAL \Add9~26_cout\ : std_logic;
SIGNAL \Add9~22_cout\ : std_logic;
SIGNAL \Add9~18_cout\ : std_logic;
SIGNAL \Add9~14_cout\ : std_logic;
SIGNAL \Add9~10_cout\ : std_logic;
SIGNAL \Add9~1_sumout\ : std_logic;
SIGNAL \Add7~22\ : std_logic;
SIGNAL \Add7~26\ : std_logic;
SIGNAL \Add7~30\ : std_logic;
SIGNAL \Add7~34\ : std_logic;
SIGNAL \Add7~38\ : std_logic;
SIGNAL \Add7~2\ : std_logic;
SIGNAL \Add7~6\ : std_logic;
SIGNAL \Add7~9_sumout\ : std_logic;
SIGNAL \Add7~10\ : std_logic;
SIGNAL \Add7~13_sumout\ : std_logic;
SIGNAL \Add7~5_sumout\ : std_logic;
SIGNAL \Add7~1_sumout\ : std_logic;
SIGNAL \Add7~14\ : std_logic;
SIGNAL \Add7~17_sumout\ : std_logic;
SIGNAL \Add7~21_sumout\ : std_logic;
SIGNAL \Add7~29_sumout\ : std_logic;
SIGNAL \Add7~33_sumout\ : std_logic;
SIGNAL \Add7~25_sumout\ : std_logic;
SIGNAL \Add7~37_sumout\ : std_logic;
SIGNAL \LessThan5~0_combout\ : std_logic;
SIGNAL \LessThan5~1_combout\ : std_logic;
SIGNAL \RAMRESTART_POINTER[8]~0_combout\ : std_logic;
SIGNAL \RAMADDR2_bin[6]~_wirecell_combout\ : std_logic;
SIGNAL \Add8~10\ : std_logic;
SIGNAL \Add8~13_sumout\ : std_logic;
SIGNAL \Add9~2\ : std_logic;
SIGNAL \Add9~5_sumout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \Equal1~3_combout\ : std_logic;
SIGNAL \BUFF_WAIT~0_combout\ : std_logic;
SIGNAL \BUFF_WAIT~q\ : std_logic;
SIGNAL \SDRAM_ADDR[24]~1_combout\ : std_logic;
SIGNAL \SDRAM_ADDR[13]~DUPLICATE_q\ : std_logic;
SIGNAL \LessThan3~0_combout\ : std_logic;
SIGNAL \SDRAM_ADDR[20]~DUPLICATE_q\ : std_logic;
SIGNAL \LessThan3~2_combout\ : std_logic;
SIGNAL \SDRAM_ADDR[17]~DUPLICATE_q\ : std_logic;
SIGNAL \LessThan3~1_combout\ : std_logic;
SIGNAL \LessThan3~3_combout\ : std_logic;
SIGNAL \SDRAM_ADDR[24]~0_combout\ : std_logic;
SIGNAL \Add6~62\ : std_logic;
SIGNAL \Add6~65_sumout\ : std_logic;
SIGNAL \Add6~66\ : std_logic;
SIGNAL \Add6~69_sumout\ : std_logic;
SIGNAL \Add6~70\ : std_logic;
SIGNAL \Add6~73_sumout\ : std_logic;
SIGNAL \Add6~74\ : std_logic;
SIGNAL \Add6~77_sumout\ : std_logic;
SIGNAL \Add6~78\ : std_logic;
SIGNAL \Add6~81_sumout\ : std_logic;
SIGNAL \Add6~82\ : std_logic;
SIGNAL \Add6~85_sumout\ : std_logic;
SIGNAL \Add6~86\ : std_logic;
SIGNAL \Add6~89_sumout\ : std_logic;
SIGNAL \Add6~90\ : std_logic;
SIGNAL \Add6~93_sumout\ : std_logic;
SIGNAL \Add6~94\ : std_logic;
SIGNAL \Add6~97_sumout\ : std_logic;
SIGNAL \Add6~98\ : std_logic;
SIGNAL \Add6~17_sumout\ : std_logic;
SIGNAL \Add6~18\ : std_logic;
SIGNAL \Add6~25_sumout\ : std_logic;
SIGNAL \Add6~26\ : std_logic;
SIGNAL \Add6~29_sumout\ : std_logic;
SIGNAL \Add6~30\ : std_logic;
SIGNAL \Add6~33_sumout\ : std_logic;
SIGNAL \Add6~34\ : std_logic;
SIGNAL \Add6~37_sumout\ : std_logic;
SIGNAL \Add6~38\ : std_logic;
SIGNAL \Add6~41_sumout\ : std_logic;
SIGNAL \Add6~42\ : std_logic;
SIGNAL \Add6~45_sumout\ : std_logic;
SIGNAL \Add6~46\ : std_logic;
SIGNAL \Add6~49_sumout\ : std_logic;
SIGNAL \Add6~50\ : std_logic;
SIGNAL \Add6~53_sumout\ : std_logic;
SIGNAL \Add6~54\ : std_logic;
SIGNAL \Add6~57_sumout\ : std_logic;
SIGNAL \Add6~58\ : std_logic;
SIGNAL \Add6~1_sumout\ : std_logic;
SIGNAL \Add6~2\ : std_logic;
SIGNAL \Add6~5_sumout\ : std_logic;
SIGNAL \Add6~6\ : std_logic;
SIGNAL \Add6~9_sumout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[40]~16_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[41]~17_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|active_addr[23]~DUPLICATE_q\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[38]~0_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|pending~10_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1[39]~DUPLICATE_q\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[39]~1_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|pending~9_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|pending~0_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_address~q\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_address~0_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_address~DUPLICATE_q\ : std_logic;
SIGNAL \Add1~1_sumout\ : std_logic;
SIGNAL \Add1~2\ : std_logic;
SIGNAL \Add1~5_sumout\ : std_logic;
SIGNAL \Add0~9_sumout\ : std_logic;
SIGNAL \Xpos[1]~1_combout\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~13_sumout\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~17_sumout\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~21_sumout\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~25_sumout\ : std_logic;
SIGNAL \Add0~26\ : std_logic;
SIGNAL \Add0~29_sumout\ : std_logic;
SIGNAL \Add0~30\ : std_logic;
SIGNAL \Add0~33_sumout\ : std_logic;
SIGNAL \Add0~34\ : std_logic;
SIGNAL \Add0~37_sumout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \Add0~38\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~5_sumout\ : std_logic;
SIGNAL \Xpos[1]~0_combout\ : std_logic;
SIGNAL \Add0~1_sumout\ : std_logic;
SIGNAL \Xpos[8]~DUPLICATE_q\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \Ypos[2]~2_combout\ : std_logic;
SIGNAL \Add1~6\ : std_logic;
SIGNAL \Add1~25_sumout\ : std_logic;
SIGNAL \Add1~26\ : std_logic;
SIGNAL \Add1~29_sumout\ : std_logic;
SIGNAL \Add1~30\ : std_logic;
SIGNAL \Add1~33_sumout\ : std_logic;
SIGNAL \Add1~34\ : std_logic;
SIGNAL \Add1~37_sumout\ : std_logic;
SIGNAL \Add1~38\ : std_logic;
SIGNAL \Add1~9_sumout\ : std_logic;
SIGNAL \Add1~10\ : std_logic;
SIGNAL \Add1~13_sumout\ : std_logic;
SIGNAL \Add1~14\ : std_logic;
SIGNAL \Add1~17_sumout\ : std_logic;
SIGNAL \Add1~18\ : std_logic;
SIGNAL \Add1~21_sumout\ : std_logic;
SIGNAL \Ypos[2]~0_combout\ : std_logic;
SIGNAL \Ypos[2]~1_combout\ : std_logic;
SIGNAL \Ypos[2]~DUPLICATE_q\ : std_logic;
SIGNAL \Add3~1_sumout\ : std_logic;
SIGNAL \Add3~2\ : std_logic;
SIGNAL \Add3~5_sumout\ : std_logic;
SIGNAL \Ypos[4]~DUPLICATE_q\ : std_logic;
SIGNAL \Add3~6\ : std_logic;
SIGNAL \Add3~9_sumout\ : std_logic;
SIGNAL \Add3~10\ : std_logic;
SIGNAL \Add3~13_sumout\ : std_logic;
SIGNAL \Add3~14\ : std_logic;
SIGNAL \Add3~17_sumout\ : std_logic;
SIGNAL \Add3~18\ : std_logic;
SIGNAL \Add3~21_sumout\ : std_logic;
SIGNAL \Ypos[8]~DUPLICATE_q\ : std_logic;
SIGNAL \Add3~22\ : std_logic;
SIGNAL \Add3~25_sumout\ : std_logic;
SIGNAL \Add3~26\ : std_logic;
SIGNAL \Add3~29_sumout\ : std_logic;
SIGNAL \Add3~30\ : std_logic;
SIGNAL \Add3~33_sumout\ : std_logic;
SIGNAL \Xpos[0]~DUPLICATE_q\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \Add2~1_sumout\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \Xpos[1]~DUPLICATE_q\ : std_logic;
SIGNAL \Add2~2\ : std_logic;
SIGNAL \Add2~3\ : std_logic;
SIGNAL \Add2~5_sumout\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \Xpos[2]~DUPLICATE_q\ : std_logic;
SIGNAL \Add2~6\ : std_logic;
SIGNAL \Add2~7\ : std_logic;
SIGNAL \Add2~9_sumout\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \Xpos[3]~DUPLICATE_q\ : std_logic;
SIGNAL \Add2~10\ : std_logic;
SIGNAL \Add2~11\ : std_logic;
SIGNAL \Add2~13_sumout\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \Xpos[4]~DUPLICATE_q\ : std_logic;
SIGNAL \Add2~14\ : std_logic;
SIGNAL \Add2~15\ : std_logic;
SIGNAL \Add2~17_sumout\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \Xpos[5]~DUPLICATE_q\ : std_logic;
SIGNAL \Add2~18\ : std_logic;
SIGNAL \Add2~19\ : std_logic;
SIGNAL \Add2~21_sumout\ : std_logic;
SIGNAL \Xpos[6]~DUPLICATE_q\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \Add2~22\ : std_logic;
SIGNAL \Add2~23\ : std_logic;
SIGNAL \Add2~25_sumout\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \Xpos[7]~DUPLICATE_q\ : std_logic;
SIGNAL \Add2~26\ : std_logic;
SIGNAL \Add2~27\ : std_logic;
SIGNAL \Add2~29_sumout\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \Add2~30\ : std_logic;
SIGNAL \Add2~31\ : std_logic;
SIGNAL \Add2~33_sumout\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \Add2~34\ : std_logic;
SIGNAL \Add2~35\ : std_logic;
SIGNAL \Add2~37_sumout\ : std_logic;
SIGNAL \Add2~38\ : std_logic;
SIGNAL \Add2~39\ : std_logic;
SIGNAL \Add2~41_sumout\ : std_logic;
SIGNAL \Add4~32\ : std_logic;
SIGNAL \Add4~22\ : std_logic;
SIGNAL \Add4~21\ : std_logic;
SIGNAL \LessThan2~4_combout\ : std_logic;
SIGNAL \Add4~23\ : std_logic;
SIGNAL \Add4~25\ : std_logic;
SIGNAL \Add4~24\ : std_logic;
SIGNAL \LessThan2~1_combout\ : std_logic;
SIGNAL \Add4~18\ : std_logic;
SIGNAL \Add4~29\ : std_logic;
SIGNAL \Add4~28\ : std_logic;
SIGNAL \Add4~27\ : std_logic;
SIGNAL \Add4~26\ : std_logic;
SIGNAL \Add4~31\ : std_logic;
SIGNAL \Add4~30\ : std_logic;
SIGNAL \LessThan2~0_combout\ : std_logic;
SIGNAL \Add4~15\ : std_logic;
SIGNAL \Add4~20\ : std_logic;
SIGNAL \Add4~17\ : std_logic;
SIGNAL \Add4~19\ : std_logic;
SIGNAL \Add4~14\ : std_logic;
SIGNAL \Add4~16\ : std_logic;
SIGNAL \LessThan2~3_combout\ : std_logic;
SIGNAL \LessThan2~2_combout\ : std_logic;
SIGNAL \test~0_combout\ : std_logic;
SIGNAL \test~q\ : std_logic;
SIGNAL \SDRAM_WRITEDATA[0]~0_combout\ : std_logic;
SIGNAL \SDRAM_WRITEDATA[0]~DUPLICATE_q\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0[0]~feeder_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[0]~26_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|m_data[0]~_Duplicate_1_q\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|Selector118~0_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|oe~q\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|m_data[1]~_Duplicate_1_q\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|Selector117~0_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|oe~_Duplicate_1_q\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|m_data[2]~_Duplicate_1_q\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|Selector116~0_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|oe~_Duplicate_2_q\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|m_data[3]~_Duplicate_1_q\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|Selector115~0_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|oe~_Duplicate_3_q\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|m_data[4]~_Duplicate_1_q\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|Selector114~0_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|oe~_Duplicate_4_q\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|m_data[5]~_Duplicate_1_q\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|Selector113~0_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|oe~_Duplicate_5_q\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|m_data[6]~_Duplicate_1_q\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|Selector112~0_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|oe~_Duplicate_6_q\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|m_data[7]~_Duplicate_1_q\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|Selector111~0_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|oe~_Duplicate_7_q\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|oe~_Duplicate_8_q\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|oe~_Duplicate_9_q\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|oe~_Duplicate_10_q\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|oe~_Duplicate_11_q\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|oe~_Duplicate_12_q\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|oe~_Duplicate_13_q\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|oe~_Duplicate_14_q\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|oe~_Duplicate_15_q\ : std_logic;
SIGNAL \u1|LessThan0~1_combout\ : std_logic;
SIGNAL \RAMWE1~q\ : std_logic;
SIGNAL \DRAM_DQ[0]~input_o\ : std_logic;
SIGNAL \RAMIN1[0]~feeder_combout\ : std_logic;
SIGNAL \RAMADDR2~2_combout\ : std_logic;
SIGNAL \RAMADDR2~3_combout\ : std_logic;
SIGNAL \RAMADDR2~4_combout\ : std_logic;
SIGNAL \RAMADDR2~5_combout\ : std_logic;
SIGNAL \RAMADDR2~6_combout\ : std_logic;
SIGNAL \RAMADDR2~7_combout\ : std_logic;
SIGNAL \RAMADDR2~8_combout\ : std_logic;
SIGNAL \RAMADDR2~9_combout\ : std_logic;
SIGNAL \RAMADDR2~10_combout\ : std_logic;
SIGNAL \DRAM_DQ[1]~input_o\ : std_logic;
SIGNAL \RAMIN1[1]~feeder_combout\ : std_logic;
SIGNAL \DRAM_DQ[2]~input_o\ : std_logic;
SIGNAL \RAMIN1[2]~feeder_combout\ : std_logic;
SIGNAL \DRAM_DQ[3]~input_o\ : std_logic;
SIGNAL \DRAM_DQ[4]~input_o\ : std_logic;
SIGNAL \RAMIN1[4]~feeder_combout\ : std_logic;
SIGNAL \DRAM_DQ[5]~input_o\ : std_logic;
SIGNAL \RAMIN1[5]~feeder_combout\ : std_logic;
SIGNAL \DRAM_DQ[6]~input_o\ : std_logic;
SIGNAL \DRAM_DQ[7]~input_o\ : std_logic;
SIGNAL \RAMIN1[7]~feeder_combout\ : std_logic;
SIGNAL \u3|ram_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \GREEN[3]~0_combout\ : std_logic;
SIGNAL \u1|B_OUT~0_combout\ : std_logic;
SIGNAL \u3|ram_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \u1|B_OUT~1_combout\ : std_logic;
SIGNAL \u3|ram_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \u1|B_OUT~2_combout\ : std_logic;
SIGNAL \u1|B_OUT[2]~feeder_combout\ : std_logic;
SIGNAL \u3|ram_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \u1|B_OUT~3_combout\ : std_logic;
SIGNAL \u1|B_OUT[3]~feeder_combout\ : std_logic;
SIGNAL \u3|ram_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \u1|B_OUT~4_combout\ : std_logic;
SIGNAL \u3|ram_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \u1|B_OUT~5_combout\ : std_logic;
SIGNAL \u3|ram_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \u1|B_OUT~6_combout\ : std_logic;
SIGNAL \u1|B_OUT[6]~feeder_combout\ : std_logic;
SIGNAL \u3|ram_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \u1|B_OUT~7_combout\ : std_logic;
SIGNAL \u1|B_OUT[7]~feeder_combout\ : std_logic;
SIGNAL \u1|G_OUT[0]~feeder_combout\ : std_logic;
SIGNAL \u1|G_OUT[1]~feeder_combout\ : std_logic;
SIGNAL \u1|G_OUT[3]~feeder_combout\ : std_logic;
SIGNAL \u1|G_OUT[6]~feeder_combout\ : std_logic;
SIGNAL \u1|G_OUT[7]~feeder_combout\ : std_logic;
SIGNAL \u1|R_OUT[0]~feeder_combout\ : std_logic;
SIGNAL \u1|R_OUT[2]~feeder_combout\ : std_logic;
SIGNAL \u1|R_OUT[3]~feeder_combout\ : std_logic;
SIGNAL \u1|R_OUT[6]~feeder_combout\ : std_logic;
SIGNAL \u1|R_OUT[7]~feeder_combout\ : std_logic;
SIGNAL \u1|process_0~0_combout\ : std_logic;
SIGNAL \u1|VGAHS~q\ : std_logic;
SIGNAL \u1|Ypos[2]~DUPLICATE_q\ : std_logic;
SIGNAL \u1|process_0~1_combout\ : std_logic;
SIGNAL \u1|VGAVS~q\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[18]~2_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|m_addr[6]~1_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|Selector100~0_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|m_addr[6]~2_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[19]~3_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|Selector99~0_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[20]~4_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|Selector98~0_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[21]~5_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|Selector97~0_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0[22]~feeder_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1[22]~feeder_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[22]~6_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|Selector96~0_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|Selector96~1_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[23]~7_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|Selector95~0_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1[24]~feeder_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[24]~8_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|Selector94~0_combout\ : std_logic;
SIGNAL \SDRAM_ADDR[7]~DUPLICATE_q\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0[25]~feeder_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[25]~9_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|Selector93~0_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1[26]~feeder_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[26]~10_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|Selector92~0_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[27]~11_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|Selector91~0_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|Selector90~0_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|Selector89~0_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|Selector88~0_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|Selector102~0_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|WideOr16~0_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|Selector101~0_combout\ : std_logic;
SIGNAL \u0|pll_0|altera_pll_i|general[0].gpll~PLL_RECONFIGSHIFTEN7\ : std_logic;
SIGNAL \u0|pll_0|altera_pll_i|outclk_wire[2]~CLKENA0_outclk\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|Selector0~0_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|Selector20~0_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|Selector20~1_combout\ : std_logic;
SIGNAL \u0|rst_controller_001|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain\ : std_logic_vector(1 DOWNTO 0);
SIGNAL Ypos : std_logic_vector(9 DOWNTO 0);
SIGNAL Xpos : std_logic_vector(9 DOWNTO 0);
SIGNAL VGAFLAG : std_logic_vector(2 DOWNTO 0);
SIGNAL SDRAM_WRITEDATA : std_logic_vector(15 DOWNTO 0);
SIGNAL SDRAM_ADDR : std_logic_vector(24 DOWNTO 0);
SIGNAL RAMRESTART_POINTER : std_logic_vector(8 DOWNTO 0);
SIGNAL RAMIN1 : std_logic_vector(7 DOWNTO 0);
SIGNAL RAMFULL_POINTER : std_logic_vector(8 DOWNTO 0);
SIGNAL RAMADDR2_bin : std_logic_vector(8 DOWNTO 0);
SIGNAL RAMADDR2GR_sync1 : std_logic_vector(8 DOWNTO 0);
SIGNAL RAMADDR2GR_sync0 : std_logic_vector(8 DOWNTO 0);
SIGNAL RAMADDR2GR : std_logic_vector(8 DOWNTO 0);
SIGNAL RAMADDR2 : std_logic_vector(8 DOWNTO 0);
SIGNAL RAMADDR1_bin : std_logic_vector(8 DOWNTO 0);
SIGNAL RAMADDR1GR_sync1 : std_logic_vector(8 DOWNTO 0);
SIGNAL RAMADDR1GR_sync0 : std_logic_vector(8 DOWNTO 0);
SIGNAL RAMADDR1GR : std_logic_vector(8 DOWNTO 0);
SIGNAL RAMADDR1 : std_logic_vector(8 DOWNTO 0);
SIGNAL NEXTFRAME : std_logic_vector(2 DOWNTO 0);
SIGNAL GREEN : std_logic_vector(7 DOWNTO 0);
SIGNAL BLUE : std_logic_vector(7 DOWNTO 0);
SIGNAL \u0|new_sdram_controller_0|za_data\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \u0|new_sdram_controller_0|refresh_counter\ : std_logic_vector(13 DOWNTO 0);
SIGNAL \u0|new_sdram_controller_0|rd_valid\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \u0|new_sdram_controller_0|m_data\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \u0|new_sdram_controller_0|m_count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u0|new_sdram_controller_0|m_cmd\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u0|new_sdram_controller_0|m_bank\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \u0|new_sdram_controller_0|m_addr\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u0|new_sdram_controller_0|i_refs\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \u0|new_sdram_controller_0|i_count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u0|new_sdram_controller_0|i_cmd\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u0|new_sdram_controller_0|i_addr\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \u0|new_sdram_controller_0|active_data\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \u0|new_sdram_controller_0|active_addr\ : std_logic_vector(24 DOWNTO 0);
SIGNAL \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1\ : std_logic_vector(43 DOWNTO 0);
SIGNAL \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0\ : std_logic_vector(43 DOWNTO 0);
SIGNAL \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entries\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \u0|pll_0|altera_pll_i|fboutclk_wire\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u1|G_OUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u1|R_OUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u1|Ypos\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \u1|B_OUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u1|Xpos\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \u0|pll_0|altera_pll_i|outclk_wire\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_RAMADDR2GR_sync1[8]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_RAMADDR2_bin[7]~DUPLICATE_q\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|ALT_INV_refresh_counter[7]~DUPLICATE_q\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|ALT_INV_i_state.011~DUPLICATE_q\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|ALT_INV_i_state.000~DUPLICATE_q\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|ALT_INV_i_state.111~DUPLICATE_q\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|ALT_INV_refresh_request~DUPLICATE_q\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|ALT_INV_m_count[1]~DUPLICATE_q\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|ALT_INV_init_done~DUPLICATE_q\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_entry_0[36]~DUPLICATE_q\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_entry_0[33]~DUPLICATE_q\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|ALT_INV_active_addr[13]~DUPLICATE_q\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|ALT_INV_active_addr[23]~DUPLICATE_q\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_entry_1[39]~DUPLICATE_q\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_rd_address~DUPLICATE_q\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_entries[0]~DUPLICATE_q\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|ALT_INV_m_state.000010000~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_Xpos[7]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_Xpos[6]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_Xpos[5]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_Xpos[4]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_Xpos[3]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_Xpos[2]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_Xpos[1]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_Xpos[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_Xpos[8]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_Ypos[4]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_Ypos[2]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_Ypos[8]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_RAMFULL_POINTER[8]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_RAMADDR1[7]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_RAMADDR1[6]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_RAMADDR1[4]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_RAMADDR1[2]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_RAMADDR1[1]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_SDRAM_ADDR[7]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_SDRAM_ADDR[17]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_SDRAM_ADDR[13]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_SDRAM_ADDR[20]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_SDRAM_WE_N~DUPLICATE_q\ : std_logic;
SIGNAL \u1|ALT_INV_Ypos[2]~DUPLICATE_q\ : std_logic;
SIGNAL \u1|ALT_INV_Ypos[3]~DUPLICATE_q\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|ALT_INV_oe~_Duplicate_14_q\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|ALT_INV_oe~_Duplicate_13_q\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|ALT_INV_oe~_Duplicate_12_q\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|ALT_INV_oe~_Duplicate_11_q\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|ALT_INV_oe~_Duplicate_10_q\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|ALT_INV_oe~_Duplicate_9_q\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|ALT_INV_oe~_Duplicate_8_q\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|ALT_INV_oe~_Duplicate_7_q\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|ALT_INV_oe~_Duplicate_6_q\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|ALT_INV_oe~_Duplicate_5_q\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|ALT_INV_oe~_Duplicate_4_q\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|ALT_INV_oe~_Duplicate_3_q\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|ALT_INV_oe~_Duplicate_2_q\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|ALT_INV_oe~_Duplicate_1_q\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|ALT_INV_oe~q\ : std_logic;
SIGNAL \ALT_INV_SW[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[8]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[7]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[6]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[5]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[4]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_SW[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_LessThan2~4_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~3_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|ALT_INV_pending~10_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|ALT_INV_pending~9_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|ALT_INV_pending~8_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|ALT_INV_pending~7_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|ALT_INV_pending~6_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|ALT_INV_pending~5_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|ALT_INV_m_count[1]~11_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|ALT_INV_m_count[2]~10_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|ALT_INV_active_rnw~2_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|ALT_INV_active_rnw~1_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~2_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Ypos[2]~0_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~2_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~1_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~0_combout\ : std_logic;
SIGNAL \ALT_INV_test~q\ : std_logic;
SIGNAL ALT_INV_RAMADDR2GR_sync0 : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_LessThan5~0_combout\ : std_logic;
SIGNAL ALT_INV_RAMADDR1GR : std_logic_vector(8 DOWNTO 0);
SIGNAL ALT_INV_VGAFLAG : std_logic_vector(2 DOWNTO 0);
SIGNAL ALT_INV_SDRAM_WRITEDATA : std_logic_vector(0 DOWNTO 0);
SIGNAL \u0|new_sdram_controller_0|ALT_INV_Selector14~0_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|ALT_INV_Add2~0_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|ALT_INV_i_count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u0|new_sdram_controller_0|ALT_INV_i_count[0]~1_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|ALT_INV_Selector19~0_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|ALT_INV_i_refs\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \u0|new_sdram_controller_0|ALT_INV_WideOr6~combout\ : std_logic;
SIGNAL \ALT_INV_RAMFULL_POINTER~8_combout\ : std_logic;
SIGNAL ALT_INV_RAMADDR2GR_sync1 : std_logic_vector(8 DOWNTO 0);
SIGNAL \ALT_INV_binary~10_combout\ : std_logic;
SIGNAL \ALT_INV_RAMFULL_POINTER[0]~2_combout\ : std_logic;
SIGNAL \ALT_INV_RAMFULL_POINTER[0]~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~3_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~2_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|ALT_INV_m_count[0]~8_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|ALT_INV_za_data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL ALT_INV_RAMADDR1GR_sync0 : std_logic_vector(8 DOWNTO 2);
SIGNAL \ALT_INV_LessThan6~0_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|ALT_INV_za_valid~q\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_rd_data[0]~26_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_entry_0\ : std_logic_vector(43 DOWNTO 0);
SIGNAL \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_entry_1\ : std_logic_vector(43 DOWNTO 0);
SIGNAL \u0|new_sdram_controller_0|ALT_INV_active_data\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \u0|new_sdram_controller_0|ALT_INV_i_next.010~q\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|ALT_INV_Selector10~0_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|ALT_INV_i_next.000~q\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|ALT_INV_Selector34~3_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|ALT_INV_Selector34~2_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|ALT_INV_Selector37~3_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|ALT_INV_i_next.101~q\ : std_logic;
SIGNAL \u0|rst_controller|alt_rst_sync_uq1|ALT_INV_altera_reset_synchronizer_int_chain\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \u0|new_sdram_controller_0|ALT_INV_i_count[0]~0_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|ALT_INV_i_next.111~q\ : std_logic;
SIGNAL \ALT_INV_LessThan3~3_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan3~2_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan3~1_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan3~0_combout\ : std_logic;
SIGNAL ALT_INV_NEXTFRAME : std_logic_vector(2 DOWNTO 2);
SIGNAL \ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL ALT_INV_RAMADDR2_bin : std_logic_vector(8 DOWNTO 0);
SIGNAL \ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \ALT_INV_SDRAM_RE_N~0_combout\ : std_logic;
SIGNAL \ALT_INV_BUFF_WAIT~q\ : std_logic;
SIGNAL \ALT_INV_BUFF_CTRL~q\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|ALT_INV_Selector36~1_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|ALT_INV_m_count[3]~4_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|ALT_INV_m_count[2]~3_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|ALT_INV_Add3~0_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|ALT_INV_m_count\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u0|new_sdram_controller_0|ALT_INV_m_count[1]~2_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|ALT_INV_m_count[1]~1_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|ALT_INV_Selector34~1_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|ALT_INV_Selector36~0_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|ALT_INV_Selector35~0_combout\ : std_logic;
SIGNAL ALT_INV_RAMADDR1GR_sync1 : std_logic_vector(8 DOWNTO 0);
SIGNAL \ALT_INV_binary~2_combout\ : std_logic;
SIGNAL \u1|ALT_INV_VGA_FRAMESTART~q\ : std_logic;
SIGNAL \u1|ALT_INV_VGA_FRAMEEND~q\ : std_logic;
SIGNAL \ALT_INV_RAMADDR2~1_combout\ : std_logic;
SIGNAL \ALT_INV_RAMADDR2~0_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|ALT_INV_m_data[7]~_Duplicate_1_q\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|ALT_INV_m_data[6]~_Duplicate_1_q\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|ALT_INV_m_data[5]~_Duplicate_1_q\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|ALT_INV_m_data[4]~_Duplicate_1_q\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|ALT_INV_m_data[3]~_Duplicate_1_q\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|ALT_INV_m_data[2]~_Duplicate_1_q\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|ALT_INV_m_data[1]~_Duplicate_1_q\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|ALT_INV_m_data[0]~_Duplicate_1_q\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|ALT_INV_i_state.010~q\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|ALT_INV_Selector37~1_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|ALT_INV_Selector37~0_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|ALT_INV_refresh_counter\ : std_logic_vector(13 DOWNTO 0);
SIGNAL \u0|new_sdram_controller_0|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|ALT_INV_ack_refresh_request~q\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|ALT_INV_i_state.011~q\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|ALT_INV_i_state.000~q\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|ALT_INV_i_state.001~q\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|ALT_INV_m_next.000000001~q\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|ALT_INV_Selector25~3_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|ALT_INV_i_state.101~q\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|ALT_INV_Selector25~2_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|ALT_INV_Selector34~0_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|ALT_INV_Selector30~0_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|ALT_INV_m_count[1]~0_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|ALT_INV_Selector27~2_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|ALT_INV_Selector27~1_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|ALT_INV_Selector27~0_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|ALT_INV_i_state.111~q\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_rd_data[32]~20_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_wr_address~q\ : std_logic;
SIGNAL \ALT_INV_SDRAM_RE_N~q\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|ALT_INV_Selector26~0_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|ALT_INV_m_next.000010000~q\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|ALT_INV_Selector29~11_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|ALT_INV_Selector29~10_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|ALT_INV_Selector29~9_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|ALT_INV_Selector29~8_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|ALT_INV_Selector29~7_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|ALT_INV_Selector29~6_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|ALT_INV_Selector29~5_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|ALT_INV_Selector29~4_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|ALT_INV_Selector29~3_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|ALT_INV_Selector29~2_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|ALT_INV_Selector25~1_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|ALT_INV_Selector29~1_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|ALT_INV_Selector29~0_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|ALT_INV_Selector25~0_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|ALT_INV_m_next.000001000~q\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_rd_data[43]~15_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|ALT_INV_pending~4_combout\ : std_logic;
SIGNAL \u1|ALT_INV_Equal2~0_combout\ : std_logic;
SIGNAL \u1|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \u1|ALT_INV_Equal3~2_combout\ : std_logic;
SIGNAL \u1|ALT_INV_LessThan0~3_combout\ : std_logic;
SIGNAL \u1|ALT_INV_LessThan0~2_combout\ : std_logic;
SIGNAL \ALT_INV_process_1~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal2~2_combout\ : std_logic;
SIGNAL ALT_INV_RAMADDR1_bin : std_logic_vector(8 DOWNTO 0);
SIGNAL \ALT_INV_Equal2~1_combout\ : std_logic;
SIGNAL \ALT_INV_Equal2~0_combout\ : std_logic;
SIGNAL \ALT_INV_VGABEGIN~q\ : std_logic;
SIGNAL \u1|ALT_INV_ACTVID~q\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|ALT_INV_Selector23~0_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|ALT_INV_i_cmd\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u0|new_sdram_controller_0|ALT_INV_Selector21~0_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|ALT_INV_WideOr8~0_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|ALT_INV_Selector20~1_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|ALT_INV_Selector20~0_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|ALT_INV_m_next.010000000~q\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|ALT_INV_refresh_request~q\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|ALT_INV_Selector22~0_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|ALT_INV_always5~0_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_rd_data[42]~13_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_rd_data[28]~12_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_rd_data[27]~11_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|ALT_INV_active_addr\ : std_logic_vector(24 DOWNTO 0);
SIGNAL \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_rd_data[26]~10_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_rd_data[25]~9_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_rd_data[24]~8_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_rd_data[23]~7_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_rd_data[22]~6_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|ALT_INV_Selector96~0_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_rd_data[21]~5_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_rd_data[20]~4_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_rd_data[19]~3_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|ALT_INV_m_state.000000001~q\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|ALT_INV_Selector31~0_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|ALT_INV_m_state.100000000~q\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|ALT_INV_init_done~q\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|ALT_INV_m_state.010000000~q\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|ALT_INV_m_state.000100000~q\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|ALT_INV_m_state.001000000~q\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|ALT_INV_m_state.000000100~q\ : std_logic;
SIGNAL \u0|rst_controller|alt_rst_sync_uq1|ALT_INV_altera_reset_synchronizer_int_chain_out~q\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|ALT_INV_i_addr\ : std_logic_vector(12 DOWNTO 12);
SIGNAL \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_rd_data[18]~2_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|ALT_INV_m_addr[6]~1_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|ALT_INV_f_select~combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|ALT_INV_pending~3_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|ALT_INV_m_state.000000010~q\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|ALT_INV_Equal3~2_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|ALT_INV_Equal3~1_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|ALT_INV_pending~2_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|ALT_INV_pending~1_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|ALT_INV_active_cs_n~q\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|ALT_INV_active_rnw~q\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|ALT_INV_Equal3~0_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|ALT_INV_pending~0_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_rd_address~q\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_entries\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \u0|new_sdram_controller_0|ALT_INV_f_pop~q\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|ALT_INV_m_addr~0_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|ALT_INV_m_state.000010000~q\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|ALT_INV_m_state.000001000~q\ : std_logic;
SIGNAL \u1|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \u1|ALT_INV_Equal3~1_combout\ : std_logic;
SIGNAL \u0|rst_controller_001|alt_rst_sync_uq1|ALT_INV_altera_reset_synchronizer_int_chain_out~q\ : std_logic;
SIGNAL \u1|ALT_INV_B_OUT~7_combout\ : std_logic;
SIGNAL \u1|ALT_INV_B_OUT~6_combout\ : std_logic;
SIGNAL \u1|ALT_INV_B_OUT~3_combout\ : std_logic;
SIGNAL \u1|ALT_INV_B_OUT~2_combout\ : std_logic;
SIGNAL \u1|ALT_INV_B_OUT~1_combout\ : std_logic;
SIGNAL \u1|ALT_INV_B_OUT~0_combout\ : std_logic;
SIGNAL \u1|ALT_INV_ACTVID~0_combout\ : std_logic;
SIGNAL \u1|ALT_INV_LessThan7~0_combout\ : std_logic;
SIGNAL \u1|ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \u1|ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \u1|ALT_INV_Equal3~0_combout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|ALT_INV_m_cmd[0]~_Duplicate_1_q\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|ALT_INV_m_cmd[2]~_Duplicate_1_q\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|ALT_INV_m_cmd[1]~_Duplicate_1_q\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|ALT_INV_m_count[1]~12_combout\ : std_logic;
SIGNAL \ALT_INV_SDRAM_ADDR[24]~1_combout\ : std_logic;
SIGNAL ALT_INV_Xpos : std_logic_vector(9 DOWNTO 0);
SIGNAL ALT_INV_Ypos : std_logic_vector(9 DOWNTO 0);
SIGNAL \ALT_INV_Add2~41_sumout\ : std_logic;
SIGNAL \ALT_INV_Add3~33_sumout\ : std_logic;
SIGNAL \ALT_INV_Add4~32\ : std_logic;
SIGNAL \ALT_INV_Add4~31\ : std_logic;
SIGNAL \ALT_INV_Add4~30\ : std_logic;
SIGNAL \ALT_INV_Add4~29\ : std_logic;
SIGNAL \ALT_INV_Add4~28\ : std_logic;
SIGNAL \ALT_INV_Add4~27\ : std_logic;
SIGNAL \ALT_INV_Add4~26\ : std_logic;
SIGNAL \ALT_INV_Add4~25\ : std_logic;
SIGNAL \ALT_INV_Add4~24\ : std_logic;
SIGNAL \ALT_INV_Add4~23\ : std_logic;
SIGNAL \ALT_INV_Add4~22\ : std_logic;
SIGNAL \ALT_INV_Add4~21\ : std_logic;
SIGNAL \ALT_INV_Add4~20\ : std_logic;
SIGNAL \ALT_INV_Add4~19\ : std_logic;
SIGNAL \ALT_INV_Add4~18\ : std_logic;
SIGNAL \ALT_INV_Add4~17\ : std_logic;
SIGNAL \ALT_INV_Add4~16\ : std_logic;
SIGNAL \ALT_INV_Add4~15\ : std_logic;
SIGNAL \ALT_INV_Add4~14\ : std_logic;
SIGNAL \ALT_INV_Add8~33_sumout\ : std_logic;
SIGNAL \ALT_INV_Add8~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add8~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add8~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add8~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add8~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add8~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add8~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add7~37_sumout\ : std_logic;
SIGNAL \ALT_INV_Add7~33_sumout\ : std_logic;
SIGNAL \ALT_INV_Add7~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add7~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add7~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add7~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add7~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add7~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add7~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add7~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Add8~1_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~33_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add5~1_sumout\ : std_logic;
SIGNAL ALT_INV_RAMRESTART_POINTER : std_logic_vector(8 DOWNTO 0);
SIGNAL \u0|new_sdram_controller_0|ALT_INV_Add0~53_sumout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|ALT_INV_Add0~49_sumout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|ALT_INV_Add0~45_sumout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|ALT_INV_Add0~37_sumout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \u0|new_sdram_controller_0|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL ALT_INV_RAMFULL_POINTER : std_logic_vector(8 DOWNTO 0);
SIGNAL \ALT_INV_Add11~33_sumout\ : std_logic;
SIGNAL \ALT_INV_Add11~29_sumout\ : std_logic;
SIGNAL \ALT_INV_Add11~25_sumout\ : std_logic;
SIGNAL \ALT_INV_Add11~21_sumout\ : std_logic;
SIGNAL \ALT_INV_Add11~17_sumout\ : std_logic;
SIGNAL \ALT_INV_Add11~13_sumout\ : std_logic;
SIGNAL \ALT_INV_Add11~9_sumout\ : std_logic;
SIGNAL \ALT_INV_Add11~5_sumout\ : std_logic;
SIGNAL \ALT_INV_Add11~1_sumout\ : std_logic;
SIGNAL ALT_INV_RAMADDR1 : std_logic_vector(8 DOWNTO 0);
SIGNAL \u0|new_sdram_controller_0|ALT_INV_oe~_Duplicate_15_q\ : std_logic;
SIGNAL ALT_INV_SDRAM_ADDR : std_logic_vector(24 DOWNTO 0);
SIGNAL \ALT_INV_SDRAM_WE_N~q\ : std_logic;
SIGNAL ALT_INV_RAMADDR2 : std_logic_vector(8 DOWNTO 0);
SIGNAL \u1|ALT_INV_Ypos\ : std_logic_vector(10 DOWNTO 0);
SIGNAL ALT_INV_BLUE : std_logic_vector(7 DOWNTO 7);
SIGNAL ALT_INV_GREEN : std_logic_vector(6 DOWNTO 0);
SIGNAL \u1|ALT_INV_Xpos\ : std_logic_vector(10 DOWNTO 0);

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_SW <= SW;
VGA_B <= ww_VGA_B;
VGA_G <= ww_VGA_G;
VGA_R <= ww_VGA_R;
VGA_CLK <= ww_VGA_CLK;
VGA_BLANK_N <= ww_VGA_BLANK_N;
VGA_HS <= ww_VGA_HS;
VGA_VS <= ww_VGA_VS;
VGA_SYNC_N <= ww_VGA_SYNC_N;
LEDR <= ww_LEDR;
ww_KEY <= KEY;
DRAM_ADDR <= ww_DRAM_ADDR;
DRAM_BA <= ww_DRAM_BA;
DRAM_CAS_N <= ww_DRAM_CAS_N;
DRAM_CKE <= ww_DRAM_CKE;
DRAM_CLK <= ww_DRAM_CLK;
DRAM_CS_N <= ww_DRAM_CS_N;
DRAM_RAS_N <= ww_DRAM_RAS_N;
DRAM_WE_N <= ww_DRAM_WE_N;
DRAM_LDQM <= ww_DRAM_LDQM;
DRAM_UDQM <= ww_DRAM_UDQM;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\u3|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & RAMIN1(7) & RAMIN1(6) & RAMIN1(5) & RAMIN1(4) & RAMIN1(3) & RAMIN1(2) & RAMIN1(1) & RAMIN1(0));

\u3|ram_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (RAMADDR1(8) & RAMADDR1(7) & RAMADDR1(6) & RAMADDR1(5) & RAMADDR1(4) & RAMADDR1(3) & RAMADDR1(2) & RAMADDR1(1) & RAMADDR1(0));

\u3|ram_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\RAMADDR2~10_combout\ & \RAMADDR2~9_combout\ & \RAMADDR2~8_combout\ & \RAMADDR2~7_combout\ & \RAMADDR2~6_combout\ & \RAMADDR2~5_combout\ & \RAMADDR2~4_combout\ & \RAMADDR2~3_combout\ & 
\RAMADDR2~2_combout\);

\u3|ram_rtl_0|auto_generated|ram_block1a0~portbdataout\ <= \u3|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\u3|ram_rtl_0|auto_generated|ram_block1a1\ <= \u3|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\u3|ram_rtl_0|auto_generated|ram_block1a2\ <= \u3|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\u3|ram_rtl_0|auto_generated|ram_block1a3\ <= \u3|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\u3|ram_rtl_0|auto_generated|ram_block1a4\ <= \u3|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\u3|ram_rtl_0|auto_generated|ram_block1a5\ <= \u3|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\u3|ram_rtl_0|auto_generated|ram_block1a6\ <= \u3|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\u3|ram_rtl_0|auto_generated|ram_block1a7\ <= \u3|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);

\Add4~8_AX_bus\ <= (NOT \Add3~33_sumout\ & NOT \Add3~33_sumout\ & NOT \Add3~33_sumout\ & NOT \Add3~33_sumout\ & NOT \Add3~33_sumout\ & NOT \Add3~33_sumout\ & NOT \Add3~33_sumout\ & NOT \Add3~33_sumout\ & \Add3~29_sumout\ & \Add3~25_sumout\ & 
\Add3~21_sumout\ & \Add3~17_sumout\ & \Add3~13_sumout\ & \Add3~9_sumout\ & \Add3~5_sumout\ & \Add3~1_sumout\ & Ypos(1) & Ypos(0));

\Add4~8_AY_bus\ <= (NOT \Add3~33_sumout\ & NOT \Add3~33_sumout\ & NOT \Add3~33_sumout\ & NOT \Add3~33_sumout\ & NOT \Add3~33_sumout\ & NOT \Add3~33_sumout\ & NOT \Add3~33_sumout\ & NOT \Add3~33_sumout\ & NOT \Add3~33_sumout\ & \Add3~29_sumout\ & 
\Add3~25_sumout\ & \Add3~21_sumout\ & \Add3~17_sumout\ & \Add3~13_sumout\ & \Add3~9_sumout\ & \Add3~5_sumout\ & \Add3~1_sumout\ & Ypos(1) & Ypos(0));

\Add4~8_BX_bus\ <= (NOT \Add2~41_sumout\ & NOT \Add2~41_sumout\ & NOT \Add2~41_sumout\ & NOT \Add2~41_sumout\ & NOT \Add2~41_sumout\ & NOT \Add2~41_sumout\ & NOT \Add2~41_sumout\ & NOT \Add2~41_sumout\ & \Add2~37_sumout\ & \Add2~33_sumout\ & 
\Add2~29_sumout\ & \Add2~25_sumout\ & \Add2~21_sumout\ & \Add2~17_sumout\ & \Add2~13_sumout\ & \Add2~9_sumout\ & \Add2~5_sumout\ & \Add2~1_sumout\);

\Add4~8_BY_bus\ <= (NOT \Add2~41_sumout\ & NOT \Add2~41_sumout\ & NOT \Add2~41_sumout\ & NOT \Add2~41_sumout\ & NOT \Add2~41_sumout\ & NOT \Add2~41_sumout\ & NOT \Add2~41_sumout\ & NOT \Add2~41_sumout\ & NOT \Add2~41_sumout\ & \Add2~37_sumout\ & 
\Add2~33_sumout\ & \Add2~29_sumout\ & \Add2~25_sumout\ & \Add2~21_sumout\ & \Add2~17_sumout\ & \Add2~13_sumout\ & \Add2~9_sumout\ & \Add2~5_sumout\ & \Add2~1_sumout\);

\Add4~8_resulta\ <= \Add4~8_RESULTA_bus\(0);
\Add4~9\ <= \Add4~8_RESULTA_bus\(1);
\Add4~10\ <= \Add4~8_RESULTA_bus\(2);
\Add4~11\ <= \Add4~8_RESULTA_bus\(3);
\Add4~12\ <= \Add4~8_RESULTA_bus\(4);
\Add4~13\ <= \Add4~8_RESULTA_bus\(5);
\Add4~14\ <= \Add4~8_RESULTA_bus\(6);
\Add4~15\ <= \Add4~8_RESULTA_bus\(7);
\Add4~16\ <= \Add4~8_RESULTA_bus\(8);
\Add4~17\ <= \Add4~8_RESULTA_bus\(9);
\Add4~18\ <= \Add4~8_RESULTA_bus\(10);
\Add4~19\ <= \Add4~8_RESULTA_bus\(11);
\Add4~20\ <= \Add4~8_RESULTA_bus\(12);
\Add4~21\ <= \Add4~8_RESULTA_bus\(13);
\Add4~22\ <= \Add4~8_RESULTA_bus\(14);
\Add4~23\ <= \Add4~8_RESULTA_bus\(15);
\Add4~24\ <= \Add4~8_RESULTA_bus\(16);
\Add4~25\ <= \Add4~8_RESULTA_bus\(17);
\Add4~26\ <= \Add4~8_RESULTA_bus\(18);
\Add4~27\ <= \Add4~8_RESULTA_bus\(19);
\Add4~28\ <= \Add4~8_RESULTA_bus\(20);
\Add4~29\ <= \Add4~8_RESULTA_bus\(21);
\Add4~30\ <= \Add4~8_RESULTA_bus\(22);
\Add4~31\ <= \Add4~8_RESULTA_bus\(23);
\Add4~32\ <= \Add4~8_RESULTA_bus\(24);
\Add4~33\ <= \Add4~8_RESULTA_bus\(25);
\Add4~34\ <= \Add4~8_RESULTA_bus\(26);
\Add4~35\ <= \Add4~8_RESULTA_bus\(27);
\Add4~36\ <= \Add4~8_RESULTA_bus\(28);
\Add4~37\ <= \Add4~8_RESULTA_bus\(29);
\Add4~38\ <= \Add4~8_RESULTA_bus\(30);
\Add4~39\ <= \Add4~8_RESULTA_bus\(31);
\Add4~40\ <= \Add4~8_RESULTA_bus\(32);
\Add4~41\ <= \Add4~8_RESULTA_bus\(33);
\Add4~42\ <= \Add4~8_RESULTA_bus\(34);
\Add4~43\ <= \Add4~8_RESULTA_bus\(35);
\Add4~44\ <= \Add4~8_RESULTA_bus\(36);
\Add4~45\ <= \Add4~8_RESULTA_bus\(37);
\Add4~46\ <= \Add4~8_RESULTA_bus\(38);
\Add4~47\ <= \Add4~8_RESULTA_bus\(39);
\Add4~48\ <= \Add4~8_RESULTA_bus\(40);
\Add4~49\ <= \Add4~8_RESULTA_bus\(41);
\Add4~50\ <= \Add4~8_RESULTA_bus\(42);
\Add4~51\ <= \Add4~8_RESULTA_bus\(43);
\Add4~52\ <= \Add4~8_RESULTA_bus\(44);
\Add4~53\ <= \Add4~8_RESULTA_bus\(45);
\Add4~54\ <= \Add4~8_RESULTA_bus\(46);
\Add4~55\ <= \Add4~8_RESULTA_bus\(47);
\Add4~56\ <= \Add4~8_RESULTA_bus\(48);
\Add4~57\ <= \Add4~8_RESULTA_bus\(49);
\Add4~58\ <= \Add4~8_RESULTA_bus\(50);
\Add4~59\ <= \Add4~8_RESULTA_bus\(51);
\Add4~60\ <= \Add4~8_RESULTA_bus\(52);
\Add4~61\ <= \Add4~8_RESULTA_bus\(53);
\Add4~62\ <= \Add4~8_RESULTA_bus\(54);
\Add4~63\ <= \Add4~8_RESULTA_bus\(55);
\Add4~64\ <= \Add4~8_RESULTA_bus\(56);
\Add4~65\ <= \Add4~8_RESULTA_bus\(57);
\Add4~66\ <= \Add4~8_RESULTA_bus\(58);
\Add4~67\ <= \Add4~8_RESULTA_bus\(59);
\Add4~68\ <= \Add4~8_RESULTA_bus\(60);
\Add4~69\ <= \Add4~8_RESULTA_bus\(61);
\Add4~70\ <= \Add4~8_RESULTA_bus\(62);
\Add4~71\ <= \Add4~8_RESULTA_bus\(63);

\u0|pll_0|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH0\ <= \u0|pll_0|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\(0);
\u0|pll_0|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH1\ <= \u0|pll_0|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\(1);
\u0|pll_0|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH2\ <= \u0|pll_0|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\(2);
\u0|pll_0|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH3\ <= \u0|pll_0|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\(3);
\u0|pll_0|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH4\ <= \u0|pll_0|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\(4);
\u0|pll_0|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH5\ <= \u0|pll_0|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\(5);
\u0|pll_0|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH6\ <= \u0|pll_0|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\(6);
\u0|pll_0|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH7\ <= \u0|pll_0|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\(7);

\u0|pll_0|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI0\ <= \u0|pll_0|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\(0);
\u0|pll_0|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI1\ <= \u0|pll_0|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\(1);
\u0|pll_0|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI2\ <= \u0|pll_0|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\(2);
\u0|pll_0|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI3\ <= \u0|pll_0|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\(3);
\u0|pll_0|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI4\ <= \u0|pll_0|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\(4);
\u0|pll_0|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI5\ <= \u0|pll_0|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\(5);
\u0|pll_0|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI6\ <= \u0|pll_0|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\(6);
\u0|pll_0|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI7\ <= \u0|pll_0|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\(7);

\u0|pll_0|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_CLKIN_bus\ <= (gnd & gnd & gnd & \CLOCK_50~input_o\);

\u0|pll_0|altera_pll_i|general[0].gpll~PLL_RECONFIG_MHI_bus\ <= (\u0|pll_0|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI7\ & \u0|pll_0|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI6\ & \u0|pll_0|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI5\
& \u0|pll_0|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI4\ & \u0|pll_0|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI3\ & \u0|pll_0|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI2\ & \u0|pll_0|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI1\
& \u0|pll_0|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_MHI0\);

\u0|pll_0|altera_pll_i|general[0].gpll~PLL_RECONFIGSHIFTEN5\ <= \u0|pll_0|altera_pll_i|general[0].gpll~PLL_RECONFIG_SHIFTEN_bus\(5);
\u0|pll_0|altera_pll_i|general[0].gpll~PLL_RECONFIGSHIFTEN6\ <= \u0|pll_0|altera_pll_i|general[0].gpll~PLL_RECONFIG_SHIFTEN_bus\(6);
\u0|pll_0|altera_pll_i|general[0].gpll~PLL_RECONFIGSHIFTEN7\ <= \u0|pll_0|altera_pll_i|general[0].gpll~PLL_RECONFIG_SHIFTEN_bus\(7);

\u0|pll_0|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER_VCO0PH_bus\ <= (\u0|pll_0|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH7\ & \u0|pll_0|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH6\ & 
\u0|pll_0|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH5\ & \u0|pll_0|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH4\ & \u0|pll_0|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH3\ & 
\u0|pll_0|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH2\ & \u0|pll_0|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH1\ & \u0|pll_0|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH0\);

\u0|pll_0|altera_pll_i|general[2].gpll~PLL_OUTPUT_COUNTER_VCO0PH_bus\ <= (\u0|pll_0|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH7\ & \u0|pll_0|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH6\ & 
\u0|pll_0|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH5\ & \u0|pll_0|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH4\ & \u0|pll_0|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH3\ & 
\u0|pll_0|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH2\ & \u0|pll_0|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH1\ & \u0|pll_0|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH0\);

\u0|pll_0|altera_pll_i|general[1].gpll~PLL_OUTPUT_COUNTER_VCO0PH_bus\ <= (\u0|pll_0|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH7\ & \u0|pll_0|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH6\ & 
\u0|pll_0|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH5\ & \u0|pll_0|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH4\ & \u0|pll_0|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH3\ & 
\u0|pll_0|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH2\ & \u0|pll_0|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH1\ & \u0|pll_0|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_VCOPH0\);
\ALT_INV_RAMADDR2GR_sync1[8]~DUPLICATE_q\ <= NOT \RAMADDR2GR_sync1[8]~DUPLICATE_q\;
\ALT_INV_RAMADDR2_bin[7]~DUPLICATE_q\ <= NOT \RAMADDR2_bin[7]~DUPLICATE_q\;
\u0|new_sdram_controller_0|ALT_INV_refresh_counter[7]~DUPLICATE_q\ <= NOT \u0|new_sdram_controller_0|refresh_counter[7]~DUPLICATE_q\;
\u0|new_sdram_controller_0|ALT_INV_i_state.011~DUPLICATE_q\ <= NOT \u0|new_sdram_controller_0|i_state.011~DUPLICATE_q\;
\u0|new_sdram_controller_0|ALT_INV_i_state.000~DUPLICATE_q\ <= NOT \u0|new_sdram_controller_0|i_state.000~DUPLICATE_q\;
\u0|new_sdram_controller_0|ALT_INV_i_state.111~DUPLICATE_q\ <= NOT \u0|new_sdram_controller_0|i_state.111~DUPLICATE_q\;
\u0|new_sdram_controller_0|ALT_INV_refresh_request~DUPLICATE_q\ <= NOT \u0|new_sdram_controller_0|refresh_request~DUPLICATE_q\;
\u0|new_sdram_controller_0|ALT_INV_m_count[1]~DUPLICATE_q\ <= NOT \u0|new_sdram_controller_0|m_count[1]~DUPLICATE_q\;
\u0|new_sdram_controller_0|ALT_INV_init_done~DUPLICATE_q\ <= NOT \u0|new_sdram_controller_0|init_done~DUPLICATE_q\;
\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_entry_0[36]~DUPLICATE_q\ <= NOT \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0[36]~DUPLICATE_q\;
\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_entry_0[33]~DUPLICATE_q\ <= NOT \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0[33]~DUPLICATE_q\;
\u0|new_sdram_controller_0|ALT_INV_active_addr[13]~DUPLICATE_q\ <= NOT \u0|new_sdram_controller_0|active_addr[13]~DUPLICATE_q\;
\u0|new_sdram_controller_0|ALT_INV_active_addr[23]~DUPLICATE_q\ <= NOT \u0|new_sdram_controller_0|active_addr[23]~DUPLICATE_q\;
\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_entry_1[39]~DUPLICATE_q\ <= NOT \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1[39]~DUPLICATE_q\;
\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_rd_address~DUPLICATE_q\ <= NOT \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_address~DUPLICATE_q\;
\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_entries[0]~DUPLICATE_q\ <= NOT \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entries[0]~DUPLICATE_q\;
\u0|new_sdram_controller_0|ALT_INV_m_state.000010000~DUPLICATE_q\ <= NOT \u0|new_sdram_controller_0|m_state.000010000~DUPLICATE_q\;
\ALT_INV_Xpos[7]~DUPLICATE_q\ <= NOT \Xpos[7]~DUPLICATE_q\;
\ALT_INV_Xpos[6]~DUPLICATE_q\ <= NOT \Xpos[6]~DUPLICATE_q\;
\ALT_INV_Xpos[5]~DUPLICATE_q\ <= NOT \Xpos[5]~DUPLICATE_q\;
\ALT_INV_Xpos[4]~DUPLICATE_q\ <= NOT \Xpos[4]~DUPLICATE_q\;
\ALT_INV_Xpos[3]~DUPLICATE_q\ <= NOT \Xpos[3]~DUPLICATE_q\;
\ALT_INV_Xpos[2]~DUPLICATE_q\ <= NOT \Xpos[2]~DUPLICATE_q\;
\ALT_INV_Xpos[1]~DUPLICATE_q\ <= NOT \Xpos[1]~DUPLICATE_q\;
\ALT_INV_Xpos[0]~DUPLICATE_q\ <= NOT \Xpos[0]~DUPLICATE_q\;
\ALT_INV_Xpos[8]~DUPLICATE_q\ <= NOT \Xpos[8]~DUPLICATE_q\;
\ALT_INV_Ypos[4]~DUPLICATE_q\ <= NOT \Ypos[4]~DUPLICATE_q\;
\ALT_INV_Ypos[2]~DUPLICATE_q\ <= NOT \Ypos[2]~DUPLICATE_q\;
\ALT_INV_Ypos[8]~DUPLICATE_q\ <= NOT \Ypos[8]~DUPLICATE_q\;
\ALT_INV_RAMFULL_POINTER[8]~DUPLICATE_q\ <= NOT \RAMFULL_POINTER[8]~DUPLICATE_q\;
\ALT_INV_RAMADDR1[7]~DUPLICATE_q\ <= NOT \RAMADDR1[7]~DUPLICATE_q\;
\ALT_INV_RAMADDR1[6]~DUPLICATE_q\ <= NOT \RAMADDR1[6]~DUPLICATE_q\;
\ALT_INV_RAMADDR1[4]~DUPLICATE_q\ <= NOT \RAMADDR1[4]~DUPLICATE_q\;
\ALT_INV_RAMADDR1[2]~DUPLICATE_q\ <= NOT \RAMADDR1[2]~DUPLICATE_q\;
\ALT_INV_RAMADDR1[1]~DUPLICATE_q\ <= NOT \RAMADDR1[1]~DUPLICATE_q\;
\ALT_INV_SDRAM_ADDR[7]~DUPLICATE_q\ <= NOT \SDRAM_ADDR[7]~DUPLICATE_q\;
\ALT_INV_SDRAM_ADDR[17]~DUPLICATE_q\ <= NOT \SDRAM_ADDR[17]~DUPLICATE_q\;
\ALT_INV_SDRAM_ADDR[13]~DUPLICATE_q\ <= NOT \SDRAM_ADDR[13]~DUPLICATE_q\;
\ALT_INV_SDRAM_ADDR[20]~DUPLICATE_q\ <= NOT \SDRAM_ADDR[20]~DUPLICATE_q\;
\ALT_INV_SDRAM_WE_N~DUPLICATE_q\ <= NOT \SDRAM_WE_N~DUPLICATE_q\;
\u1|ALT_INV_Ypos[2]~DUPLICATE_q\ <= NOT \u1|Ypos[2]~DUPLICATE_q\;
\u1|ALT_INV_Ypos[3]~DUPLICATE_q\ <= NOT \u1|Ypos[3]~DUPLICATE_q\;
\u0|new_sdram_controller_0|ALT_INV_oe~_Duplicate_14_q\ <= NOT \u0|new_sdram_controller_0|oe~_Duplicate_14_q\;
\u0|new_sdram_controller_0|ALT_INV_oe~_Duplicate_13_q\ <= NOT \u0|new_sdram_controller_0|oe~_Duplicate_13_q\;
\u0|new_sdram_controller_0|ALT_INV_oe~_Duplicate_12_q\ <= NOT \u0|new_sdram_controller_0|oe~_Duplicate_12_q\;
\u0|new_sdram_controller_0|ALT_INV_oe~_Duplicate_11_q\ <= NOT \u0|new_sdram_controller_0|oe~_Duplicate_11_q\;
\u0|new_sdram_controller_0|ALT_INV_oe~_Duplicate_10_q\ <= NOT \u0|new_sdram_controller_0|oe~_Duplicate_10_q\;
\u0|new_sdram_controller_0|ALT_INV_oe~_Duplicate_9_q\ <= NOT \u0|new_sdram_controller_0|oe~_Duplicate_9_q\;
\u0|new_sdram_controller_0|ALT_INV_oe~_Duplicate_8_q\ <= NOT \u0|new_sdram_controller_0|oe~_Duplicate_8_q\;
\u0|new_sdram_controller_0|ALT_INV_oe~_Duplicate_7_q\ <= NOT \u0|new_sdram_controller_0|oe~_Duplicate_7_q\;
\u0|new_sdram_controller_0|ALT_INV_oe~_Duplicate_6_q\ <= NOT \u0|new_sdram_controller_0|oe~_Duplicate_6_q\;
\u0|new_sdram_controller_0|ALT_INV_oe~_Duplicate_5_q\ <= NOT \u0|new_sdram_controller_0|oe~_Duplicate_5_q\;
\u0|new_sdram_controller_0|ALT_INV_oe~_Duplicate_4_q\ <= NOT \u0|new_sdram_controller_0|oe~_Duplicate_4_q\;
\u0|new_sdram_controller_0|ALT_INV_oe~_Duplicate_3_q\ <= NOT \u0|new_sdram_controller_0|oe~_Duplicate_3_q\;
\u0|new_sdram_controller_0|ALT_INV_oe~_Duplicate_2_q\ <= NOT \u0|new_sdram_controller_0|oe~_Duplicate_2_q\;
\u0|new_sdram_controller_0|ALT_INV_oe~_Duplicate_1_q\ <= NOT \u0|new_sdram_controller_0|oe~_Duplicate_1_q\;
\u0|new_sdram_controller_0|ALT_INV_oe~q\ <= NOT \u0|new_sdram_controller_0|oe~q\;
\ALT_INV_SW[9]~input_o\ <= NOT \SW[9]~input_o\;
\ALT_INV_SW[8]~input_o\ <= NOT \SW[8]~input_o\;
\ALT_INV_SW[7]~input_o\ <= NOT \SW[7]~input_o\;
\ALT_INV_SW[6]~input_o\ <= NOT \SW[6]~input_o\;
\ALT_INV_SW[5]~input_o\ <= NOT \SW[5]~input_o\;
\ALT_INV_SW[4]~input_o\ <= NOT \SW[4]~input_o\;
\ALT_INV_SW[3]~input_o\ <= NOT \SW[3]~input_o\;
\ALT_INV_SW[2]~input_o\ <= NOT \SW[2]~input_o\;
\ALT_INV_SW[1]~input_o\ <= NOT \SW[1]~input_o\;
\ALT_INV_SW[0]~input_o\ <= NOT \SW[0]~input_o\;
\ALT_INV_LessThan2~4_combout\ <= NOT \LessThan2~4_combout\;
\ALT_INV_LessThan2~3_combout\ <= NOT \LessThan2~3_combout\;
\u0|new_sdram_controller_0|ALT_INV_pending~10_combout\ <= NOT \u0|new_sdram_controller_0|pending~10_combout\;
\u0|new_sdram_controller_0|ALT_INV_pending~9_combout\ <= NOT \u0|new_sdram_controller_0|pending~9_combout\;
\u0|new_sdram_controller_0|ALT_INV_pending~8_combout\ <= NOT \u0|new_sdram_controller_0|pending~8_combout\;
\u0|new_sdram_controller_0|ALT_INV_pending~7_combout\ <= NOT \u0|new_sdram_controller_0|pending~7_combout\;
\u0|new_sdram_controller_0|ALT_INV_pending~6_combout\ <= NOT \u0|new_sdram_controller_0|pending~6_combout\;
\u0|new_sdram_controller_0|ALT_INV_pending~5_combout\ <= NOT \u0|new_sdram_controller_0|pending~5_combout\;
\u0|new_sdram_controller_0|ALT_INV_m_count[1]~11_combout\ <= NOT \u0|new_sdram_controller_0|m_count[1]~11_combout\;
\u0|new_sdram_controller_0|ALT_INV_m_count[2]~10_combout\ <= NOT \u0|new_sdram_controller_0|m_count[2]~10_combout\;
\u0|new_sdram_controller_0|ALT_INV_active_rnw~2_combout\ <= NOT \u0|new_sdram_controller_0|active_rnw~2_combout\;
\u0|new_sdram_controller_0|ALT_INV_active_rnw~1_combout\ <= NOT \u0|new_sdram_controller_0|active_rnw~1_combout\;
\ALT_INV_LessThan0~2_combout\ <= NOT \LessThan0~2_combout\;
\ALT_INV_LessThan0~1_combout\ <= NOT \LessThan0~1_combout\;
\ALT_INV_LessThan0~0_combout\ <= NOT \LessThan0~0_combout\;
\ALT_INV_Ypos[2]~0_combout\ <= NOT \Ypos[2]~0_combout\;
\ALT_INV_LessThan2~2_combout\ <= NOT \LessThan2~2_combout\;
\ALT_INV_LessThan2~1_combout\ <= NOT \LessThan2~1_combout\;
\ALT_INV_LessThan2~0_combout\ <= NOT \LessThan2~0_combout\;
\ALT_INV_test~q\ <= NOT \test~q\;
ALT_INV_RAMADDR2GR_sync0(0) <= NOT RAMADDR2GR_sync0(0);
ALT_INV_RAMADDR2GR_sync0(2) <= NOT RAMADDR2GR_sync0(2);
ALT_INV_RAMADDR2GR_sync0(3) <= NOT RAMADDR2GR_sync0(3);
ALT_INV_RAMADDR2GR_sync0(5) <= NOT RAMADDR2GR_sync0(5);
ALT_INV_RAMADDR2GR_sync0(6) <= NOT RAMADDR2GR_sync0(6);
ALT_INV_RAMADDR2GR_sync0(7) <= NOT RAMADDR2GR_sync0(7);
\ALT_INV_LessThan5~0_combout\ <= NOT \LessThan5~0_combout\;
ALT_INV_RAMADDR1GR(0) <= NOT RAMADDR1GR(0);
ALT_INV_RAMADDR1GR(1) <= NOT RAMADDR1GR(1);
ALT_INV_RAMADDR1GR(2) <= NOT RAMADDR1GR(2);
ALT_INV_RAMADDR1GR(4) <= NOT RAMADDR1GR(4);
ALT_INV_RAMADDR1GR(5) <= NOT RAMADDR1GR(5);
ALT_INV_RAMADDR1GR(6) <= NOT RAMADDR1GR(6);
ALT_INV_RAMADDR1GR(8) <= NOT RAMADDR1GR(8);
ALT_INV_RAMADDR1GR(7) <= NOT RAMADDR1GR(7);
ALT_INV_VGAFLAG(0) <= NOT VGAFLAG(0);
ALT_INV_SDRAM_WRITEDATA(0) <= NOT SDRAM_WRITEDATA(0);
\u0|new_sdram_controller_0|ALT_INV_Selector14~0_combout\ <= NOT \u0|new_sdram_controller_0|Selector14~0_combout\;
\u0|new_sdram_controller_0|ALT_INV_Add2~0_combout\ <= NOT \u0|new_sdram_controller_0|Add2~0_combout\;
\u0|new_sdram_controller_0|ALT_INV_i_count\(0) <= NOT \u0|new_sdram_controller_0|i_count\(0);
\u0|new_sdram_controller_0|ALT_INV_i_count[0]~1_combout\ <= NOT \u0|new_sdram_controller_0|i_count[0]~1_combout\;
\u0|new_sdram_controller_0|ALT_INV_Selector19~0_combout\ <= NOT \u0|new_sdram_controller_0|Selector19~0_combout\;
\u0|new_sdram_controller_0|ALT_INV_i_refs\(0) <= NOT \u0|new_sdram_controller_0|i_refs\(0);
\u0|new_sdram_controller_0|ALT_INV_i_refs\(1) <= NOT \u0|new_sdram_controller_0|i_refs\(1);
\u0|new_sdram_controller_0|ALT_INV_i_refs\(2) <= NOT \u0|new_sdram_controller_0|i_refs\(2);
\u0|new_sdram_controller_0|ALT_INV_WideOr6~combout\ <= NOT \u0|new_sdram_controller_0|WideOr6~combout\;
\ALT_INV_RAMFULL_POINTER~8_combout\ <= NOT \RAMFULL_POINTER~8_combout\;
ALT_INV_RAMADDR2GR_sync1(0) <= NOT RAMADDR2GR_sync1(0);
ALT_INV_RAMADDR2GR_sync1(1) <= NOT RAMADDR2GR_sync1(1);
ALT_INV_RAMADDR2GR_sync1(2) <= NOT RAMADDR2GR_sync1(2);
\ALT_INV_binary~10_combout\ <= NOT \binary~10_combout\;
ALT_INV_RAMADDR2GR_sync1(3) <= NOT RAMADDR2GR_sync1(3);
ALT_INV_RAMADDR2GR_sync1(4) <= NOT RAMADDR2GR_sync1(4);
ALT_INV_RAMADDR2GR_sync1(5) <= NOT RAMADDR2GR_sync1(5);
\ALT_INV_RAMFULL_POINTER[0]~2_combout\ <= NOT \RAMFULL_POINTER[0]~2_combout\;
\ALT_INV_RAMFULL_POINTER[0]~1_combout\ <= NOT \RAMFULL_POINTER[0]~1_combout\;
ALT_INV_RAMADDR2GR_sync1(6) <= NOT RAMADDR2GR_sync1(6);
ALT_INV_RAMADDR2GR_sync1(8) <= NOT RAMADDR2GR_sync1(8);
ALT_INV_RAMADDR2GR_sync1(7) <= NOT RAMADDR2GR_sync1(7);
\ALT_INV_Equal1~3_combout\ <= NOT \Equal1~3_combout\;
\ALT_INV_Equal1~2_combout\ <= NOT \Equal1~2_combout\;
\ALT_INV_Equal1~1_combout\ <= NOT \Equal1~1_combout\;
\ALT_INV_Equal1~0_combout\ <= NOT \Equal1~0_combout\;
\u0|new_sdram_controller_0|ALT_INV_m_count[0]~8_combout\ <= NOT \u0|new_sdram_controller_0|m_count[0]~8_combout\;
\u0|new_sdram_controller_0|ALT_INV_za_data\(7) <= NOT \u0|new_sdram_controller_0|za_data\(7);
\u0|new_sdram_controller_0|ALT_INV_za_data\(5) <= NOT \u0|new_sdram_controller_0|za_data\(5);
\u0|new_sdram_controller_0|ALT_INV_za_data\(4) <= NOT \u0|new_sdram_controller_0|za_data\(4);
\u0|new_sdram_controller_0|ALT_INV_za_data\(2) <= NOT \u0|new_sdram_controller_0|za_data\(2);
\u0|new_sdram_controller_0|ALT_INV_za_data\(1) <= NOT \u0|new_sdram_controller_0|za_data\(1);
ALT_INV_RAMADDR1GR_sync0(2) <= NOT RAMADDR1GR_sync0(2);
ALT_INV_RAMADDR1GR_sync0(6) <= NOT RAMADDR1GR_sync0(6);
ALT_INV_RAMADDR1GR_sync0(8) <= NOT RAMADDR1GR_sync0(8);
\ALT_INV_LessThan6~0_combout\ <= NOT \LessThan6~0_combout\;
\u0|new_sdram_controller_0|ALT_INV_za_data\(0) <= NOT \u0|new_sdram_controller_0|za_data\(0);
\u0|new_sdram_controller_0|ALT_INV_za_valid~q\ <= NOT \u0|new_sdram_controller_0|za_valid~q\;
\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_rd_data[0]~26_combout\ <= NOT \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[0]~26_combout\;
\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_entry_0\(0) <= NOT \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0\(0);
\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_entry_1\(0) <= NOT \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1\(0);
\u0|new_sdram_controller_0|ALT_INV_active_data\(0) <= NOT \u0|new_sdram_controller_0|active_data\(0);
\u0|new_sdram_controller_0|ALT_INV_i_next.010~q\ <= NOT \u0|new_sdram_controller_0|i_next.010~q\;
\u0|new_sdram_controller_0|ALT_INV_Selector10~0_combout\ <= NOT \u0|new_sdram_controller_0|Selector10~0_combout\;
\u0|new_sdram_controller_0|ALT_INV_i_next.000~q\ <= NOT \u0|new_sdram_controller_0|i_next.000~q\;
\u0|new_sdram_controller_0|ALT_INV_Selector34~3_combout\ <= NOT \u0|new_sdram_controller_0|Selector34~3_combout\;
\u0|new_sdram_controller_0|ALT_INV_Selector34~2_combout\ <= NOT \u0|new_sdram_controller_0|Selector34~2_combout\;
\u0|new_sdram_controller_0|ALT_INV_Selector37~3_combout\ <= NOT \u0|new_sdram_controller_0|Selector37~3_combout\;
\u0|new_sdram_controller_0|ALT_INV_i_next.101~q\ <= NOT \u0|new_sdram_controller_0|i_next.101~q\;
\u0|rst_controller|alt_rst_sync_uq1|ALT_INV_altera_reset_synchronizer_int_chain\(1) <= NOT \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain\(1);
\u0|new_sdram_controller_0|ALT_INV_i_count[0]~0_combout\ <= NOT \u0|new_sdram_controller_0|i_count[0]~0_combout\;
\u0|new_sdram_controller_0|ALT_INV_i_count\(1) <= NOT \u0|new_sdram_controller_0|i_count\(1);
\u0|new_sdram_controller_0|ALT_INV_i_count\(2) <= NOT \u0|new_sdram_controller_0|i_count\(2);
\u0|new_sdram_controller_0|ALT_INV_i_count\(3) <= NOT \u0|new_sdram_controller_0|i_count\(3);
\u0|new_sdram_controller_0|ALT_INV_i_next.111~q\ <= NOT \u0|new_sdram_controller_0|i_next.111~q\;
\ALT_INV_LessThan3~3_combout\ <= NOT \LessThan3~3_combout\;
\ALT_INV_LessThan3~2_combout\ <= NOT \LessThan3~2_combout\;
\ALT_INV_LessThan3~1_combout\ <= NOT \LessThan3~1_combout\;
\ALT_INV_LessThan3~0_combout\ <= NOT \LessThan3~0_combout\;
ALT_INV_NEXTFRAME(2) <= NOT NEXTFRAME(2);
\ALT_INV_Equal0~2_combout\ <= NOT \Equal0~2_combout\;
ALT_INV_RAMADDR2_bin(5) <= NOT RAMADDR2_bin(5);
ALT_INV_RAMADDR2_bin(4) <= NOT RAMADDR2_bin(4);
ALT_INV_RAMADDR2_bin(3) <= NOT RAMADDR2_bin(3);
\ALT_INV_Equal0~1_combout\ <= NOT \Equal0~1_combout\;
ALT_INV_RAMADDR2_bin(2) <= NOT RAMADDR2_bin(2);
ALT_INV_RAMADDR2_bin(1) <= NOT RAMADDR2_bin(1);
ALT_INV_RAMADDR2_bin(0) <= NOT RAMADDR2_bin(0);
\ALT_INV_Equal0~0_combout\ <= NOT \Equal0~0_combout\;
ALT_INV_RAMADDR2_bin(8) <= NOT RAMADDR2_bin(8);
ALT_INV_RAMADDR2_bin(7) <= NOT RAMADDR2_bin(7);
ALT_INV_RAMADDR2_bin(6) <= NOT RAMADDR2_bin(6);
\ALT_INV_SDRAM_RE_N~0_combout\ <= NOT \SDRAM_RE_N~0_combout\;
\ALT_INV_BUFF_WAIT~q\ <= NOT \BUFF_WAIT~q\;
\ALT_INV_BUFF_CTRL~q\ <= NOT \BUFF_CTRL~q\;
\u0|new_sdram_controller_0|ALT_INV_Selector36~1_combout\ <= NOT \u0|new_sdram_controller_0|Selector36~1_combout\;
\u0|new_sdram_controller_0|ALT_INV_m_count[3]~4_combout\ <= NOT \u0|new_sdram_controller_0|m_count[3]~4_combout\;
\u0|new_sdram_controller_0|ALT_INV_m_count[2]~3_combout\ <= NOT \u0|new_sdram_controller_0|m_count[2]~3_combout\;
\u0|new_sdram_controller_0|ALT_INV_Add3~0_combout\ <= NOT \u0|new_sdram_controller_0|Add3~0_combout\;
\u0|new_sdram_controller_0|ALT_INV_m_count\(0) <= NOT \u0|new_sdram_controller_0|m_count\(0);
\u0|new_sdram_controller_0|ALT_INV_m_count[1]~2_combout\ <= NOT \u0|new_sdram_controller_0|m_count[1]~2_combout\;
\u0|new_sdram_controller_0|ALT_INV_m_count[1]~1_combout\ <= NOT \u0|new_sdram_controller_0|m_count[1]~1_combout\;
\u0|new_sdram_controller_0|ALT_INV_Selector34~1_combout\ <= NOT \u0|new_sdram_controller_0|Selector34~1_combout\;
\u0|new_sdram_controller_0|ALT_INV_Selector36~0_combout\ <= NOT \u0|new_sdram_controller_0|Selector36~0_combout\;
\u0|new_sdram_controller_0|ALT_INV_Selector35~0_combout\ <= NOT \u0|new_sdram_controller_0|Selector35~0_combout\;
ALT_INV_RAMADDR1GR_sync1(0) <= NOT RAMADDR1GR_sync1(0);
ALT_INV_RAMADDR1GR_sync1(1) <= NOT RAMADDR1GR_sync1(1);
ALT_INV_RAMADDR1GR_sync1(2) <= NOT RAMADDR1GR_sync1(2);
\ALT_INV_binary~2_combout\ <= NOT \binary~2_combout\;
ALT_INV_RAMADDR1GR_sync1(3) <= NOT RAMADDR1GR_sync1(3);
ALT_INV_RAMADDR1GR_sync1(4) <= NOT RAMADDR1GR_sync1(4);
ALT_INV_RAMADDR1GR_sync1(5) <= NOT RAMADDR1GR_sync1(5);
ALT_INV_RAMADDR1GR_sync1(6) <= NOT RAMADDR1GR_sync1(6);
ALT_INV_RAMADDR1GR_sync1(8) <= NOT RAMADDR1GR_sync1(8);
ALT_INV_RAMADDR1GR_sync1(7) <= NOT RAMADDR1GR_sync1(7);
\u1|ALT_INV_VGA_FRAMESTART~q\ <= NOT \u1|VGA_FRAMESTART~q\;
ALT_INV_VGAFLAG(2) <= NOT VGAFLAG(2);
\u1|ALT_INV_VGA_FRAMEEND~q\ <= NOT \u1|VGA_FRAMEEND~q\;
\ALT_INV_RAMADDR2~1_combout\ <= NOT \RAMADDR2~1_combout\;
\ALT_INV_RAMADDR2~0_combout\ <= NOT \RAMADDR2~0_combout\;
\u0|new_sdram_controller_0|ALT_INV_m_data[7]~_Duplicate_1_q\ <= NOT \u0|new_sdram_controller_0|m_data[7]~_Duplicate_1_q\;
\u0|new_sdram_controller_0|ALT_INV_m_data[6]~_Duplicate_1_q\ <= NOT \u0|new_sdram_controller_0|m_data[6]~_Duplicate_1_q\;
\u0|new_sdram_controller_0|ALT_INV_m_data[5]~_Duplicate_1_q\ <= NOT \u0|new_sdram_controller_0|m_data[5]~_Duplicate_1_q\;
\u0|new_sdram_controller_0|ALT_INV_m_data[4]~_Duplicate_1_q\ <= NOT \u0|new_sdram_controller_0|m_data[4]~_Duplicate_1_q\;
\u0|new_sdram_controller_0|ALT_INV_m_data[3]~_Duplicate_1_q\ <= NOT \u0|new_sdram_controller_0|m_data[3]~_Duplicate_1_q\;
\u0|new_sdram_controller_0|ALT_INV_m_data[2]~_Duplicate_1_q\ <= NOT \u0|new_sdram_controller_0|m_data[2]~_Duplicate_1_q\;
\u0|new_sdram_controller_0|ALT_INV_m_data[1]~_Duplicate_1_q\ <= NOT \u0|new_sdram_controller_0|m_data[1]~_Duplicate_1_q\;
\u0|new_sdram_controller_0|ALT_INV_m_data[0]~_Duplicate_1_q\ <= NOT \u0|new_sdram_controller_0|m_data[0]~_Duplicate_1_q\;
\u0|new_sdram_controller_0|ALT_INV_i_state.010~q\ <= NOT \u0|new_sdram_controller_0|i_state.010~q\;
\u0|new_sdram_controller_0|ALT_INV_Selector37~1_combout\ <= NOT \u0|new_sdram_controller_0|Selector37~1_combout\;
\u0|new_sdram_controller_0|ALT_INV_Selector37~0_combout\ <= NOT \u0|new_sdram_controller_0|Selector37~0_combout\;
\u0|new_sdram_controller_0|ALT_INV_Equal0~2_combout\ <= NOT \u0|new_sdram_controller_0|Equal0~2_combout\;
\u0|new_sdram_controller_0|ALT_INV_Equal0~1_combout\ <= NOT \u0|new_sdram_controller_0|Equal0~1_combout\;
\u0|new_sdram_controller_0|ALT_INV_refresh_counter\(3) <= NOT \u0|new_sdram_controller_0|refresh_counter\(3);
\u0|new_sdram_controller_0|ALT_INV_refresh_counter\(4) <= NOT \u0|new_sdram_controller_0|refresh_counter\(4);
\u0|new_sdram_controller_0|ALT_INV_refresh_counter\(5) <= NOT \u0|new_sdram_controller_0|refresh_counter\(5);
\u0|new_sdram_controller_0|ALT_INV_refresh_counter\(6) <= NOT \u0|new_sdram_controller_0|refresh_counter\(6);
\u0|new_sdram_controller_0|ALT_INV_refresh_counter\(7) <= NOT \u0|new_sdram_controller_0|refresh_counter\(7);
\u0|new_sdram_controller_0|ALT_INV_Equal0~0_combout\ <= NOT \u0|new_sdram_controller_0|Equal0~0_combout\;
\u0|new_sdram_controller_0|ALT_INV_refresh_counter\(9) <= NOT \u0|new_sdram_controller_0|refresh_counter\(9);
\u0|new_sdram_controller_0|ALT_INV_refresh_counter\(10) <= NOT \u0|new_sdram_controller_0|refresh_counter\(10);
\u0|new_sdram_controller_0|ALT_INV_refresh_counter\(11) <= NOT \u0|new_sdram_controller_0|refresh_counter\(11);
\u0|new_sdram_controller_0|ALT_INV_refresh_counter\(12) <= NOT \u0|new_sdram_controller_0|refresh_counter\(12);
\u0|new_sdram_controller_0|ALT_INV_refresh_counter\(13) <= NOT \u0|new_sdram_controller_0|refresh_counter\(13);
\u0|new_sdram_controller_0|ALT_INV_refresh_counter\(0) <= NOT \u0|new_sdram_controller_0|refresh_counter\(0);
\u0|new_sdram_controller_0|ALT_INV_refresh_counter\(1) <= NOT \u0|new_sdram_controller_0|refresh_counter\(1);
\u0|new_sdram_controller_0|ALT_INV_refresh_counter\(2) <= NOT \u0|new_sdram_controller_0|refresh_counter\(2);
\u0|new_sdram_controller_0|ALT_INV_refresh_counter\(8) <= NOT \u0|new_sdram_controller_0|refresh_counter\(8);
\u0|new_sdram_controller_0|ALT_INV_ack_refresh_request~q\ <= NOT \u0|new_sdram_controller_0|ack_refresh_request~q\;
\u0|new_sdram_controller_0|ALT_INV_i_state.011~q\ <= NOT \u0|new_sdram_controller_0|i_state.011~q\;
\u0|new_sdram_controller_0|ALT_INV_i_state.000~q\ <= NOT \u0|new_sdram_controller_0|i_state.000~q\;
\u0|new_sdram_controller_0|ALT_INV_i_state.001~q\ <= NOT \u0|new_sdram_controller_0|i_state.001~q\;
\u0|new_sdram_controller_0|ALT_INV_m_next.000000001~q\ <= NOT \u0|new_sdram_controller_0|m_next.000000001~q\;
\u0|new_sdram_controller_0|ALT_INV_Selector25~3_combout\ <= NOT \u0|new_sdram_controller_0|Selector25~3_combout\;
\u0|new_sdram_controller_0|ALT_INV_i_state.101~q\ <= NOT \u0|new_sdram_controller_0|i_state.101~q\;
\u0|new_sdram_controller_0|ALT_INV_Selector25~2_combout\ <= NOT \u0|new_sdram_controller_0|Selector25~2_combout\;
\u0|new_sdram_controller_0|ALT_INV_Selector34~0_combout\ <= NOT \u0|new_sdram_controller_0|Selector34~0_combout\;
\u0|new_sdram_controller_0|ALT_INV_Selector30~0_combout\ <= NOT \u0|new_sdram_controller_0|Selector30~0_combout\;
\u0|new_sdram_controller_0|ALT_INV_m_count[1]~0_combout\ <= NOT \u0|new_sdram_controller_0|m_count[1]~0_combout\;
\u0|new_sdram_controller_0|ALT_INV_Selector27~2_combout\ <= NOT \u0|new_sdram_controller_0|Selector27~2_combout\;
\u0|new_sdram_controller_0|ALT_INV_Selector27~1_combout\ <= NOT \u0|new_sdram_controller_0|Selector27~1_combout\;
\u0|new_sdram_controller_0|ALT_INV_Selector27~0_combout\ <= NOT \u0|new_sdram_controller_0|Selector27~0_combout\;
\u0|rst_controller|alt_rst_sync_uq1|ALT_INV_altera_reset_synchronizer_int_chain\(0) <= NOT \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain\(0);
\u0|new_sdram_controller_0|ALT_INV_i_state.111~q\ <= NOT \u0|new_sdram_controller_0|i_state.111~q\;
\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_rd_data[32]~20_combout\ <= NOT \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[32]~20_combout\;
\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_wr_address~q\ <= NOT \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|wr_address~q\;
\ALT_INV_SDRAM_RE_N~q\ <= NOT \SDRAM_RE_N~q\;
\u0|new_sdram_controller_0|ALT_INV_Selector26~0_combout\ <= NOT \u0|new_sdram_controller_0|Selector26~0_combout\;
\u0|new_sdram_controller_0|ALT_INV_m_next.000010000~q\ <= NOT \u0|new_sdram_controller_0|m_next.000010000~q\;
\u0|new_sdram_controller_0|ALT_INV_Selector29~11_combout\ <= NOT \u0|new_sdram_controller_0|Selector29~11_combout\;
\u0|new_sdram_controller_0|ALT_INV_Selector29~10_combout\ <= NOT \u0|new_sdram_controller_0|Selector29~10_combout\;
\u0|new_sdram_controller_0|ALT_INV_Selector29~9_combout\ <= NOT \u0|new_sdram_controller_0|Selector29~9_combout\;
\u0|new_sdram_controller_0|ALT_INV_Selector29~8_combout\ <= NOT \u0|new_sdram_controller_0|Selector29~8_combout\;
\u0|new_sdram_controller_0|ALT_INV_Selector29~7_combout\ <= NOT \u0|new_sdram_controller_0|Selector29~7_combout\;
\u0|new_sdram_controller_0|ALT_INV_Selector29~6_combout\ <= NOT \u0|new_sdram_controller_0|Selector29~6_combout\;
\u0|new_sdram_controller_0|ALT_INV_Selector29~5_combout\ <= NOT \u0|new_sdram_controller_0|Selector29~5_combout\;
\u0|new_sdram_controller_0|ALT_INV_Selector29~4_combout\ <= NOT \u0|new_sdram_controller_0|Selector29~4_combout\;
\u0|new_sdram_controller_0|ALT_INV_Selector29~3_combout\ <= NOT \u0|new_sdram_controller_0|Selector29~3_combout\;
\u0|new_sdram_controller_0|ALT_INV_Selector29~2_combout\ <= NOT \u0|new_sdram_controller_0|Selector29~2_combout\;
\u0|new_sdram_controller_0|ALT_INV_Selector25~1_combout\ <= NOT \u0|new_sdram_controller_0|Selector25~1_combout\;
\u0|new_sdram_controller_0|ALT_INV_Selector29~1_combout\ <= NOT \u0|new_sdram_controller_0|Selector29~1_combout\;
\u0|new_sdram_controller_0|ALT_INV_Selector29~0_combout\ <= NOT \u0|new_sdram_controller_0|Selector29~0_combout\;
\u0|new_sdram_controller_0|ALT_INV_Selector25~0_combout\ <= NOT \u0|new_sdram_controller_0|Selector25~0_combout\;
\u0|new_sdram_controller_0|ALT_INV_m_count\(1) <= NOT \u0|new_sdram_controller_0|m_count\(1);
\u0|new_sdram_controller_0|ALT_INV_m_count\(2) <= NOT \u0|new_sdram_controller_0|m_count\(2);
\u0|new_sdram_controller_0|ALT_INV_m_count\(3) <= NOT \u0|new_sdram_controller_0|m_count\(3);
\u0|new_sdram_controller_0|ALT_INV_m_next.000001000~q\ <= NOT \u0|new_sdram_controller_0|m_next.000001000~q\;
\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_rd_data[43]~15_combout\ <= NOT \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[43]~15_combout\;
\u0|new_sdram_controller_0|ALT_INV_pending~4_combout\ <= NOT \u0|new_sdram_controller_0|pending~4_combout\;
\u1|ALT_INV_Equal2~0_combout\ <= NOT \u1|Equal2~0_combout\;
\u1|ALT_INV_Equal0~1_combout\ <= NOT \u1|Equal0~1_combout\;
\u1|ALT_INV_Equal3~2_combout\ <= NOT \u1|Equal3~2_combout\;
\u1|ALT_INV_LessThan0~3_combout\ <= NOT \u1|LessThan0~3_combout\;
\u1|ALT_INV_LessThan0~2_combout\ <= NOT \u1|LessThan0~2_combout\;
\ALT_INV_process_1~0_combout\ <= NOT \process_1~0_combout\;
\ALT_INV_Equal2~2_combout\ <= NOT \Equal2~2_combout\;
ALT_INV_RAMADDR1_bin(5) <= NOT RAMADDR1_bin(5);
ALT_INV_RAMADDR1_bin(4) <= NOT RAMADDR1_bin(4);
ALT_INV_RAMADDR1_bin(3) <= NOT RAMADDR1_bin(3);
\ALT_INV_Equal2~1_combout\ <= NOT \Equal2~1_combout\;
ALT_INV_RAMADDR1_bin(2) <= NOT RAMADDR1_bin(2);
ALT_INV_RAMADDR1_bin(1) <= NOT RAMADDR1_bin(1);
ALT_INV_RAMADDR1_bin(0) <= NOT RAMADDR1_bin(0);
\ALT_INV_Equal2~0_combout\ <= NOT \Equal2~0_combout\;
ALT_INV_RAMADDR1_bin(8) <= NOT RAMADDR1_bin(8);
ALT_INV_RAMADDR1_bin(7) <= NOT RAMADDR1_bin(7);
ALT_INV_RAMADDR1_bin(6) <= NOT RAMADDR1_bin(6);
\ALT_INV_VGABEGIN~q\ <= NOT \VGABEGIN~q\;
\u1|ALT_INV_ACTVID~q\ <= NOT \u1|ACTVID~q\;
\u0|new_sdram_controller_0|ALT_INV_Selector23~0_combout\ <= NOT \u0|new_sdram_controller_0|Selector23~0_combout\;
\u0|new_sdram_controller_0|ALT_INV_i_cmd\(0) <= NOT \u0|new_sdram_controller_0|i_cmd\(0);
\u0|new_sdram_controller_0|ALT_INV_Selector21~0_combout\ <= NOT \u0|new_sdram_controller_0|Selector21~0_combout\;
\u0|new_sdram_controller_0|ALT_INV_i_cmd\(2) <= NOT \u0|new_sdram_controller_0|i_cmd\(2);
\u0|new_sdram_controller_0|ALT_INV_WideOr8~0_combout\ <= NOT \u0|new_sdram_controller_0|WideOr8~0_combout\;
\u0|new_sdram_controller_0|ALT_INV_Selector20~1_combout\ <= NOT \u0|new_sdram_controller_0|Selector20~1_combout\;
\u0|new_sdram_controller_0|ALT_INV_Selector20~0_combout\ <= NOT \u0|new_sdram_controller_0|Selector20~0_combout\;
\u0|new_sdram_controller_0|ALT_INV_m_next.010000000~q\ <= NOT \u0|new_sdram_controller_0|m_next.010000000~q\;
\u0|new_sdram_controller_0|ALT_INV_i_cmd\(3) <= NOT \u0|new_sdram_controller_0|i_cmd\(3);
\u0|new_sdram_controller_0|ALT_INV_refresh_request~q\ <= NOT \u0|new_sdram_controller_0|refresh_request~q\;
\u0|new_sdram_controller_0|ALT_INV_Selector22~0_combout\ <= NOT \u0|new_sdram_controller_0|Selector22~0_combout\;
\u0|new_sdram_controller_0|ALT_INV_always5~0_combout\ <= NOT \u0|new_sdram_controller_0|always5~0_combout\;
\u0|new_sdram_controller_0|ALT_INV_i_cmd\(1) <= NOT \u0|new_sdram_controller_0|i_cmd\(1);
\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_rd_data[42]~13_combout\ <= NOT \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[42]~13_combout\;
\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_rd_data[28]~12_combout\ <= NOT \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[28]~12_combout\;
\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_rd_data[27]~11_combout\ <= NOT \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[27]~11_combout\;
\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_entry_0\(27) <= NOT \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0\(27);
\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_entry_1\(27) <= NOT \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1\(27);
\u0|new_sdram_controller_0|ALT_INV_active_addr\(9) <= NOT \u0|new_sdram_controller_0|active_addr\(9);
\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_rd_data[26]~10_combout\ <= NOT \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[26]~10_combout\;
\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_entry_0\(26) <= NOT \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0\(26);
\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_entry_1\(26) <= NOT \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1\(26);
\u0|new_sdram_controller_0|ALT_INV_active_addr\(8) <= NOT \u0|new_sdram_controller_0|active_addr\(8);
\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_rd_data[25]~9_combout\ <= NOT \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[25]~9_combout\;
\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_entry_0\(25) <= NOT \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0\(25);
\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_entry_1\(25) <= NOT \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1\(25);
\u0|new_sdram_controller_0|ALT_INV_active_addr\(7) <= NOT \u0|new_sdram_controller_0|active_addr\(7);
\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_rd_data[24]~8_combout\ <= NOT \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[24]~8_combout\;
\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_entry_0\(24) <= NOT \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0\(24);
\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_entry_1\(24) <= NOT \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1\(24);
\u0|new_sdram_controller_0|ALT_INV_active_addr\(6) <= NOT \u0|new_sdram_controller_0|active_addr\(6);
\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_rd_data[23]~7_combout\ <= NOT \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[23]~7_combout\;
\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_entry_0\(23) <= NOT \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0\(23);
\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_entry_1\(23) <= NOT \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1\(23);
\u0|new_sdram_controller_0|ALT_INV_active_addr\(5) <= NOT \u0|new_sdram_controller_0|active_addr\(5);
\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_rd_data[22]~6_combout\ <= NOT \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[22]~6_combout\;
\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_entry_0\(22) <= NOT \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0\(22);
\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_entry_1\(22) <= NOT \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1\(22);
\u0|new_sdram_controller_0|ALT_INV_Selector96~0_combout\ <= NOT \u0|new_sdram_controller_0|Selector96~0_combout\;
\u0|new_sdram_controller_0|ALT_INV_active_addr\(4) <= NOT \u0|new_sdram_controller_0|active_addr\(4);
\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_rd_data[21]~5_combout\ <= NOT \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[21]~5_combout\;
\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_entry_0\(21) <= NOT \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0\(21);
\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_entry_1\(21) <= NOT \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1\(21);
\u0|new_sdram_controller_0|ALT_INV_active_addr\(3) <= NOT \u0|new_sdram_controller_0|active_addr\(3);
\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_rd_data[20]~4_combout\ <= NOT \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[20]~4_combout\;
\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_entry_0\(20) <= NOT \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0\(20);
\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_entry_1\(20) <= NOT \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1\(20);
\u0|new_sdram_controller_0|ALT_INV_active_addr\(2) <= NOT \u0|new_sdram_controller_0|active_addr\(2);
\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_rd_data[19]~3_combout\ <= NOT \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[19]~3_combout\;
\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_entry_0\(19) <= NOT \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0\(19);
\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_entry_1\(19) <= NOT \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1\(19);
\u0|new_sdram_controller_0|ALT_INV_active_addr\(1) <= NOT \u0|new_sdram_controller_0|active_addr\(1);
\u0|new_sdram_controller_0|ALT_INV_m_state.000000001~q\ <= NOT \u0|new_sdram_controller_0|m_state.000000001~q\;
\u0|new_sdram_controller_0|ALT_INV_Selector31~0_combout\ <= NOT \u0|new_sdram_controller_0|Selector31~0_combout\;
\u0|new_sdram_controller_0|ALT_INV_m_state.100000000~q\ <= NOT \u0|new_sdram_controller_0|m_state.100000000~q\;
\u0|new_sdram_controller_0|ALT_INV_init_done~q\ <= NOT \u0|new_sdram_controller_0|init_done~q\;
\u0|new_sdram_controller_0|ALT_INV_m_state.010000000~q\ <= NOT \u0|new_sdram_controller_0|m_state.010000000~q\;
\u0|new_sdram_controller_0|ALT_INV_m_state.000100000~q\ <= NOT \u0|new_sdram_controller_0|m_state.000100000~q\;
\u0|new_sdram_controller_0|ALT_INV_m_state.001000000~q\ <= NOT \u0|new_sdram_controller_0|m_state.001000000~q\;
\u0|new_sdram_controller_0|ALT_INV_m_state.000000100~q\ <= NOT \u0|new_sdram_controller_0|m_state.000000100~q\;
\u0|rst_controller|alt_rst_sync_uq1|ALT_INV_altera_reset_synchronizer_int_chain_out~q\ <= NOT \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\;
\u0|new_sdram_controller_0|ALT_INV_i_addr\(12) <= NOT \u0|new_sdram_controller_0|i_addr\(12);
\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_rd_data[18]~2_combout\ <= NOT \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[18]~2_combout\;
\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_entry_0\(18) <= NOT \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0\(18);
\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_entry_1\(18) <= NOT \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1\(18);
\u0|new_sdram_controller_0|ALT_INV_m_addr[6]~1_combout\ <= NOT \u0|new_sdram_controller_0|m_addr[6]~1_combout\;
\u0|new_sdram_controller_0|ALT_INV_f_select~combout\ <= NOT \u0|new_sdram_controller_0|f_select~combout\;
\u0|new_sdram_controller_0|ALT_INV_pending~3_combout\ <= NOT \u0|new_sdram_controller_0|pending~3_combout\;
\u0|new_sdram_controller_0|ALT_INV_m_state.000000010~q\ <= NOT \u0|new_sdram_controller_0|m_state.000000010~q\;
\u0|new_sdram_controller_0|ALT_INV_Equal3~2_combout\ <= NOT \u0|new_sdram_controller_0|Equal3~2_combout\;
\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_entry_0\(37) <= NOT \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0\(37);
\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_entry_1\(37) <= NOT \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1\(37);
\u0|new_sdram_controller_0|ALT_INV_active_addr\(19) <= NOT \u0|new_sdram_controller_0|active_addr\(19);
\u0|new_sdram_controller_0|ALT_INV_Equal3~1_combout\ <= NOT \u0|new_sdram_controller_0|Equal3~1_combout\;
\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_entry_0\(36) <= NOT \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0\(36);
\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_entry_1\(36) <= NOT \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1\(36);
\u0|new_sdram_controller_0|ALT_INV_active_addr\(18) <= NOT \u0|new_sdram_controller_0|active_addr\(18);
\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_entry_0\(35) <= NOT \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0\(35);
\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_entry_1\(35) <= NOT \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1\(35);
\u0|new_sdram_controller_0|ALT_INV_active_addr\(17) <= NOT \u0|new_sdram_controller_0|active_addr\(17);
\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_entry_0\(34) <= NOT \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0\(34);
\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_entry_1\(34) <= NOT \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1\(34);
\u0|new_sdram_controller_0|ALT_INV_active_addr\(16) <= NOT \u0|new_sdram_controller_0|active_addr\(16);
\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_entry_0\(33) <= NOT \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0\(33);
\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_entry_1\(33) <= NOT \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1\(33);
\u0|new_sdram_controller_0|ALT_INV_active_addr\(15) <= NOT \u0|new_sdram_controller_0|active_addr\(15);
\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_entry_0\(32) <= NOT \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0\(32);
\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_entry_1\(32) <= NOT \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1\(32);
\u0|new_sdram_controller_0|ALT_INV_pending~2_combout\ <= NOT \u0|new_sdram_controller_0|pending~2_combout\;
\u0|new_sdram_controller_0|ALT_INV_active_addr\(14) <= NOT \u0|new_sdram_controller_0|active_addr\(14);
\u0|new_sdram_controller_0|ALT_INV_pending~1_combout\ <= NOT \u0|new_sdram_controller_0|pending~1_combout\;
\u0|new_sdram_controller_0|ALT_INV_active_cs_n~q\ <= NOT \u0|new_sdram_controller_0|active_cs_n~q\;
\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_entry_0\(43) <= NOT \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0\(43);
\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_entry_1\(43) <= NOT \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1\(43);
\u0|new_sdram_controller_0|ALT_INV_active_rnw~q\ <= NOT \u0|new_sdram_controller_0|active_rnw~q\;
\u0|new_sdram_controller_0|ALT_INV_Equal3~0_combout\ <= NOT \u0|new_sdram_controller_0|Equal3~0_combout\;
\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_entry_0\(31) <= NOT \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0\(31);
\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_entry_1\(31) <= NOT \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1\(31);
\u0|new_sdram_controller_0|ALT_INV_active_addr\(13) <= NOT \u0|new_sdram_controller_0|active_addr\(13);
\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_entry_0\(30) <= NOT \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0\(30);
\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_entry_1\(30) <= NOT \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1\(30);
\u0|new_sdram_controller_0|ALT_INV_active_addr\(12) <= NOT \u0|new_sdram_controller_0|active_addr\(12);
\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_entry_0\(29) <= NOT \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0\(29);
\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_entry_1\(29) <= NOT \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1\(29);
\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_entry_0\(42) <= NOT \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0\(42);
\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_entry_1\(42) <= NOT \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1\(42);
\u0|new_sdram_controller_0|ALT_INV_active_addr\(24) <= NOT \u0|new_sdram_controller_0|active_addr\(24);
\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_entry_0\(28) <= NOT \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0\(28);
\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_entry_1\(28) <= NOT \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1\(28);
\u0|new_sdram_controller_0|ALT_INV_pending~0_combout\ <= NOT \u0|new_sdram_controller_0|pending~0_combout\;
\u0|new_sdram_controller_0|ALT_INV_active_addr\(10) <= NOT \u0|new_sdram_controller_0|active_addr\(10);
\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_entry_0\(41) <= NOT \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0\(41);
\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_entry_1\(41) <= NOT \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1\(41);
\u0|new_sdram_controller_0|ALT_INV_active_addr\(23) <= NOT \u0|new_sdram_controller_0|active_addr\(23);
\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_entry_0\(40) <= NOT \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0\(40);
\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_entry_1\(40) <= NOT \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1\(40);
\u0|new_sdram_controller_0|ALT_INV_active_addr\(22) <= NOT \u0|new_sdram_controller_0|active_addr\(22);
\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_entry_0\(39) <= NOT \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0\(39);
\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_entry_1\(39) <= NOT \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1\(39);
\u0|new_sdram_controller_0|ALT_INV_active_addr\(21) <= NOT \u0|new_sdram_controller_0|active_addr\(21);
\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_entry_0\(38) <= NOT \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0\(38);
\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_entry_1\(38) <= NOT \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1\(38);
\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_rd_address~q\ <= NOT \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_address~q\;
\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_Equal1~0_combout\ <= NOT \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|Equal1~0_combout\;
\u0|new_sdram_controller_0|ALT_INV_active_addr\(20) <= NOT \u0|new_sdram_controller_0|active_addr\(20);
\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_entries\(1) <= NOT \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entries\(1);
\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_entries\(0) <= NOT \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entries\(0);
\u0|new_sdram_controller_0|ALT_INV_f_pop~q\ <= NOT \u0|new_sdram_controller_0|f_pop~q\;
\u0|new_sdram_controller_0|ALT_INV_m_addr~0_combout\ <= NOT \u0|new_sdram_controller_0|m_addr~0_combout\;
\u0|new_sdram_controller_0|ALT_INV_m_state.000010000~q\ <= NOT \u0|new_sdram_controller_0|m_state.000010000~q\;
\u0|new_sdram_controller_0|ALT_INV_m_state.000001000~q\ <= NOT \u0|new_sdram_controller_0|m_state.000001000~q\;
\u0|new_sdram_controller_0|ALT_INV_active_addr\(11) <= NOT \u0|new_sdram_controller_0|active_addr\(11);
\u0|new_sdram_controller_0|ALT_INV_active_addr\(0) <= NOT \u0|new_sdram_controller_0|active_addr\(0);
\u1|ALT_INV_Equal0~0_combout\ <= NOT \u1|Equal0~0_combout\;
\u1|ALT_INV_Equal3~1_combout\ <= NOT \u1|Equal3~1_combout\;
\u0|rst_controller_001|alt_rst_sync_uq1|ALT_INV_altera_reset_synchronizer_int_chain_out~q\ <= NOT \u0|rst_controller_001|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\;
\u1|ALT_INV_B_OUT~7_combout\ <= NOT \u1|B_OUT~7_combout\;
\u1|ALT_INV_B_OUT~6_combout\ <= NOT \u1|B_OUT~6_combout\;
\u1|ALT_INV_B_OUT~3_combout\ <= NOT \u1|B_OUT~3_combout\;
\u1|ALT_INV_B_OUT~2_combout\ <= NOT \u1|B_OUT~2_combout\;
\u1|ALT_INV_B_OUT~1_combout\ <= NOT \u1|B_OUT~1_combout\;
\u1|ALT_INV_B_OUT~0_combout\ <= NOT \u1|B_OUT~0_combout\;
\u1|ALT_INV_ACTVID~0_combout\ <= NOT \u1|ACTVID~0_combout\;
\u1|ALT_INV_LessThan7~0_combout\ <= NOT \u1|LessThan7~0_combout\;
\u1|ALT_INV_LessThan0~1_combout\ <= NOT \u1|LessThan0~1_combout\;
\u1|ALT_INV_LessThan0~0_combout\ <= NOT \u1|LessThan0~0_combout\;
\u1|ALT_INV_Equal3~0_combout\ <= NOT \u1|Equal3~0_combout\;
\u0|new_sdram_controller_0|ALT_INV_m_cmd[0]~_Duplicate_1_q\ <= NOT \u0|new_sdram_controller_0|m_cmd[0]~_Duplicate_1_q\;
\u0|new_sdram_controller_0|ALT_INV_m_cmd[2]~_Duplicate_1_q\ <= NOT \u0|new_sdram_controller_0|m_cmd[2]~_Duplicate_1_q\;
\u0|new_sdram_controller_0|ALT_INV_m_cmd[1]~_Duplicate_1_q\ <= NOT \u0|new_sdram_controller_0|m_cmd[1]~_Duplicate_1_q\;
\u0|new_sdram_controller_0|ALT_INV_m_count[1]~12_combout\ <= NOT \u0|new_sdram_controller_0|m_count[1]~12_combout\;
\ALT_INV_SDRAM_ADDR[24]~1_combout\ <= NOT \SDRAM_ADDR[24]~1_combout\;
ALT_INV_Xpos(7) <= NOT Xpos(7);
ALT_INV_Xpos(6) <= NOT Xpos(6);
ALT_INV_Xpos(5) <= NOT Xpos(5);
ALT_INV_Xpos(4) <= NOT Xpos(4);
ALT_INV_Xpos(3) <= NOT Xpos(3);
ALT_INV_Xpos(2) <= NOT Xpos(2);
ALT_INV_Xpos(1) <= NOT Xpos(1);
ALT_INV_Xpos(0) <= NOT Xpos(0);
ALT_INV_Xpos(9) <= NOT Xpos(9);
ALT_INV_Xpos(8) <= NOT Xpos(8);
ALT_INV_Ypos(5) <= NOT Ypos(5);
ALT_INV_Ypos(4) <= NOT Ypos(4);
ALT_INV_Ypos(3) <= NOT Ypos(3);
ALT_INV_Ypos(2) <= NOT Ypos(2);
ALT_INV_Ypos(9) <= NOT Ypos(9);
ALT_INV_Ypos(8) <= NOT Ypos(8);
ALT_INV_Ypos(7) <= NOT Ypos(7);
ALT_INV_Ypos(6) <= NOT Ypos(6);
\ALT_INV_Add2~41_sumout\ <= NOT \Add2~41_sumout\;
\ALT_INV_Add3~33_sumout\ <= NOT \Add3~33_sumout\;
ALT_INV_Ypos(1) <= NOT Ypos(1);
ALT_INV_Ypos(0) <= NOT Ypos(0);
\ALT_INV_Add4~32\ <= NOT \Add4~32\;
\ALT_INV_Add4~31\ <= NOT \Add4~31\;
\ALT_INV_Add4~30\ <= NOT \Add4~30\;
\ALT_INV_Add4~29\ <= NOT \Add4~29\;
\ALT_INV_Add4~28\ <= NOT \Add4~28\;
\ALT_INV_Add4~27\ <= NOT \Add4~27\;
\ALT_INV_Add4~26\ <= NOT \Add4~26\;
\ALT_INV_Add4~25\ <= NOT \Add4~25\;
\ALT_INV_Add4~24\ <= NOT \Add4~24\;
\ALT_INV_Add4~23\ <= NOT \Add4~23\;
\ALT_INV_Add4~22\ <= NOT \Add4~22\;
\ALT_INV_Add4~21\ <= NOT \Add4~21\;
\ALT_INV_Add4~20\ <= NOT \Add4~20\;
\ALT_INV_Add4~19\ <= NOT \Add4~19\;
\ALT_INV_Add4~18\ <= NOT \Add4~18\;
\ALT_INV_Add4~17\ <= NOT \Add4~17\;
\ALT_INV_Add4~16\ <= NOT \Add4~16\;
\ALT_INV_Add4~15\ <= NOT \Add4~15\;
\ALT_INV_Add4~14\ <= NOT \Add4~14\;
\ALT_INV_Add8~33_sumout\ <= NOT \Add8~33_sumout\;
\ALT_INV_Add8~29_sumout\ <= NOT \Add8~29_sumout\;
\ALT_INV_Add8~25_sumout\ <= NOT \Add8~25_sumout\;
\ALT_INV_Add8~21_sumout\ <= NOT \Add8~21_sumout\;
\ALT_INV_Add8~17_sumout\ <= NOT \Add8~17_sumout\;
\ALT_INV_Add8~13_sumout\ <= NOT \Add8~13_sumout\;
\ALT_INV_Add8~9_sumout\ <= NOT \Add8~9_sumout\;
\ALT_INV_Add8~5_sumout\ <= NOT \Add8~5_sumout\;
\ALT_INV_Add7~37_sumout\ <= NOT \Add7~37_sumout\;
\ALT_INV_Add7~33_sumout\ <= NOT \Add7~33_sumout\;
\ALT_INV_Add7~29_sumout\ <= NOT \Add7~29_sumout\;
\ALT_INV_Add7~25_sumout\ <= NOT \Add7~25_sumout\;
\ALT_INV_Add7~21_sumout\ <= NOT \Add7~21_sumout\;
\ALT_INV_Add7~17_sumout\ <= NOT \Add7~17_sumout\;
\ALT_INV_Add7~13_sumout\ <= NOT \Add7~13_sumout\;
\ALT_INV_Add7~9_sumout\ <= NOT \Add7~9_sumout\;
\ALT_INV_Add7~5_sumout\ <= NOT \Add7~5_sumout\;
\ALT_INV_Add7~1_sumout\ <= NOT \Add7~1_sumout\;
\ALT_INV_Add8~1_sumout\ <= NOT \Add8~1_sumout\;
\ALT_INV_Add5~33_sumout\ <= NOT \Add5~33_sumout\;
\ALT_INV_Add5~29_sumout\ <= NOT \Add5~29_sumout\;
\ALT_INV_Add5~25_sumout\ <= NOT \Add5~25_sumout\;
\ALT_INV_Add5~21_sumout\ <= NOT \Add5~21_sumout\;
\ALT_INV_Add5~17_sumout\ <= NOT \Add5~17_sumout\;
\ALT_INV_Add5~13_sumout\ <= NOT \Add5~13_sumout\;
\ALT_INV_Add5~9_sumout\ <= NOT \Add5~9_sumout\;
\ALT_INV_Add5~5_sumout\ <= NOT \Add5~5_sumout\;
\ALT_INV_Add5~1_sumout\ <= NOT \Add5~1_sumout\;
ALT_INV_RAMRESTART_POINTER(4) <= NOT RAMRESTART_POINTER(4);
ALT_INV_RAMRESTART_POINTER(3) <= NOT RAMRESTART_POINTER(3);
ALT_INV_RAMRESTART_POINTER(2) <= NOT RAMRESTART_POINTER(2);
ALT_INV_RAMRESTART_POINTER(1) <= NOT RAMRESTART_POINTER(1);
ALT_INV_RAMRESTART_POINTER(0) <= NOT RAMRESTART_POINTER(0);
ALT_INV_RAMRESTART_POINTER(8) <= NOT RAMRESTART_POINTER(8);
ALT_INV_RAMRESTART_POINTER(7) <= NOT RAMRESTART_POINTER(7);
ALT_INV_RAMRESTART_POINTER(6) <= NOT RAMRESTART_POINTER(6);
ALT_INV_RAMRESTART_POINTER(5) <= NOT RAMRESTART_POINTER(5);
\u0|new_sdram_controller_0|ALT_INV_Add0~53_sumout\ <= NOT \u0|new_sdram_controller_0|Add0~53_sumout\;
\u0|new_sdram_controller_0|ALT_INV_Add0~49_sumout\ <= NOT \u0|new_sdram_controller_0|Add0~49_sumout\;
\u0|new_sdram_controller_0|ALT_INV_Add0~45_sumout\ <= NOT \u0|new_sdram_controller_0|Add0~45_sumout\;
\u0|new_sdram_controller_0|ALT_INV_Add0~37_sumout\ <= NOT \u0|new_sdram_controller_0|Add0~37_sumout\;
\u0|new_sdram_controller_0|ALT_INV_Add0~33_sumout\ <= NOT \u0|new_sdram_controller_0|Add0~33_sumout\;
\u0|new_sdram_controller_0|ALT_INV_Add0~29_sumout\ <= NOT \u0|new_sdram_controller_0|Add0~29_sumout\;
\u0|new_sdram_controller_0|ALT_INV_Add0~25_sumout\ <= NOT \u0|new_sdram_controller_0|Add0~25_sumout\;
\u0|new_sdram_controller_0|ALT_INV_Add0~21_sumout\ <= NOT \u0|new_sdram_controller_0|Add0~21_sumout\;
\u0|new_sdram_controller_0|ALT_INV_Add0~17_sumout\ <= NOT \u0|new_sdram_controller_0|Add0~17_sumout\;
\u0|new_sdram_controller_0|ALT_INV_Add0~13_sumout\ <= NOT \u0|new_sdram_controller_0|Add0~13_sumout\;
\u0|new_sdram_controller_0|ALT_INV_Add0~9_sumout\ <= NOT \u0|new_sdram_controller_0|Add0~9_sumout\;
\u0|new_sdram_controller_0|ALT_INV_Add0~5_sumout\ <= NOT \u0|new_sdram_controller_0|Add0~5_sumout\;
\u0|new_sdram_controller_0|ALT_INV_Add0~1_sumout\ <= NOT \u0|new_sdram_controller_0|Add0~1_sumout\;
ALT_INV_RAMFULL_POINTER(5) <= NOT RAMFULL_POINTER(5);
ALT_INV_RAMFULL_POINTER(4) <= NOT RAMFULL_POINTER(4);
ALT_INV_RAMFULL_POINTER(3) <= NOT RAMFULL_POINTER(3);
ALT_INV_RAMFULL_POINTER(2) <= NOT RAMFULL_POINTER(2);
ALT_INV_RAMFULL_POINTER(1) <= NOT RAMFULL_POINTER(1);
ALT_INV_RAMFULL_POINTER(0) <= NOT RAMFULL_POINTER(0);
ALT_INV_RAMFULL_POINTER(8) <= NOT RAMFULL_POINTER(8);
ALT_INV_RAMFULL_POINTER(7) <= NOT RAMFULL_POINTER(7);
ALT_INV_RAMFULL_POINTER(6) <= NOT RAMFULL_POINTER(6);
\ALT_INV_Add11~33_sumout\ <= NOT \Add11~33_sumout\;
\ALT_INV_Add11~29_sumout\ <= NOT \Add11~29_sumout\;
\ALT_INV_Add11~25_sumout\ <= NOT \Add11~25_sumout\;
\ALT_INV_Add11~21_sumout\ <= NOT \Add11~21_sumout\;
\ALT_INV_Add11~17_sumout\ <= NOT \Add11~17_sumout\;
\ALT_INV_Add11~13_sumout\ <= NOT \Add11~13_sumout\;
\ALT_INV_Add11~9_sumout\ <= NOT \Add11~9_sumout\;
\ALT_INV_Add11~5_sumout\ <= NOT \Add11~5_sumout\;
\ALT_INV_Add11~1_sumout\ <= NOT \Add11~1_sumout\;
ALT_INV_RAMADDR1(8) <= NOT RAMADDR1(8);
ALT_INV_RAMADDR1(7) <= NOT RAMADDR1(7);
ALT_INV_RAMADDR1(6) <= NOT RAMADDR1(6);
ALT_INV_RAMADDR1(5) <= NOT RAMADDR1(5);
ALT_INV_RAMADDR1(4) <= NOT RAMADDR1(4);
ALT_INV_RAMADDR1(3) <= NOT RAMADDR1(3);
ALT_INV_RAMADDR1(2) <= NOT RAMADDR1(2);
ALT_INV_RAMADDR1(1) <= NOT RAMADDR1(1);
ALT_INV_RAMADDR1(0) <= NOT RAMADDR1(0);
\u0|new_sdram_controller_0|ALT_INV_oe~_Duplicate_15_q\ <= NOT \u0|new_sdram_controller_0|oe~_Duplicate_15_q\;
ALT_INV_SDRAM_ADDR(9) <= NOT SDRAM_ADDR(9);
ALT_INV_SDRAM_ADDR(8) <= NOT SDRAM_ADDR(8);
ALT_INV_SDRAM_ADDR(7) <= NOT SDRAM_ADDR(7);
ALT_INV_SDRAM_ADDR(6) <= NOT SDRAM_ADDR(6);
ALT_INV_SDRAM_ADDR(5) <= NOT SDRAM_ADDR(5);
ALT_INV_SDRAM_ADDR(4) <= NOT SDRAM_ADDR(4);
ALT_INV_SDRAM_ADDR(3) <= NOT SDRAM_ADDR(3);
ALT_INV_SDRAM_ADDR(2) <= NOT SDRAM_ADDR(2);
ALT_INV_SDRAM_ADDR(1) <= NOT SDRAM_ADDR(1);
ALT_INV_SDRAM_ADDR(0) <= NOT SDRAM_ADDR(0);
ALT_INV_SDRAM_ADDR(19) <= NOT SDRAM_ADDR(19);
ALT_INV_SDRAM_ADDR(18) <= NOT SDRAM_ADDR(18);
ALT_INV_SDRAM_ADDR(17) <= NOT SDRAM_ADDR(17);
ALT_INV_SDRAM_ADDR(16) <= NOT SDRAM_ADDR(16);
ALT_INV_SDRAM_ADDR(15) <= NOT SDRAM_ADDR(15);
ALT_INV_SDRAM_ADDR(14) <= NOT SDRAM_ADDR(14);
ALT_INV_SDRAM_ADDR(13) <= NOT SDRAM_ADDR(13);
ALT_INV_SDRAM_ADDR(12) <= NOT SDRAM_ADDR(12);
ALT_INV_SDRAM_ADDR(11) <= NOT SDRAM_ADDR(11);
ALT_INV_SDRAM_ADDR(24) <= NOT SDRAM_ADDR(24);
ALT_INV_SDRAM_ADDR(10) <= NOT SDRAM_ADDR(10);
ALT_INV_SDRAM_ADDR(23) <= NOT SDRAM_ADDR(23);
ALT_INV_SDRAM_ADDR(22) <= NOT SDRAM_ADDR(22);
ALT_INV_SDRAM_ADDR(21) <= NOT SDRAM_ADDR(21);
ALT_INV_SDRAM_ADDR(20) <= NOT SDRAM_ADDR(20);
\ALT_INV_SDRAM_WE_N~q\ <= NOT \SDRAM_WE_N~q\;
ALT_INV_RAMADDR2(5) <= NOT RAMADDR2(5);
ALT_INV_RAMADDR2(4) <= NOT RAMADDR2(4);
ALT_INV_RAMADDR2(3) <= NOT RAMADDR2(3);
ALT_INV_RAMADDR2(2) <= NOT RAMADDR2(2);
ALT_INV_RAMADDR2(1) <= NOT RAMADDR2(1);
ALT_INV_RAMADDR2(0) <= NOT RAMADDR2(0);
ALT_INV_RAMADDR2(8) <= NOT RAMADDR2(8);
ALT_INV_RAMADDR2(7) <= NOT RAMADDR2(7);
ALT_INV_RAMADDR2(6) <= NOT RAMADDR2(6);
\u1|ALT_INV_Ypos\(0) <= NOT \u1|Ypos\(0);
\u1|ALT_INV_Ypos\(2) <= NOT \u1|Ypos\(2);
\u1|ALT_INV_Ypos\(1) <= NOT \u1|Ypos\(1);
ALT_INV_BLUE(7) <= NOT BLUE(7);
ALT_INV_GREEN(6) <= NOT GREEN(6);
ALT_INV_GREEN(5) <= NOT GREEN(5);
ALT_INV_GREEN(4) <= NOT GREEN(4);
ALT_INV_GREEN(3) <= NOT GREEN(3);
ALT_INV_GREEN(2) <= NOT GREEN(2);
ALT_INV_GREEN(1) <= NOT GREEN(1);
\u1|ALT_INV_Ypos\(8) <= NOT \u1|Ypos\(8);
\u1|ALT_INV_Ypos\(7) <= NOT \u1|Ypos\(7);
\u1|ALT_INV_Ypos\(3) <= NOT \u1|Ypos\(3);
\u1|ALT_INV_Ypos\(4) <= NOT \u1|Ypos\(4);
\u1|ALT_INV_Ypos\(5) <= NOT \u1|Ypos\(5);
\u1|ALT_INV_Ypos\(6) <= NOT \u1|Ypos\(6);
\u1|ALT_INV_Ypos\(9) <= NOT \u1|Ypos\(9);
\u1|ALT_INV_Ypos\(10) <= NOT \u1|Ypos\(10);
\u1|ALT_INV_Xpos\(5) <= NOT \u1|Xpos\(5);
\u1|ALT_INV_Xpos\(6) <= NOT \u1|Xpos\(6);
\u1|ALT_INV_Xpos\(7) <= NOT \u1|Xpos\(7);
\u1|ALT_INV_Xpos\(0) <= NOT \u1|Xpos\(0);
\u1|ALT_INV_Xpos\(1) <= NOT \u1|Xpos\(1);
\u1|ALT_INV_Xpos\(2) <= NOT \u1|Xpos\(2);
\u1|ALT_INV_Xpos\(3) <= NOT \u1|Xpos\(3);
\u1|ALT_INV_Xpos\(4) <= NOT \u1|Xpos\(4);
\u1|ALT_INV_Xpos\(8) <= NOT \u1|Xpos\(8);
\u1|ALT_INV_Xpos\(9) <= NOT \u1|Xpos\(9);
\u1|ALT_INV_Xpos\(10) <= NOT \u1|Xpos\(10);
ALT_INV_GREEN(0) <= NOT GREEN(0);

-- Location: IOOBUF_X40_Y81_N36
\VGA_B[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u1|B_OUT\(0),
	devoe => ww_devoe,
	o => ww_VGA_B(0));

-- Location: IOOBUF_X28_Y81_N19
\VGA_B[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u1|B_OUT\(1),
	devoe => ww_devoe,
	o => ww_VGA_B(1));

-- Location: IOOBUF_X20_Y81_N2
\VGA_B[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u1|B_OUT\(2),
	devoe => ww_devoe,
	o => ww_VGA_B(2));

-- Location: IOOBUF_X36_Y81_N19
\VGA_B[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u1|B_OUT\(3),
	devoe => ww_devoe,
	o => ww_VGA_B(3));

-- Location: IOOBUF_X28_Y81_N2
\VGA_B[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u1|B_OUT\(4),
	devoe => ww_devoe,
	o => ww_VGA_B(4));

-- Location: IOOBUF_X36_Y81_N2
\VGA_B[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u1|B_OUT\(5),
	devoe => ww_devoe,
	o => ww_VGA_B(5));

-- Location: IOOBUF_X40_Y81_N19
\VGA_B[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u1|B_OUT\(6),
	devoe => ww_devoe,
	o => ww_VGA_B(6));

-- Location: IOOBUF_X32_Y81_N19
\VGA_B[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u1|B_OUT\(7),
	devoe => ww_devoe,
	o => ww_VGA_B(7));

-- Location: IOOBUF_X4_Y81_N19
\VGA_G[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u1|G_OUT\(0),
	devoe => ww_devoe,
	o => ww_VGA_G(0));

-- Location: IOOBUF_X4_Y81_N2
\VGA_G[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u1|G_OUT\(1),
	devoe => ww_devoe,
	o => ww_VGA_G(1));

-- Location: IOOBUF_X20_Y81_N19
\VGA_G[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u1|G_OUT\(2),
	devoe => ww_devoe,
	o => ww_VGA_G(2));

-- Location: IOOBUF_X6_Y81_N2
\VGA_G[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u1|G_OUT\(3),
	devoe => ww_devoe,
	o => ww_VGA_G(3));

-- Location: IOOBUF_X10_Y81_N59
\VGA_G[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u1|G_OUT\(4),
	devoe => ww_devoe,
	o => ww_VGA_G(4));

-- Location: IOOBUF_X10_Y81_N42
\VGA_G[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u1|G_OUT\(5),
	devoe => ww_devoe,
	o => ww_VGA_G(5));

-- Location: IOOBUF_X18_Y81_N42
\VGA_G[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u1|G_OUT\(6),
	devoe => ww_devoe,
	o => ww_VGA_G(6));

-- Location: IOOBUF_X18_Y81_N59
\VGA_G[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u1|G_OUT\(7),
	devoe => ww_devoe,
	o => ww_VGA_G(7));

-- Location: IOOBUF_X40_Y81_N53
\VGA_R[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u1|R_OUT\(0),
	devoe => ww_devoe,
	o => ww_VGA_R(0));

-- Location: IOOBUF_X38_Y81_N2
\VGA_R[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u1|R_OUT\(1),
	devoe => ww_devoe,
	o => ww_VGA_R(1));

-- Location: IOOBUF_X26_Y81_N59
\VGA_R[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u1|R_OUT\(2),
	devoe => ww_devoe,
	o => ww_VGA_R(2));

-- Location: IOOBUF_X38_Y81_N19
\VGA_R[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u1|R_OUT\(3),
	devoe => ww_devoe,
	o => ww_VGA_R(3));

-- Location: IOOBUF_X36_Y81_N36
\VGA_R[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u1|R_OUT\(4),
	devoe => ww_devoe,
	o => ww_VGA_R(4));

-- Location: IOOBUF_X22_Y81_N19
\VGA_R[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u1|R_OUT\(5),
	devoe => ww_devoe,
	o => ww_VGA_R(5));

-- Location: IOOBUF_X22_Y81_N2
\VGA_R[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u1|R_OUT\(6),
	devoe => ww_devoe,
	o => ww_VGA_R(6));

-- Location: IOOBUF_X26_Y81_N42
\VGA_R[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u1|R_OUT\(7),
	devoe => ww_devoe,
	o => ww_VGA_R(7));

-- Location: IOOBUF_X38_Y81_N36
\VGA_CLK~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|pll_0|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	devoe => ww_devoe,
	o => ww_VGA_CLK);

-- Location: IOOBUF_X6_Y81_N19
\VGA_BLANK_N~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_VGA_BLANK_N);

-- Location: IOOBUF_X36_Y81_N53
\VGA_HS~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u1|VGAHS~q\,
	devoe => ww_devoe,
	o => ww_VGA_HS);

-- Location: IOOBUF_X34_Y81_N42
\VGA_VS~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u1|VGAVS~q\,
	devoe => ww_devoe,
	o => ww_VGA_VS);

-- Location: IOOBUF_X28_Y81_N36
\VGA_SYNC_N~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_VGA_SYNC_N);

-- Location: IOOBUF_X52_Y0_N2
\LEDR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(0));

-- Location: IOOBUF_X52_Y0_N19
\LEDR[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(1));

-- Location: IOOBUF_X60_Y0_N2
\LEDR[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(2));

-- Location: IOOBUF_X80_Y0_N2
\LEDR[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(3));

-- Location: IOOBUF_X60_Y0_N19
\LEDR[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(4));

-- Location: IOOBUF_X80_Y0_N19
\LEDR[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(5));

-- Location: IOOBUF_X84_Y0_N2
\LEDR[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(6));

-- Location: IOOBUF_X89_Y6_N5
\LEDR[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(7));

-- Location: IOOBUF_X89_Y8_N5
\LEDR[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(8));

-- Location: IOOBUF_X89_Y6_N22
\LEDR[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_LEDR(9));

-- Location: IOOBUF_X40_Y0_N53
\DRAM_ADDR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|new_sdram_controller_0|m_addr\(0),
	devoe => ww_devoe,
	o => ww_DRAM_ADDR(0));

-- Location: IOOBUF_X30_Y0_N19
\DRAM_ADDR[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|new_sdram_controller_0|m_addr\(1),
	devoe => ww_devoe,
	o => ww_DRAM_ADDR(1));

-- Location: IOOBUF_X38_Y0_N2
\DRAM_ADDR[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|new_sdram_controller_0|m_addr\(2),
	devoe => ww_devoe,
	o => ww_DRAM_ADDR(2));

-- Location: IOOBUF_X24_Y0_N19
\DRAM_ADDR[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|new_sdram_controller_0|m_addr\(3),
	devoe => ww_devoe,
	o => ww_DRAM_ADDR(3));

-- Location: IOOBUF_X28_Y0_N2
\DRAM_ADDR[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|new_sdram_controller_0|m_addr\(4),
	devoe => ww_devoe,
	o => ww_DRAM_ADDR(4));

-- Location: IOOBUF_X28_Y0_N19
\DRAM_ADDR[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|new_sdram_controller_0|m_addr\(5),
	devoe => ww_devoe,
	o => ww_DRAM_ADDR(5));

-- Location: IOOBUF_X24_Y0_N2
\DRAM_ADDR[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|new_sdram_controller_0|m_addr\(6),
	devoe => ww_devoe,
	o => ww_DRAM_ADDR(6));

-- Location: IOOBUF_X32_Y0_N19
\DRAM_ADDR[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|new_sdram_controller_0|m_addr\(7),
	devoe => ww_devoe,
	o => ww_DRAM_ADDR(7));

-- Location: IOOBUF_X38_Y0_N19
\DRAM_ADDR[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|new_sdram_controller_0|m_addr\(8),
	devoe => ww_devoe,
	o => ww_DRAM_ADDR(8));

-- Location: IOOBUF_X26_Y0_N59
\DRAM_ADDR[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|new_sdram_controller_0|m_addr\(9),
	devoe => ww_devoe,
	o => ww_DRAM_ADDR(9));

-- Location: IOOBUF_X26_Y0_N42
\DRAM_ADDR[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|new_sdram_controller_0|m_addr\(10),
	devoe => ww_devoe,
	o => ww_DRAM_ADDR(10));

-- Location: IOOBUF_X30_Y0_N2
\DRAM_ADDR[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|new_sdram_controller_0|m_addr\(11),
	devoe => ww_devoe,
	o => ww_DRAM_ADDR(11));

-- Location: IOOBUF_X40_Y0_N36
\DRAM_ADDR[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|new_sdram_controller_0|m_addr\(12),
	devoe => ww_devoe,
	o => ww_DRAM_ADDR(12));

-- Location: IOOBUF_X22_Y0_N19
\DRAM_BA[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|new_sdram_controller_0|m_bank\(0),
	devoe => ww_devoe,
	o => ww_DRAM_BA(0));

-- Location: IOOBUF_X38_Y0_N53
\DRAM_BA[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|new_sdram_controller_0|m_bank\(1),
	devoe => ww_devoe,
	o => ww_DRAM_BA(1));

-- Location: IOOBUF_X18_Y0_N42
\DRAM_CAS_N~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|new_sdram_controller_0|m_cmd\(1),
	devoe => ww_devoe,
	o => ww_DRAM_CAS_N);

-- Location: IOOBUF_X36_Y0_N53
\DRAM_CKE~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_DRAM_CKE);

-- Location: IOOBUF_X38_Y0_N36
\DRAM_CLK~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|pll_0|altera_pll_i|outclk_wire[2]~CLKENA0_outclk\,
	devoe => ww_devoe,
	o => ww_DRAM_CLK);

-- Location: IOOBUF_X18_Y0_N59
\DRAM_CS_N~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|new_sdram_controller_0|m_cmd\(3),
	devoe => ww_devoe,
	o => ww_DRAM_CS_N);

-- Location: IOOBUF_X22_Y0_N2
\DRAM_RAS_N~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|new_sdram_controller_0|m_cmd\(2),
	devoe => ww_devoe,
	o => ww_DRAM_RAS_N);

-- Location: IOOBUF_X20_Y0_N2
\DRAM_WE_N~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|new_sdram_controller_0|m_cmd\(0),
	devoe => ww_devoe,
	o => ww_DRAM_WE_N);

-- Location: IOOBUF_X20_Y0_N19
\DRAM_LDQM~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_DRAM_LDQM);

-- Location: IOOBUF_X36_Y0_N36
\DRAM_UDQM~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_DRAM_UDQM);

-- Location: IOOBUF_X24_Y0_N53
\DRAM_DQ[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|new_sdram_controller_0|m_data\(0),
	oe => \u0|new_sdram_controller_0|ALT_INV_oe~q\,
	devoe => ww_devoe,
	o => DRAM_DQ(0));

-- Location: IOOBUF_X26_Y0_N93
\DRAM_DQ[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|new_sdram_controller_0|m_data\(1),
	oe => \u0|new_sdram_controller_0|ALT_INV_oe~_Duplicate_1_q\,
	devoe => ww_devoe,
	o => DRAM_DQ(1));

-- Location: IOOBUF_X28_Y0_N36
\DRAM_DQ[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|new_sdram_controller_0|m_data\(2),
	oe => \u0|new_sdram_controller_0|ALT_INV_oe~_Duplicate_2_q\,
	devoe => ww_devoe,
	o => DRAM_DQ(2));

-- Location: IOOBUF_X28_Y0_N53
\DRAM_DQ[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|new_sdram_controller_0|m_data\(3),
	oe => \u0|new_sdram_controller_0|ALT_INV_oe~_Duplicate_3_q\,
	devoe => ww_devoe,
	o => DRAM_DQ(3));

-- Location: IOOBUF_X30_Y0_N53
\DRAM_DQ[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|new_sdram_controller_0|m_data\(4),
	oe => \u0|new_sdram_controller_0|ALT_INV_oe~_Duplicate_4_q\,
	devoe => ww_devoe,
	o => DRAM_DQ(4));

-- Location: IOOBUF_X18_Y0_N76
\DRAM_DQ[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|new_sdram_controller_0|m_data\(5),
	oe => \u0|new_sdram_controller_0|ALT_INV_oe~_Duplicate_5_q\,
	devoe => ww_devoe,
	o => DRAM_DQ(5));

-- Location: IOOBUF_X34_Y0_N59
\DRAM_DQ[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|new_sdram_controller_0|m_data\(6),
	oe => \u0|new_sdram_controller_0|ALT_INV_oe~_Duplicate_6_q\,
	devoe => ww_devoe,
	o => DRAM_DQ(6));

-- Location: IOOBUF_X34_Y0_N42
\DRAM_DQ[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u0|new_sdram_controller_0|m_data\(7),
	oe => \u0|new_sdram_controller_0|ALT_INV_oe~_Duplicate_7_q\,
	devoe => ww_devoe,
	o => DRAM_DQ(7));

-- Location: IOOBUF_X34_Y0_N76
\DRAM_DQ[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	oe => \u0|new_sdram_controller_0|ALT_INV_oe~_Duplicate_8_q\,
	devoe => ww_devoe,
	o => DRAM_DQ(8));

-- Location: IOOBUF_X34_Y0_N93
\DRAM_DQ[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	oe => \u0|new_sdram_controller_0|ALT_INV_oe~_Duplicate_9_q\,
	devoe => ww_devoe,
	o => DRAM_DQ(9));

-- Location: IOOBUF_X30_Y0_N36
\DRAM_DQ[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	oe => \u0|new_sdram_controller_0|ALT_INV_oe~_Duplicate_10_q\,
	devoe => ww_devoe,
	o => DRAM_DQ(10));

-- Location: IOOBUF_X18_Y0_N93
\DRAM_DQ[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	oe => \u0|new_sdram_controller_0|ALT_INV_oe~_Duplicate_11_q\,
	devoe => ww_devoe,
	o => DRAM_DQ(11));

-- Location: IOOBUF_X32_Y0_N53
\DRAM_DQ[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	oe => \u0|new_sdram_controller_0|ALT_INV_oe~_Duplicate_12_q\,
	devoe => ww_devoe,
	o => DRAM_DQ(12));

-- Location: IOOBUF_X32_Y0_N36
\DRAM_DQ[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	oe => \u0|new_sdram_controller_0|ALT_INV_oe~_Duplicate_13_q\,
	devoe => ww_devoe,
	o => DRAM_DQ(13));

-- Location: IOOBUF_X26_Y0_N76
\DRAM_DQ[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	oe => \u0|new_sdram_controller_0|ALT_INV_oe~_Duplicate_14_q\,
	devoe => ww_devoe,
	o => DRAM_DQ(14));

-- Location: IOOBUF_X24_Y0_N36
\DRAM_DQ[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	oe => \u0|new_sdram_controller_0|ALT_INV_oe~_Duplicate_15_q\,
	devoe => ww_devoe,
	o => DRAM_DQ(15));

-- Location: IOIBUF_X32_Y0_N1
\CLOCK_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: PLLREFCLKSELECT_X0_Y21_N0
\u0|pll_0|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT\ : cyclonev_pll_refclk_select
-- pragma translate_off
GENERIC MAP (
	pll_auto_clk_sw_en => "false",
	pll_clk_loss_edge => "both_edges",
	pll_clk_loss_sw_en => "false",
	pll_clk_sw_dly => 0,
	pll_clkin_0_src => "clk_0",
	pll_clkin_1_src => "ref_clk1",
	pll_manu_clk_sw_en => "false",
	pll_sw_refclk_src => "clk_0")
-- pragma translate_on
PORT MAP (
	clkin => \u0|pll_0|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_CLKIN_bus\,
	clkout => \u0|pll_0|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_O_CLKOUT\,
	extswitchbuf => \u0|pll_0|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_O_EXTSWITCHBUF\);

-- Location: CLKCTRL_G7
\CLOCK_50~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~input_o\,
	outclk => \CLOCK_50~inputCLKENA0_outclk\);

-- Location: MLABCELL_X15_Y28_N15
\u0|rst_controller_001|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|rst_controller_001|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain[1]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \u0|rst_controller_001|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain[1]~feeder_combout\);

-- Location: FF_X15_Y28_N17
\u0|rst_controller_001|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	d => \u0|rst_controller_001|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rst_controller_001|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain\(1));

-- Location: FF_X15_Y28_N11
\u0|rst_controller_001|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \u0|rst_controller_001|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rst_controller_001|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain\(0));

-- Location: FF_X15_Y28_N52
\u0|rst_controller_001|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputCLKENA0_outclk\,
	asdata => \u0|rst_controller_001|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rst_controller_001|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\);

-- Location: FRACTIONALPLL_X0_Y15_N0
\u0|pll_0|altera_pll_i|general[0].gpll~FRACTIONAL_PLL\ : cyclonev_fractional_pll
-- pragma translate_off
GENERIC MAP (
	dsm_accumulator_reset_value => 0,
	forcelock => "false",
	mimic_fbclk_type => "none",
	nreset_invert => "true",
	output_clock_frequency => "990.0 mhz",
	pll_atb => 0,
	pll_bwctrl => 10000,
	pll_cmp_buf_dly => "0 ps",
	pll_cp_comp => "true",
	pll_cp_current => 20,
	pll_ctrl_override_setting => "false",
	pll_dsm_dither => "disable",
	pll_dsm_out_sel => "disable",
	pll_dsm_reset => "false",
	pll_ecn_bypass => "false",
	pll_ecn_test_en => "false",
	pll_enable => "true",
	pll_fbclk_mux_1 => "glb",
	pll_fbclk_mux_2 => "m_cnt",
	pll_fractional_carry_out => 32,
	pll_fractional_division => 1,
	pll_fractional_division_string => "'0'",
	pll_fractional_value_ready => "true",
	pll_lf_testen => "false",
	pll_lock_fltr_cfg => 25,
	pll_lock_fltr_test => "false",
	pll_m_cnt_bypass_en => "false",
	pll_m_cnt_coarse_dly => "0 ps",
	pll_m_cnt_fine_dly => "0 ps",
	pll_m_cnt_hi_div => 50,
	pll_m_cnt_in_src => "ph_mux_clk",
	pll_m_cnt_lo_div => 49,
	pll_m_cnt_odd_div_duty_en => "true",
	pll_m_cnt_ph_mux_prst => 7,
	pll_m_cnt_prst => 10,
	pll_n_cnt_bypass_en => "false",
	pll_n_cnt_coarse_dly => "0 ps",
	pll_n_cnt_fine_dly => "0 ps",
	pll_n_cnt_hi_div => 3,
	pll_n_cnt_lo_div => 2,
	pll_n_cnt_odd_div_duty_en => "false",
	pll_ref_buf_dly => "0 ps",
	pll_reg_boost => 0,
	pll_regulator_bypass => "false",
	pll_ripplecap_ctrl => 0,
	pll_slf_rst => "false",
	pll_tclk_mux_en => "false",
	pll_tclk_sel => "n_src",
	pll_test_enable => "false",
	pll_testdn_enable => "false",
	pll_testup_enable => "false",
	pll_unlock_fltr_cfg => 2,
	pll_vco_div => 1,
	pll_vco_ph0_en => "true",
	pll_vco_ph1_en => "true",
	pll_vco_ph2_en => "true",
	pll_vco_ph3_en => "true",
	pll_vco_ph4_en => "true",
	pll_vco_ph5_en => "true",
	pll_vco_ph6_en => "true",
	pll_vco_ph7_en => "true",
	pll_vctrl_test_voltage => 750,
	reference_clock_frequency => "50.0 mhz",
	vccd0g_atb => "disable",
	vccd0g_output => 0,
	vccd1g_atb => "disable",
	vccd1g_output => 0,
	vccm1g_tap => 2,
	vccr_pd => "false",
	vcodiv_override => "false",
	fractional_pll_index => 0)
-- pragma translate_on
PORT MAP (
	coreclkfb => \u0|pll_0|altera_pll_i|fboutclk_wire\(0),
	ecnc1test => \u0|pll_0|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_O_EXTSWITCHBUF\,
	nresync => \u0|rst_controller_001|alt_rst_sync_uq1|ALT_INV_altera_reset_synchronizer_int_chain_out~q\,
	refclkin => \u0|pll_0|altera_pll_i|general[0].gpll~PLL_REFCLK_SELECT_O_CLKOUT\,
	shift => \u0|pll_0|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFT\,
	shiftdonein => \u0|pll_0|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFT\,
	shiften => \u0|pll_0|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFTENM\,
	up => \u0|pll_0|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_UP\,
	cntnen => \u0|pll_0|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_CNTNEN\,
	fbclk => \u0|pll_0|altera_pll_i|fboutclk_wire\(0),
	tclk => \u0|pll_0|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_TCLK\,
	vcoph => \u0|pll_0|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_VCOPH_bus\,
	mhi => \u0|pll_0|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_MHI_bus\);

-- Location: PLLRECONFIG_X0_Y19_N0
\u0|pll_0|altera_pll_i|general[0].gpll~PLL_RECONFIG\ : cyclonev_pll_reconfig
-- pragma translate_off
GENERIC MAP (
	fractional_pll_index => 0)
-- pragma translate_on
PORT MAP (
	cntnen => \u0|pll_0|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_CNTNEN\,
	mhi => \u0|pll_0|altera_pll_i|general[0].gpll~PLL_RECONFIG_MHI_bus\,
	shift => \u0|pll_0|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFT\,
	shiftenm => \u0|pll_0|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFTENM\,
	up => \u0|pll_0|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_UP\,
	shiften => \u0|pll_0|altera_pll_i|general[0].gpll~PLL_RECONFIG_SHIFTEN_bus\);

-- Location: PLLOUTPUTCOUNTER_X0_Y19_N1
\u0|pll_0|altera_pll_i|general[1].gpll~PLL_OUTPUT_COUNTER\ : cyclonev_pll_output_counter
-- pragma translate_off
GENERIC MAP (
	c_cnt_coarse_dly => "0 ps",
	c_cnt_fine_dly => "0 ps",
	c_cnt_in_src => "ph_mux_clk",
	c_cnt_ph_mux_prst => 0,
	c_cnt_prst => 1,
	cnt_fpll_src => "fpll_0",
	dprio0_cnt_bypass_en => "false",
	dprio0_cnt_hi_div => 4,
	dprio0_cnt_lo_div => 3,
	dprio0_cnt_odd_div_even_duty_en => "true",
	duty_cycle => 50,
	output_clock_frequency => "141.428571 mhz",
	phase_shift => "0 ps",
	fractional_pll_index => 0,
	output_counter_index => 5)
-- pragma translate_on
PORT MAP (
	nen0 => \u0|pll_0|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_CNTNEN\,
	shift0 => \u0|pll_0|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFT\,
	shiften => \u0|pll_0|altera_pll_i|general[0].gpll~PLL_RECONFIGSHIFTEN5\,
	tclk0 => \u0|pll_0|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_TCLK\,
	up0 => \u0|pll_0|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_UP\,
	vco0ph => \u0|pll_0|altera_pll_i|general[1].gpll~PLL_OUTPUT_COUNTER_VCO0PH_bus\,
	divclk => \u0|pll_0|altera_pll_i|outclk_wire\(1));

-- Location: CLKCTRL_G5
\u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \u0|pll_0|altera_pll_i|outclk_wire\(1),
	outclk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\);

-- Location: LABCELL_X30_Y11_N30
\Add6~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~61_sumout\ = SUM(( SDRAM_ADDR(0) ) + ( VCC ) + ( !VCC ))
-- \Add6~62\ = CARRY(( SDRAM_ADDR(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_SDRAM_ADDR(0),
	cin => GND,
	sumout => \Add6~61_sumout\,
	cout => \Add6~62\);

-- Location: PLLOUTPUTCOUNTER_X0_Y20_N1
\u0|pll_0|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER\ : cyclonev_pll_output_counter
-- pragma translate_off
GENERIC MAP (
	c_cnt_coarse_dly => "0 ps",
	c_cnt_fine_dly => "0 ps",
	c_cnt_in_src => "ph_mux_clk",
	c_cnt_ph_mux_prst => 0,
	c_cnt_prst => 1,
	cnt_fpll_src => "fpll_0",
	dprio0_cnt_bypass_en => "false",
	dprio0_cnt_hi_div => 10,
	dprio0_cnt_lo_div => 10,
	dprio0_cnt_odd_div_even_duty_en => "false",
	duty_cycle => 50,
	output_clock_frequency => "49.5 mhz",
	phase_shift => "0 ps",
	fractional_pll_index => 0,
	output_counter_index => 6)
-- pragma translate_on
PORT MAP (
	nen0 => \u0|pll_0|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_CNTNEN\,
	shift0 => \u0|pll_0|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFT\,
	shiften => \u0|pll_0|altera_pll_i|general[0].gpll~PLL_RECONFIGSHIFTEN6\,
	tclk0 => \u0|pll_0|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_TCLK\,
	up0 => \u0|pll_0|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_UP\,
	vco0ph => \u0|pll_0|altera_pll_i|general[0].gpll~PLL_OUTPUT_COUNTER_VCO0PH_bus\,
	divclk => \u0|pll_0|altera_pll_i|outclk_wire\(0));

-- Location: CLKCTRL_G4
\u0|pll_0|altera_pll_i|outclk_wire[0]~CLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \u0|pll_0|altera_pll_i|outclk_wire\(0),
	outclk => \u0|pll_0|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\);

-- Location: LABCELL_X27_Y13_N0
\u1|Add1~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Add1~41_sumout\ = SUM(( \u1|Ypos\(0) ) + ( VCC ) + ( !VCC ))
-- \u1|Add1~42\ = CARRY(( \u1|Ypos\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u1|ALT_INV_Ypos\(0),
	cin => GND,
	sumout => \u1|Add1~41_sumout\,
	cout => \u1|Add1~42\);

-- Location: LABCELL_X27_Y13_N3
\u1|Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Add1~33_sumout\ = SUM(( \u1|Ypos\(1) ) + ( GND ) + ( \u1|Add1~42\ ))
-- \u1|Add1~34\ = CARRY(( \u1|Ypos\(1) ) + ( GND ) + ( \u1|Add1~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u1|ALT_INV_Ypos\(1),
	cin => \u1|Add1~42\,
	sumout => \u1|Add1~33_sumout\,
	cout => \u1|Add1~34\);

-- Location: LABCELL_X27_Y13_N6
\u1|Add1~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Add1~37_sumout\ = SUM(( \u1|Ypos\(2) ) + ( GND ) + ( \u1|Add1~34\ ))
-- \u1|Add1~38\ = CARRY(( \u1|Ypos\(2) ) + ( GND ) + ( \u1|Add1~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u1|ALT_INV_Ypos\(2),
	cin => \u1|Add1~34\,
	sumout => \u1|Add1~37_sumout\,
	cout => \u1|Add1~38\);

-- Location: LABCELL_X29_Y65_N0
\u1|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Add0~29_sumout\ = SUM(( \u1|Xpos\(0) ) + ( VCC ) + ( !VCC ))
-- \u1|Add0~30\ = CARRY(( \u1|Xpos\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u1|ALT_INV_Xpos\(0),
	cin => GND,
	sumout => \u1|Add0~29_sumout\,
	cout => \u1|Add0~30\);

-- Location: LABCELL_X29_Y65_N3
\u1|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Add0~25_sumout\ = SUM(( \u1|Xpos\(1) ) + ( GND ) + ( \u1|Add0~30\ ))
-- \u1|Add0~26\ = CARRY(( \u1|Xpos\(1) ) + ( GND ) + ( \u1|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u1|ALT_INV_Xpos\(1),
	cin => \u1|Add0~30\,
	sumout => \u1|Add0~25_sumout\,
	cout => \u1|Add0~26\);

-- Location: FF_X29_Y65_N5
\u1|Xpos[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \u1|Add0~25_sumout\,
	sclr => \u1|LessThan0~3_combout\,
	ena => \u1|Xpos[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|Xpos\(1));

-- Location: LABCELL_X29_Y65_N6
\u1|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Add0~21_sumout\ = SUM(( \u1|Xpos\(2) ) + ( GND ) + ( \u1|Add0~26\ ))
-- \u1|Add0~22\ = CARRY(( \u1|Xpos\(2) ) + ( GND ) + ( \u1|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u1|ALT_INV_Xpos\(2),
	cin => \u1|Add0~26\,
	sumout => \u1|Add0~21_sumout\,
	cout => \u1|Add0~22\);

-- Location: FF_X29_Y65_N8
\u1|Xpos[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \u1|Add0~21_sumout\,
	sclr => \u1|LessThan0~3_combout\,
	ena => \u1|Xpos[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|Xpos\(2));

-- Location: LABCELL_X29_Y65_N9
\u1|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Add0~17_sumout\ = SUM(( \u1|Xpos\(3) ) + ( GND ) + ( \u1|Add0~22\ ))
-- \u1|Add0~18\ = CARRY(( \u1|Xpos\(3) ) + ( GND ) + ( \u1|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u1|ALT_INV_Xpos\(3),
	cin => \u1|Add0~22\,
	sumout => \u1|Add0~17_sumout\,
	cout => \u1|Add0~18\);

-- Location: FF_X29_Y65_N11
\u1|Xpos[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \u1|Add0~17_sumout\,
	sclr => \u1|LessThan0~3_combout\,
	ena => \u1|Xpos[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|Xpos\(3));

-- Location: LABCELL_X29_Y65_N12
\u1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Add0~13_sumout\ = SUM(( \u1|Xpos\(4) ) + ( GND ) + ( \u1|Add0~18\ ))
-- \u1|Add0~14\ = CARRY(( \u1|Xpos\(4) ) + ( GND ) + ( \u1|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u1|ALT_INV_Xpos\(4),
	cin => \u1|Add0~18\,
	sumout => \u1|Add0~13_sumout\,
	cout => \u1|Add0~14\);

-- Location: FF_X29_Y65_N13
\u1|Xpos[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \u1|Add0~13_sumout\,
	sclr => \u1|LessThan0~3_combout\,
	ena => \u1|Xpos[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|Xpos\(4));

-- Location: LABCELL_X29_Y65_N15
\u1|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Add0~41_sumout\ = SUM(( \u1|Xpos\(5) ) + ( GND ) + ( \u1|Add0~14\ ))
-- \u1|Add0~42\ = CARRY(( \u1|Xpos\(5) ) + ( GND ) + ( \u1|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u1|ALT_INV_Xpos\(5),
	cin => \u1|Add0~14\,
	sumout => \u1|Add0~41_sumout\,
	cout => \u1|Add0~42\);

-- Location: FF_X29_Y65_N16
\u1|Xpos[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \u1|Add0~41_sumout\,
	sclr => \u1|LessThan0~3_combout\,
	ena => \u1|Xpos[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|Xpos\(5));

-- Location: LABCELL_X29_Y65_N18
\u1|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Add0~37_sumout\ = SUM(( \u1|Xpos\(6) ) + ( GND ) + ( \u1|Add0~42\ ))
-- \u1|Add0~38\ = CARRY(( \u1|Xpos\(6) ) + ( GND ) + ( \u1|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u1|ALT_INV_Xpos\(6),
	cin => \u1|Add0~42\,
	sumout => \u1|Add0~37_sumout\,
	cout => \u1|Add0~38\);

-- Location: FF_X29_Y65_N20
\u1|Xpos[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \u1|Add0~37_sumout\,
	sclr => \u1|LessThan0~3_combout\,
	ena => \u1|Xpos[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|Xpos\(6));

-- Location: LABCELL_X29_Y65_N21
\u1|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Add0~33_sumout\ = SUM(( \u1|Xpos\(7) ) + ( GND ) + ( \u1|Add0~38\ ))
-- \u1|Add0~34\ = CARRY(( \u1|Xpos\(7) ) + ( GND ) + ( \u1|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u1|ALT_INV_Xpos\(7),
	cin => \u1|Add0~38\,
	sumout => \u1|Add0~33_sumout\,
	cout => \u1|Add0~34\);

-- Location: FF_X29_Y65_N22
\u1|Xpos[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \u1|Add0~33_sumout\,
	sclr => \u1|LessThan0~3_combout\,
	ena => \u1|Xpos[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|Xpos\(7));

-- Location: LABCELL_X29_Y65_N24
\u1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Add0~9_sumout\ = SUM(( \u1|Xpos\(8) ) + ( GND ) + ( \u1|Add0~34\ ))
-- \u1|Add0~10\ = CARRY(( \u1|Xpos\(8) ) + ( GND ) + ( \u1|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u1|ALT_INV_Xpos\(8),
	cin => \u1|Add0~34\,
	sumout => \u1|Add0~9_sumout\,
	cout => \u1|Add0~10\);

-- Location: FF_X29_Y65_N26
\u1|Xpos[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \u1|Add0~9_sumout\,
	sclr => \u1|LessThan0~3_combout\,
	ena => \u1|Xpos[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|Xpos\(8));

-- Location: LABCELL_X29_Y65_N27
\u1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Add0~5_sumout\ = SUM(( \u1|Xpos\(9) ) + ( GND ) + ( \u1|Add0~10\ ))
-- \u1|Add0~6\ = CARRY(( \u1|Xpos\(9) ) + ( GND ) + ( \u1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u1|ALT_INV_Xpos\(9),
	cin => \u1|Add0~10\,
	sumout => \u1|Add0~5_sumout\,
	cout => \u1|Add0~6\);

-- Location: FF_X29_Y65_N28
\u1|Xpos[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \u1|Add0~5_sumout\,
	sclr => \u1|LessThan0~3_combout\,
	ena => \u1|Xpos[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|Xpos\(9));

-- Location: LABCELL_X29_Y65_N30
\u1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Add0~1_sumout\ = SUM(( \u1|Xpos\(10) ) + ( GND ) + ( \u1|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u1|ALT_INV_Xpos\(10),
	cin => \u1|Add0~6\,
	sumout => \u1|Add0~1_sumout\);

-- Location: FF_X29_Y65_N31
\u1|Xpos[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \u1|Add0~1_sumout\,
	sclr => \u1|LessThan0~3_combout\,
	ena => \u1|Xpos[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|Xpos\(10));

-- Location: MLABCELL_X28_Y65_N3
\u1|LessThan0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|LessThan0~2_combout\ = ( !\u1|Xpos\(9) & ( !\u1|Xpos\(8) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \u1|ALT_INV_Xpos\(9),
	dataf => \u1|ALT_INV_Xpos\(8),
	combout => \u1|LessThan0~2_combout\);

-- Location: LABCELL_X29_Y65_N48
\u1|Xpos[6]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Xpos[6]~0_combout\ = ( \u1|LessThan0~2_combout\ & ( (!\u1|Xpos\(10)) # ((!\u1|Xpos\(7) & (!\u1|Xpos\(6) & !\u1|Xpos\(5)))) ) ) # ( !\u1|LessThan0~2_combout\ & ( !\u1|Xpos\(10) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101011101010101010101110101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_Xpos\(10),
	datab => \u1|ALT_INV_Xpos\(7),
	datac => \u1|ALT_INV_Xpos\(6),
	datad => \u1|ALT_INV_Xpos\(5),
	dataf => \u1|ALT_INV_LessThan0~2_combout\,
	combout => \u1|Xpos[6]~0_combout\);

-- Location: FF_X29_Y65_N2
\u1|Xpos[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \u1|Add0~29_sumout\,
	sclr => \u1|LessThan0~3_combout\,
	ena => \u1|Xpos[6]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|Xpos\(0));

-- Location: LABCELL_X29_Y65_N42
\u1|Equal3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Equal3~0_combout\ = ( \u1|Xpos\(3) & ( (\u1|Xpos\(0) & (\u1|Xpos\(2) & (\u1|Xpos\(4) & \u1|Xpos\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_Xpos\(0),
	datab => \u1|ALT_INV_Xpos\(2),
	datac => \u1|ALT_INV_Xpos\(4),
	datad => \u1|ALT_INV_Xpos\(1),
	dataf => \u1|ALT_INV_Xpos\(3),
	combout => \u1|Equal3~0_combout\);

-- Location: LABCELL_X29_Y65_N45
\u1|LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|LessThan0~0_combout\ = ( !\u1|Xpos\(6) & ( (!\u1|Xpos\(7) & !\u1|Xpos\(5)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u1|ALT_INV_Xpos\(7),
	datad => \u1|ALT_INV_Xpos\(5),
	dataf => \u1|ALT_INV_Xpos\(6),
	combout => \u1|LessThan0~0_combout\);

-- Location: LABCELL_X29_Y65_N39
\u1|LessThan0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|LessThan0~3_combout\ = ( \u1|Xpos\(10) & ( ((!\u1|LessThan0~2_combout\) # (!\u1|LessThan0~0_combout\)) # (\u1|Equal3~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111100111111111111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u1|ALT_INV_Equal3~0_combout\,
	datac => \u1|ALT_INV_LessThan0~2_combout\,
	datad => \u1|ALT_INV_LessThan0~0_combout\,
	dataf => \u1|ALT_INV_Xpos\(10),
	combout => \u1|LessThan0~3_combout\);

-- Location: LABCELL_X29_Y65_N54
\u1|Equal3~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Equal3~2_combout\ = ( \u1|Equal3~0_combout\ & ( (!\u1|Xpos\(6) & !\u1|Xpos\(5)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u1|ALT_INV_Xpos\(6),
	datad => \u1|ALT_INV_Xpos\(5),
	dataf => \u1|ALT_INV_Equal3~0_combout\,
	combout => \u1|Equal3~2_combout\);

-- Location: LABCELL_X29_Y65_N57
\u1|Equal2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Equal2~0_combout\ = ( !\u1|Xpos\(8) & ( (\u1|Xpos\(10) & (!\u1|Xpos\(7) & !\u1|Xpos\(9))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000010000000100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_Xpos\(10),
	datab => \u1|ALT_INV_Xpos\(7),
	datac => \u1|ALT_INV_Xpos\(9),
	dataf => \u1|ALT_INV_Xpos\(8),
	combout => \u1|Equal2~0_combout\);

-- Location: LABCELL_X27_Y13_N51
\u1|Ypos[4]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Ypos[4]~0_combout\ = ( \u1|Equal2~0_combout\ & ( ((\u1|LessThan0~3_combout\ & \u1|Equal3~2_combout\)) # (\u1|Equal0~1_combout\) ) ) # ( !\u1|Equal2~0_combout\ & ( \u1|Equal0~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000101111111110000010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_LessThan0~3_combout\,
	datac => \u1|ALT_INV_Equal3~2_combout\,
	datad => \u1|ALT_INV_Equal0~1_combout\,
	dataf => \u1|ALT_INV_Equal2~0_combout\,
	combout => \u1|Ypos[4]~0_combout\);

-- Location: FF_X27_Y13_N8
\u1|Ypos[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \u1|Add1~37_sumout\,
	sclr => \u1|Equal0~1_combout\,
	ena => \u1|Ypos[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|Ypos\(2));

-- Location: LABCELL_X27_Y13_N9
\u1|Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Add1~21_sumout\ = SUM(( \u1|Ypos\(3) ) + ( GND ) + ( \u1|Add1~38\ ))
-- \u1|Add1~22\ = CARRY(( \u1|Ypos\(3) ) + ( GND ) + ( \u1|Add1~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u1|ALT_INV_Ypos\(3),
	cin => \u1|Add1~38\,
	sumout => \u1|Add1~21_sumout\,
	cout => \u1|Add1~22\);

-- Location: FF_X27_Y13_N11
\u1|Ypos[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \u1|Add1~21_sumout\,
	sclr => \u1|Equal0~1_combout\,
	ena => \u1|Ypos[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|Ypos\(3));

-- Location: LABCELL_X27_Y13_N12
\u1|Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Add1~17_sumout\ = SUM(( \u1|Ypos\(4) ) + ( GND ) + ( \u1|Add1~22\ ))
-- \u1|Add1~18\ = CARRY(( \u1|Ypos\(4) ) + ( GND ) + ( \u1|Add1~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u1|ALT_INV_Ypos\(4),
	cin => \u1|Add1~22\,
	sumout => \u1|Add1~17_sumout\,
	cout => \u1|Add1~18\);

-- Location: FF_X27_Y13_N14
\u1|Ypos[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \u1|Add1~17_sumout\,
	sclr => \u1|Equal0~1_combout\,
	ena => \u1|Ypos[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|Ypos\(4));

-- Location: LABCELL_X27_Y13_N15
\u1|Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Add1~13_sumout\ = SUM(( \u1|Ypos\(5) ) + ( GND ) + ( \u1|Add1~18\ ))
-- \u1|Add1~14\ = CARRY(( \u1|Ypos\(5) ) + ( GND ) + ( \u1|Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u1|ALT_INV_Ypos\(5),
	cin => \u1|Add1~18\,
	sumout => \u1|Add1~13_sumout\,
	cout => \u1|Add1~14\);

-- Location: FF_X27_Y13_N16
\u1|Ypos[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \u1|Add1~13_sumout\,
	sclr => \u1|Equal0~1_combout\,
	ena => \u1|Ypos[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|Ypos\(5));

-- Location: LABCELL_X27_Y13_N18
\u1|Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Add1~9_sumout\ = SUM(( \u1|Ypos\(6) ) + ( GND ) + ( \u1|Add1~14\ ))
-- \u1|Add1~10\ = CARRY(( \u1|Ypos\(6) ) + ( GND ) + ( \u1|Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u1|ALT_INV_Ypos\(6),
	cin => \u1|Add1~14\,
	sumout => \u1|Add1~9_sumout\,
	cout => \u1|Add1~10\);

-- Location: FF_X27_Y13_N20
\u1|Ypos[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \u1|Add1~9_sumout\,
	sclr => \u1|Equal0~1_combout\,
	ena => \u1|Ypos[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|Ypos\(6));

-- Location: LABCELL_X27_Y13_N21
\u1|Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Add1~25_sumout\ = SUM(( \u1|Ypos\(7) ) + ( GND ) + ( \u1|Add1~10\ ))
-- \u1|Add1~26\ = CARRY(( \u1|Ypos\(7) ) + ( GND ) + ( \u1|Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u1|ALT_INV_Ypos\(7),
	cin => \u1|Add1~10\,
	sumout => \u1|Add1~25_sumout\,
	cout => \u1|Add1~26\);

-- Location: FF_X27_Y13_N23
\u1|Ypos[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \u1|Add1~25_sumout\,
	sclr => \u1|Equal0~1_combout\,
	ena => \u1|Ypos[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|Ypos\(7));

-- Location: LABCELL_X27_Y13_N24
\u1|Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Add1~29_sumout\ = SUM(( \u1|Ypos\(8) ) + ( GND ) + ( \u1|Add1~26\ ))
-- \u1|Add1~30\ = CARRY(( \u1|Ypos\(8) ) + ( GND ) + ( \u1|Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u1|ALT_INV_Ypos\(8),
	cin => \u1|Add1~26\,
	sumout => \u1|Add1~29_sumout\,
	cout => \u1|Add1~30\);

-- Location: FF_X27_Y13_N26
\u1|Ypos[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \u1|Add1~29_sumout\,
	sclr => \u1|Equal0~1_combout\,
	ena => \u1|Ypos[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|Ypos\(8));

-- Location: LABCELL_X27_Y13_N27
\u1|Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Add1~5_sumout\ = SUM(( \u1|Ypos\(9) ) + ( GND ) + ( \u1|Add1~30\ ))
-- \u1|Add1~6\ = CARRY(( \u1|Ypos\(9) ) + ( GND ) + ( \u1|Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u1|ALT_INV_Ypos\(9),
	cin => \u1|Add1~30\,
	sumout => \u1|Add1~5_sumout\,
	cout => \u1|Add1~6\);

-- Location: FF_X27_Y13_N29
\u1|Ypos[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \u1|Add1~5_sumout\,
	sclr => \u1|Equal0~1_combout\,
	ena => \u1|Ypos[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|Ypos\(9));

-- Location: LABCELL_X27_Y13_N30
\u1|Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Add1~1_sumout\ = SUM(( \u1|Ypos\(10) ) + ( GND ) + ( \u1|Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u1|ALT_INV_Ypos\(10),
	cin => \u1|Add1~6\,
	sumout => \u1|Add1~1_sumout\);

-- Location: FF_X27_Y13_N32
\u1|Ypos[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \u1|Add1~1_sumout\,
	sclr => \u1|Equal0~1_combout\,
	ena => \u1|Ypos[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|Ypos\(10));

-- Location: LABCELL_X27_Y13_N36
\u1|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Equal0~0_combout\ = ( \u1|Ypos\(9) & ( !\u1|Ypos\(8) & ( (!\u1|Ypos\(7) & (!\u1|Ypos\(10) & (\u1|Ypos\(6) & \u1|Ypos\(4)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_Ypos\(7),
	datab => \u1|ALT_INV_Ypos\(10),
	datac => \u1|ALT_INV_Ypos\(6),
	datad => \u1|ALT_INV_Ypos\(4),
	datae => \u1|ALT_INV_Ypos\(9),
	dataf => \u1|ALT_INV_Ypos\(8),
	combout => \u1|Equal0~0_combout\);

-- Location: LABCELL_X27_Y13_N42
\u1|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Equal0~1_combout\ = ( \u1|Ypos\(5) & ( !\u1|Ypos\(3) & ( (!\u1|Ypos\(1) & (!\u1|Ypos\(2) & (\u1|Equal0~0_combout\ & !\u1|Ypos\(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_Ypos\(1),
	datab => \u1|ALT_INV_Ypos\(2),
	datac => \u1|ALT_INV_Equal0~0_combout\,
	datad => \u1|ALT_INV_Ypos\(0),
	datae => \u1|ALT_INV_Ypos\(5),
	dataf => \u1|ALT_INV_Ypos\(3),
	combout => \u1|Equal0~1_combout\);

-- Location: FF_X27_Y13_N1
\u1|Ypos[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \u1|Add1~41_sumout\,
	sclr => \u1|Equal0~1_combout\,
	ena => \u1|Ypos[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|Ypos\(0));

-- Location: FF_X27_Y13_N4
\u1|Ypos[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \u1|Add1~33_sumout\,
	sclr => \u1|Equal0~1_combout\,
	ena => \u1|Ypos[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|Ypos\(1));

-- Location: FF_X27_Y13_N10
\u1|Ypos[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \u1|Add1~21_sumout\,
	sclr => \u1|Equal0~1_combout\,
	ena => \u1|Ypos[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|Ypos[3]~DUPLICATE_q\);

-- Location: LABCELL_X27_Y13_N45
\u1|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Equal1~0_combout\ = ( \u1|Ypos[3]~DUPLICATE_q\ & ( !\u1|Ypos\(5) & ( (!\u1|Ypos\(1) & (!\u1|Ypos\(2) & (!\u1|Ypos\(0) & \u1|Equal0~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_Ypos\(1),
	datab => \u1|ALT_INV_Ypos\(2),
	datac => \u1|ALT_INV_Ypos\(0),
	datad => \u1|ALT_INV_Equal0~0_combout\,
	datae => \u1|ALT_INV_Ypos[3]~DUPLICATE_q\,
	dataf => \u1|ALT_INV_Ypos\(5),
	combout => \u1|Equal1~0_combout\);

-- Location: FF_X27_Y13_N46
\u1|VGA_FRAMEEND\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \u1|Equal1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|VGA_FRAMEEND~q\);

-- Location: FF_X25_Y13_N11
\u1|VGA_FRAMESTART\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \u1|Equal0~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|VGA_FRAMESTART~q\);

-- Location: LABCELL_X37_Y13_N30
\Add11~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add11~1_sumout\ = SUM(( RAMADDR2(0) ) + ( VCC ) + ( !VCC ))
-- \Add11~2\ = CARRY(( RAMADDR2(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_RAMADDR2(0),
	cin => GND,
	sumout => \Add11~1_sumout\,
	cout => \Add11~2\);

-- Location: LABCELL_X27_Y12_N0
\Add10~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add10~1_sumout\ = SUM(( RAMADDR1(0) ) + ( VCC ) + ( !VCC ))
-- \Add10~2\ = CARRY(( RAMADDR1(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_RAMADDR1(0),
	cin => GND,
	sumout => \Add10~1_sumout\,
	cout => \Add10~2\);

-- Location: MLABCELL_X28_Y10_N24
\u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain[1]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain[1]~feeder_combout\);

-- Location: FF_X28_Y10_N26
\u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain\(1));

-- Location: MLABCELL_X28_Y10_N30
\u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain[0]~feeder_combout\ = \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain\(1)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u0|rst_controller|alt_rst_sync_uq1|ALT_INV_altera_reset_synchronizer_int_chain\(1),
	combout => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain[0]~feeder_combout\);

-- Location: FF_X28_Y10_N32
\u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain\(0));

-- Location: MLABCELL_X28_Y10_N3
\u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~feeder_combout\ = \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain\(0)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u0|rst_controller|alt_rst_sync_uq1|ALT_INV_altera_reset_synchronizer_int_chain\(0),
	combout => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~feeder_combout\);

-- Location: FF_X28_Y10_N5
\u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\);

-- Location: FF_X25_Y11_N8
\u0|new_sdram_controller_0|i_state.111~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \u0|new_sdram_controller_0|Selector12~0_combout\,
	clrn => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|i_state.111~DUPLICATE_q\);

-- Location: MLABCELL_X25_Y11_N15
\u0|new_sdram_controller_0|Selector14~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|Selector14~0_combout\ = ( !\u0|new_sdram_controller_0|i_state.111~DUPLICATE_q\ & ( (!\u0|new_sdram_controller_0|i_count\(2)) # ((!\u0|new_sdram_controller_0|i_state.101~q\ & \u0|new_sdram_controller_0|i_state.000~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001011110010111100101111001000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|new_sdram_controller_0|ALT_INV_i_state.101~q\,
	datab => \u0|new_sdram_controller_0|ALT_INV_i_state.000~q\,
	datac => \u0|new_sdram_controller_0|ALT_INV_i_count\(2),
	dataf => \u0|new_sdram_controller_0|ALT_INV_i_state.111~DUPLICATE_q\,
	combout => \u0|new_sdram_controller_0|Selector14~0_combout\);

-- Location: MLABCELL_X25_Y11_N42
\u0|new_sdram_controller_0|Selector14~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|Selector14~1_combout\ = ( \u0|new_sdram_controller_0|Selector10~0_combout\ & ( (!\u0|new_sdram_controller_0|Selector14~0_combout\) # (!\u0|new_sdram_controller_0|i_count\(2) $ (((\u0|new_sdram_controller_0|i_count\(0)) # 
-- (\u0|new_sdram_controller_0|i_count\(1))))) ) ) # ( !\u0|new_sdram_controller_0|Selector10~0_combout\ & ( !\u0|new_sdram_controller_0|Selector14~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110011101100110111111110110011011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|new_sdram_controller_0|ALT_INV_i_count\(1),
	datab => \u0|new_sdram_controller_0|ALT_INV_Selector14~0_combout\,
	datac => \u0|new_sdram_controller_0|ALT_INV_i_count\(0),
	datad => \u0|new_sdram_controller_0|ALT_INV_i_count\(2),
	dataf => \u0|new_sdram_controller_0|ALT_INV_Selector10~0_combout\,
	combout => \u0|new_sdram_controller_0|Selector14~1_combout\);

-- Location: FF_X25_Y11_N44
\u0|new_sdram_controller_0|i_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \u0|new_sdram_controller_0|Selector14~1_combout\,
	clrn => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|i_count\(2));

-- Location: FF_X25_Y11_N11
\u0|new_sdram_controller_0|i_state.011\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \u0|new_sdram_controller_0|Selector10~1_combout\,
	clrn => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|i_state.011~q\);

-- Location: MLABCELL_X25_Y11_N24
\u0|new_sdram_controller_0|Add2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|Add2~0_combout\ = ( !\u0|new_sdram_controller_0|i_count\(2) & ( (!\u0|new_sdram_controller_0|i_count\(1) & !\u0|new_sdram_controller_0|i_count\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u0|new_sdram_controller_0|ALT_INV_i_count\(1),
	datad => \u0|new_sdram_controller_0|ALT_INV_i_count\(0),
	dataf => \u0|new_sdram_controller_0|ALT_INV_i_count\(2),
	combout => \u0|new_sdram_controller_0|Add2~0_combout\);

-- Location: MLABCELL_X25_Y11_N27
\u0|new_sdram_controller_0|i_count[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|i_count[3]~2_combout\ = ( \u0|new_sdram_controller_0|Add2~0_combout\ & ( (!\u0|new_sdram_controller_0|i_count[0]~1_combout\ & (((\u0|new_sdram_controller_0|i_count\(3))))) # (\u0|new_sdram_controller_0|i_count[0]~1_combout\ & 
-- ((!\u0|new_sdram_controller_0|i_state.011~q\ & (\u0|new_sdram_controller_0|i_state.010~q\)) # (\u0|new_sdram_controller_0|i_state.011~q\ & ((!\u0|new_sdram_controller_0|i_count\(3)))))) ) ) # ( !\u0|new_sdram_controller_0|Add2~0_combout\ & ( 
-- (!\u0|new_sdram_controller_0|i_count[0]~1_combout\ & (((\u0|new_sdram_controller_0|i_count\(3))))) # (\u0|new_sdram_controller_0|i_count[0]~1_combout\ & ((!\u0|new_sdram_controller_0|i_state.011~q\ & (\u0|new_sdram_controller_0|i_state.010~q\)) # 
-- (\u0|new_sdram_controller_0|i_state.011~q\ & ((\u0|new_sdram_controller_0|i_count\(3)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010111111000001001011111100010101101011100001010110101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|new_sdram_controller_0|ALT_INV_i_count[0]~1_combout\,
	datab => \u0|new_sdram_controller_0|ALT_INV_i_state.011~q\,
	datac => \u0|new_sdram_controller_0|ALT_INV_i_state.010~q\,
	datad => \u0|new_sdram_controller_0|ALT_INV_i_count\(3),
	dataf => \u0|new_sdram_controller_0|ALT_INV_Add2~0_combout\,
	combout => \u0|new_sdram_controller_0|i_count[3]~2_combout\);

-- Location: FF_X25_Y11_N28
\u0|new_sdram_controller_0|i_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \u0|new_sdram_controller_0|i_count[3]~2_combout\,
	clrn => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|i_count\(3));

-- Location: MLABCELL_X25_Y11_N45
\u0|new_sdram_controller_0|i_count[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|i_count[0]~0_combout\ = ( !\u0|new_sdram_controller_0|i_count\(3) & ( (!\u0|new_sdram_controller_0|i_count\(1) & (!\u0|new_sdram_controller_0|i_count\(2) & \u0|new_sdram_controller_0|i_state.011~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010100000000000001010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|new_sdram_controller_0|ALT_INV_i_count\(1),
	datac => \u0|new_sdram_controller_0|ALT_INV_i_count\(2),
	datad => \u0|new_sdram_controller_0|ALT_INV_i_state.011~DUPLICATE_q\,
	dataf => \u0|new_sdram_controller_0|ALT_INV_i_count\(3),
	combout => \u0|new_sdram_controller_0|i_count[0]~0_combout\);

-- Location: MLABCELL_X25_Y11_N33
\u0|new_sdram_controller_0|i_count[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|i_count[0]~1_combout\ = (!\u0|new_sdram_controller_0|i_state.101~q\ & (\u0|new_sdram_controller_0|i_state.000~q\ & !\u0|new_sdram_controller_0|i_count[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000001000000010000000100000001000000010000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|new_sdram_controller_0|ALT_INV_i_state.101~q\,
	datab => \u0|new_sdram_controller_0|ALT_INV_i_state.000~q\,
	datac => \u0|new_sdram_controller_0|ALT_INV_i_count[0]~0_combout\,
	combout => \u0|new_sdram_controller_0|i_count[0]~1_combout\);

-- Location: MLABCELL_X25_Y11_N54
\u0|new_sdram_controller_0|i_count[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|i_count[0]~3_combout\ = ( \u0|new_sdram_controller_0|i_count[0]~1_combout\ & ( (!\u0|new_sdram_controller_0|i_state.011~DUPLICATE_q\ & (\u0|new_sdram_controller_0|i_state.010~q\)) # 
-- (\u0|new_sdram_controller_0|i_state.011~DUPLICATE_q\ & ((!\u0|new_sdram_controller_0|i_count\(0)))) ) ) # ( !\u0|new_sdram_controller_0|i_count[0]~1_combout\ & ( \u0|new_sdram_controller_0|i_count\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100111111001100000011111100110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u0|new_sdram_controller_0|ALT_INV_i_state.010~q\,
	datac => \u0|new_sdram_controller_0|ALT_INV_i_state.011~DUPLICATE_q\,
	datad => \u0|new_sdram_controller_0|ALT_INV_i_count\(0),
	dataf => \u0|new_sdram_controller_0|ALT_INV_i_count[0]~1_combout\,
	combout => \u0|new_sdram_controller_0|i_count[0]~3_combout\);

-- Location: FF_X25_Y11_N56
\u0|new_sdram_controller_0|i_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \u0|new_sdram_controller_0|i_count[0]~3_combout\,
	clrn => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|i_count\(0));

-- Location: MLABCELL_X25_Y11_N48
\u0|new_sdram_controller_0|Selector15~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|Selector15~0_combout\ = ( \u0|new_sdram_controller_0|i_count\(1) & ( \u0|new_sdram_controller_0|i_state.101~q\ ) ) # ( !\u0|new_sdram_controller_0|i_count\(1) & ( \u0|new_sdram_controller_0|i_state.101~q\ & ( 
-- ((!\u0|new_sdram_controller_0|i_count\(0) & \u0|new_sdram_controller_0|Selector10~0_combout\)) # (\u0|new_sdram_controller_0|i_state.001~q\) ) ) ) # ( \u0|new_sdram_controller_0|i_count\(1) & ( !\u0|new_sdram_controller_0|i_state.101~q\ & ( 
-- (!\u0|new_sdram_controller_0|i_state.000~q\) # (((\u0|new_sdram_controller_0|i_count\(0) & \u0|new_sdram_controller_0|Selector10~0_combout\)) # (\u0|new_sdram_controller_0|i_state.001~q\)) ) ) ) # ( !\u0|new_sdram_controller_0|i_count\(1) & ( 
-- !\u0|new_sdram_controller_0|i_state.101~q\ & ( ((!\u0|new_sdram_controller_0|i_count\(0) & \u0|new_sdram_controller_0|Selector10~0_combout\)) # (\u0|new_sdram_controller_0|i_state.001~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111110101111110011111101111100001111101011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|new_sdram_controller_0|ALT_INV_i_count\(0),
	datab => \u0|new_sdram_controller_0|ALT_INV_i_state.000~q\,
	datac => \u0|new_sdram_controller_0|ALT_INV_i_state.001~q\,
	datad => \u0|new_sdram_controller_0|ALT_INV_Selector10~0_combout\,
	datae => \u0|new_sdram_controller_0|ALT_INV_i_count\(1),
	dataf => \u0|new_sdram_controller_0|ALT_INV_i_state.101~q\,
	combout => \u0|new_sdram_controller_0|Selector15~0_combout\);

-- Location: FF_X25_Y11_N50
\u0|new_sdram_controller_0|i_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \u0|new_sdram_controller_0|Selector15~0_combout\,
	clrn => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|i_count\(1));

-- Location: MLABCELL_X25_Y11_N3
\u0|new_sdram_controller_0|Selector10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|Selector10~0_combout\ = ( \u0|new_sdram_controller_0|i_count\(3) & ( \u0|new_sdram_controller_0|i_state.011~DUPLICATE_q\ ) ) # ( !\u0|new_sdram_controller_0|i_count\(3) & ( (\u0|new_sdram_controller_0|i_state.011~DUPLICATE_q\ & 
-- ((\u0|new_sdram_controller_0|i_count\(2)) # (\u0|new_sdram_controller_0|i_count\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001011111000000000101111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|new_sdram_controller_0|ALT_INV_i_count\(1),
	datac => \u0|new_sdram_controller_0|ALT_INV_i_count\(2),
	datad => \u0|new_sdram_controller_0|ALT_INV_i_state.011~DUPLICATE_q\,
	dataf => \u0|new_sdram_controller_0|ALT_INV_i_count\(3),
	combout => \u0|new_sdram_controller_0|Selector10~0_combout\);

-- Location: MLABCELL_X25_Y11_N9
\u0|new_sdram_controller_0|Selector10~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|Selector10~1_combout\ = ( \u0|new_sdram_controller_0|Selector10~0_combout\ ) # ( !\u0|new_sdram_controller_0|Selector10~0_combout\ & ( ((\u0|new_sdram_controller_0|i_state.010~q\) # 
-- (\u0|new_sdram_controller_0|i_state.111~DUPLICATE_q\)) # (\u0|new_sdram_controller_0|i_state.001~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111101111111011111110111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|new_sdram_controller_0|ALT_INV_i_state.001~q\,
	datab => \u0|new_sdram_controller_0|ALT_INV_i_state.111~DUPLICATE_q\,
	datac => \u0|new_sdram_controller_0|ALT_INV_i_state.010~q\,
	dataf => \u0|new_sdram_controller_0|ALT_INV_Selector10~0_combout\,
	combout => \u0|new_sdram_controller_0|Selector10~1_combout\);

-- Location: FF_X25_Y11_N10
\u0|new_sdram_controller_0|i_state.011~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \u0|new_sdram_controller_0|Selector10~1_combout\,
	clrn => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|i_state.011~DUPLICATE_q\);

-- Location: MLABCELL_X25_Y11_N30
\u0|new_sdram_controller_0|WideOr6\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|WideOr6~combout\ = (!\u0|new_sdram_controller_0|i_state.101~q\ & (\u0|new_sdram_controller_0|i_state.000~q\ & !\u0|new_sdram_controller_0|i_state.011~DUPLICATE_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000000000001000100000000000100010000000000010001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|new_sdram_controller_0|ALT_INV_i_state.101~q\,
	datab => \u0|new_sdram_controller_0|ALT_INV_i_state.000~q\,
	datad => \u0|new_sdram_controller_0|ALT_INV_i_state.011~DUPLICATE_q\,
	combout => \u0|new_sdram_controller_0|WideOr6~combout\);

-- Location: MLABCELL_X25_Y11_N36
\u0|new_sdram_controller_0|i_next.000~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|i_next.000~0_combout\ = ( \u0|new_sdram_controller_0|WideOr6~combout\ ) # ( !\u0|new_sdram_controller_0|WideOr6~combout\ & ( \u0|new_sdram_controller_0|i_next.000~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u0|new_sdram_controller_0|ALT_INV_i_next.000~q\,
	dataf => \u0|new_sdram_controller_0|ALT_INV_WideOr6~combout\,
	combout => \u0|new_sdram_controller_0|i_next.000~0_combout\);

-- Location: FF_X25_Y11_N38
\u0|new_sdram_controller_0|i_next.000\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \u0|new_sdram_controller_0|i_next.000~0_combout\,
	clrn => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|i_next.000~q\);

-- Location: LABCELL_X24_Y13_N0
\u0|new_sdram_controller_0|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|Add0~13_sumout\ = SUM(( !\u0|new_sdram_controller_0|refresh_counter\(0) ) + ( VCC ) + ( !VCC ))
-- \u0|new_sdram_controller_0|Add0~14\ = CARRY(( !\u0|new_sdram_controller_0|refresh_counter\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u0|new_sdram_controller_0|ALT_INV_refresh_counter\(0),
	cin => GND,
	sumout => \u0|new_sdram_controller_0|Add0~13_sumout\,
	cout => \u0|new_sdram_controller_0|Add0~14\);

-- Location: MLABCELL_X25_Y13_N21
\u0|new_sdram_controller_0|refresh_counter[0]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|refresh_counter[0]~11_combout\ = !\u0|new_sdram_controller_0|Add0~13_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|new_sdram_controller_0|ALT_INV_Add0~13_sumout\,
	combout => \u0|new_sdram_controller_0|refresh_counter[0]~11_combout\);

-- Location: FF_X25_Y13_N23
\u0|new_sdram_controller_0|refresh_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \u0|new_sdram_controller_0|refresh_counter[0]~11_combout\,
	clrn => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|refresh_counter\(0));

-- Location: LABCELL_X24_Y13_N3
\u0|new_sdram_controller_0|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|Add0~9_sumout\ = SUM(( !\u0|new_sdram_controller_0|refresh_counter\(1) ) + ( VCC ) + ( \u0|new_sdram_controller_0|Add0~14\ ))
-- \u0|new_sdram_controller_0|Add0~10\ = CARRY(( !\u0|new_sdram_controller_0|refresh_counter\(1) ) + ( VCC ) + ( \u0|new_sdram_controller_0|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u0|new_sdram_controller_0|ALT_INV_refresh_counter\(1),
	cin => \u0|new_sdram_controller_0|Add0~14\,
	sumout => \u0|new_sdram_controller_0|Add0~9_sumout\,
	cout => \u0|new_sdram_controller_0|Add0~10\);

-- Location: MLABCELL_X25_Y13_N24
\u0|new_sdram_controller_0|refresh_counter[1]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|refresh_counter[1]~10_combout\ = ( !\u0|new_sdram_controller_0|Add0~9_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u0|new_sdram_controller_0|ALT_INV_Add0~9_sumout\,
	combout => \u0|new_sdram_controller_0|refresh_counter[1]~10_combout\);

-- Location: FF_X25_Y13_N26
\u0|new_sdram_controller_0|refresh_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \u0|new_sdram_controller_0|refresh_counter[1]~10_combout\,
	clrn => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|refresh_counter\(1));

-- Location: LABCELL_X24_Y13_N6
\u0|new_sdram_controller_0|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|Add0~5_sumout\ = SUM(( !\u0|new_sdram_controller_0|refresh_counter\(2) ) + ( VCC ) + ( \u0|new_sdram_controller_0|Add0~10\ ))
-- \u0|new_sdram_controller_0|Add0~6\ = CARRY(( !\u0|new_sdram_controller_0|refresh_counter\(2) ) + ( VCC ) + ( \u0|new_sdram_controller_0|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u0|new_sdram_controller_0|ALT_INV_refresh_counter\(2),
	cin => \u0|new_sdram_controller_0|Add0~10\,
	sumout => \u0|new_sdram_controller_0|Add0~5_sumout\,
	cout => \u0|new_sdram_controller_0|Add0~6\);

-- Location: MLABCELL_X25_Y13_N18
\u0|new_sdram_controller_0|refresh_counter[2]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|refresh_counter[2]~9_combout\ = !\u0|new_sdram_controller_0|Add0~5_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u0|new_sdram_controller_0|ALT_INV_Add0~5_sumout\,
	combout => \u0|new_sdram_controller_0|refresh_counter[2]~9_combout\);

-- Location: FF_X25_Y13_N20
\u0|new_sdram_controller_0|refresh_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \u0|new_sdram_controller_0|refresh_counter[2]~9_combout\,
	clrn => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|refresh_counter\(2));

-- Location: LABCELL_X24_Y13_N9
\u0|new_sdram_controller_0|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|Add0~53_sumout\ = SUM(( !\u0|new_sdram_controller_0|refresh_counter\(3) ) + ( VCC ) + ( \u0|new_sdram_controller_0|Add0~6\ ))
-- \u0|new_sdram_controller_0|Add0~54\ = CARRY(( !\u0|new_sdram_controller_0|refresh_counter\(3) ) + ( VCC ) + ( \u0|new_sdram_controller_0|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u0|new_sdram_controller_0|ALT_INV_refresh_counter\(3),
	cin => \u0|new_sdram_controller_0|Add0~6\,
	sumout => \u0|new_sdram_controller_0|Add0~53_sumout\,
	cout => \u0|new_sdram_controller_0|Add0~54\);

-- Location: MLABCELL_X25_Y13_N15
\u0|new_sdram_controller_0|refresh_counter[3]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|refresh_counter[3]~18_combout\ = ( !\u0|new_sdram_controller_0|Add0~53_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u0|new_sdram_controller_0|ALT_INV_Add0~53_sumout\,
	combout => \u0|new_sdram_controller_0|refresh_counter[3]~18_combout\);

-- Location: FF_X25_Y13_N17
\u0|new_sdram_controller_0|refresh_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \u0|new_sdram_controller_0|refresh_counter[3]~18_combout\,
	clrn => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|refresh_counter\(3));

-- Location: LABCELL_X24_Y13_N12
\u0|new_sdram_controller_0|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|Add0~49_sumout\ = SUM(( !\u0|new_sdram_controller_0|refresh_counter\(4) ) + ( VCC ) + ( \u0|new_sdram_controller_0|Add0~54\ ))
-- \u0|new_sdram_controller_0|Add0~50\ = CARRY(( !\u0|new_sdram_controller_0|refresh_counter\(4) ) + ( VCC ) + ( \u0|new_sdram_controller_0|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u0|new_sdram_controller_0|ALT_INV_refresh_counter\(4),
	cin => \u0|new_sdram_controller_0|Add0~54\,
	sumout => \u0|new_sdram_controller_0|Add0~49_sumout\,
	cout => \u0|new_sdram_controller_0|Add0~50\);

-- Location: MLABCELL_X25_Y13_N12
\u0|new_sdram_controller_0|refresh_counter~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|refresh_counter~7_combout\ = ( \u0|new_sdram_controller_0|Add0~49_sumout\ & ( \u0|new_sdram_controller_0|Equal0~2_combout\ ) ) # ( !\u0|new_sdram_controller_0|Add0~49_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u0|new_sdram_controller_0|ALT_INV_Equal0~2_combout\,
	dataf => \u0|new_sdram_controller_0|ALT_INV_Add0~49_sumout\,
	combout => \u0|new_sdram_controller_0|refresh_counter~7_combout\);

-- Location: FF_X25_Y13_N13
\u0|new_sdram_controller_0|refresh_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \u0|new_sdram_controller_0|refresh_counter~7_combout\,
	clrn => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|refresh_counter\(4));

-- Location: LABCELL_X24_Y13_N15
\u0|new_sdram_controller_0|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|Add0~45_sumout\ = SUM(( !\u0|new_sdram_controller_0|refresh_counter\(5) ) + ( VCC ) + ( \u0|new_sdram_controller_0|Add0~50\ ))
-- \u0|new_sdram_controller_0|Add0~46\ = CARRY(( !\u0|new_sdram_controller_0|refresh_counter\(5) ) + ( VCC ) + ( \u0|new_sdram_controller_0|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|new_sdram_controller_0|ALT_INV_refresh_counter\(5),
	cin => \u0|new_sdram_controller_0|Add0~50\,
	sumout => \u0|new_sdram_controller_0|Add0~45_sumout\,
	cout => \u0|new_sdram_controller_0|Add0~46\);

-- Location: MLABCELL_X25_Y13_N33
\u0|new_sdram_controller_0|refresh_counter~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|refresh_counter~6_combout\ = (!\u0|new_sdram_controller_0|Add0~45_sumout\) # (\u0|new_sdram_controller_0|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111001111110011111100111111001111110011111100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u0|new_sdram_controller_0|ALT_INV_Equal0~2_combout\,
	datac => \u0|new_sdram_controller_0|ALT_INV_Add0~45_sumout\,
	combout => \u0|new_sdram_controller_0|refresh_counter~6_combout\);

-- Location: FF_X25_Y13_N35
\u0|new_sdram_controller_0|refresh_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \u0|new_sdram_controller_0|refresh_counter~6_combout\,
	clrn => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|refresh_counter\(5));

-- Location: FF_X25_Y13_N32
\u0|new_sdram_controller_0|refresh_counter[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \u0|new_sdram_controller_0|refresh_counter~5_combout\,
	clrn => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|refresh_counter[7]~DUPLICATE_q\);

-- Location: LABCELL_X24_Y13_N18
\u0|new_sdram_controller_0|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|Add0~41_sumout\ = SUM(( \u0|new_sdram_controller_0|refresh_counter\(6) ) + ( VCC ) + ( \u0|new_sdram_controller_0|Add0~46\ ))
-- \u0|new_sdram_controller_0|Add0~42\ = CARRY(( \u0|new_sdram_controller_0|refresh_counter\(6) ) + ( VCC ) + ( \u0|new_sdram_controller_0|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u0|new_sdram_controller_0|ALT_INV_refresh_counter\(6),
	cin => \u0|new_sdram_controller_0|Add0~46\,
	sumout => \u0|new_sdram_controller_0|Add0~41_sumout\,
	cout => \u0|new_sdram_controller_0|Add0~42\);

-- Location: FF_X24_Y13_N19
\u0|new_sdram_controller_0|refresh_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \u0|new_sdram_controller_0|Add0~41_sumout\,
	clrn => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|refresh_counter\(6));

-- Location: LABCELL_X24_Y13_N21
\u0|new_sdram_controller_0|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|Add0~37_sumout\ = SUM(( \u0|new_sdram_controller_0|refresh_counter[7]~DUPLICATE_q\ ) + ( VCC ) + ( \u0|new_sdram_controller_0|Add0~42\ ))
-- \u0|new_sdram_controller_0|Add0~38\ = CARRY(( \u0|new_sdram_controller_0|refresh_counter[7]~DUPLICATE_q\ ) + ( VCC ) + ( \u0|new_sdram_controller_0|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|new_sdram_controller_0|ALT_INV_refresh_counter[7]~DUPLICATE_q\,
	cin => \u0|new_sdram_controller_0|Add0~42\,
	sumout => \u0|new_sdram_controller_0|Add0~37_sumout\,
	cout => \u0|new_sdram_controller_0|Add0~38\);

-- Location: MLABCELL_X25_Y13_N30
\u0|new_sdram_controller_0|refresh_counter~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|refresh_counter~5_combout\ = (!\u0|new_sdram_controller_0|Equal0~2_combout\ & \u0|new_sdram_controller_0|Add0~37_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000000000110011000000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u0|new_sdram_controller_0|ALT_INV_Equal0~2_combout\,
	datad => \u0|new_sdram_controller_0|ALT_INV_Add0~37_sumout\,
	combout => \u0|new_sdram_controller_0|refresh_counter~5_combout\);

-- Location: FF_X25_Y13_N31
\u0|new_sdram_controller_0|refresh_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \u0|new_sdram_controller_0|refresh_counter~5_combout\,
	clrn => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|refresh_counter\(7));

-- Location: MLABCELL_X25_Y13_N48
\u0|new_sdram_controller_0|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|Equal0~1_combout\ = ( !\u0|new_sdram_controller_0|refresh_counter\(6) & ( (\u0|new_sdram_controller_0|refresh_counter\(5) & (\u0|new_sdram_controller_0|refresh_counter\(3) & (!\u0|new_sdram_controller_0|refresh_counter\(7) & 
-- \u0|new_sdram_controller_0|refresh_counter\(4)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000001000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|new_sdram_controller_0|ALT_INV_refresh_counter\(5),
	datab => \u0|new_sdram_controller_0|ALT_INV_refresh_counter\(3),
	datac => \u0|new_sdram_controller_0|ALT_INV_refresh_counter\(7),
	datad => \u0|new_sdram_controller_0|ALT_INV_refresh_counter\(4),
	dataf => \u0|new_sdram_controller_0|ALT_INV_refresh_counter\(6),
	combout => \u0|new_sdram_controller_0|Equal0~1_combout\);

-- Location: LABCELL_X24_Y13_N24
\u0|new_sdram_controller_0|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|Add0~1_sumout\ = SUM(( !\u0|new_sdram_controller_0|refresh_counter\(8) ) + ( VCC ) + ( \u0|new_sdram_controller_0|Add0~38\ ))
-- \u0|new_sdram_controller_0|Add0~2\ = CARRY(( !\u0|new_sdram_controller_0|refresh_counter\(8) ) + ( VCC ) + ( \u0|new_sdram_controller_0|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u0|new_sdram_controller_0|ALT_INV_refresh_counter\(8),
	cin => \u0|new_sdram_controller_0|Add0~38\,
	sumout => \u0|new_sdram_controller_0|Add0~1_sumout\,
	cout => \u0|new_sdram_controller_0|Add0~2\);

-- Location: MLABCELL_X25_Y13_N51
\u0|new_sdram_controller_0|refresh_counter~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|refresh_counter~0_combout\ = ( \u0|new_sdram_controller_0|Add0~1_sumout\ & ( \u0|new_sdram_controller_0|Equal0~2_combout\ ) ) # ( !\u0|new_sdram_controller_0|Add0~1_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u0|new_sdram_controller_0|ALT_INV_Equal0~2_combout\,
	dataf => \u0|new_sdram_controller_0|ALT_INV_Add0~1_sumout\,
	combout => \u0|new_sdram_controller_0|refresh_counter~0_combout\);

-- Location: FF_X25_Y13_N53
\u0|new_sdram_controller_0|refresh_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \u0|new_sdram_controller_0|refresh_counter~0_combout\,
	clrn => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|refresh_counter\(8));

-- Location: LABCELL_X24_Y13_N27
\u0|new_sdram_controller_0|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|Add0~33_sumout\ = SUM(( !\u0|new_sdram_controller_0|refresh_counter\(9) ) + ( VCC ) + ( \u0|new_sdram_controller_0|Add0~2\ ))
-- \u0|new_sdram_controller_0|Add0~34\ = CARRY(( !\u0|new_sdram_controller_0|refresh_counter\(9) ) + ( VCC ) + ( \u0|new_sdram_controller_0|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u0|new_sdram_controller_0|ALT_INV_refresh_counter\(9),
	cin => \u0|new_sdram_controller_0|Add0~2\,
	sumout => \u0|new_sdram_controller_0|Add0~33_sumout\,
	cout => \u0|new_sdram_controller_0|Add0~34\);

-- Location: LABCELL_X24_Y13_N45
\u0|new_sdram_controller_0|refresh_counter~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|refresh_counter~4_combout\ = ( \u0|new_sdram_controller_0|Equal0~2_combout\ ) # ( !\u0|new_sdram_controller_0|Equal0~2_combout\ & ( !\u0|new_sdram_controller_0|Add0~33_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u0|new_sdram_controller_0|ALT_INV_Add0~33_sumout\,
	dataf => \u0|new_sdram_controller_0|ALT_INV_Equal0~2_combout\,
	combout => \u0|new_sdram_controller_0|refresh_counter~4_combout\);

-- Location: FF_X24_Y13_N47
\u0|new_sdram_controller_0|refresh_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \u0|new_sdram_controller_0|refresh_counter~4_combout\,
	clrn => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|refresh_counter\(9));

-- Location: LABCELL_X24_Y13_N30
\u0|new_sdram_controller_0|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|Add0~29_sumout\ = SUM(( !\u0|new_sdram_controller_0|refresh_counter\(10) ) + ( VCC ) + ( \u0|new_sdram_controller_0|Add0~34\ ))
-- \u0|new_sdram_controller_0|Add0~30\ = CARRY(( !\u0|new_sdram_controller_0|refresh_counter\(10) ) + ( VCC ) + ( \u0|new_sdram_controller_0|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u0|new_sdram_controller_0|ALT_INV_refresh_counter\(10),
	cin => \u0|new_sdram_controller_0|Add0~34\,
	sumout => \u0|new_sdram_controller_0|Add0~29_sumout\,
	cout => \u0|new_sdram_controller_0|Add0~30\);

-- Location: LABCELL_X24_Y13_N51
\u0|new_sdram_controller_0|refresh_counter[10]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|refresh_counter[10]~14_combout\ = ( !\u0|new_sdram_controller_0|Add0~29_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u0|new_sdram_controller_0|ALT_INV_Add0~29_sumout\,
	combout => \u0|new_sdram_controller_0|refresh_counter[10]~14_combout\);

-- Location: FF_X24_Y13_N53
\u0|new_sdram_controller_0|refresh_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \u0|new_sdram_controller_0|refresh_counter[10]~14_combout\,
	clrn => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|refresh_counter\(10));

-- Location: LABCELL_X24_Y13_N33
\u0|new_sdram_controller_0|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|Add0~25_sumout\ = SUM(( \u0|new_sdram_controller_0|refresh_counter\(11) ) + ( VCC ) + ( \u0|new_sdram_controller_0|Add0~30\ ))
-- \u0|new_sdram_controller_0|Add0~26\ = CARRY(( \u0|new_sdram_controller_0|refresh_counter\(11) ) + ( VCC ) + ( \u0|new_sdram_controller_0|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|new_sdram_controller_0|ALT_INV_refresh_counter\(11),
	cin => \u0|new_sdram_controller_0|Add0~30\,
	sumout => \u0|new_sdram_controller_0|Add0~25_sumout\,
	cout => \u0|new_sdram_controller_0|Add0~26\);

-- Location: LABCELL_X24_Y13_N48
\u0|new_sdram_controller_0|refresh_counter~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|refresh_counter~3_combout\ = ( \u0|new_sdram_controller_0|Add0~25_sumout\ & ( !\u0|new_sdram_controller_0|Equal0~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u0|new_sdram_controller_0|ALT_INV_Equal0~2_combout\,
	dataf => \u0|new_sdram_controller_0|ALT_INV_Add0~25_sumout\,
	combout => \u0|new_sdram_controller_0|refresh_counter~3_combout\);

-- Location: FF_X24_Y13_N50
\u0|new_sdram_controller_0|refresh_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \u0|new_sdram_controller_0|refresh_counter~3_combout\,
	clrn => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|refresh_counter\(11));

-- Location: LABCELL_X24_Y13_N36
\u0|new_sdram_controller_0|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|Add0~21_sumout\ = SUM(( !\u0|new_sdram_controller_0|refresh_counter\(12) ) + ( VCC ) + ( \u0|new_sdram_controller_0|Add0~26\ ))
-- \u0|new_sdram_controller_0|Add0~22\ = CARRY(( !\u0|new_sdram_controller_0|refresh_counter\(12) ) + ( VCC ) + ( \u0|new_sdram_controller_0|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u0|new_sdram_controller_0|ALT_INV_refresh_counter\(12),
	cin => \u0|new_sdram_controller_0|Add0~26\,
	sumout => \u0|new_sdram_controller_0|Add0~21_sumout\,
	cout => \u0|new_sdram_controller_0|Add0~22\);

-- Location: LABCELL_X24_Y13_N57
\u0|new_sdram_controller_0|refresh_counter~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|refresh_counter~2_combout\ = ( \u0|new_sdram_controller_0|Equal0~2_combout\ ) # ( !\u0|new_sdram_controller_0|Equal0~2_combout\ & ( !\u0|new_sdram_controller_0|Add0~21_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u0|new_sdram_controller_0|ALT_INV_Add0~21_sumout\,
	dataf => \u0|new_sdram_controller_0|ALT_INV_Equal0~2_combout\,
	combout => \u0|new_sdram_controller_0|refresh_counter~2_combout\);

-- Location: FF_X24_Y13_N58
\u0|new_sdram_controller_0|refresh_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \u0|new_sdram_controller_0|refresh_counter~2_combout\,
	clrn => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|refresh_counter\(12));

-- Location: LABCELL_X24_Y13_N39
\u0|new_sdram_controller_0|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|Add0~17_sumout\ = SUM(( !\u0|new_sdram_controller_0|refresh_counter\(13) ) + ( VCC ) + ( \u0|new_sdram_controller_0|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|new_sdram_controller_0|ALT_INV_refresh_counter\(13),
	cin => \u0|new_sdram_controller_0|Add0~22\,
	sumout => \u0|new_sdram_controller_0|Add0~17_sumout\);

-- Location: LABCELL_X24_Y13_N54
\u0|new_sdram_controller_0|refresh_counter~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|refresh_counter~1_combout\ = ( \u0|new_sdram_controller_0|Add0~17_sumout\ & ( \u0|new_sdram_controller_0|Equal0~2_combout\ ) ) # ( !\u0|new_sdram_controller_0|Add0~17_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u0|new_sdram_controller_0|ALT_INV_Equal0~2_combout\,
	dataf => \u0|new_sdram_controller_0|ALT_INV_Add0~17_sumout\,
	combout => \u0|new_sdram_controller_0|refresh_counter~1_combout\);

-- Location: FF_X24_Y13_N56
\u0|new_sdram_controller_0|refresh_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \u0|new_sdram_controller_0|refresh_counter~1_combout\,
	clrn => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|refresh_counter\(13));

-- Location: LABCELL_X24_Y13_N42
\u0|new_sdram_controller_0|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|Equal0~0_combout\ = ( !\u0|new_sdram_controller_0|refresh_counter\(11) & ( (\u0|new_sdram_controller_0|refresh_counter\(10) & (\u0|new_sdram_controller_0|refresh_counter\(9) & (\u0|new_sdram_controller_0|refresh_counter\(12) & 
-- \u0|new_sdram_controller_0|refresh_counter\(13)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|new_sdram_controller_0|ALT_INV_refresh_counter\(10),
	datab => \u0|new_sdram_controller_0|ALT_INV_refresh_counter\(9),
	datac => \u0|new_sdram_controller_0|ALT_INV_refresh_counter\(12),
	datad => \u0|new_sdram_controller_0|ALT_INV_refresh_counter\(13),
	dataf => \u0|new_sdram_controller_0|ALT_INV_refresh_counter\(11),
	combout => \u0|new_sdram_controller_0|Equal0~0_combout\);

-- Location: MLABCELL_X25_Y13_N45
\u0|new_sdram_controller_0|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|Equal0~2_combout\ = ( \u0|new_sdram_controller_0|refresh_counter\(1) & ( \u0|new_sdram_controller_0|refresh_counter\(8) & ( (\u0|new_sdram_controller_0|refresh_counter\(2) & (\u0|new_sdram_controller_0|Equal0~1_combout\ & 
-- (\u0|new_sdram_controller_0|Equal0~0_combout\ & \u0|new_sdram_controller_0|refresh_counter\(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|new_sdram_controller_0|ALT_INV_refresh_counter\(2),
	datab => \u0|new_sdram_controller_0|ALT_INV_Equal0~1_combout\,
	datac => \u0|new_sdram_controller_0|ALT_INV_Equal0~0_combout\,
	datad => \u0|new_sdram_controller_0|ALT_INV_refresh_counter\(0),
	datae => \u0|new_sdram_controller_0|ALT_INV_refresh_counter\(1),
	dataf => \u0|new_sdram_controller_0|ALT_INV_refresh_counter\(8),
	combout => \u0|new_sdram_controller_0|Equal0~2_combout\);

-- Location: MLABCELL_X25_Y11_N57
\u0|new_sdram_controller_0|Selector7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|Selector7~0_combout\ = ( \u0|new_sdram_controller_0|Equal0~2_combout\ & ( (!\u0|new_sdram_controller_0|i_count[0]~0_combout\) # (\u0|new_sdram_controller_0|i_next.000~q\) ) ) # ( !\u0|new_sdram_controller_0|Equal0~2_combout\ & ( 
-- (\u0|new_sdram_controller_0|i_state.000~q\ & ((!\u0|new_sdram_controller_0|i_count[0]~0_combout\) # (\u0|new_sdram_controller_0|i_next.000~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110101000000001111010111110101111101011111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|new_sdram_controller_0|ALT_INV_i_next.000~q\,
	datac => \u0|new_sdram_controller_0|ALT_INV_i_count[0]~0_combout\,
	datad => \u0|new_sdram_controller_0|ALT_INV_i_state.000~q\,
	dataf => \u0|new_sdram_controller_0|ALT_INV_Equal0~2_combout\,
	combout => \u0|new_sdram_controller_0|Selector7~0_combout\);

-- Location: FF_X25_Y11_N59
\u0|new_sdram_controller_0|i_state.000\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \u0|new_sdram_controller_0|Selector7~0_combout\,
	clrn => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|i_state.000~q\);

-- Location: MLABCELL_X25_Y11_N0
\u0|new_sdram_controller_0|Selector8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|Selector8~0_combout\ = ( \u0|new_sdram_controller_0|Equal0~2_combout\ & ( !\u0|new_sdram_controller_0|i_state.000~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u0|new_sdram_controller_0|ALT_INV_i_state.000~q\,
	dataf => \u0|new_sdram_controller_0|ALT_INV_Equal0~2_combout\,
	combout => \u0|new_sdram_controller_0|Selector8~0_combout\);

-- Location: FF_X25_Y11_N1
\u0|new_sdram_controller_0|i_state.001\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \u0|new_sdram_controller_0|Selector8~0_combout\,
	clrn => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|i_state.001~q\);

-- Location: MLABCELL_X25_Y11_N18
\u0|new_sdram_controller_0|Selector17~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|Selector17~0_combout\ = ( \u0|new_sdram_controller_0|WideOr6~combout\ & ( ((!\u0|new_sdram_controller_0|Selector19~0_combout\ & \u0|new_sdram_controller_0|i_state.010~q\)) # (\u0|new_sdram_controller_0|i_state.001~q\) ) ) # ( 
-- !\u0|new_sdram_controller_0|WideOr6~combout\ & ( (((!\u0|new_sdram_controller_0|Selector19~0_combout\ & \u0|new_sdram_controller_0|i_state.010~q\)) # (\u0|new_sdram_controller_0|i_next.010~q\)) # (\u0|new_sdram_controller_0|i_state.001~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010111111111111001011111111111100101111001011110010111100101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|new_sdram_controller_0|ALT_INV_Selector19~0_combout\,
	datab => \u0|new_sdram_controller_0|ALT_INV_i_state.010~q\,
	datac => \u0|new_sdram_controller_0|ALT_INV_i_state.001~q\,
	datad => \u0|new_sdram_controller_0|ALT_INV_i_next.010~q\,
	dataf => \u0|new_sdram_controller_0|ALT_INV_WideOr6~combout\,
	combout => \u0|new_sdram_controller_0|Selector17~0_combout\);

-- Location: FF_X25_Y11_N20
\u0|new_sdram_controller_0|i_next.010\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \u0|new_sdram_controller_0|Selector17~0_combout\,
	clrn => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|i_next.010~q\);

-- Location: MLABCELL_X25_Y11_N39
\u0|new_sdram_controller_0|Selector9~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|Selector9~0_combout\ = (\u0|new_sdram_controller_0|i_next.010~q\ & \u0|new_sdram_controller_0|i_count[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|new_sdram_controller_0|ALT_INV_i_next.010~q\,
	datad => \u0|new_sdram_controller_0|ALT_INV_i_count[0]~0_combout\,
	combout => \u0|new_sdram_controller_0|Selector9~0_combout\);

-- Location: FF_X25_Y11_N40
\u0|new_sdram_controller_0|i_state.010\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \u0|new_sdram_controller_0|Selector9~0_combout\,
	clrn => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|i_state.010~q\);

-- Location: FF_X25_Y11_N58
\u0|new_sdram_controller_0|i_state.000~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \u0|new_sdram_controller_0|Selector7~0_combout\,
	clrn => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|i_state.000~DUPLICATE_q\);

-- Location: MLABCELL_X25_Y13_N57
\u0|new_sdram_controller_0|Selector6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|Selector6~0_combout\ = (!\u0|new_sdram_controller_0|i_state.010~q\ & (\u0|new_sdram_controller_0|i_state.000~DUPLICATE_q\ & \u0|new_sdram_controller_0|i_refs\(0))) # (\u0|new_sdram_controller_0|i_state.010~q\ & 
-- ((!\u0|new_sdram_controller_0|i_refs\(0))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100100010010101010010001001010101001000100101010100100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|new_sdram_controller_0|ALT_INV_i_state.010~q\,
	datab => \u0|new_sdram_controller_0|ALT_INV_i_state.000~DUPLICATE_q\,
	datad => \u0|new_sdram_controller_0|ALT_INV_i_refs\(0),
	combout => \u0|new_sdram_controller_0|Selector6~0_combout\);

-- Location: FF_X25_Y13_N58
\u0|new_sdram_controller_0|i_refs[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \u0|new_sdram_controller_0|Selector6~0_combout\,
	ena => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|i_refs\(0));

-- Location: MLABCELL_X25_Y13_N54
\u0|new_sdram_controller_0|Selector5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|Selector5~0_combout\ = (!\u0|new_sdram_controller_0|i_state.010~q\ & (\u0|new_sdram_controller_0|i_state.000~DUPLICATE_q\ & ((\u0|new_sdram_controller_0|i_refs\(1))))) # (\u0|new_sdram_controller_0|i_state.010~q\ & 
-- ((!\u0|new_sdram_controller_0|i_refs\(0) $ (!\u0|new_sdram_controller_0|i_refs\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101110010000001010111001000000101011100100000010101110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|new_sdram_controller_0|ALT_INV_i_state.010~q\,
	datab => \u0|new_sdram_controller_0|ALT_INV_i_state.000~DUPLICATE_q\,
	datac => \u0|new_sdram_controller_0|ALT_INV_i_refs\(0),
	datad => \u0|new_sdram_controller_0|ALT_INV_i_refs\(1),
	combout => \u0|new_sdram_controller_0|Selector5~0_combout\);

-- Location: FF_X25_Y13_N55
\u0|new_sdram_controller_0|i_refs[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \u0|new_sdram_controller_0|Selector5~0_combout\,
	ena => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|i_refs\(1));

-- Location: MLABCELL_X25_Y13_N0
\u0|new_sdram_controller_0|Selector4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|Selector4~0_combout\ = ( \u0|new_sdram_controller_0|i_state.010~q\ & ( !\u0|new_sdram_controller_0|i_refs\(2) $ (((!\u0|new_sdram_controller_0|i_refs\(0)) # (!\u0|new_sdram_controller_0|i_refs\(1)))) ) ) # ( 
-- !\u0|new_sdram_controller_0|i_state.010~q\ & ( (\u0|new_sdram_controller_0|i_state.000~DUPLICATE_q\ & \u0|new_sdram_controller_0|i_refs\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100010001111011100001000111101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|new_sdram_controller_0|ALT_INV_i_refs\(0),
	datab => \u0|new_sdram_controller_0|ALT_INV_i_refs\(1),
	datac => \u0|new_sdram_controller_0|ALT_INV_i_state.000~DUPLICATE_q\,
	datad => \u0|new_sdram_controller_0|ALT_INV_i_refs\(2),
	dataf => \u0|new_sdram_controller_0|ALT_INV_i_state.010~q\,
	combout => \u0|new_sdram_controller_0|Selector4~0_combout\);

-- Location: FF_X25_Y13_N2
\u0|new_sdram_controller_0|i_refs[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \u0|new_sdram_controller_0|Selector4~0_combout\,
	ena => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|i_refs\(2));

-- Location: MLABCELL_X25_Y13_N3
\u0|new_sdram_controller_0|Selector19~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|Selector19~0_combout\ = (\u0|new_sdram_controller_0|i_refs\(0) & (!\u0|new_sdram_controller_0|i_refs\(1) & !\u0|new_sdram_controller_0|i_refs\(2)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000000000010001000000000001000100000000000100010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|new_sdram_controller_0|ALT_INV_i_refs\(0),
	datab => \u0|new_sdram_controller_0|ALT_INV_i_refs\(1),
	datad => \u0|new_sdram_controller_0|ALT_INV_i_refs\(2),
	combout => \u0|new_sdram_controller_0|Selector19~0_combout\);

-- Location: MLABCELL_X25_Y11_N21
\u0|new_sdram_controller_0|Selector19~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|Selector19~1_combout\ = ( \u0|new_sdram_controller_0|WideOr6~combout\ & ( (\u0|new_sdram_controller_0|Selector19~0_combout\ & \u0|new_sdram_controller_0|i_state.010~q\) ) ) # ( !\u0|new_sdram_controller_0|WideOr6~combout\ & ( 
-- ((\u0|new_sdram_controller_0|Selector19~0_combout\ & \u0|new_sdram_controller_0|i_state.010~q\)) # (\u0|new_sdram_controller_0|i_next.111~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111111111000001011111111100000101000001010000010100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|new_sdram_controller_0|ALT_INV_Selector19~0_combout\,
	datac => \u0|new_sdram_controller_0|ALT_INV_i_state.010~q\,
	datad => \u0|new_sdram_controller_0|ALT_INV_i_next.111~q\,
	dataf => \u0|new_sdram_controller_0|ALT_INV_WideOr6~combout\,
	combout => \u0|new_sdram_controller_0|Selector19~1_combout\);

-- Location: FF_X25_Y11_N22
\u0|new_sdram_controller_0|i_next.111\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \u0|new_sdram_controller_0|Selector19~1_combout\,
	clrn => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|i_next.111~q\);

-- Location: MLABCELL_X25_Y11_N6
\u0|new_sdram_controller_0|Selector12~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|Selector12~0_combout\ = (\u0|new_sdram_controller_0|i_next.111~q\ & \u0|new_sdram_controller_0|i_count[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u0|new_sdram_controller_0|ALT_INV_i_next.111~q\,
	datad => \u0|new_sdram_controller_0|ALT_INV_i_count[0]~0_combout\,
	combout => \u0|new_sdram_controller_0|Selector12~0_combout\);

-- Location: FF_X25_Y11_N7
\u0|new_sdram_controller_0|i_state.111\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \u0|new_sdram_controller_0|Selector12~0_combout\,
	clrn => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|i_state.111~q\);

-- Location: LABCELL_X29_Y11_N33
\u0|new_sdram_controller_0|Selector18~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|Selector18~0_combout\ = ( \u0|new_sdram_controller_0|WideOr6~combout\ & ( \u0|new_sdram_controller_0|i_state.111~q\ ) ) # ( !\u0|new_sdram_controller_0|WideOr6~combout\ & ( (\u0|new_sdram_controller_0|i_next.101~q\) # 
-- (\u0|new_sdram_controller_0|i_state.111~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u0|new_sdram_controller_0|ALT_INV_i_state.111~q\,
	datad => \u0|new_sdram_controller_0|ALT_INV_i_next.101~q\,
	dataf => \u0|new_sdram_controller_0|ALT_INV_WideOr6~combout\,
	combout => \u0|new_sdram_controller_0|Selector18~0_combout\);

-- Location: FF_X29_Y11_N35
\u0|new_sdram_controller_0|i_next.101\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \u0|new_sdram_controller_0|Selector18~0_combout\,
	clrn => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|i_next.101~q\);

-- Location: LABCELL_X29_Y11_N30
\u0|new_sdram_controller_0|i_state.101~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|i_state.101~0_combout\ = ((\u0|new_sdram_controller_0|i_next.101~q\ & \u0|new_sdram_controller_0|i_count[0]~0_combout\)) # (\u0|new_sdram_controller_0|i_state.101~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111111111000001011111111100000101111111110000010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|new_sdram_controller_0|ALT_INV_i_next.101~q\,
	datac => \u0|new_sdram_controller_0|ALT_INV_i_count[0]~0_combout\,
	datad => \u0|new_sdram_controller_0|ALT_INV_i_state.101~q\,
	combout => \u0|new_sdram_controller_0|i_state.101~0_combout\);

-- Location: FF_X29_Y11_N31
\u0|new_sdram_controller_0|i_state.101\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \u0|new_sdram_controller_0|i_state.101~0_combout\,
	clrn => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|i_state.101~q\);

-- Location: MLABCELL_X28_Y12_N51
\u0|new_sdram_controller_0|init_done~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|init_done~0_combout\ = ( \u0|new_sdram_controller_0|init_done~q\ ) # ( !\u0|new_sdram_controller_0|init_done~q\ & ( \u0|new_sdram_controller_0|i_state.101~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101111111111111111101010101010101011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|new_sdram_controller_0|ALT_INV_i_state.101~q\,
	datae => \u0|new_sdram_controller_0|ALT_INV_init_done~q\,
	combout => \u0|new_sdram_controller_0|init_done~0_combout\);

-- Location: FF_X28_Y12_N53
\u0|new_sdram_controller_0|init_done\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \u0|new_sdram_controller_0|init_done~0_combout\,
	clrn => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|init_done~q\);

-- Location: MLABCELL_X28_Y12_N24
\u0|new_sdram_controller_0|Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|Selector1~0_combout\ = ( \u0|new_sdram_controller_0|i_state.000~DUPLICATE_q\ & ( (!\u0|new_sdram_controller_0|i_state.011~q\ & ((!\u0|new_sdram_controller_0|i_state.101~q\) # (\u0|new_sdram_controller_0|i_cmd\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010001000110011001000100011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|new_sdram_controller_0|ALT_INV_i_state.101~q\,
	datab => \u0|new_sdram_controller_0|ALT_INV_i_state.011~q\,
	datad => \u0|new_sdram_controller_0|ALT_INV_i_cmd\(2),
	dataf => \u0|new_sdram_controller_0|ALT_INV_i_state.000~DUPLICATE_q\,
	combout => \u0|new_sdram_controller_0|Selector1~0_combout\);

-- Location: FF_X28_Y12_N25
\u0|new_sdram_controller_0|i_cmd[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \u0|new_sdram_controller_0|Selector1~0_combout\,
	clrn => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|i_cmd\(2));

-- Location: FF_X28_Y12_N52
\u0|new_sdram_controller_0|init_done~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \u0|new_sdram_controller_0|init_done~0_combout\,
	clrn => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|init_done~DUPLICATE_q\);

-- Location: FF_X29_Y13_N29
\u0|new_sdram_controller_0|refresh_request\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \u0|new_sdram_controller_0|refresh_request~0_combout\,
	clrn => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|refresh_request~q\);

-- Location: FF_X29_Y13_N52
\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entries[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entries[0]~1_combout\,
	clrn => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entries\(0));

-- Location: FF_X30_Y14_N40
SDRAM_WE_N : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \SDRAM_WE_N~0_combout\,
	asdata => VCC,
	sload => \BUFF_CTRL~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SDRAM_WE_N~q\);

-- Location: LABCELL_X30_Y14_N39
\SDRAM_WE_N~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SDRAM_WE_N~0_combout\ = ( \SDRAM_WE_N~q\ & ( !\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entries\(0) & ( \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entries\(1) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_entries\(1),
	datae => \ALT_INV_SDRAM_WE_N~q\,
	dataf => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_entries\(0),
	combout => \SDRAM_WE_N~0_combout\);

-- Location: FF_X30_Y14_N41
\SDRAM_WE_N~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \SDRAM_WE_N~0_combout\,
	asdata => VCC,
	sload => \BUFF_CTRL~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SDRAM_WE_N~DUPLICATE_q\);

-- Location: LABCELL_X29_Y13_N48
\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|Equal1~0_combout\ = ( \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entries\(1) ) # ( 
-- !\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entries\(1) & ( \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entries[0]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_entries[0]~DUPLICATE_q\,
	dataf => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_entries\(1),
	combout => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|Equal1~0_combout\);

-- Location: FF_X31_Y11_N44
\u0|new_sdram_controller_0|m_state.000010000\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \u0|new_sdram_controller_0|Selector29~12_combout\,
	clrn => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|m_state.000010000~q\);

-- Location: LABCELL_X31_Y11_N51
\u0|new_sdram_controller_0|m_addr~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|m_addr~0_combout\ = ( !\u0|new_sdram_controller_0|m_state.000001000~q\ & ( !\u0|new_sdram_controller_0|m_state.000010000~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u0|new_sdram_controller_0|ALT_INV_m_state.000010000~q\,
	dataf => \u0|new_sdram_controller_0|ALT_INV_m_state.000001000~q\,
	combout => \u0|new_sdram_controller_0|m_addr~0_combout\);

-- Location: LABCELL_X33_Y13_N51
\SDRAM_RE_N~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SDRAM_RE_N~0_combout\ = ( \BUFF_CTRL~q\ & ( \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entries\(1) & ( \BUFF_WAIT~q\ ) ) ) # ( !\BUFF_CTRL~q\ & ( 
-- \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entries\(1) & ( !\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entries\(0) ) ) ) # ( \BUFF_CTRL~q\ & ( 
-- !\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entries\(1) & ( \BUFF_WAIT~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111111001100110011000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_entries\(0),
	datac => \ALT_INV_BUFF_WAIT~q\,
	datae => \ALT_INV_BUFF_CTRL~q\,
	dataf => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_entries\(1),
	combout => \SDRAM_RE_N~0_combout\);

-- Location: MLABCELL_X34_Y13_N57
\gray~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \gray~13_combout\ = !RAMADDR2(3) $ (!RAMADDR2(2))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111001100001100111100110000110011110011000011001111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_RAMADDR2(3),
	datad => ALT_INV_RAMADDR2(2),
	combout => \gray~13_combout\);

-- Location: FF_X34_Y13_N59
\RAMADDR2GR[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \gray~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RAMADDR2GR(2));

-- Location: FF_X34_Y13_N44
\RAMADDR2GR_sync0[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	asdata => RAMADDR2GR(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RAMADDR2GR_sync0(2));

-- Location: MLABCELL_X34_Y13_N30
\RAMADDR2GR_sync1[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAMADDR2GR_sync1[2]~feeder_combout\ = RAMADDR2GR_sync0(2)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_RAMADDR2GR_sync0(2),
	combout => \RAMADDR2GR_sync1[2]~feeder_combout\);

-- Location: FF_X34_Y13_N31
\RAMADDR2GR_sync1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \RAMADDR2GR_sync1[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RAMADDR2GR_sync1(2));

-- Location: MLABCELL_X34_Y13_N27
\gray~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \gray~15_combout\ = ( RAMADDR2(1) & ( !RAMADDR2(0) ) ) # ( !RAMADDR2(1) & ( RAMADDR2(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_RAMADDR2(0),
	dataf => ALT_INV_RAMADDR2(1),
	combout => \gray~15_combout\);

-- Location: FF_X34_Y13_N29
\RAMADDR2GR[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \gray~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RAMADDR2GR(0));

-- Location: FF_X34_Y13_N41
\RAMADDR2GR_sync0[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	asdata => RAMADDR2GR(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RAMADDR2GR_sync0(0));

-- Location: MLABCELL_X34_Y13_N3
\RAMADDR2GR_sync1[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAMADDR2GR_sync1[0]~feeder_combout\ = RAMADDR2GR_sync0(0)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_RAMADDR2GR_sync0(0),
	combout => \RAMADDR2GR_sync1[0]~feeder_combout\);

-- Location: FF_X34_Y13_N4
\RAMADDR2GR_sync1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \RAMADDR2GR_sync1[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RAMADDR2GR_sync1(0));

-- Location: LABCELL_X36_Y14_N48
\gray~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \gray~10_combout\ = !RAMADDR2(6) $ (!RAMADDR2(5))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000111100001111000011110000111100001111000011110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_RAMADDR2(6),
	datac => ALT_INV_RAMADDR2(5),
	combout => \gray~10_combout\);

-- Location: FF_X36_Y14_N50
\RAMADDR2GR[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \gray~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RAMADDR2GR(5));

-- Location: FF_X36_Y14_N55
\RAMADDR2GR_sync0[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	asdata => RAMADDR2GR(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RAMADDR2GR_sync0(5));

-- Location: MLABCELL_X34_Y14_N51
\RAMADDR2GR_sync1[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAMADDR2GR_sync1[5]~feeder_combout\ = ( RAMADDR2GR_sync0(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_RAMADDR2GR_sync0(5),
	combout => \RAMADDR2GR_sync1[5]~feeder_combout\);

-- Location: FF_X34_Y14_N52
\RAMADDR2GR_sync1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \RAMADDR2GR_sync1[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RAMADDR2GR_sync1(5));

-- Location: FF_X36_Y13_N59
\RAMADDR2GR_sync1[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	asdata => RAMADDR2GR_sync0(8),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RAMADDR2GR_sync1(8));

-- Location: MLABCELL_X34_Y13_N54
\gray~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \gray~12_combout\ = !RAMADDR2(3) $ (!RAMADDR2(4))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000111100001111000011110000111100001111000011110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_RAMADDR2(3),
	datac => ALT_INV_RAMADDR2(4),
	combout => \gray~12_combout\);

-- Location: FF_X34_Y13_N55
\RAMADDR2GR[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \gray~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RAMADDR2GR(3));

-- Location: FF_X34_Y13_N50
\RAMADDR2GR_sync0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	asdata => RAMADDR2GR(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RAMADDR2GR_sync0(3));

-- Location: MLABCELL_X34_Y13_N51
\RAMADDR2GR_sync1[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAMADDR2GR_sync1[3]~feeder_combout\ = RAMADDR2GR_sync0(3)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_RAMADDR2GR_sync0(3),
	combout => \RAMADDR2GR_sync1[3]~feeder_combout\);

-- Location: FF_X34_Y13_N53
\RAMADDR2GR_sync1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \RAMADDR2GR_sync1[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RAMADDR2GR_sync1(3));

-- Location: LABCELL_X36_Y14_N36
\gray~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \gray~8_combout\ = ( RAMADDR2(8) & ( !RAMADDR2(7) ) ) # ( !RAMADDR2(8) & ( RAMADDR2(7) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010110101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_RAMADDR2(7),
	dataf => ALT_INV_RAMADDR2(8),
	combout => \gray~8_combout\);

-- Location: FF_X36_Y14_N38
\RAMADDR2GR[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \gray~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RAMADDR2GR(7));

-- Location: FF_X36_Y14_N13
\RAMADDR2GR_sync0[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	asdata => RAMADDR2GR(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RAMADDR2GR_sync0(7));

-- Location: LABCELL_X35_Y13_N9
\RAMADDR2GR_sync1[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAMADDR2GR_sync1[7]~feeder_combout\ = ( RAMADDR2GR_sync0(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_RAMADDR2GR_sync0(7),
	combout => \RAMADDR2GR_sync1[7]~feeder_combout\);

-- Location: FF_X35_Y13_N10
\RAMADDR2GR_sync1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \RAMADDR2GR_sync1[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RAMADDR2GR_sync1(7));

-- Location: LABCELL_X36_Y14_N39
\gray~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \gray~9_combout\ = !RAMADDR2(7) $ (!RAMADDR2(6))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010010110100101101001011010010110100101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_RAMADDR2(7),
	datac => ALT_INV_RAMADDR2(6),
	combout => \gray~9_combout\);

-- Location: FF_X36_Y14_N41
\RAMADDR2GR[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \gray~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RAMADDR2GR(6));

-- Location: FF_X36_Y14_N31
\RAMADDR2GR_sync0[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	asdata => RAMADDR2GR(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RAMADDR2GR_sync0(6));

-- Location: LABCELL_X35_Y13_N21
\RAMADDR2GR_sync1[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAMADDR2GR_sync1[6]~feeder_combout\ = ( RAMADDR2GR_sync0(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_RAMADDR2GR_sync0(6),
	combout => \RAMADDR2GR_sync1[6]~feeder_combout\);

-- Location: FF_X35_Y13_N23
\RAMADDR2GR_sync1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \RAMADDR2GR_sync1[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RAMADDR2GR_sync1(6));

-- Location: LABCELL_X36_Y14_N27
\gray~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \gray~11_combout\ = !RAMADDR2(5) $ (!RAMADDR2(4))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010110101010010101011010101001010101101010100101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_RAMADDR2(5),
	datad => ALT_INV_RAMADDR2(4),
	combout => \gray~11_combout\);

-- Location: FF_X36_Y14_N29
\RAMADDR2GR[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \gray~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RAMADDR2GR(4));

-- Location: FF_X36_Y14_N58
\RAMADDR2GR_sync0[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	asdata => RAMADDR2GR(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RAMADDR2GR_sync0(4));

-- Location: FF_X34_Y11_N19
\RAMADDR2GR_sync1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	asdata => RAMADDR2GR_sync0(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RAMADDR2GR_sync1(4));

-- Location: MLABCELL_X34_Y13_N36
\binary~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \binary~10_combout\ = ( RAMADDR2GR_sync1(6) & ( RAMADDR2GR_sync1(4) & ( !RAMADDR2GR_sync1(5) $ (!RAMADDR2GR_sync1(8) $ (!RAMADDR2GR_sync1(3) $ (!RAMADDR2GR_sync1(7)))) ) ) ) # ( !RAMADDR2GR_sync1(6) & ( RAMADDR2GR_sync1(4) & ( !RAMADDR2GR_sync1(5) $ 
-- (!RAMADDR2GR_sync1(8) $ (!RAMADDR2GR_sync1(3) $ (RAMADDR2GR_sync1(7)))) ) ) ) # ( RAMADDR2GR_sync1(6) & ( !RAMADDR2GR_sync1(4) & ( !RAMADDR2GR_sync1(5) $ (!RAMADDR2GR_sync1(8) $ (!RAMADDR2GR_sync1(3) $ (RAMADDR2GR_sync1(7)))) ) ) ) # ( 
-- !RAMADDR2GR_sync1(6) & ( !RAMADDR2GR_sync1(4) & ( !RAMADDR2GR_sync1(5) $ (!RAMADDR2GR_sync1(8) $ (!RAMADDR2GR_sync1(3) $ (!RAMADDR2GR_sync1(7)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100110010110100101100110100110010110011010010110100110010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_RAMADDR2GR_sync1(5),
	datab => ALT_INV_RAMADDR2GR_sync1(8),
	datac => ALT_INV_RAMADDR2GR_sync1(3),
	datad => ALT_INV_RAMADDR2GR_sync1(7),
	datae => ALT_INV_RAMADDR2GR_sync1(6),
	dataf => ALT_INV_RAMADDR2GR_sync1(4),
	combout => \binary~10_combout\);

-- Location: LABCELL_X33_Y13_N54
\gray~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \gray~14_combout\ = ( RAMADDR2(2) & ( !RAMADDR2(1) ) ) # ( !RAMADDR2(2) & ( RAMADDR2(1) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_RAMADDR2(1),
	dataf => ALT_INV_RAMADDR2(2),
	combout => \gray~14_combout\);

-- Location: FF_X33_Y13_N55
\RAMADDR2GR[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \gray~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RAMADDR2GR(1));

-- Location: FF_X33_Y13_N46
\RAMADDR2GR_sync0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	asdata => RAMADDR2GR(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RAMADDR2GR_sync0(1));

-- Location: FF_X34_Y13_N1
\RAMADDR2GR_sync1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	asdata => RAMADDR2GR_sync0(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RAMADDR2GR_sync1(1));

-- Location: MLABCELL_X34_Y13_N6
\binary~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \binary~11_combout\ = ( \binary~10_combout\ & ( RAMADDR2GR_sync1(1) & ( !RAMADDR2GR_sync1(2) $ (!RAMADDR2GR_sync1(0)) ) ) ) # ( !\binary~10_combout\ & ( RAMADDR2GR_sync1(1) & ( !RAMADDR2GR_sync1(2) $ (RAMADDR2GR_sync1(0)) ) ) ) # ( \binary~10_combout\ & ( 
-- !RAMADDR2GR_sync1(1) & ( !RAMADDR2GR_sync1(2) $ (RAMADDR2GR_sync1(0)) ) ) ) # ( !\binary~10_combout\ & ( !RAMADDR2GR_sync1(1) & ( !RAMADDR2GR_sync1(2) $ (!RAMADDR2GR_sync1(0)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010110101010101010100101010110101010010101010101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_RAMADDR2GR_sync1(2),
	datad => ALT_INV_RAMADDR2GR_sync1(0),
	datae => \ALT_INV_binary~10_combout\,
	dataf => ALT_INV_RAMADDR2GR_sync1(1),
	combout => \binary~11_combout\);

-- Location: FF_X34_Y13_N7
\RAMADDR2_bin[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \binary~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RAMADDR2_bin(0));

-- Location: MLABCELL_X28_Y11_N0
\Add5~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~13_sumout\ = SUM(( RAMFULL_POINTER(0) ) + ( VCC ) + ( !VCC ))
-- \Add5~14\ = CARRY(( RAMFULL_POINTER(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_RAMFULL_POINTER(0),
	cin => GND,
	sumout => \Add5~13_sumout\,
	cout => \Add5~14\);

-- Location: MLABCELL_X28_Y11_N39
\RAMFULL_POINTER~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAMFULL_POINTER~7_combout\ = (\BUFF_CTRL~q\ & \Add5~13_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BUFF_CTRL~q\,
	datad => \ALT_INV_Add5~13_sumout\,
	combout => \RAMFULL_POINTER~7_combout\);

-- Location: MLABCELL_X28_Y11_N6
\Add5~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~21_sumout\ = SUM(( RAMFULL_POINTER(2) ) + ( GND ) + ( \Add5~18\ ))
-- \Add5~22\ = CARRY(( RAMFULL_POINTER(2) ) + ( GND ) + ( \Add5~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_RAMFULL_POINTER(2),
	cin => \Add5~18\,
	sumout => \Add5~21_sumout\,
	cout => \Add5~22\);

-- Location: MLABCELL_X28_Y11_N9
\Add5~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~25_sumout\ = SUM(( RAMFULL_POINTER(3) ) + ( GND ) + ( \Add5~22\ ))
-- \Add5~26\ = CARRY(( RAMFULL_POINTER(3) ) + ( GND ) + ( \Add5~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_RAMFULL_POINTER(3),
	cin => \Add5~22\,
	sumout => \Add5~25_sumout\,
	cout => \Add5~26\);

-- Location: MLABCELL_X28_Y11_N42
\RAMFULL_POINTER~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAMFULL_POINTER~10_combout\ = ( \Add5~25_sumout\ ) # ( !\Add5~25_sumout\ & ( !\BUFF_CTRL~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BUFF_CTRL~q\,
	dataf => \ALT_INV_Add5~25_sumout\,
	combout => \RAMFULL_POINTER~10_combout\);

-- Location: LABCELL_X30_Y14_N54
\RAMFULL_POINTER[0]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAMFULL_POINTER[0]~4_combout\ = ( \LessThan3~3_combout\ & ( \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entries\(0) & ( (!\BUFF_CTRL~q\) # ((!\SDRAM_RE_N~q\ & !\BUFF_WAIT~q\)) ) ) ) # ( !\LessThan3~3_combout\ & ( 
-- \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entries\(0) & ( (\BUFF_CTRL~q\ & (!\SDRAM_RE_N~q\ & !\BUFF_WAIT~q\)) ) ) ) # ( \LessThan3~3_combout\ & ( 
-- !\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entries\(0) & ( (!\BUFF_CTRL~q\) # ((!\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entries\(1) & (!\SDRAM_RE_N~q\ & !\BUFF_WAIT~q\))) ) ) ) 
-- # ( !\LessThan3~3_combout\ & ( !\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entries\(0) & ( (\BUFF_CTRL~q\ & (!\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entries\(1) & 
-- (!\SDRAM_RE_N~q\ & !\BUFF_WAIT~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000000000000111010101010101001010000000000001111101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BUFF_CTRL~q\,
	datab => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_entries\(1),
	datac => \ALT_INV_SDRAM_RE_N~q\,
	datad => \ALT_INV_BUFF_WAIT~q\,
	datae => \ALT_INV_LessThan3~3_combout\,
	dataf => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_entries\(0),
	combout => \RAMFULL_POINTER[0]~4_combout\);

-- Location: FF_X28_Y11_N44
\RAMFULL_POINTER[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \RAMFULL_POINTER~10_combout\,
	sclr => \RAMFULL_POINTER[0]~3_combout\,
	ena => \RAMFULL_POINTER[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RAMFULL_POINTER(3));

-- Location: MLABCELL_X28_Y11_N12
\Add5~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~29_sumout\ = SUM(( RAMFULL_POINTER(4) ) + ( GND ) + ( \Add5~26\ ))
-- \Add5~30\ = CARRY(( RAMFULL_POINTER(4) ) + ( GND ) + ( \Add5~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_RAMFULL_POINTER(4),
	cin => \Add5~26\,
	sumout => \Add5~29_sumout\,
	cout => \Add5~30\);

-- Location: LABCELL_X27_Y11_N54
\RAMFULL_POINTER~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAMFULL_POINTER~11_combout\ = ( \Add5~29_sumout\ & ( \BUFF_CTRL~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_BUFF_CTRL~q\,
	dataf => \ALT_INV_Add5~29_sumout\,
	combout => \RAMFULL_POINTER~11_combout\);

-- Location: FF_X27_Y11_N55
\RAMFULL_POINTER[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \RAMFULL_POINTER~11_combout\,
	sclr => \RAMFULL_POINTER[0]~3_combout\,
	ena => \RAMFULL_POINTER[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RAMFULL_POINTER(4));

-- Location: MLABCELL_X28_Y11_N15
\Add5~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~33_sumout\ = SUM(( RAMFULL_POINTER(5) ) + ( GND ) + ( \Add5~30\ ))
-- \Add5~34\ = CARRY(( RAMFULL_POINTER(5) ) + ( GND ) + ( \Add5~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_RAMFULL_POINTER(5),
	cin => \Add5~30\,
	sumout => \Add5~33_sumout\,
	cout => \Add5~34\);

-- Location: MLABCELL_X28_Y12_N36
\RAMFULL_POINTER~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAMFULL_POINTER~12_combout\ = ( \BUFF_CTRL~q\ & ( \Add5~33_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add5~33_sumout\,
	datae => \ALT_INV_BUFF_CTRL~q\,
	combout => \RAMFULL_POINTER~12_combout\);

-- Location: FF_X28_Y12_N37
\RAMFULL_POINTER[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \RAMFULL_POINTER~12_combout\,
	sclr => \RAMFULL_POINTER[0]~3_combout\,
	ena => \RAMFULL_POINTER[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RAMFULL_POINTER(5));

-- Location: MLABCELL_X28_Y11_N18
\Add5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~1_sumout\ = SUM(( RAMFULL_POINTER(6) ) + ( GND ) + ( \Add5~34\ ))
-- \Add5~2\ = CARRY(( RAMFULL_POINTER(6) ) + ( GND ) + ( \Add5~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_RAMFULL_POINTER(6),
	cin => \Add5~34\,
	sumout => \Add5~1_sumout\,
	cout => \Add5~2\);

-- Location: LABCELL_X27_Y11_N36
\RAMFULL_POINTER~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAMFULL_POINTER~0_combout\ = ( \Add5~1_sumout\ & ( \BUFF_CTRL~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_BUFF_CTRL~q\,
	dataf => \ALT_INV_Add5~1_sumout\,
	combout => \RAMFULL_POINTER~0_combout\);

-- Location: FF_X27_Y11_N37
\RAMFULL_POINTER[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \RAMFULL_POINTER~0_combout\,
	sclr => \RAMFULL_POINTER[0]~3_combout\,
	ena => \RAMFULL_POINTER[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RAMFULL_POINTER(6));

-- Location: MLABCELL_X28_Y11_N21
\Add5~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~5_sumout\ = SUM(( RAMFULL_POINTER(7) ) + ( GND ) + ( \Add5~2\ ))
-- \Add5~6\ = CARRY(( RAMFULL_POINTER(7) ) + ( GND ) + ( \Add5~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_RAMFULL_POINTER(7),
	cin => \Add5~2\,
	sumout => \Add5~5_sumout\,
	cout => \Add5~6\);

-- Location: MLABCELL_X28_Y11_N45
\RAMFULL_POINTER~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAMFULL_POINTER~5_combout\ = (\BUFF_CTRL~q\ & \Add5~5_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100000000010101010000000001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BUFF_CTRL~q\,
	datad => \ALT_INV_Add5~5_sumout\,
	combout => \RAMFULL_POINTER~5_combout\);

-- Location: FF_X28_Y11_N46
\RAMFULL_POINTER[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \RAMFULL_POINTER~5_combout\,
	sclr => \RAMFULL_POINTER[0]~3_combout\,
	ena => \RAMFULL_POINTER[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RAMFULL_POINTER(7));

-- Location: MLABCELL_X28_Y11_N24
\Add5~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~9_sumout\ = SUM(( RAMFULL_POINTER(8) ) + ( GND ) + ( \Add5~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_RAMFULL_POINTER(8),
	cin => \Add5~6\,
	sumout => \Add5~9_sumout\);

-- Location: MLABCELL_X28_Y11_N36
\RAMFULL_POINTER~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAMFULL_POINTER~6_combout\ = ( \Add5~9_sumout\ & ( \BUFF_CTRL~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BUFF_CTRL~q\,
	dataf => \ALT_INV_Add5~9_sumout\,
	combout => \RAMFULL_POINTER~6_combout\);

-- Location: FF_X28_Y11_N38
\RAMFULL_POINTER[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \RAMFULL_POINTER~6_combout\,
	sclr => \RAMFULL_POINTER[0]~3_combout\,
	ena => \RAMFULL_POINTER[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RAMFULL_POINTER(8));

-- Location: MLABCELL_X28_Y11_N54
\RAMFULL_POINTER[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAMFULL_POINTER[0]~2_combout\ = ( RAMFULL_POINTER(6) & ( (RAMFULL_POINTER(2) & (RAMFULL_POINTER(8) & RAMFULL_POINTER(7))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_RAMFULL_POINTER(2),
	datac => ALT_INV_RAMFULL_POINTER(8),
	datad => ALT_INV_RAMFULL_POINTER(7),
	dataf => ALT_INV_RAMFULL_POINTER(6),
	combout => \RAMFULL_POINTER[0]~2_combout\);

-- Location: MLABCELL_X28_Y11_N57
\RAMFULL_POINTER[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAMFULL_POINTER[0]~1_combout\ = ( \BUFF_CTRL~q\ & ( (RAMFULL_POINTER(1) & (RAMFULL_POINTER(3) & RAMFULL_POINTER(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_RAMFULL_POINTER(1),
	datac => ALT_INV_RAMFULL_POINTER(3),
	datad => ALT_INV_RAMFULL_POINTER(0),
	dataf => \ALT_INV_BUFF_CTRL~q\,
	combout => \RAMFULL_POINTER[0]~1_combout\);

-- Location: MLABCELL_X28_Y11_N48
\RAMFULL_POINTER[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAMFULL_POINTER[0]~3_combout\ = (RAMFULL_POINTER(4) & (RAMFULL_POINTER(5) & (\RAMFULL_POINTER[0]~2_combout\ & \RAMFULL_POINTER[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_RAMFULL_POINTER(4),
	datab => ALT_INV_RAMFULL_POINTER(5),
	datac => \ALT_INV_RAMFULL_POINTER[0]~2_combout\,
	datad => \ALT_INV_RAMFULL_POINTER[0]~1_combout\,
	combout => \RAMFULL_POINTER[0]~3_combout\);

-- Location: FF_X28_Y11_N40
\RAMFULL_POINTER[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \RAMFULL_POINTER~7_combout\,
	sclr => \RAMFULL_POINTER[0]~3_combout\,
	ena => \RAMFULL_POINTER[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RAMFULL_POINTER(0));

-- Location: MLABCELL_X28_Y11_N3
\Add5~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add5~17_sumout\ = SUM(( RAMFULL_POINTER(1) ) + ( GND ) + ( \Add5~14\ ))
-- \Add5~18\ = CARRY(( RAMFULL_POINTER(1) ) + ( GND ) + ( \Add5~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_RAMFULL_POINTER(1),
	cin => \Add5~14\,
	sumout => \Add5~17_sumout\,
	cout => \Add5~18\);

-- Location: MLABCELL_X34_Y11_N36
\RAMFULL_POINTER~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAMFULL_POINTER~8_combout\ = ( \Add5~17_sumout\ ) # ( !\Add5~17_sumout\ & ( !\BUFF_CTRL~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_BUFF_CTRL~q\,
	dataf => \ALT_INV_Add5~17_sumout\,
	combout => \RAMFULL_POINTER~8_combout\);

-- Location: MLABCELL_X28_Y11_N30
\RAMFULL_POINTER[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAMFULL_POINTER[1]~feeder_combout\ = ( \RAMFULL_POINTER~8_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_RAMFULL_POINTER~8_combout\,
	combout => \RAMFULL_POINTER[1]~feeder_combout\);

-- Location: FF_X28_Y11_N31
\RAMFULL_POINTER[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \RAMFULL_POINTER[1]~feeder_combout\,
	sclr => \RAMFULL_POINTER[0]~3_combout\,
	ena => \RAMFULL_POINTER[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RAMFULL_POINTER(1));

-- Location: MLABCELL_X28_Y11_N51
\RAMFULL_POINTER~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAMFULL_POINTER~9_combout\ = ( \BUFF_CTRL~q\ & ( \Add5~21_sumout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add5~21_sumout\,
	dataf => \ALT_INV_BUFF_CTRL~q\,
	combout => \RAMFULL_POINTER~9_combout\);

-- Location: FF_X28_Y11_N52
\RAMFULL_POINTER[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \RAMFULL_POINTER~9_combout\,
	sclr => \RAMFULL_POINTER[0]~3_combout\,
	ena => \RAMFULL_POINTER[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RAMFULL_POINTER(2));

-- Location: MLABCELL_X34_Y13_N18
\binary~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \binary~13_combout\ = !RAMADDR2GR_sync1(2) $ (!\binary~10_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000000001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_RAMADDR2GR_sync1(2),
	datad => \ALT_INV_binary~10_combout\,
	combout => \binary~13_combout\);

-- Location: FF_X34_Y13_N19
\RAMADDR2_bin[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \binary~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RAMADDR2_bin(2));

-- Location: LABCELL_X35_Y13_N57
\binary~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \binary~12_combout\ = ( \binary~10_combout\ & ( !RAMADDR2GR_sync1(2) $ (RAMADDR2GR_sync1(1)) ) ) # ( !\binary~10_combout\ & ( !RAMADDR2GR_sync1(2) $ (!RAMADDR2GR_sync1(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010010110100101101010100101101001011010010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_RAMADDR2GR_sync1(2),
	datac => ALT_INV_RAMADDR2GR_sync1(1),
	dataf => \ALT_INV_binary~10_combout\,
	combout => \binary~12_combout\);

-- Location: FF_X35_Y13_N58
\RAMADDR2_bin[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \binary~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RAMADDR2_bin(1));

-- Location: LABCELL_X35_Y13_N27
\Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = ( RAMFULL_POINTER(1) & ( RAMFULL_POINTER(0) & ( (RAMADDR2_bin(0) & (RAMADDR2_bin(1) & (!RAMFULL_POINTER(2) $ (RAMADDR2_bin(2))))) ) ) ) # ( !RAMFULL_POINTER(1) & ( RAMFULL_POINTER(0) & ( (RAMADDR2_bin(0) & (!RAMADDR2_bin(1) & 
-- (!RAMFULL_POINTER(2) $ (RAMADDR2_bin(2))))) ) ) ) # ( RAMFULL_POINTER(1) & ( !RAMFULL_POINTER(0) & ( (!RAMADDR2_bin(0) & (RAMADDR2_bin(1) & (!RAMFULL_POINTER(2) $ (RAMADDR2_bin(2))))) ) ) ) # ( !RAMFULL_POINTER(1) & ( !RAMFULL_POINTER(0) & ( 
-- (!RAMADDR2_bin(0) & (!RAMADDR2_bin(1) & (!RAMFULL_POINTER(2) $ (RAMADDR2_bin(2))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000001000000000000000001000001001000001000000000000000001000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_RAMADDR2_bin(0),
	datab => ALT_INV_RAMFULL_POINTER(2),
	datac => ALT_INV_RAMADDR2_bin(2),
	datad => ALT_INV_RAMADDR2_bin(1),
	datae => ALT_INV_RAMFULL_POINTER(1),
	dataf => ALT_INV_RAMFULL_POINTER(0),
	combout => \Equal0~1_combout\);

-- Location: MLABCELL_X34_Y13_N21
\binary~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \binary~15_combout\ = ( RAMADDR2GR_sync1(7) & ( !RAMADDR2GR_sync1(6) $ (!RAMADDR2GR_sync1(8) $ (!RAMADDR2GR_sync1(5))) ) ) # ( !RAMADDR2GR_sync1(7) & ( !RAMADDR2GR_sync1(6) $ (!RAMADDR2GR_sync1(8) $ (RAMADDR2GR_sync1(5))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011010011001011001101001100110011001011001101001100101100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_RAMADDR2GR_sync1(6),
	datab => ALT_INV_RAMADDR2GR_sync1(8),
	datad => ALT_INV_RAMADDR2GR_sync1(5),
	dataf => ALT_INV_RAMADDR2GR_sync1(7),
	combout => \binary~15_combout\);

-- Location: FF_X34_Y13_N22
\RAMADDR2_bin[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \binary~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RAMADDR2_bin(5));

-- Location: MLABCELL_X34_Y13_N12
\binary~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \binary~14_combout\ = ( RAMADDR2GR_sync1(4) & ( !\RAMADDR2GR_sync1[8]~DUPLICATE_q\ $ (!RAMADDR2GR_sync1(7) $ (!RAMADDR2GR_sync1(6) $ (RAMADDR2GR_sync1(5)))) ) ) # ( !RAMADDR2GR_sync1(4) & ( !\RAMADDR2GR_sync1[8]~DUPLICATE_q\ $ (!RAMADDR2GR_sync1(7) $ 
-- (!RAMADDR2GR_sync1(6) $ (!RAMADDR2GR_sync1(5)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100110010110011010011001011010010110011010011001011001101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RAMADDR2GR_sync1[8]~DUPLICATE_q\,
	datab => ALT_INV_RAMADDR2GR_sync1(7),
	datac => ALT_INV_RAMADDR2GR_sync1(6),
	datad => ALT_INV_RAMADDR2GR_sync1(5),
	dataf => ALT_INV_RAMADDR2GR_sync1(4),
	combout => \binary~14_combout\);

-- Location: FF_X35_Y13_N19
\RAMADDR2_bin[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	asdata => \binary~14_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RAMADDR2_bin(4));

-- Location: FF_X34_Y13_N34
\RAMADDR2_bin[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	asdata => \binary~10_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RAMADDR2_bin(3));

-- Location: LABCELL_X33_Y13_N42
\Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = ( RAMFULL_POINTER(3) & ( RAMADDR2_bin(3) & ( (!RAMADDR2_bin(5) & (!RAMFULL_POINTER(5) & (!RAMADDR2_bin(4) $ (RAMFULL_POINTER(4))))) # (RAMADDR2_bin(5) & (RAMFULL_POINTER(5) & (!RAMADDR2_bin(4) $ (RAMFULL_POINTER(4))))) ) ) ) # ( 
-- !RAMFULL_POINTER(3) & ( !RAMADDR2_bin(3) & ( (!RAMADDR2_bin(5) & (!RAMFULL_POINTER(5) & (!RAMADDR2_bin(4) $ (RAMFULL_POINTER(4))))) # (RAMADDR2_bin(5) & (RAMFULL_POINTER(5) & (!RAMADDR2_bin(4) $ (RAMFULL_POINTER(4))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000001001000001000000000000000000000000000000001000001001000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_RAMADDR2_bin(5),
	datab => ALT_INV_RAMADDR2_bin(4),
	datac => ALT_INV_RAMFULL_POINTER(4),
	datad => ALT_INV_RAMFULL_POINTER(5),
	datae => ALT_INV_RAMFULL_POINTER(3),
	dataf => ALT_INV_RAMADDR2_bin(3),
	combout => \Equal0~2_combout\);

-- Location: LABCELL_X33_Y13_N6
\SDRAM_RE_N~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \SDRAM_RE_N~1_combout\ = ( \SDRAM_RE_N~q\ & ( \Equal0~0_combout\ & ( ((!\BUFF_CTRL~q\) # ((\Equal0~1_combout\ & \Equal0~2_combout\))) # (\SDRAM_RE_N~0_combout\) ) ) ) # ( !\SDRAM_RE_N~q\ & ( \Equal0~0_combout\ & ( (!\SDRAM_RE_N~0_combout\ & 
-- ((!\BUFF_CTRL~q\) # ((\Equal0~1_combout\ & \Equal0~2_combout\)))) ) ) ) # ( \SDRAM_RE_N~q\ & ( !\Equal0~0_combout\ & ( (!\BUFF_CTRL~q\) # (\SDRAM_RE_N~0_combout\) ) ) ) # ( !\SDRAM_RE_N~q\ & ( !\Equal0~0_combout\ & ( (!\SDRAM_RE_N~0_combout\ & 
-- !\BUFF_CTRL~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000111101011111010110100000101000101111010111110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SDRAM_RE_N~0_combout\,
	datab => \ALT_INV_Equal0~1_combout\,
	datac => \ALT_INV_BUFF_CTRL~q\,
	datad => \ALT_INV_Equal0~2_combout\,
	datae => \ALT_INV_SDRAM_RE_N~q\,
	dataf => \ALT_INV_Equal0~0_combout\,
	combout => \SDRAM_RE_N~1_combout\);

-- Location: FF_X33_Y13_N8
SDRAM_RE_N : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \SDRAM_RE_N~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SDRAM_RE_N~q\);

-- Location: LABCELL_X30_Y14_N33
\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|wr_address~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|wr_address~0_combout\ = ( \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|wr_address~q\ & ( 
-- \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entries\(0) & ( (\SDRAM_RE_N~q\ & \SDRAM_WE_N~DUPLICATE_q\) ) ) ) # ( !\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|wr_address~q\ & ( 
-- \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entries\(0) & ( (!\SDRAM_RE_N~q\) # (!\SDRAM_WE_N~DUPLICATE_q\) ) ) ) # ( \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|wr_address~q\ & ( 
-- !\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entries\(0) & ( ((\SDRAM_RE_N~q\ & \SDRAM_WE_N~DUPLICATE_q\)) # (\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entries\(1)) ) ) ) # ( 
-- !\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|wr_address~q\ & ( !\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entries\(0) & ( 
-- (!\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entries\(1) & ((!\SDRAM_RE_N~q\) # (!\SDRAM_WE_N~DUPLICATE_q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110000011100000000111110001111111101110111011100001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SDRAM_RE_N~q\,
	datab => \ALT_INV_SDRAM_WE_N~DUPLICATE_q\,
	datac => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_entries\(1),
	datae => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_wr_address~q\,
	dataf => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_entries\(0),
	combout => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|wr_address~0_combout\);

-- Location: FF_X30_Y14_N35
\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|wr_address\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|wr_address~0_combout\,
	clrn => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|wr_address~q\);

-- Location: LABCELL_X30_Y14_N48
\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1[43]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1[43]~0_combout\ = ( \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entries\(1) & ( 
-- \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entries\(0) & ( (\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|wr_address~q\ & ((!\SDRAM_WE_N~DUPLICATE_q\) # (!\SDRAM_RE_N~q\))) ) ) ) # ( 
-- !\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entries\(1) & ( \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entries\(0) & ( 
-- (\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|wr_address~q\ & ((!\SDRAM_WE_N~DUPLICATE_q\) # (!\SDRAM_RE_N~q\))) ) ) ) # ( !\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entries\(1) & ( 
-- !\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entries\(0) & ( (\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|wr_address~q\ & ((!\SDRAM_WE_N~DUPLICATE_q\) # (!\SDRAM_RE_N~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010001010100000000000000000001010100010101000101010001010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_wr_address~q\,
	datab => \ALT_INV_SDRAM_WE_N~DUPLICATE_q\,
	datac => \ALT_INV_SDRAM_RE_N~q\,
	datae => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_entries\(1),
	dataf => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_entries\(0),
	combout => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1[43]~0_combout\);

-- Location: FF_X30_Y12_N2
\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	asdata => SDRAM_ADDR(10),
	sload => VCC,
	ena => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1\(28));

-- Location: LABCELL_X30_Y14_N9
\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0[43]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0[43]~0_combout\ = ( \SDRAM_RE_N~q\ & ( (!\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|wr_address~q\ & (!\SDRAM_WE_N~DUPLICATE_q\ & 
-- ((!\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entries\(1)) # (\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entries\(0))))) ) ) # ( !\SDRAM_RE_N~q\ & ( 
-- (!\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|wr_address~q\ & ((!\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entries\(1)) # 
-- (\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entries\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010101010101000001010101010000000100010001000000010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_wr_address~q\,
	datab => \ALT_INV_SDRAM_WE_N~DUPLICATE_q\,
	datac => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_entries\(1),
	datad => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_entries\(0),
	dataf => \ALT_INV_SDRAM_RE_N~q\,
	combout => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0[43]~0_combout\);

-- Location: FF_X30_Y12_N19
\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	asdata => SDRAM_ADDR(10),
	sload => VCC,
	ena => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0\(28));

-- Location: LABCELL_X30_Y12_N9
\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[28]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[28]~12_combout\ = (!\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_address~DUPLICATE_q\ & 
-- ((\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0\(28)))) # (\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_address~DUPLICATE_q\ & 
-- (\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1\(28)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000011110101010100001111010101010000111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_entry_1\(28),
	datac => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_entry_0\(28),
	datad => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_rd_address~DUPLICATE_q\,
	combout => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[28]~12_combout\);

-- Location: LABCELL_X30_Y14_N15
\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1[32]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1[32]~feeder_combout\ = ( SDRAM_ADDR(14) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_SDRAM_ADDR(14),
	combout => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1[32]~feeder_combout\);

-- Location: FF_X30_Y14_N16
\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1[32]~feeder_combout\,
	ena => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1\(32));

-- Location: LABCELL_X30_Y14_N18
\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0[32]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0[32]~feeder_combout\ = ( SDRAM_ADDR(14) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_SDRAM_ADDR(14),
	combout => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0[32]~feeder_combout\);

-- Location: FF_X30_Y14_N19
\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0[32]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0[32]~feeder_combout\,
	ena => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0\(32));

-- Location: LABCELL_X29_Y12_N51
\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[32]~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[32]~20_combout\ = ( \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_address~DUPLICATE_q\ & ( 
-- \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1\(32) ) ) # ( !\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_address~DUPLICATE_q\ & ( 
-- \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0\(32) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_entry_1\(32),
	datac => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_entry_0\(32),
	dataf => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_rd_address~DUPLICATE_q\,
	combout => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[32]~20_combout\);

-- Location: FF_X29_Y12_N26
\u0|new_sdram_controller_0|active_addr[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	asdata => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[32]~20_combout\,
	sload => VCC,
	ena => \u0|new_sdram_controller_0|active_rnw~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|active_addr\(14));

-- Location: FF_X29_Y12_N23
\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	asdata => SDRAM_ADDR(15),
	sload => VCC,
	ena => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0\(33));

-- Location: FF_X29_Y12_N53
\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1[33]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	asdata => SDRAM_ADDR(15),
	sload => VCC,
	ena => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1\(33));

-- Location: FF_X29_Y12_N22
\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0[33]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	asdata => SDRAM_ADDR(15),
	sload => VCC,
	ena => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0[33]~DUPLICATE_q\);

-- Location: LABCELL_X29_Y12_N45
\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[33]~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[33]~21_combout\ = ( \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0[33]~DUPLICATE_q\ & ( 
-- (!\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_address~DUPLICATE_q\) # (\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1\(33)) ) ) # ( 
-- !\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0[33]~DUPLICATE_q\ & ( (\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_address~DUPLICATE_q\ & 
-- \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1\(33)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010110101010111111111010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_rd_address~DUPLICATE_q\,
	datad => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_entry_1\(33),
	dataf => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_entry_0[33]~DUPLICATE_q\,
	combout => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[33]~21_combout\);

-- Location: FF_X29_Y12_N47
\u0|new_sdram_controller_0|active_addr[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[33]~21_combout\,
	ena => \u0|new_sdram_controller_0|active_rnw~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|active_addr\(15));

-- Location: FF_X29_Y12_N31
\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	asdata => SDRAM_ADDR(16),
	sload => VCC,
	ena => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1\(34));

-- Location: LABCELL_X30_Y14_N3
\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0[34]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0[34]~feeder_combout\ = ( SDRAM_ADDR(16) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_SDRAM_ADDR(16),
	combout => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0[34]~feeder_combout\);

-- Location: FF_X30_Y14_N4
\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0[34]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0[34]~feeder_combout\,
	ena => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0\(34));

-- Location: LABCELL_X29_Y12_N0
\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[34]~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[34]~22_combout\ = (!\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_address~DUPLICATE_q\ & 
-- ((\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0\(34)))) # (\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_address~DUPLICATE_q\ & 
-- (\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1\(34)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110101111000001011010111100000101101011110000010110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_rd_address~DUPLICATE_q\,
	datac => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_entry_1\(34),
	datad => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_entry_0\(34),
	combout => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[34]~22_combout\);

-- Location: FF_X29_Y12_N2
\u0|new_sdram_controller_0|active_addr[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[34]~22_combout\,
	ena => \u0|new_sdram_controller_0|active_rnw~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|active_addr\(16));

-- Location: LABCELL_X29_Y12_N30
\u0|new_sdram_controller_0|pending~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|pending~8_combout\ = ( \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1\(34) & ( \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_address~DUPLICATE_q\ & ( 
-- (\u0|new_sdram_controller_0|active_addr\(16) & (!\u0|new_sdram_controller_0|active_addr\(15) $ (\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1\(33)))) ) ) ) # ( 
-- !\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1\(34) & ( \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_address~DUPLICATE_q\ & ( (!\u0|new_sdram_controller_0|active_addr\(16) & 
-- (!\u0|new_sdram_controller_0|active_addr\(15) $ (\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1\(33)))) ) ) ) # ( \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1\(34) & ( 
-- !\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_address~DUPLICATE_q\ & ( !\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0\(33) $ (\u0|new_sdram_controller_0|active_addr\(15)) ) ) 
-- ) # ( !\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1\(34) & ( !\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_address~DUPLICATE_q\ & ( 
-- !\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0\(33) $ (\u0|new_sdram_controller_0|active_addr\(15)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001100110011001100110011001100111000000001100000000110000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_entry_0\(33),
	datab => \u0|new_sdram_controller_0|ALT_INV_active_addr\(15),
	datac => \u0|new_sdram_controller_0|ALT_INV_active_addr\(16),
	datad => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_entry_1\(33),
	datae => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_entry_1\(34),
	dataf => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_rd_address~DUPLICATE_q\,
	combout => \u0|new_sdram_controller_0|pending~8_combout\);

-- Location: FF_X29_Y12_N17
\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	asdata => SDRAM_ADDR(19),
	sload => VCC,
	ena => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1\(37));

-- Location: FF_X29_Y12_N58
\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0[37]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	asdata => SDRAM_ADDR(19),
	sload => VCC,
	ena => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0\(37));

-- Location: LABCELL_X29_Y12_N42
\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[37]~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[37]~25_combout\ = (!\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_address~DUPLICATE_q\ & 
-- ((\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0\(37)))) # (\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_address~DUPLICATE_q\ & 
-- (\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1\(37)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_rd_address~DUPLICATE_q\,
	datab => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_entry_1\(37),
	datac => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_entry_0\(37),
	combout => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[37]~25_combout\);

-- Location: FF_X29_Y12_N43
\u0|new_sdram_controller_0|active_addr[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[37]~25_combout\,
	ena => \u0|new_sdram_controller_0|active_rnw~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|active_addr\(19));

-- Location: LABCELL_X29_Y12_N24
\u0|new_sdram_controller_0|Equal3~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|Equal3~2_combout\ = ( \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_address~DUPLICATE_q\ & ( !\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1\(37) $ 
-- (!\u0|new_sdram_controller_0|active_addr\(19)) ) ) # ( !\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_address~DUPLICATE_q\ & ( 
-- !\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0\(37) $ (!\u0|new_sdram_controller_0|active_addr\(19)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000000110011110011000011001111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_entry_1\(37),
	datac => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_entry_0\(37),
	datad => \u0|new_sdram_controller_0|ALT_INV_active_addr\(19),
	dataf => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_rd_address~DUPLICATE_q\,
	combout => \u0|new_sdram_controller_0|Equal3~2_combout\);

-- Location: FF_X29_Y12_N41
\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0[36]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	asdata => SDRAM_ADDR(18),
	sload => VCC,
	ena => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0[36]~DUPLICATE_q\);

-- Location: FF_X29_Y12_N50
\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	asdata => SDRAM_ADDR(18),
	sload => VCC,
	ena => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1\(36));

-- Location: FF_X29_Y12_N40
\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	asdata => SDRAM_ADDR(18),
	sload => VCC,
	ena => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0\(36));

-- Location: LABCELL_X29_Y12_N27
\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[36]~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[36]~24_combout\ = (!\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_address~DUPLICATE_q\ & 
-- (\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0\(36))) # (\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_address~DUPLICATE_q\ & 
-- ((\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1\(36))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000010100101111100001010010111110000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_rd_address~DUPLICATE_q\,
	datac => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_entry_0\(36),
	datad => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_entry_1\(36),
	combout => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[36]~24_combout\);

-- Location: FF_X29_Y12_N29
\u0|new_sdram_controller_0|active_addr[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[36]~24_combout\,
	ena => \u0|new_sdram_controller_0|active_rnw~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|active_addr\(18));

-- Location: LABCELL_X29_Y12_N6
\u0|new_sdram_controller_0|Equal3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|Equal3~1_combout\ = ( \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_address~DUPLICATE_q\ & ( !\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1\(36) $ 
-- (!\u0|new_sdram_controller_0|active_addr\(18)) ) ) # ( !\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_address~DUPLICATE_q\ & ( 
-- !\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0[36]~DUPLICATE_q\ $ (!\u0|new_sdram_controller_0|active_addr\(18)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111001100001100111100110000001111111100000000111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_entry_0[36]~DUPLICATE_q\,
	datac => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_entry_1\(36),
	datad => \u0|new_sdram_controller_0|ALT_INV_active_addr\(18),
	dataf => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_rd_address~DUPLICATE_q\,
	combout => \u0|new_sdram_controller_0|Equal3~1_combout\);

-- Location: FF_X29_Y12_N19
\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	asdata => SDRAM_ADDR(17),
	sload => VCC,
	ena => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0\(35));

-- Location: FF_X29_Y12_N34
\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1[35]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	asdata => SDRAM_ADDR(17),
	sload => VCC,
	ena => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1\(35));

-- Location: LABCELL_X29_Y12_N3
\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[35]~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[35]~23_combout\ = (!\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_address~DUPLICATE_q\ & 
-- (\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0\(35))) # (\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_address~DUPLICATE_q\ & 
-- ((\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1\(35))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000010100101111100001010010111110000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_rd_address~DUPLICATE_q\,
	datac => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_entry_0\(35),
	datad => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_entry_1\(35),
	combout => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[35]~23_combout\);

-- Location: FF_X29_Y12_N5
\u0|new_sdram_controller_0|active_addr[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[35]~23_combout\,
	ena => \u0|new_sdram_controller_0|active_rnw~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|active_addr\(17));

-- Location: LABCELL_X29_Y12_N18
\u0|new_sdram_controller_0|pending~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|pending~7_combout\ = ( \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0\(35) & ( \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_address~DUPLICATE_q\ & ( 
-- !\u0|new_sdram_controller_0|active_addr\(17) $ (\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1\(35)) ) ) ) # ( !\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0\(35) & ( 
-- \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_address~DUPLICATE_q\ & ( !\u0|new_sdram_controller_0|active_addr\(17) $ (\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1\(35)) ) ) ) 
-- # ( \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0\(35) & ( !\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_address~DUPLICATE_q\ & ( (\u0|new_sdram_controller_0|active_addr\(17) 
-- & (!\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0\(34) $ (\u0|new_sdram_controller_0|active_addr\(16)))) ) ) ) # ( !\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0\(35) & ( 
-- !\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_address~DUPLICATE_q\ & ( (!\u0|new_sdram_controller_0|active_addr\(17) & (!\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0\(34) $ 
-- (\u0|new_sdram_controller_0|active_addr\(16)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000001010000010010000010100000110101010010101011010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|new_sdram_controller_0|ALT_INV_active_addr\(17),
	datab => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_entry_0\(34),
	datac => \u0|new_sdram_controller_0|ALT_INV_active_addr\(16),
	datad => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_entry_1\(35),
	datae => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_entry_0\(35),
	dataf => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_rd_address~DUPLICATE_q\,
	combout => \u0|new_sdram_controller_0|pending~7_combout\);

-- Location: LABCELL_X29_Y12_N36
\u0|new_sdram_controller_0|pending~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|pending~3_combout\ = ( \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[32]~20_combout\ & ( \u0|new_sdram_controller_0|pending~7_combout\ & ( (\u0|new_sdram_controller_0|active_addr\(14) & 
-- (\u0|new_sdram_controller_0|pending~8_combout\ & (!\u0|new_sdram_controller_0|Equal3~2_combout\ & !\u0|new_sdram_controller_0|Equal3~1_combout\))) ) ) ) # ( 
-- !\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[32]~20_combout\ & ( \u0|new_sdram_controller_0|pending~7_combout\ & ( (!\u0|new_sdram_controller_0|active_addr\(14) & (\u0|new_sdram_controller_0|pending~8_combout\ & 
-- (!\u0|new_sdram_controller_0|Equal3~2_combout\ & !\u0|new_sdram_controller_0|Equal3~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100000000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|new_sdram_controller_0|ALT_INV_active_addr\(14),
	datab => \u0|new_sdram_controller_0|ALT_INV_pending~8_combout\,
	datac => \u0|new_sdram_controller_0|ALT_INV_Equal3~2_combout\,
	datad => \u0|new_sdram_controller_0|ALT_INV_Equal3~1_combout\,
	datae => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_rd_data[32]~20_combout\,
	dataf => \u0|new_sdram_controller_0|ALT_INV_pending~7_combout\,
	combout => \u0|new_sdram_controller_0|pending~3_combout\);

-- Location: LABCELL_X33_Y12_N42
\u0|new_sdram_controller_0|m_count[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|m_count[1]~0_combout\ = ( \u0|new_sdram_controller_0|m_state.100000000~q\ & ( !\u0|new_sdram_controller_0|refresh_request~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u0|new_sdram_controller_0|ALT_INV_refresh_request~DUPLICATE_q\,
	dataf => \u0|new_sdram_controller_0|ALT_INV_m_state.100000000~q\,
	combout => \u0|new_sdram_controller_0|m_count[1]~0_combout\);

-- Location: LABCELL_X33_Y12_N24
\u0|new_sdram_controller_0|Selector33~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|Selector33~0_combout\ = ( \u0|new_sdram_controller_0|m_addr~0_combout\ & ( \u0|new_sdram_controller_0|pending~2_combout\ & ( (!\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|Equal1~0_combout\ & 
-- \u0|new_sdram_controller_0|m_count[1]~0_combout\) ) ) ) # ( !\u0|new_sdram_controller_0|m_addr~0_combout\ & ( \u0|new_sdram_controller_0|pending~2_combout\ & ( (!\u0|new_sdram_controller_0|pending~0_combout\) # 
-- ((!\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|Equal1~0_combout\) # ((!\u0|new_sdram_controller_0|pending~3_combout\) # (\u0|new_sdram_controller_0|m_count[1]~0_combout\))) ) ) ) # ( 
-- \u0|new_sdram_controller_0|m_addr~0_combout\ & ( !\u0|new_sdram_controller_0|pending~2_combout\ & ( (!\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|Equal1~0_combout\ & \u0|new_sdram_controller_0|m_count[1]~0_combout\) ) ) 
-- ) # ( !\u0|new_sdram_controller_0|m_addr~0_combout\ & ( !\u0|new_sdram_controller_0|pending~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000001100110011111110111111110000000011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|new_sdram_controller_0|ALT_INV_pending~0_combout\,
	datab => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_Equal1~0_combout\,
	datac => \u0|new_sdram_controller_0|ALT_INV_pending~3_combout\,
	datad => \u0|new_sdram_controller_0|ALT_INV_m_count[1]~0_combout\,
	datae => \u0|new_sdram_controller_0|ALT_INV_m_addr~0_combout\,
	dataf => \u0|new_sdram_controller_0|ALT_INV_pending~2_combout\,
	combout => \u0|new_sdram_controller_0|Selector33~0_combout\);

-- Location: FF_X33_Y12_N25
\u0|new_sdram_controller_0|m_state.100000000\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \u0|new_sdram_controller_0|Selector33~0_combout\,
	clrn => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|m_state.100000000~q\);

-- Location: LABCELL_X29_Y13_N45
\u0|new_sdram_controller_0|active_rnw~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|active_rnw~1_combout\ = ( \u0|new_sdram_controller_0|m_state.100000000~q\ & ( (!\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entries[0]~DUPLICATE_q\ & 
-- (!\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entries\(1) & ((!\u0|new_sdram_controller_0|init_done~DUPLICATE_q\) # (\u0|new_sdram_controller_0|m_state.000000001~q\)))) ) ) # ( 
-- !\u0|new_sdram_controller_0|m_state.100000000~q\ & ( ((!\u0|new_sdram_controller_0|init_done~DUPLICATE_q\) # ((!\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entries[0]~DUPLICATE_q\ & 
-- !\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entries\(1)))) # (\u0|new_sdram_controller_0|m_state.000000001~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111110001111111111111000111110001000000010001000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_entries[0]~DUPLICATE_q\,
	datab => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_entries\(1),
	datac => \u0|new_sdram_controller_0|ALT_INV_m_state.000000001~q\,
	datad => \u0|new_sdram_controller_0|ALT_INV_init_done~DUPLICATE_q\,
	dataf => \u0|new_sdram_controller_0|ALT_INV_m_state.100000000~q\,
	combout => \u0|new_sdram_controller_0|active_rnw~1_combout\);

-- Location: LABCELL_X31_Y11_N18
\u0|new_sdram_controller_0|active_rnw~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|active_rnw~2_combout\ = ( \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|Equal1~0_combout\ & ( !\u0|new_sdram_controller_0|refresh_request~DUPLICATE_q\ & ( 
-- (\u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\ & (((!\u0|new_sdram_controller_0|active_rnw~1_combout\) # (\u0|new_sdram_controller_0|m_state.000010000~DUPLICATE_q\)) # (\u0|new_sdram_controller_0|m_state.000001000~q\))) ) 
-- ) ) # ( !\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|Equal1~0_combout\ & ( !\u0|new_sdram_controller_0|refresh_request~DUPLICATE_q\ & ( (!\u0|new_sdram_controller_0|active_rnw~1_combout\ & 
-- \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001101111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|new_sdram_controller_0|ALT_INV_m_state.000001000~q\,
	datab => \u0|new_sdram_controller_0|ALT_INV_active_rnw~1_combout\,
	datac => \u0|new_sdram_controller_0|ALT_INV_m_state.000010000~DUPLICATE_q\,
	datad => \u0|rst_controller|alt_rst_sync_uq1|ALT_INV_altera_reset_synchronizer_int_chain_out~q\,
	datae => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_Equal1~0_combout\,
	dataf => \u0|new_sdram_controller_0|ALT_INV_refresh_request~DUPLICATE_q\,
	combout => \u0|new_sdram_controller_0|active_rnw~2_combout\);

-- Location: LABCELL_X31_Y11_N54
\u0|new_sdram_controller_0|active_rnw~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|active_rnw~0_combout\ = ( \u0|new_sdram_controller_0|pending~3_combout\ & ( \u0|new_sdram_controller_0|pending~0_combout\ & ( (\u0|new_sdram_controller_0|active_rnw~2_combout\ & 
-- (((!\u0|new_sdram_controller_0|active_rnw~1_combout\ & !\u0|new_sdram_controller_0|m_state.100000000~q\)) # (\u0|new_sdram_controller_0|pending~2_combout\))) ) ) ) # ( !\u0|new_sdram_controller_0|pending~3_combout\ & ( 
-- \u0|new_sdram_controller_0|pending~0_combout\ & ( (!\u0|new_sdram_controller_0|active_rnw~1_combout\ & (\u0|new_sdram_controller_0|active_rnw~2_combout\ & !\u0|new_sdram_controller_0|m_state.100000000~q\)) ) ) ) # ( 
-- \u0|new_sdram_controller_0|pending~3_combout\ & ( !\u0|new_sdram_controller_0|pending~0_combout\ & ( (!\u0|new_sdram_controller_0|active_rnw~1_combout\ & (\u0|new_sdram_controller_0|active_rnw~2_combout\ & 
-- !\u0|new_sdram_controller_0|m_state.100000000~q\)) ) ) ) # ( !\u0|new_sdram_controller_0|pending~3_combout\ & ( !\u0|new_sdram_controller_0|pending~0_combout\ & ( (!\u0|new_sdram_controller_0|active_rnw~1_combout\ & 
-- (\u0|new_sdram_controller_0|active_rnw~2_combout\ & !\u0|new_sdram_controller_0|m_state.100000000~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000000000011000000000000001100000000000000110100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|new_sdram_controller_0|ALT_INV_pending~2_combout\,
	datab => \u0|new_sdram_controller_0|ALT_INV_active_rnw~1_combout\,
	datac => \u0|new_sdram_controller_0|ALT_INV_active_rnw~2_combout\,
	datad => \u0|new_sdram_controller_0|ALT_INV_m_state.100000000~q\,
	datae => \u0|new_sdram_controller_0|ALT_INV_pending~3_combout\,
	dataf => \u0|new_sdram_controller_0|ALT_INV_pending~0_combout\,
	combout => \u0|new_sdram_controller_0|active_rnw~0_combout\);

-- Location: FF_X30_Y12_N11
\u0|new_sdram_controller_0|active_addr[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[28]~12_combout\,
	ena => \u0|new_sdram_controller_0|active_rnw~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|active_addr\(10));

-- Location: FF_X30_Y12_N32
\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	asdata => SDRAM_ADDR(13),
	sload => VCC,
	ena => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1\(31));

-- Location: FF_X30_Y12_N58
\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	asdata => SDRAM_ADDR(13),
	sload => VCC,
	ena => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0\(31));

-- Location: LABCELL_X30_Y12_N48
\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[31]~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[31]~19_combout\ = (!\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_address~DUPLICATE_q\ & 
-- ((\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0\(31)))) # (\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_address~DUPLICATE_q\ & 
-- (\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1\(31)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100110011000011110011001100001111001100110000111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_entry_1\(31),
	datac => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_entry_0\(31),
	datad => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_rd_address~DUPLICATE_q\,
	combout => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[31]~19_combout\);

-- Location: FF_X30_Y12_N50
\u0|new_sdram_controller_0|active_addr[13]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[31]~19_combout\,
	ena => \u0|new_sdram_controller_0|active_rnw~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|active_addr[13]~DUPLICATE_q\);

-- Location: LABCELL_X30_Y12_N12
\u0|new_sdram_controller_0|Equal3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|Equal3~0_combout\ = ( \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_address~DUPLICATE_q\ & ( \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1\(31) & ( 
-- !\u0|new_sdram_controller_0|active_addr[13]~DUPLICATE_q\ ) ) ) # ( !\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_address~DUPLICATE_q\ & ( 
-- \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1\(31) & ( !\u0|new_sdram_controller_0|active_addr[13]~DUPLICATE_q\ $ (!\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0\(31)) ) ) 
-- ) # ( \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_address~DUPLICATE_q\ & ( !\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1\(31) & ( 
-- \u0|new_sdram_controller_0|active_addr[13]~DUPLICATE_q\ ) ) ) # ( !\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_address~DUPLICATE_q\ & ( 
-- !\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1\(31) & ( !\u0|new_sdram_controller_0|active_addr[13]~DUPLICATE_q\ $ (!\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0\(31)) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010010101010101010101011010010110101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|new_sdram_controller_0|ALT_INV_active_addr[13]~DUPLICATE_q\,
	datac => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_entry_0\(31),
	datae => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_rd_address~DUPLICATE_q\,
	dataf => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_entry_1\(31),
	combout => \u0|new_sdram_controller_0|Equal3~0_combout\);

-- Location: FF_X30_Y12_N23
\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	asdata => SDRAM_ADDR(11),
	sload => VCC,
	ena => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0\(29));

-- Location: FF_X30_Y12_N28
\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	asdata => SDRAM_ADDR(12),
	sload => VCC,
	ena => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1\(30));

-- Location: FF_X30_Y12_N43
\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	asdata => SDRAM_ADDR(11),
	sload => VCC,
	ena => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1\(29));

-- Location: LABCELL_X30_Y12_N36
\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[29]~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[29]~14_combout\ = ( \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_address~DUPLICATE_q\ & ( 
-- \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1\(29) ) ) # ( !\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_address~DUPLICATE_q\ & ( 
-- \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0\(29) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_entry_0\(29),
	datac => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_entry_1\(29),
	dataf => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_rd_address~DUPLICATE_q\,
	combout => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[29]~14_combout\);

-- Location: FF_X30_Y12_N38
\u0|new_sdram_controller_0|active_addr[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[29]~14_combout\,
	ena => \u0|new_sdram_controller_0|active_rnw~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|active_addr\(11));

-- Location: FF_X30_Y12_N55
\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	asdata => SDRAM_ADDR(12),
	sload => VCC,
	ena => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0\(30));

-- Location: LABCELL_X30_Y12_N39
\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[30]~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[30]~18_combout\ = ( \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_address~DUPLICATE_q\ & ( 
-- \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1\(30) ) ) # ( !\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_address~DUPLICATE_q\ & ( 
-- \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0\(30) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_entry_1\(30),
	datac => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_entry_0\(30),
	dataf => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_rd_address~DUPLICATE_q\,
	combout => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[30]~18_combout\);

-- Location: FF_X30_Y12_N41
\u0|new_sdram_controller_0|active_addr[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[30]~18_combout\,
	ena => \u0|new_sdram_controller_0|active_rnw~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|active_addr\(12));

-- Location: LABCELL_X30_Y12_N54
\u0|new_sdram_controller_0|pending~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|pending~5_combout\ = ( \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0\(30) & ( \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_address~DUPLICATE_q\ & ( 
-- !\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1\(30) $ (\u0|new_sdram_controller_0|active_addr\(12)) ) ) ) # ( !\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0\(30) & ( 
-- \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_address~DUPLICATE_q\ & ( !\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1\(30) $ (\u0|new_sdram_controller_0|active_addr\(12)) ) ) ) 
-- # ( \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0\(30) & ( !\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_address~DUPLICATE_q\ & ( (\u0|new_sdram_controller_0|active_addr\(12) 
-- & (!\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0\(29) $ (\u0|new_sdram_controller_0|active_addr\(11)))) ) ) ) # ( !\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0\(30) & ( 
-- !\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_address~DUPLICATE_q\ & ( (!\u0|new_sdram_controller_0|active_addr\(12) & (!\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0\(29) $ 
-- (\u0|new_sdram_controller_0|active_addr\(11)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010010100000000000000001010010111001100001100111100110000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_entry_0\(29),
	datab => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_entry_1\(30),
	datac => \u0|new_sdram_controller_0|ALT_INV_active_addr\(11),
	datad => \u0|new_sdram_controller_0|ALT_INV_active_addr\(12),
	datae => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_entry_0\(30),
	dataf => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_rd_address~DUPLICATE_q\,
	combout => \u0|new_sdram_controller_0|pending~5_combout\);

-- Location: LABCELL_X30_Y10_N36
\Add6~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~9_sumout\ = SUM(( SDRAM_ADDR(22) ) + ( GND ) + ( \Add6~6\ ))
-- \Add6~10\ = CARRY(( SDRAM_ADDR(22) ) + ( GND ) + ( \Add6~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_SDRAM_ADDR(22),
	cin => \Add6~6\,
	sumout => \Add6~9_sumout\,
	cout => \Add6~10\);

-- Location: LABCELL_X30_Y10_N39
\Add6~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~13_sumout\ = SUM(( SDRAM_ADDR(23) ) + ( GND ) + ( \Add6~10\ ))
-- \Add6~14\ = CARRY(( SDRAM_ADDR(23) ) + ( GND ) + ( \Add6~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_SDRAM_ADDR(23),
	cin => \Add6~10\,
	sumout => \Add6~13_sumout\,
	cout => \Add6~14\);

-- Location: FF_X30_Y10_N40
\SDRAM_ADDR[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Add6~13_sumout\,
	sclr => \SDRAM_ADDR[24]~0_combout\,
	ena => \ALT_INV_SDRAM_ADDR[24]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SDRAM_ADDR(23));

-- Location: LABCELL_X30_Y10_N42
\Add6~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~21_sumout\ = SUM(( SDRAM_ADDR(24) ) + ( GND ) + ( \Add6~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_SDRAM_ADDR(24),
	cin => \Add6~14\,
	sumout => \Add6~21_sumout\);

-- Location: FF_X30_Y10_N44
\SDRAM_ADDR[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Add6~21_sumout\,
	sclr => \SDRAM_ADDR[24]~0_combout\,
	ena => \ALT_INV_SDRAM_ADDR[24]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SDRAM_ADDR(24));

-- Location: FF_X30_Y13_N32
\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1[42]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	asdata => SDRAM_ADDR(24),
	sload => VCC,
	ena => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1\(42));

-- Location: FF_X30_Y13_N49
\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0[42]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	asdata => SDRAM_ADDR(24),
	sload => VCC,
	ena => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0\(42));

-- Location: LABCELL_X30_Y12_N30
\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[42]~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[42]~13_combout\ = ( \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1\(42) & ( 
-- (\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_address~DUPLICATE_q\) # (\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0\(42)) ) ) # ( 
-- !\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1\(42) & ( (\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0\(42) & 
-- !\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_address~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_entry_0\(42),
	datac => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_rd_address~DUPLICATE_q\,
	dataf => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_entry_1\(42),
	combout => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[42]~13_combout\);

-- Location: FF_X30_Y12_N14
\u0|new_sdram_controller_0|active_addr[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	asdata => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[42]~13_combout\,
	sload => VCC,
	ena => \u0|new_sdram_controller_0|active_rnw~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|active_addr\(24));

-- Location: LABCELL_X30_Y12_N42
\u0|new_sdram_controller_0|pending~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|pending~6_combout\ = ( \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1\(29) & ( \u0|new_sdram_controller_0|active_addr\(24) & ( 
-- (!\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_address~DUPLICATE_q\ & (((\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0\(42))))) # 
-- (\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_address~DUPLICATE_q\ & (\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1\(42) & ((\u0|new_sdram_controller_0|active_addr\(11))))) ) 
-- ) ) # ( !\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1\(29) & ( \u0|new_sdram_controller_0|active_addr\(24) & ( 
-- (!\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_address~DUPLICATE_q\ & (((\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0\(42))))) # 
-- (\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_address~DUPLICATE_q\ & (\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1\(42) & ((!\u0|new_sdram_controller_0|active_addr\(11))))) ) 
-- ) ) # ( \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1\(29) & ( !\u0|new_sdram_controller_0|active_addr\(24) & ( 
-- (!\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_address~DUPLICATE_q\ & (((!\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0\(42))))) # 
-- (\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_address~DUPLICATE_q\ & (!\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1\(42) & ((\u0|new_sdram_controller_0|active_addr\(11))))) ) 
-- ) ) # ( !\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1\(29) & ( !\u0|new_sdram_controller_0|active_addr\(24) & ( 
-- (!\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_address~DUPLICATE_q\ & (((!\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0\(42))))) # 
-- (\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_address~DUPLICATE_q\ & (!\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1\(42) & ((!\u0|new_sdram_controller_0|active_addr\(11))))) 
-- ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110010100000110011000000101000110011010100000011001100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_entry_1\(42),
	datab => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_entry_0\(42),
	datac => \u0|new_sdram_controller_0|ALT_INV_active_addr\(11),
	datad => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_rd_address~DUPLICATE_q\,
	datae => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_entry_1\(29),
	dataf => \u0|new_sdram_controller_0|ALT_INV_active_addr\(24),
	combout => \u0|new_sdram_controller_0|pending~6_combout\);

-- Location: FF_X31_Y12_N2
\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0[43]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	asdata => \SDRAM_WE_N~q\,
	sload => VCC,
	ena => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0\(43));

-- Location: LABCELL_X33_Y10_N21
\u0|new_sdram_controller_0|Selector31~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|Selector31~0_combout\ = ( \u0|new_sdram_controller_0|init_done~DUPLICATE_q\ & ( !\u0|new_sdram_controller_0|m_state.000000001~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u0|new_sdram_controller_0|ALT_INV_m_state.000000001~q\,
	dataf => \u0|new_sdram_controller_0|ALT_INV_init_done~DUPLICATE_q\,
	combout => \u0|new_sdram_controller_0|Selector31~0_combout\);

-- Location: LABCELL_X29_Y13_N9
\u0|new_sdram_controller_0|active_cs_n~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|active_cs_n~0_combout\ = ( \u0|new_sdram_controller_0|active_cs_n~q\ & ( \u0|new_sdram_controller_0|Selector31~0_combout\ & ( (!\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|Equal1~0_combout\) # 
-- ((!\u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\) # (\u0|new_sdram_controller_0|refresh_request~q\)) ) ) ) # ( !\u0|new_sdram_controller_0|active_cs_n~q\ & ( \u0|new_sdram_controller_0|Selector31~0_combout\ & ( 
-- (\u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\ & \u0|new_sdram_controller_0|refresh_request~q\) ) ) ) # ( \u0|new_sdram_controller_0|active_cs_n~q\ & ( !\u0|new_sdram_controller_0|Selector31~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000011111111101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_Equal1~0_combout\,
	datac => \u0|rst_controller|alt_rst_sync_uq1|ALT_INV_altera_reset_synchronizer_int_chain_out~q\,
	datad => \u0|new_sdram_controller_0|ALT_INV_refresh_request~q\,
	datae => \u0|new_sdram_controller_0|ALT_INV_active_cs_n~q\,
	dataf => \u0|new_sdram_controller_0|ALT_INV_Selector31~0_combout\,
	combout => \u0|new_sdram_controller_0|active_cs_n~0_combout\);

-- Location: FF_X29_Y13_N11
\u0|new_sdram_controller_0|active_cs_n\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \u0|new_sdram_controller_0|active_cs_n~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|active_cs_n~q\);

-- Location: FF_X30_Y12_N4
\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1[43]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	asdata => \SDRAM_WE_N~q\,
	sload => VCC,
	ena => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1\(43));

-- Location: LABCELL_X30_Y12_N0
\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[43]~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[43]~15_combout\ = (!\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_address~DUPLICATE_q\ & 
-- (\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0\(43))) # (\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_address~DUPLICATE_q\ & 
-- ((\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1\(43))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011101000111010001110100011101000111010001110100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_entry_0\(43),
	datab => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_rd_address~DUPLICATE_q\,
	datac => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_entry_1\(43),
	combout => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[43]~15_combout\);

-- Location: FF_X30_Y12_N53
\u0|new_sdram_controller_0|active_rnw\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	asdata => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[43]~15_combout\,
	sload => VCC,
	ena => \u0|new_sdram_controller_0|active_rnw~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|active_rnw~q\);

-- Location: LABCELL_X30_Y12_N3
\u0|new_sdram_controller_0|pending~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|pending~1_combout\ = ( \u0|new_sdram_controller_0|active_rnw~q\ & ( (!\u0|new_sdram_controller_0|active_cs_n~q\ & ((!\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_address~DUPLICATE_q\ & 
-- (\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0\(43))) # (\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_address~DUPLICATE_q\ & 
-- ((\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1\(43)))))) ) ) # ( !\u0|new_sdram_controller_0|active_rnw~q\ & ( (!\u0|new_sdram_controller_0|active_cs_n~q\ & 
-- ((!\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_address~DUPLICATE_q\ & (!\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0\(43))) # 
-- (\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_address~DUPLICATE_q\ & ((!\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1\(43)))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011000010000000101100001000000001000000011100000100000001110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_entry_0\(43),
	datab => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_rd_address~DUPLICATE_q\,
	datac => \u0|new_sdram_controller_0|ALT_INV_active_cs_n~q\,
	datad => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_entry_1\(43),
	dataf => \u0|new_sdram_controller_0|ALT_INV_active_rnw~q\,
	combout => \u0|new_sdram_controller_0|pending~1_combout\);

-- Location: LABCELL_X30_Y12_N24
\u0|new_sdram_controller_0|pending~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|pending~2_combout\ = ( \u0|new_sdram_controller_0|pending~1_combout\ & ( \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[28]~12_combout\ & ( (\u0|new_sdram_controller_0|active_addr\(10) & 
-- (!\u0|new_sdram_controller_0|Equal3~0_combout\ & (\u0|new_sdram_controller_0|pending~5_combout\ & \u0|new_sdram_controller_0|pending~6_combout\))) ) ) ) # ( \u0|new_sdram_controller_0|pending~1_combout\ & ( 
-- !\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[28]~12_combout\ & ( (!\u0|new_sdram_controller_0|active_addr\(10) & (!\u0|new_sdram_controller_0|Equal3~0_combout\ & (\u0|new_sdram_controller_0|pending~5_combout\ & 
-- \u0|new_sdram_controller_0|pending~6_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000100000000000000000000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|new_sdram_controller_0|ALT_INV_active_addr\(10),
	datab => \u0|new_sdram_controller_0|ALT_INV_Equal3~0_combout\,
	datac => \u0|new_sdram_controller_0|ALT_INV_pending~5_combout\,
	datad => \u0|new_sdram_controller_0|ALT_INV_pending~6_combout\,
	datae => \u0|new_sdram_controller_0|ALT_INV_pending~1_combout\,
	dataf => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_rd_data[28]~12_combout\,
	combout => \u0|new_sdram_controller_0|pending~2_combout\);

-- Location: LABCELL_X33_Y11_N54
\u0|new_sdram_controller_0|Selector34~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|Selector34~0_combout\ = ( \u0|new_sdram_controller_0|refresh_request~DUPLICATE_q\ & ( \u0|new_sdram_controller_0|pending~3_combout\ & ( 
-- (\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|Equal1~0_combout\ & (\u0|new_sdram_controller_0|pending~0_combout\ & (!\u0|new_sdram_controller_0|m_addr~0_combout\ & \u0|new_sdram_controller_0|pending~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_Equal1~0_combout\,
	datab => \u0|new_sdram_controller_0|ALT_INV_pending~0_combout\,
	datac => \u0|new_sdram_controller_0|ALT_INV_m_addr~0_combout\,
	datad => \u0|new_sdram_controller_0|ALT_INV_pending~2_combout\,
	datae => \u0|new_sdram_controller_0|ALT_INV_refresh_request~DUPLICATE_q\,
	dataf => \u0|new_sdram_controller_0|ALT_INV_pending~3_combout\,
	combout => \u0|new_sdram_controller_0|Selector34~0_combout\);

-- Location: LABCELL_X33_Y11_N39
\u0|new_sdram_controller_0|Selector36~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|Selector36~0_combout\ = (!\u0|new_sdram_controller_0|m_state.000000001~q\ & ((!\u0|new_sdram_controller_0|init_done~DUPLICATE_q\) # (\u0|new_sdram_controller_0|refresh_request~DUPLICATE_q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100010011000100110001001100010011000100110001001100010011000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|new_sdram_controller_0|ALT_INV_refresh_request~DUPLICATE_q\,
	datab => \u0|new_sdram_controller_0|ALT_INV_m_state.000000001~q\,
	datac => \u0|new_sdram_controller_0|ALT_INV_init_done~DUPLICATE_q\,
	combout => \u0|new_sdram_controller_0|Selector36~0_combout\);

-- Location: LABCELL_X33_Y12_N48
\u0|new_sdram_controller_0|Selector34~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|Selector34~1_combout\ = ( \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|Equal1~0_combout\ & ( (\u0|new_sdram_controller_0|pending~3_combout\ & 
-- (!\u0|new_sdram_controller_0|refresh_request~DUPLICATE_q\ & (\u0|new_sdram_controller_0|pending~2_combout\ & \u0|new_sdram_controller_0|pending~0_combout\))) ) ) # ( 
-- !\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|Equal1~0_combout\ & ( !\u0|new_sdram_controller_0|refresh_request~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110011001100110011001100110000000000000001000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|new_sdram_controller_0|ALT_INV_pending~3_combout\,
	datab => \u0|new_sdram_controller_0|ALT_INV_refresh_request~DUPLICATE_q\,
	datac => \u0|new_sdram_controller_0|ALT_INV_pending~2_combout\,
	datad => \u0|new_sdram_controller_0|ALT_INV_pending~0_combout\,
	dataf => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_Equal1~0_combout\,
	combout => \u0|new_sdram_controller_0|Selector34~1_combout\);

-- Location: LABCELL_X31_Y11_N39
\u0|new_sdram_controller_0|Selector26~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|Selector26~0_combout\ = ( \u0|new_sdram_controller_0|Selector31~0_combout\ & ( (!\u0|new_sdram_controller_0|refresh_request~DUPLICATE_q\ & 
-- \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|Equal1~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000101010100000000010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|new_sdram_controller_0|ALT_INV_refresh_request~DUPLICATE_q\,
	datad => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_Equal1~0_combout\,
	dataf => \u0|new_sdram_controller_0|ALT_INV_Selector31~0_combout\,
	combout => \u0|new_sdram_controller_0|Selector26~0_combout\);

-- Location: FF_X31_Y11_N41
\u0|new_sdram_controller_0|m_state.000000010\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \u0|new_sdram_controller_0|Selector26~0_combout\,
	clrn => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|m_state.000000010~q\);

-- Location: LABCELL_X31_Y11_N3
\u0|new_sdram_controller_0|Selector36~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|Selector36~1_combout\ = ( \u0|new_sdram_controller_0|m_state.000000010~q\ & ( !\u0|new_sdram_controller_0|active_rnw~q\ ) ) # ( !\u0|new_sdram_controller_0|m_state.000000010~q\ & ( \u0|new_sdram_controller_0|m_next.000010000~q\ 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u0|new_sdram_controller_0|ALT_INV_m_next.000010000~q\,
	datad => \u0|new_sdram_controller_0|ALT_INV_active_rnw~q\,
	dataf => \u0|new_sdram_controller_0|ALT_INV_m_state.000000010~q\,
	combout => \u0|new_sdram_controller_0|Selector36~1_combout\);

-- Location: LABCELL_X31_Y11_N15
\u0|new_sdram_controller_0|Selector36~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|Selector36~2_combout\ = ( \u0|new_sdram_controller_0|Selector34~1_combout\ & ( \u0|new_sdram_controller_0|Selector36~1_combout\ & ( (!\u0|new_sdram_controller_0|Selector34~0_combout\ & 
-- (!\u0|new_sdram_controller_0|m_state.010000000~q\ & !\u0|new_sdram_controller_0|Selector36~0_combout\)) ) ) ) # ( !\u0|new_sdram_controller_0|Selector34~1_combout\ & ( \u0|new_sdram_controller_0|Selector36~1_combout\ & ( 
-- (!\u0|new_sdram_controller_0|Selector34~0_combout\ & (!\u0|new_sdram_controller_0|m_state.010000000~q\ & (!\u0|new_sdram_controller_0|m_state.100000000~q\ & !\u0|new_sdram_controller_0|Selector36~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000001000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|new_sdram_controller_0|ALT_INV_Selector34~0_combout\,
	datab => \u0|new_sdram_controller_0|ALT_INV_m_state.010000000~q\,
	datac => \u0|new_sdram_controller_0|ALT_INV_m_state.100000000~q\,
	datad => \u0|new_sdram_controller_0|ALT_INV_Selector36~0_combout\,
	datae => \u0|new_sdram_controller_0|ALT_INV_Selector34~1_combout\,
	dataf => \u0|new_sdram_controller_0|ALT_INV_Selector36~1_combout\,
	combout => \u0|new_sdram_controller_0|Selector36~2_combout\);

-- Location: FF_X31_Y11_N17
\u0|new_sdram_controller_0|m_next.000010000\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \u0|new_sdram_controller_0|Selector36~2_combout\,
	clrn => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|m_next.000010000~q\);

-- Location: LABCELL_X29_Y13_N21
\u0|new_sdram_controller_0|Selector29~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|Selector29~0_combout\ = ( \u0|new_sdram_controller_0|refresh_request~q\ & ( \u0|new_sdram_controller_0|m_state.100000000~q\ ) ) # ( !\u0|new_sdram_controller_0|refresh_request~q\ & ( 
-- \u0|new_sdram_controller_0|m_state.100000000~q\ & ( (\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entries\(1)) # (\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entries[0]~DUPLICATE_q\) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001011111010111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_entries[0]~DUPLICATE_q\,
	datac => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_entries\(1),
	datae => \u0|new_sdram_controller_0|ALT_INV_refresh_request~q\,
	dataf => \u0|new_sdram_controller_0|ALT_INV_m_state.100000000~q\,
	combout => \u0|new_sdram_controller_0|Selector29~0_combout\);

-- Location: LABCELL_X33_Y11_N18
\u0|new_sdram_controller_0|Selector29~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|Selector29~2_combout\ = ( \u0|new_sdram_controller_0|pending~2_combout\ & ( \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|Equal1~0_combout\ & ( (\u0|new_sdram_controller_0|WideOr8~0_combout\ & 
-- (((\u0|new_sdram_controller_0|pending~0_combout\ & \u0|new_sdram_controller_0|pending~3_combout\)) # (\u0|new_sdram_controller_0|m_addr~0_combout\))) ) ) ) # ( !\u0|new_sdram_controller_0|pending~2_combout\ & ( 
-- \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|Equal1~0_combout\ & ( (\u0|new_sdram_controller_0|m_addr~0_combout\ & \u0|new_sdram_controller_0|WideOr8~0_combout\) ) ) ) # ( \u0|new_sdram_controller_0|pending~2_combout\ & 
-- ( !\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|Equal1~0_combout\ & ( (\u0|new_sdram_controller_0|m_addr~0_combout\ & \u0|new_sdram_controller_0|WideOr8~0_combout\) ) ) ) # ( 
-- !\u0|new_sdram_controller_0|pending~2_combout\ & ( !\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|Equal1~0_combout\ & ( (\u0|new_sdram_controller_0|m_addr~0_combout\ & \u0|new_sdram_controller_0|WideOr8~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010100000000010101010000000001010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|new_sdram_controller_0|ALT_INV_m_addr~0_combout\,
	datab => \u0|new_sdram_controller_0|ALT_INV_pending~0_combout\,
	datac => \u0|new_sdram_controller_0|ALT_INV_pending~3_combout\,
	datad => \u0|new_sdram_controller_0|ALT_INV_WideOr8~0_combout\,
	datae => \u0|new_sdram_controller_0|ALT_INV_pending~2_combout\,
	dataf => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_Equal1~0_combout\,
	combout => \u0|new_sdram_controller_0|Selector29~2_combout\);

-- Location: LABCELL_X33_Y11_N51
\u0|new_sdram_controller_0|Selector29~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|Selector29~3_combout\ = ( !\u0|new_sdram_controller_0|Selector29~2_combout\ & ( (!\u0|new_sdram_controller_0|Selector25~1_combout\ & !\u0|new_sdram_controller_0|Selector29~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000000000110011000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u0|new_sdram_controller_0|ALT_INV_Selector25~1_combout\,
	datad => \u0|new_sdram_controller_0|ALT_INV_Selector29~0_combout\,
	dataf => \u0|new_sdram_controller_0|ALT_INV_Selector29~2_combout\,
	combout => \u0|new_sdram_controller_0|Selector29~3_combout\);

-- Location: LABCELL_X29_Y13_N24
\u0|new_sdram_controller_0|m_count[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|m_count[2]~3_combout\ = ( \u0|new_sdram_controller_0|m_state.000000001~q\ & ( (!\u0|new_sdram_controller_0|m_state.000000010~q\ & (!\u0|new_sdram_controller_0|m_state.000001000~q\ & 
-- !\u0|new_sdram_controller_0|m_state.000010000~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011000000000000001100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u0|new_sdram_controller_0|ALT_INV_m_state.000000010~q\,
	datac => \u0|new_sdram_controller_0|ALT_INV_m_state.000001000~q\,
	datad => \u0|new_sdram_controller_0|ALT_INV_m_state.000010000~DUPLICATE_q\,
	dataf => \u0|new_sdram_controller_0|ALT_INV_m_state.000000001~q\,
	combout => \u0|new_sdram_controller_0|m_count[2]~3_combout\);

-- Location: LABCELL_X33_Y10_N3
\u0|new_sdram_controller_0|m_count[0]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|m_count[0]~8_combout\ = ( \u0|new_sdram_controller_0|m_count\(0) & ( (!\u0|new_sdram_controller_0|Selector25~1_combout\ & ((\u0|new_sdram_controller_0|m_state.000000010~q\) # (\u0|new_sdram_controller_0|m_state.010000000~q\))) ) 
-- ) # ( !\u0|new_sdram_controller_0|m_count\(0) & ( (!\u0|new_sdram_controller_0|Selector25~1_combout\ & (((\u0|new_sdram_controller_0|Selector29~8_combout\) # (\u0|new_sdram_controller_0|m_state.000000010~q\)) # 
-- (\u0|new_sdram_controller_0|m_state.010000000~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110011001100010011001100110001001100010011000100110001001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|new_sdram_controller_0|ALT_INV_m_state.010000000~q\,
	datab => \u0|new_sdram_controller_0|ALT_INV_Selector25~1_combout\,
	datac => \u0|new_sdram_controller_0|ALT_INV_m_state.000000010~q\,
	datad => \u0|new_sdram_controller_0|ALT_INV_Selector29~8_combout\,
	dataf => \u0|new_sdram_controller_0|ALT_INV_m_count\(0),
	combout => \u0|new_sdram_controller_0|m_count[0]~8_combout\);

-- Location: LABCELL_X33_Y10_N39
\u0|new_sdram_controller_0|m_count[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|m_count[1]~1_combout\ = ( \u0|new_sdram_controller_0|m_count\(3) & ( !\u0|new_sdram_controller_0|m_state.001000000~q\ ) ) # ( !\u0|new_sdram_controller_0|m_count\(3) & ( (!\u0|new_sdram_controller_0|m_state.001000000~q\ & 
-- (((!\u0|new_sdram_controller_0|m_state.000000100~q\) # (\u0|new_sdram_controller_0|m_count\(1))) # (\u0|new_sdram_controller_0|m_count\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110001001100110011000100110011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|new_sdram_controller_0|ALT_INV_m_count\(2),
	datab => \u0|new_sdram_controller_0|ALT_INV_m_state.001000000~q\,
	datac => \u0|new_sdram_controller_0|ALT_INV_m_count\(1),
	datad => \u0|new_sdram_controller_0|ALT_INV_m_state.000000100~q\,
	dataf => \u0|new_sdram_controller_0|ALT_INV_m_count\(3),
	combout => \u0|new_sdram_controller_0|m_count[1]~1_combout\);

-- Location: LABCELL_X33_Y12_N18
\u0|new_sdram_controller_0|m_count[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|m_count[1]~2_combout\ = ( \u0|new_sdram_controller_0|m_count[1]~0_combout\ & ( \u0|new_sdram_controller_0|m_count[1]~1_combout\ & ( 
-- (\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|Equal1~0_combout\ & ((!\u0|new_sdram_controller_0|pending~0_combout\) # ((!\u0|new_sdram_controller_0|pending~2_combout\) # 
-- (!\u0|new_sdram_controller_0|pending~3_combout\)))) ) ) ) # ( !\u0|new_sdram_controller_0|m_count[1]~0_combout\ & ( \u0|new_sdram_controller_0|m_count[1]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110011001100110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|new_sdram_controller_0|ALT_INV_pending~0_combout\,
	datab => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_Equal1~0_combout\,
	datac => \u0|new_sdram_controller_0|ALT_INV_pending~2_combout\,
	datad => \u0|new_sdram_controller_0|ALT_INV_pending~3_combout\,
	datae => \u0|new_sdram_controller_0|ALT_INV_m_count[1]~0_combout\,
	dataf => \u0|new_sdram_controller_0|ALT_INV_m_count[1]~1_combout\,
	combout => \u0|new_sdram_controller_0|m_count[1]~2_combout\);

-- Location: LABCELL_X33_Y12_N0
\u0|new_sdram_controller_0|m_count[1]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|m_count[1]~12_combout\ = ( !\u0|new_sdram_controller_0|m_state.000000001~q\ & ( ((!\u0|new_sdram_controller_0|refresh_request~DUPLICATE_q\) # ((!\u0|new_sdram_controller_0|init_done~DUPLICATE_q\))) ) ) # ( 
-- \u0|new_sdram_controller_0|m_state.000000001~q\ & ( (!\u0|new_sdram_controller_0|pending~0_combout\) # ((!\u0|new_sdram_controller_0|refresh_request~DUPLICATE_q\) # ((!\u0|new_sdram_controller_0|pending~3_combout\) # 
-- ((!\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|Equal1~0_combout\) # (!\u0|new_sdram_controller_0|pending~2_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "1111110011111100111111111111111111111100111111001111111111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|new_sdram_controller_0|ALT_INV_pending~0_combout\,
	datab => \u0|new_sdram_controller_0|ALT_INV_refresh_request~DUPLICATE_q\,
	datac => \u0|new_sdram_controller_0|ALT_INV_pending~3_combout\,
	datad => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_Equal1~0_combout\,
	datae => \u0|new_sdram_controller_0|ALT_INV_m_state.000000001~q\,
	dataf => \u0|new_sdram_controller_0|ALT_INV_pending~2_combout\,
	datag => \u0|new_sdram_controller_0|ALT_INV_init_done~DUPLICATE_q\,
	combout => \u0|new_sdram_controller_0|m_count[1]~12_combout\);

-- Location: LABCELL_X33_Y10_N48
\u0|new_sdram_controller_0|m_count[0]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|m_count[0]~9_combout\ = ( \u0|new_sdram_controller_0|m_count\(0) & ( \u0|new_sdram_controller_0|Selector29~8_combout\ & ( ((!\u0|new_sdram_controller_0|m_count[1]~2_combout\) # (\u0|new_sdram_controller_0|m_state.100000000~q\)) 
-- # (\u0|new_sdram_controller_0|m_count[0]~8_combout\) ) ) ) # ( !\u0|new_sdram_controller_0|m_count\(0) & ( \u0|new_sdram_controller_0|Selector29~8_combout\ & ( (\u0|new_sdram_controller_0|m_count[1]~2_combout\ & 
-- ((\u0|new_sdram_controller_0|m_state.100000000~q\) # (\u0|new_sdram_controller_0|m_count[0]~8_combout\))) ) ) ) # ( \u0|new_sdram_controller_0|m_count\(0) & ( !\u0|new_sdram_controller_0|Selector29~8_combout\ & ( 
-- ((!\u0|new_sdram_controller_0|m_count[1]~2_combout\) # ((\u0|new_sdram_controller_0|m_count[1]~12_combout\) # (\u0|new_sdram_controller_0|m_state.100000000~q\))) # (\u0|new_sdram_controller_0|m_count[0]~8_combout\) ) ) ) # ( 
-- !\u0|new_sdram_controller_0|m_count\(0) & ( !\u0|new_sdram_controller_0|Selector29~8_combout\ & ( (\u0|new_sdram_controller_0|m_count[1]~2_combout\ & (!\u0|new_sdram_controller_0|m_count[1]~12_combout\ & ((\u0|new_sdram_controller_0|m_state.100000000~q\) 
-- # (\u0|new_sdram_controller_0|m_count[0]~8_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001100000000110111111111111100010011000100111101111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|new_sdram_controller_0|ALT_INV_m_count[0]~8_combout\,
	datab => \u0|new_sdram_controller_0|ALT_INV_m_count[1]~2_combout\,
	datac => \u0|new_sdram_controller_0|ALT_INV_m_state.100000000~q\,
	datad => \u0|new_sdram_controller_0|ALT_INV_m_count[1]~12_combout\,
	datae => \u0|new_sdram_controller_0|ALT_INV_m_count\(0),
	dataf => \u0|new_sdram_controller_0|ALT_INV_Selector29~8_combout\,
	combout => \u0|new_sdram_controller_0|m_count[0]~9_combout\);

-- Location: FF_X33_Y10_N50
\u0|new_sdram_controller_0|m_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \u0|new_sdram_controller_0|m_count[0]~9_combout\,
	clrn => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|m_count\(0));

-- Location: LABCELL_X33_Y10_N42
\u0|new_sdram_controller_0|Add3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|Add3~0_combout\ = ( \u0|new_sdram_controller_0|m_count\(3) & ( (!\u0|new_sdram_controller_0|m_count\(0) & (!\u0|new_sdram_controller_0|m_count\(1) & !\u0|new_sdram_controller_0|m_count\(2))) ) ) # ( 
-- !\u0|new_sdram_controller_0|m_count\(3) & ( ((\u0|new_sdram_controller_0|m_count\(2)) # (\u0|new_sdram_controller_0|m_count\(1))) # (\u0|new_sdram_controller_0|m_count\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111101111111011111110111111110000000100000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|new_sdram_controller_0|ALT_INV_m_count\(0),
	datab => \u0|new_sdram_controller_0|ALT_INV_m_count\(1),
	datac => \u0|new_sdram_controller_0|ALT_INV_m_count\(2),
	dataf => \u0|new_sdram_controller_0|ALT_INV_m_count\(3),
	combout => \u0|new_sdram_controller_0|Add3~0_combout\);

-- Location: LABCELL_X33_Y10_N0
\u0|new_sdram_controller_0|m_count[3]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|m_count[3]~4_combout\ = ( \u0|new_sdram_controller_0|Add3~0_combout\ & ( !\u0|new_sdram_controller_0|m_state.010000000~q\ ) ) # ( !\u0|new_sdram_controller_0|Add3~0_combout\ & ( (!\u0|new_sdram_controller_0|m_state.010000000~q\ 
-- & ((!\u0|new_sdram_controller_0|m_count[2]~3_combout\) # (\u0|new_sdram_controller_0|Selector25~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000110000111100000011000011110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u0|new_sdram_controller_0|ALT_INV_Selector25~1_combout\,
	datac => \u0|new_sdram_controller_0|ALT_INV_m_state.010000000~q\,
	datad => \u0|new_sdram_controller_0|ALT_INV_m_count[2]~3_combout\,
	dataf => \u0|new_sdram_controller_0|ALT_INV_Add3~0_combout\,
	combout => \u0|new_sdram_controller_0|m_count[3]~4_combout\);

-- Location: LABCELL_X33_Y10_N24
\u0|new_sdram_controller_0|m_count[3]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|m_count[3]~5_combout\ = ( \u0|new_sdram_controller_0|m_count\(3) & ( \u0|new_sdram_controller_0|m_count[1]~12_combout\ & ( (!\u0|new_sdram_controller_0|Selector29~8_combout\) # 
-- ((!\u0|new_sdram_controller_0|m_count[1]~2_combout\) # ((!\u0|new_sdram_controller_0|m_count[3]~4_combout\ & !\u0|new_sdram_controller_0|m_state.100000000~q\))) ) ) ) # ( !\u0|new_sdram_controller_0|m_count\(3) & ( 
-- \u0|new_sdram_controller_0|m_count[1]~12_combout\ & ( (!\u0|new_sdram_controller_0|m_count[3]~4_combout\ & (!\u0|new_sdram_controller_0|m_state.100000000~q\ & (\u0|new_sdram_controller_0|Selector29~8_combout\ & 
-- \u0|new_sdram_controller_0|m_count[1]~2_combout\))) ) ) ) # ( \u0|new_sdram_controller_0|m_count\(3) & ( !\u0|new_sdram_controller_0|m_count[1]~12_combout\ & ( (!\u0|new_sdram_controller_0|m_count[1]~2_combout\) # 
-- ((!\u0|new_sdram_controller_0|m_count[3]~4_combout\ & !\u0|new_sdram_controller_0|m_state.100000000~q\)) ) ) ) # ( !\u0|new_sdram_controller_0|m_count\(3) & ( !\u0|new_sdram_controller_0|m_count[1]~12_combout\ & ( 
-- (!\u0|new_sdram_controller_0|m_count[3]~4_combout\ & (!\u0|new_sdram_controller_0|m_state.100000000~q\ & \u0|new_sdram_controller_0|m_count[1]~2_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010001000111111111000100000000000000010001111111111111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|new_sdram_controller_0|ALT_INV_m_count[3]~4_combout\,
	datab => \u0|new_sdram_controller_0|ALT_INV_m_state.100000000~q\,
	datac => \u0|new_sdram_controller_0|ALT_INV_Selector29~8_combout\,
	datad => \u0|new_sdram_controller_0|ALT_INV_m_count[1]~2_combout\,
	datae => \u0|new_sdram_controller_0|ALT_INV_m_count\(3),
	dataf => \u0|new_sdram_controller_0|ALT_INV_m_count[1]~12_combout\,
	combout => \u0|new_sdram_controller_0|m_count[3]~5_combout\);

-- Location: FF_X33_Y10_N25
\u0|new_sdram_controller_0|m_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \u0|new_sdram_controller_0|m_count[3]~5_combout\,
	clrn => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|m_count\(3));

-- Location: FF_X33_Y10_N13
\u0|new_sdram_controller_0|m_count[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \u0|new_sdram_controller_0|m_count[1]~7_combout\,
	clrn => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|m_count[1]~DUPLICATE_q\);

-- Location: LABCELL_X31_Y12_N3
\u0|new_sdram_controller_0|Selector27~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|Selector27~1_combout\ = ( \u0|new_sdram_controller_0|m_count[1]~DUPLICATE_q\ & ( \u0|new_sdram_controller_0|m_state.000000100~q\ ) ) # ( !\u0|new_sdram_controller_0|m_count[1]~DUPLICATE_q\ & ( 
-- (\u0|new_sdram_controller_0|m_state.000000100~q\ & ((\u0|new_sdram_controller_0|m_count\(2)) # (\u0|new_sdram_controller_0|m_count\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011100000111000001110000011100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|new_sdram_controller_0|ALT_INV_m_count\(3),
	datab => \u0|new_sdram_controller_0|ALT_INV_m_count\(2),
	datac => \u0|new_sdram_controller_0|ALT_INV_m_state.000000100~q\,
	dataf => \u0|new_sdram_controller_0|ALT_INV_m_count[1]~DUPLICATE_q\,
	combout => \u0|new_sdram_controller_0|Selector27~1_combout\);

-- Location: LABCELL_X33_Y12_N51
\u0|new_sdram_controller_0|Selector27~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|Selector27~2_combout\ = ( \u0|new_sdram_controller_0|m_state.100000000~q\ & ( (!\u0|new_sdram_controller_0|refresh_request~DUPLICATE_q\ & (\u0|new_sdram_controller_0|WideOr8~0_combout\ & 
-- !\u0|new_sdram_controller_0|Selector27~1_combout\)) ) ) # ( !\u0|new_sdram_controller_0|m_state.100000000~q\ & ( (\u0|new_sdram_controller_0|WideOr8~0_combout\ & !\u0|new_sdram_controller_0|Selector27~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001100000000000000110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u0|new_sdram_controller_0|ALT_INV_refresh_request~DUPLICATE_q\,
	datac => \u0|new_sdram_controller_0|ALT_INV_WideOr8~0_combout\,
	datad => \u0|new_sdram_controller_0|ALT_INV_Selector27~1_combout\,
	dataf => \u0|new_sdram_controller_0|ALT_INV_m_state.100000000~q\,
	combout => \u0|new_sdram_controller_0|Selector27~2_combout\);

-- Location: LABCELL_X31_Y12_N9
\u0|new_sdram_controller_0|Selector27~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|Selector27~0_combout\ = (!\u0|new_sdram_controller_0|m_addr~0_combout\ & ((\u0|new_sdram_controller_0|refresh_request~DUPLICATE_q\) # (\u0|new_sdram_controller_0|m_state.000000100~q\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101010101010000010101010101000001010101010100000101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|new_sdram_controller_0|ALT_INV_m_addr~0_combout\,
	datac => \u0|new_sdram_controller_0|ALT_INV_m_state.000000100~q\,
	datad => \u0|new_sdram_controller_0|ALT_INV_refresh_request~DUPLICATE_q\,
	combout => \u0|new_sdram_controller_0|Selector27~0_combout\);

-- Location: LABCELL_X33_Y12_N12
\u0|new_sdram_controller_0|Selector27~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|Selector27~3_combout\ = ( \u0|new_sdram_controller_0|pending~0_combout\ & ( \u0|new_sdram_controller_0|pending~2_combout\ & ( (!\u0|new_sdram_controller_0|Selector27~2_combout\) # 
-- ((\u0|new_sdram_controller_0|Selector27~0_combout\ & (\u0|new_sdram_controller_0|pending~3_combout\ & \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|Equal1~0_combout\))) ) ) ) # ( 
-- !\u0|new_sdram_controller_0|pending~0_combout\ & ( \u0|new_sdram_controller_0|pending~2_combout\ & ( !\u0|new_sdram_controller_0|Selector27~2_combout\ ) ) ) # ( \u0|new_sdram_controller_0|pending~0_combout\ & ( 
-- !\u0|new_sdram_controller_0|pending~2_combout\ & ( !\u0|new_sdram_controller_0|Selector27~2_combout\ ) ) ) # ( !\u0|new_sdram_controller_0|pending~0_combout\ & ( !\u0|new_sdram_controller_0|pending~2_combout\ & ( 
-- !\u0|new_sdram_controller_0|Selector27~2_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|new_sdram_controller_0|ALT_INV_Selector27~2_combout\,
	datab => \u0|new_sdram_controller_0|ALT_INV_Selector27~0_combout\,
	datac => \u0|new_sdram_controller_0|ALT_INV_pending~3_combout\,
	datad => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_Equal1~0_combout\,
	datae => \u0|new_sdram_controller_0|ALT_INV_pending~0_combout\,
	dataf => \u0|new_sdram_controller_0|ALT_INV_pending~2_combout\,
	combout => \u0|new_sdram_controller_0|Selector27~3_combout\);

-- Location: FF_X33_Y12_N14
\u0|new_sdram_controller_0|m_state.000000100\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \u0|new_sdram_controller_0|Selector27~3_combout\,
	clrn => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|m_state.000000100~q\);

-- Location: LABCELL_X33_Y10_N6
\u0|new_sdram_controller_0|Selector25~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|Selector25~0_combout\ = ( !\u0|new_sdram_controller_0|m_count\(3) & ( (!\u0|new_sdram_controller_0|m_count\(2) & (!\u0|new_sdram_controller_0|m_count\(1) & \u0|new_sdram_controller_0|m_state.000000100~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|new_sdram_controller_0|ALT_INV_m_count\(2),
	datab => \u0|new_sdram_controller_0|ALT_INV_m_count\(1),
	datac => \u0|new_sdram_controller_0|ALT_INV_m_state.000000100~q\,
	dataf => \u0|new_sdram_controller_0|ALT_INV_m_count\(3),
	combout => \u0|new_sdram_controller_0|Selector25~0_combout\);

-- Location: LABCELL_X33_Y11_N24
\u0|new_sdram_controller_0|Selector29~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|Selector29~1_combout\ = ( \u0|new_sdram_controller_0|pending~2_combout\ & ( \u0|new_sdram_controller_0|pending~3_combout\ & ( (!\u0|new_sdram_controller_0|Selector29~0_combout\ & 
-- (((\u0|new_sdram_controller_0|Selector25~0_combout\)))) # (\u0|new_sdram_controller_0|Selector29~0_combout\ & (!\u0|new_sdram_controller_0|refresh_request~DUPLICATE_q\ & ((\u0|new_sdram_controller_0|pending~0_combout\)))) ) ) ) # ( 
-- !\u0|new_sdram_controller_0|pending~2_combout\ & ( \u0|new_sdram_controller_0|pending~3_combout\ & ( (\u0|new_sdram_controller_0|Selector25~0_combout\ & !\u0|new_sdram_controller_0|Selector29~0_combout\) ) ) ) # ( 
-- \u0|new_sdram_controller_0|pending~2_combout\ & ( !\u0|new_sdram_controller_0|pending~3_combout\ & ( (\u0|new_sdram_controller_0|Selector25~0_combout\ & !\u0|new_sdram_controller_0|Selector29~0_combout\) ) ) ) # ( 
-- !\u0|new_sdram_controller_0|pending~2_combout\ & ( !\u0|new_sdram_controller_0|pending~3_combout\ & ( (\u0|new_sdram_controller_0|Selector25~0_combout\ & !\u0|new_sdram_controller_0|Selector29~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000110000001100000011000000111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|new_sdram_controller_0|ALT_INV_refresh_request~DUPLICATE_q\,
	datab => \u0|new_sdram_controller_0|ALT_INV_Selector25~0_combout\,
	datac => \u0|new_sdram_controller_0|ALT_INV_Selector29~0_combout\,
	datad => \u0|new_sdram_controller_0|ALT_INV_pending~0_combout\,
	datae => \u0|new_sdram_controller_0|ALT_INV_pending~2_combout\,
	dataf => \u0|new_sdram_controller_0|ALT_INV_pending~3_combout\,
	combout => \u0|new_sdram_controller_0|Selector29~1_combout\);

-- Location: LABCELL_X31_Y11_N42
\u0|new_sdram_controller_0|Selector29~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|Selector29~12_combout\ = ( \u0|new_sdram_controller_0|m_state.000010000~q\ & ( \u0|new_sdram_controller_0|Selector29~1_combout\ & ( (!\u0|new_sdram_controller_0|Selector29~11_combout\ & 
-- (\u0|new_sdram_controller_0|m_next.000010000~q\)) # (\u0|new_sdram_controller_0|Selector29~11_combout\ & ((!\u0|new_sdram_controller_0|Selector29~3_combout\ & 
-- ((!\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[43]~15_combout\))) # (\u0|new_sdram_controller_0|Selector29~3_combout\ & (\u0|new_sdram_controller_0|m_next.000010000~q\)))) ) ) ) # ( 
-- !\u0|new_sdram_controller_0|m_state.000010000~q\ & ( \u0|new_sdram_controller_0|Selector29~1_combout\ & ( (!\u0|new_sdram_controller_0|Selector29~11_combout\ & (\u0|new_sdram_controller_0|m_next.000010000~q\)) # 
-- (\u0|new_sdram_controller_0|Selector29~11_combout\ & ((!\u0|new_sdram_controller_0|Selector29~3_combout\ & ((!\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[43]~15_combout\))) # 
-- (\u0|new_sdram_controller_0|Selector29~3_combout\ & (\u0|new_sdram_controller_0|m_next.000010000~q\)))) ) ) ) # ( \u0|new_sdram_controller_0|m_state.000010000~q\ & ( !\u0|new_sdram_controller_0|Selector29~1_combout\ & ( 
-- (\u0|new_sdram_controller_0|Selector29~11_combout\ & !\u0|new_sdram_controller_0|Selector29~3_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010000000001110010001100110111001000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|new_sdram_controller_0|ALT_INV_Selector29~11_combout\,
	datab => \u0|new_sdram_controller_0|ALT_INV_m_next.000010000~q\,
	datac => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_rd_data[43]~15_combout\,
	datad => \u0|new_sdram_controller_0|ALT_INV_Selector29~3_combout\,
	datae => \u0|new_sdram_controller_0|ALT_INV_m_state.000010000~q\,
	dataf => \u0|new_sdram_controller_0|ALT_INV_Selector29~1_combout\,
	combout => \u0|new_sdram_controller_0|Selector29~12_combout\);

-- Location: FF_X31_Y11_N43
\u0|new_sdram_controller_0|m_state.000010000~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \u0|new_sdram_controller_0|Selector29~12_combout\,
	clrn => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|m_state.000010000~DUPLICATE_q\);

-- Location: LABCELL_X31_Y11_N33
\u0|new_sdram_controller_0|Selector29~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|Selector29~8_combout\ = ( !\u0|new_sdram_controller_0|m_state.000010000~DUPLICATE_q\ & ( (!\u0|new_sdram_controller_0|m_state.000001000~q\ & \u0|new_sdram_controller_0|m_state.000000001~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|new_sdram_controller_0|ALT_INV_m_state.000001000~q\,
	datac => \u0|new_sdram_controller_0|ALT_INV_m_state.000000001~q\,
	dataf => \u0|new_sdram_controller_0|ALT_INV_m_state.000010000~DUPLICATE_q\,
	combout => \u0|new_sdram_controller_0|Selector29~8_combout\);

-- Location: LABCELL_X33_Y10_N45
\u0|new_sdram_controller_0|m_count[1]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|m_count[1]~11_combout\ = ( \u0|new_sdram_controller_0|Selector25~1_combout\ & ( !\u0|new_sdram_controller_0|m_state.100000000~q\ ) ) # ( !\u0|new_sdram_controller_0|Selector25~1_combout\ & ( 
-- (!\u0|new_sdram_controller_0|m_state.100000000~q\ & ((!\u0|new_sdram_controller_0|m_count[2]~3_combout\) # (!\u0|new_sdram_controller_0|m_count\(0) $ (\u0|new_sdram_controller_0|m_count\(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111100100000000111110010000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|new_sdram_controller_0|ALT_INV_m_count\(0),
	datab => \u0|new_sdram_controller_0|ALT_INV_m_count\(1),
	datac => \u0|new_sdram_controller_0|ALT_INV_m_count[2]~3_combout\,
	datad => \u0|new_sdram_controller_0|ALT_INV_m_state.100000000~q\,
	dataf => \u0|new_sdram_controller_0|ALT_INV_Selector25~1_combout\,
	combout => \u0|new_sdram_controller_0|m_count[1]~11_combout\);

-- Location: LABCELL_X33_Y10_N12
\u0|new_sdram_controller_0|m_count[1]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|m_count[1]~7_combout\ = ( \u0|new_sdram_controller_0|m_count\(1) & ( \u0|new_sdram_controller_0|m_count[1]~12_combout\ & ( (!\u0|new_sdram_controller_0|Selector29~8_combout\) # 
-- ((!\u0|new_sdram_controller_0|m_count[1]~2_combout\) # ((\u0|new_sdram_controller_0|m_count[1]~11_combout\ & !\u0|new_sdram_controller_0|m_state.010000000~q\))) ) ) ) # ( !\u0|new_sdram_controller_0|m_count\(1) & ( 
-- \u0|new_sdram_controller_0|m_count[1]~12_combout\ & ( (\u0|new_sdram_controller_0|Selector29~8_combout\ & (\u0|new_sdram_controller_0|m_count[1]~11_combout\ & (!\u0|new_sdram_controller_0|m_state.010000000~q\ & 
-- \u0|new_sdram_controller_0|m_count[1]~2_combout\))) ) ) ) # ( \u0|new_sdram_controller_0|m_count\(1) & ( !\u0|new_sdram_controller_0|m_count[1]~12_combout\ & ( (!\u0|new_sdram_controller_0|m_count[1]~2_combout\) # 
-- ((\u0|new_sdram_controller_0|m_count[1]~11_combout\ & !\u0|new_sdram_controller_0|m_state.010000000~q\)) ) ) ) # ( !\u0|new_sdram_controller_0|m_count\(1) & ( !\u0|new_sdram_controller_0|m_count[1]~12_combout\ & ( 
-- (\u0|new_sdram_controller_0|m_count[1]~11_combout\ & (!\u0|new_sdram_controller_0|m_state.010000000~q\ & \u0|new_sdram_controller_0|m_count[1]~2_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110000111111110011000000000000000100001111111110111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|new_sdram_controller_0|ALT_INV_Selector29~8_combout\,
	datab => \u0|new_sdram_controller_0|ALT_INV_m_count[1]~11_combout\,
	datac => \u0|new_sdram_controller_0|ALT_INV_m_state.010000000~q\,
	datad => \u0|new_sdram_controller_0|ALT_INV_m_count[1]~2_combout\,
	datae => \u0|new_sdram_controller_0|ALT_INV_m_count\(1),
	dataf => \u0|new_sdram_controller_0|ALT_INV_m_count[1]~12_combout\,
	combout => \u0|new_sdram_controller_0|m_count[1]~7_combout\);

-- Location: FF_X33_Y10_N14
\u0|new_sdram_controller_0|m_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \u0|new_sdram_controller_0|m_count[1]~7_combout\,
	clrn => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|m_count\(1));

-- Location: LABCELL_X33_Y10_N54
\u0|new_sdram_controller_0|m_count[2]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|m_count[2]~10_combout\ = ( \u0|new_sdram_controller_0|m_count[2]~3_combout\ & ( \u0|new_sdram_controller_0|m_count\(0) & ( (\u0|new_sdram_controller_0|m_count\(2) & (!\u0|new_sdram_controller_0|m_state.010000000~q\ & 
-- !\u0|new_sdram_controller_0|m_state.100000000~q\)) ) ) ) # ( \u0|new_sdram_controller_0|m_count[2]~3_combout\ & ( !\u0|new_sdram_controller_0|m_count\(0) & ( (!\u0|new_sdram_controller_0|m_state.010000000~q\ & 
-- (!\u0|new_sdram_controller_0|m_state.100000000~q\ & (!\u0|new_sdram_controller_0|m_count\(2) $ (\u0|new_sdram_controller_0|m_count\(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100100000000000000000000000000000101000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|new_sdram_controller_0|ALT_INV_m_count\(2),
	datab => \u0|new_sdram_controller_0|ALT_INV_m_count\(1),
	datac => \u0|new_sdram_controller_0|ALT_INV_m_state.010000000~q\,
	datad => \u0|new_sdram_controller_0|ALT_INV_m_state.100000000~q\,
	datae => \u0|new_sdram_controller_0|ALT_INV_m_count[2]~3_combout\,
	dataf => \u0|new_sdram_controller_0|ALT_INV_m_count\(0),
	combout => \u0|new_sdram_controller_0|m_count[2]~10_combout\);

-- Location: LABCELL_X33_Y10_N30
\u0|new_sdram_controller_0|m_count[2]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|m_count[2]~6_combout\ = ( \u0|new_sdram_controller_0|m_count\(2) & ( \u0|new_sdram_controller_0|m_count[1]~12_combout\ & ( (!\u0|new_sdram_controller_0|Selector29~8_combout\) # 
-- ((!\u0|new_sdram_controller_0|m_count[1]~2_combout\) # ((\u0|new_sdram_controller_0|m_count[2]~10_combout\ & !\u0|new_sdram_controller_0|Selector25~1_combout\))) ) ) ) # ( !\u0|new_sdram_controller_0|m_count\(2) & ( 
-- \u0|new_sdram_controller_0|m_count[1]~12_combout\ & ( (\u0|new_sdram_controller_0|m_count[2]~10_combout\ & (!\u0|new_sdram_controller_0|Selector25~1_combout\ & (\u0|new_sdram_controller_0|Selector29~8_combout\ & 
-- \u0|new_sdram_controller_0|m_count[1]~2_combout\))) ) ) ) # ( \u0|new_sdram_controller_0|m_count\(2) & ( !\u0|new_sdram_controller_0|m_count[1]~12_combout\ & ( (!\u0|new_sdram_controller_0|m_count[1]~2_combout\) # 
-- ((\u0|new_sdram_controller_0|m_count[2]~10_combout\ & !\u0|new_sdram_controller_0|Selector25~1_combout\)) ) ) ) # ( !\u0|new_sdram_controller_0|m_count\(2) & ( !\u0|new_sdram_controller_0|m_count[1]~12_combout\ & ( 
-- (\u0|new_sdram_controller_0|m_count[2]~10_combout\ & (!\u0|new_sdram_controller_0|Selector25~1_combout\ & \u0|new_sdram_controller_0|m_count[1]~2_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000100111111110100010000000000000001001111111111110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|new_sdram_controller_0|ALT_INV_m_count[2]~10_combout\,
	datab => \u0|new_sdram_controller_0|ALT_INV_Selector25~1_combout\,
	datac => \u0|new_sdram_controller_0|ALT_INV_Selector29~8_combout\,
	datad => \u0|new_sdram_controller_0|ALT_INV_m_count[1]~2_combout\,
	datae => \u0|new_sdram_controller_0|ALT_INV_m_count\(2),
	dataf => \u0|new_sdram_controller_0|ALT_INV_m_count[1]~12_combout\,
	combout => \u0|new_sdram_controller_0|m_count[2]~6_combout\);

-- Location: FF_X33_Y10_N31
\u0|new_sdram_controller_0|m_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \u0|new_sdram_controller_0|m_count[2]~6_combout\,
	clrn => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|m_count\(2));

-- Location: LABCELL_X31_Y12_N0
\u0|new_sdram_controller_0|Selector30~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|Selector30~0_combout\ = ( \u0|new_sdram_controller_0|m_count[1]~DUPLICATE_q\ & ( \u0|new_sdram_controller_0|m_state.000100000~q\ ) ) # ( !\u0|new_sdram_controller_0|m_count[1]~DUPLICATE_q\ & ( 
-- (\u0|new_sdram_controller_0|m_state.000100000~q\ & ((\u0|new_sdram_controller_0|m_count\(2)) # (\u0|new_sdram_controller_0|m_count\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011100000111000001110000011100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|new_sdram_controller_0|ALT_INV_m_count\(3),
	datab => \u0|new_sdram_controller_0|ALT_INV_m_count\(2),
	datac => \u0|new_sdram_controller_0|ALT_INV_m_state.000100000~q\,
	dataf => \u0|new_sdram_controller_0|ALT_INV_m_count[1]~DUPLICATE_q\,
	combout => \u0|new_sdram_controller_0|Selector30~0_combout\);

-- Location: LABCELL_X33_Y12_N6
\u0|new_sdram_controller_0|Selector30~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|Selector30~1_combout\ = ( \u0|new_sdram_controller_0|pending~0_combout\ & ( \u0|new_sdram_controller_0|pending~3_combout\ & ( ((!\u0|new_sdram_controller_0|pending~2_combout\ & (\u0|new_sdram_controller_0|m_count[1]~0_combout\ & 
-- \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|Equal1~0_combout\))) # (\u0|new_sdram_controller_0|Selector30~0_combout\) ) ) ) # ( !\u0|new_sdram_controller_0|pending~0_combout\ & ( 
-- \u0|new_sdram_controller_0|pending~3_combout\ & ( ((\u0|new_sdram_controller_0|m_count[1]~0_combout\ & \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|Equal1~0_combout\)) # (\u0|new_sdram_controller_0|Selector30~0_combout\) 
-- ) ) ) # ( \u0|new_sdram_controller_0|pending~0_combout\ & ( !\u0|new_sdram_controller_0|pending~3_combout\ & ( ((\u0|new_sdram_controller_0|m_count[1]~0_combout\ & 
-- \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|Equal1~0_combout\)) # (\u0|new_sdram_controller_0|Selector30~0_combout\) ) ) ) # ( !\u0|new_sdram_controller_0|pending~0_combout\ & ( 
-- !\u0|new_sdram_controller_0|pending~3_combout\ & ( ((\u0|new_sdram_controller_0|m_count[1]~0_combout\ & \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|Equal1~0_combout\)) # 
-- (\u0|new_sdram_controller_0|Selector30~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100111111000011110011111100001111001111110000111100101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|new_sdram_controller_0|ALT_INV_pending~2_combout\,
	datab => \u0|new_sdram_controller_0|ALT_INV_m_count[1]~0_combout\,
	datac => \u0|new_sdram_controller_0|ALT_INV_Selector30~0_combout\,
	datad => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_Equal1~0_combout\,
	datae => \u0|new_sdram_controller_0|ALT_INV_pending~0_combout\,
	dataf => \u0|new_sdram_controller_0|ALT_INV_pending~3_combout\,
	combout => \u0|new_sdram_controller_0|Selector30~1_combout\);

-- Location: FF_X33_Y12_N7
\u0|new_sdram_controller_0|m_state.000100000\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \u0|new_sdram_controller_0|Selector30~1_combout\,
	clrn => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|m_state.000100000~q\);

-- Location: LABCELL_X33_Y10_N9
\u0|new_sdram_controller_0|Selector25~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|Selector25~1_combout\ = ( !\u0|new_sdram_controller_0|m_count\(3) & ( (!\u0|new_sdram_controller_0|m_count\(2) & (!\u0|new_sdram_controller_0|m_count\(1) & \u0|new_sdram_controller_0|m_state.000100000~q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010001000000000001000100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|new_sdram_controller_0|ALT_INV_m_count\(2),
	datab => \u0|new_sdram_controller_0|ALT_INV_m_count\(1),
	datad => \u0|new_sdram_controller_0|ALT_INV_m_state.000100000~q\,
	dataf => \u0|new_sdram_controller_0|ALT_INV_m_count\(3),
	combout => \u0|new_sdram_controller_0|Selector25~1_combout\);

-- Location: LABCELL_X33_Y11_N6
\u0|new_sdram_controller_0|Selector29~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|Selector29~9_combout\ = ( !\u0|new_sdram_controller_0|Selector25~0_combout\ & ( ((!\u0|new_sdram_controller_0|refresh_request~DUPLICATE_q\) # (\u0|new_sdram_controller_0|Selector29~8_combout\)) # 
-- (\u0|new_sdram_controller_0|Selector25~1_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111101011111111111110101111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|new_sdram_controller_0|ALT_INV_Selector25~1_combout\,
	datac => \u0|new_sdram_controller_0|ALT_INV_Selector29~8_combout\,
	datad => \u0|new_sdram_controller_0|ALT_INV_refresh_request~DUPLICATE_q\,
	dataf => \u0|new_sdram_controller_0|ALT_INV_Selector25~0_combout\,
	combout => \u0|new_sdram_controller_0|Selector29~9_combout\);

-- Location: LABCELL_X33_Y11_N36
\u0|new_sdram_controller_0|Selector29~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|Selector29~7_combout\ = ( \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|Equal1~0_combout\ & ( (\u0|new_sdram_controller_0|m_state.000000001~q\ & \u0|new_sdram_controller_0|m_addr~0_combout\) ) ) 
-- # ( !\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|Equal1~0_combout\ & ( (\u0|new_sdram_controller_0|m_addr~0_combout\ & (((!\u0|new_sdram_controller_0|refresh_request~DUPLICATE_q\ & 
-- \u0|new_sdram_controller_0|init_done~DUPLICATE_q\)) # (\u0|new_sdram_controller_0|m_state.000000001~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100001011000000110000101100000011000000110000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|new_sdram_controller_0|ALT_INV_refresh_request~DUPLICATE_q\,
	datab => \u0|new_sdram_controller_0|ALT_INV_m_state.000000001~q\,
	datac => \u0|new_sdram_controller_0|ALT_INV_m_addr~0_combout\,
	datad => \u0|new_sdram_controller_0|ALT_INV_init_done~DUPLICATE_q\,
	dataf => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_Equal1~0_combout\,
	combout => \u0|new_sdram_controller_0|Selector29~7_combout\);

-- Location: LABCELL_X29_Y13_N39
\u0|new_sdram_controller_0|Selector29~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|Selector29~5_combout\ = ( \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entries\(1) & ( !\u0|new_sdram_controller_0|m_state.000000001~q\ ) ) # ( 
-- !\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entries\(1) & ( (!\u0|new_sdram_controller_0|m_state.000000001~q\ & ((!\u0|new_sdram_controller_0|init_done~DUPLICATE_q\) # 
-- (\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entries[0]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110001000100110011000100010011001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_entries[0]~DUPLICATE_q\,
	datab => \u0|new_sdram_controller_0|ALT_INV_m_state.000000001~q\,
	datad => \u0|new_sdram_controller_0|ALT_INV_init_done~DUPLICATE_q\,
	dataf => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_entries\(1),
	combout => \u0|new_sdram_controller_0|Selector29~5_combout\);

-- Location: LABCELL_X33_Y11_N30
\u0|new_sdram_controller_0|Selector29~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|Selector29~10_combout\ = ( \u0|new_sdram_controller_0|Selector29~7_combout\ & ( \u0|new_sdram_controller_0|Selector29~5_combout\ & ( (\u0|new_sdram_controller_0|Selector29~9_combout\ & 
-- (((\u0|new_sdram_controller_0|Selector25~1_combout\ & !\u0|new_sdram_controller_0|WideOr8~0_combout\)) # (\u0|new_sdram_controller_0|Selector29~0_combout\))) ) ) ) # ( !\u0|new_sdram_controller_0|Selector29~7_combout\ & ( 
-- \u0|new_sdram_controller_0|Selector29~5_combout\ & ( (\u0|new_sdram_controller_0|Selector29~9_combout\ & ((\u0|new_sdram_controller_0|Selector29~0_combout\) # (\u0|new_sdram_controller_0|Selector25~1_combout\))) ) ) ) # ( 
-- \u0|new_sdram_controller_0|Selector29~7_combout\ & ( !\u0|new_sdram_controller_0|Selector29~5_combout\ & ( (\u0|new_sdram_controller_0|Selector29~9_combout\ & ((!\u0|new_sdram_controller_0|Selector25~1_combout\) # 
-- ((!\u0|new_sdram_controller_0|WideOr8~0_combout\) # (\u0|new_sdram_controller_0|Selector29~0_combout\)))) ) ) ) # ( !\u0|new_sdram_controller_0|Selector29~7_combout\ & ( !\u0|new_sdram_controller_0|Selector29~5_combout\ & ( 
-- \u0|new_sdram_controller_0|Selector29~9_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110010001100010011000100110001001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|new_sdram_controller_0|ALT_INV_Selector25~1_combout\,
	datab => \u0|new_sdram_controller_0|ALT_INV_Selector29~9_combout\,
	datac => \u0|new_sdram_controller_0|ALT_INV_Selector29~0_combout\,
	datad => \u0|new_sdram_controller_0|ALT_INV_WideOr8~0_combout\,
	datae => \u0|new_sdram_controller_0|ALT_INV_Selector29~7_combout\,
	dataf => \u0|new_sdram_controller_0|ALT_INV_Selector29~5_combout\,
	combout => \u0|new_sdram_controller_0|Selector29~10_combout\);

-- Location: LABCELL_X33_Y11_N9
\u0|new_sdram_controller_0|Selector29~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|Selector29~6_combout\ = ( !\u0|new_sdram_controller_0|Selector29~5_combout\ & ( (\u0|new_sdram_controller_0|Selector25~1_combout\ & (\u0|new_sdram_controller_0|WideOr8~0_combout\ & 
-- !\u0|new_sdram_controller_0|Selector29~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000000000001010000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|new_sdram_controller_0|ALT_INV_Selector25~1_combout\,
	datac => \u0|new_sdram_controller_0|ALT_INV_WideOr8~0_combout\,
	datad => \u0|new_sdram_controller_0|ALT_INV_Selector29~0_combout\,
	dataf => \u0|new_sdram_controller_0|ALT_INV_Selector29~5_combout\,
	combout => \u0|new_sdram_controller_0|Selector29~6_combout\);

-- Location: LABCELL_X30_Y11_N27
\u0|new_sdram_controller_0|Selector29~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|Selector29~4_combout\ = ( \u0|new_sdram_controller_0|pending~2_combout\ & ( (\u0|new_sdram_controller_0|Selector29~0_combout\ & ((!\u0|new_sdram_controller_0|pending~0_combout\) # 
-- ((!\u0|new_sdram_controller_0|pending~3_combout\) # (\u0|new_sdram_controller_0|refresh_request~DUPLICATE_q\)))) ) ) # ( !\u0|new_sdram_controller_0|pending~2_combout\ & ( \u0|new_sdram_controller_0|Selector29~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001000110011001100100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|new_sdram_controller_0|ALT_INV_pending~0_combout\,
	datab => \u0|new_sdram_controller_0|ALT_INV_Selector29~0_combout\,
	datac => \u0|new_sdram_controller_0|ALT_INV_refresh_request~DUPLICATE_q\,
	datad => \u0|new_sdram_controller_0|ALT_INV_pending~3_combout\,
	dataf => \u0|new_sdram_controller_0|ALT_INV_pending~2_combout\,
	combout => \u0|new_sdram_controller_0|Selector29~4_combout\);

-- Location: LABCELL_X33_Y12_N45
\u0|new_sdram_controller_0|pending~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|pending~4_combout\ = ( \u0|new_sdram_controller_0|pending~2_combout\ & ( (\u0|new_sdram_controller_0|pending~3_combout\ & (\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|Equal1~0_combout\ & 
-- \u0|new_sdram_controller_0|pending~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|new_sdram_controller_0|ALT_INV_pending~3_combout\,
	datac => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_Equal1~0_combout\,
	datad => \u0|new_sdram_controller_0|ALT_INV_pending~0_combout\,
	dataf => \u0|new_sdram_controller_0|ALT_INV_pending~2_combout\,
	combout => \u0|new_sdram_controller_0|pending~4_combout\);

-- Location: LABCELL_X33_Y11_N0
\u0|new_sdram_controller_0|Selector29~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|Selector29~11_combout\ = ( !\u0|new_sdram_controller_0|Selector29~4_combout\ & ( \u0|new_sdram_controller_0|pending~4_combout\ & ( (\u0|new_sdram_controller_0|Selector29~10_combout\ & 
-- ((!\u0|new_sdram_controller_0|Selector29~6_combout\) # (\u0|new_sdram_controller_0|refresh_request~DUPLICATE_q\))) ) ) ) # ( !\u0|new_sdram_controller_0|Selector29~4_combout\ & ( !\u0|new_sdram_controller_0|pending~4_combout\ & ( 
-- \u0|new_sdram_controller_0|Selector29~10_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011000000000000000000110011000000110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u0|new_sdram_controller_0|ALT_INV_Selector29~10_combout\,
	datac => \u0|new_sdram_controller_0|ALT_INV_refresh_request~DUPLICATE_q\,
	datad => \u0|new_sdram_controller_0|ALT_INV_Selector29~6_combout\,
	datae => \u0|new_sdram_controller_0|ALT_INV_Selector29~4_combout\,
	dataf => \u0|new_sdram_controller_0|ALT_INV_pending~4_combout\,
	combout => \u0|new_sdram_controller_0|Selector29~11_combout\);

-- Location: LABCELL_X31_Y10_N0
\u0|new_sdram_controller_0|Selector35~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|Selector35~0_combout\ = ( \u0|new_sdram_controller_0|active_rnw~q\ & ( \u0|new_sdram_controller_0|m_next.000001000~q\ ) ) # ( !\u0|new_sdram_controller_0|active_rnw~q\ & ( \u0|new_sdram_controller_0|m_next.000001000~q\ & ( 
-- !\u0|new_sdram_controller_0|m_state.000000010~q\ ) ) ) # ( \u0|new_sdram_controller_0|active_rnw~q\ & ( !\u0|new_sdram_controller_0|m_next.000001000~q\ & ( \u0|new_sdram_controller_0|m_state.000000010~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111111110000111100001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u0|new_sdram_controller_0|ALT_INV_m_state.000000010~q\,
	datae => \u0|new_sdram_controller_0|ALT_INV_active_rnw~q\,
	dataf => \u0|new_sdram_controller_0|ALT_INV_m_next.000001000~q\,
	combout => \u0|new_sdram_controller_0|Selector35~0_combout\);

-- Location: LABCELL_X31_Y11_N12
\u0|new_sdram_controller_0|Selector35~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|Selector35~1_combout\ = ( \u0|new_sdram_controller_0|Selector34~1_combout\ & ( \u0|new_sdram_controller_0|Selector35~0_combout\ & ( (!\u0|new_sdram_controller_0|Selector34~0_combout\ & 
-- (!\u0|new_sdram_controller_0|m_state.010000000~q\ & !\u0|new_sdram_controller_0|Selector36~0_combout\)) ) ) ) # ( !\u0|new_sdram_controller_0|Selector34~1_combout\ & ( \u0|new_sdram_controller_0|Selector35~0_combout\ & ( 
-- (!\u0|new_sdram_controller_0|Selector34~0_combout\ & (!\u0|new_sdram_controller_0|m_state.010000000~q\ & (!\u0|new_sdram_controller_0|Selector36~0_combout\ & !\u0|new_sdram_controller_0|m_state.100000000~q\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|new_sdram_controller_0|ALT_INV_Selector34~0_combout\,
	datab => \u0|new_sdram_controller_0|ALT_INV_m_state.010000000~q\,
	datac => \u0|new_sdram_controller_0|ALT_INV_Selector36~0_combout\,
	datad => \u0|new_sdram_controller_0|ALT_INV_m_state.100000000~q\,
	datae => \u0|new_sdram_controller_0|ALT_INV_Selector34~1_combout\,
	dataf => \u0|new_sdram_controller_0|ALT_INV_Selector35~0_combout\,
	combout => \u0|new_sdram_controller_0|Selector35~1_combout\);

-- Location: FF_X31_Y11_N14
\u0|new_sdram_controller_0|m_next.000001000\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \u0|new_sdram_controller_0|Selector35~1_combout\,
	clrn => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|m_next.000001000~q\);

-- Location: LABCELL_X31_Y11_N24
\u0|new_sdram_controller_0|Selector28~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|Selector28~0_combout\ = ( \u0|new_sdram_controller_0|m_state.000001000~q\ & ( \u0|new_sdram_controller_0|Selector29~1_combout\ & ( (!\u0|new_sdram_controller_0|Selector29~11_combout\ & 
-- (\u0|new_sdram_controller_0|m_next.000001000~q\)) # (\u0|new_sdram_controller_0|Selector29~11_combout\ & ((!\u0|new_sdram_controller_0|Selector29~3_combout\ & 
-- ((\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[43]~15_combout\))) # (\u0|new_sdram_controller_0|Selector29~3_combout\ & (\u0|new_sdram_controller_0|m_next.000001000~q\)))) ) ) ) # ( 
-- !\u0|new_sdram_controller_0|m_state.000001000~q\ & ( \u0|new_sdram_controller_0|Selector29~1_combout\ & ( (!\u0|new_sdram_controller_0|Selector29~11_combout\ & (\u0|new_sdram_controller_0|m_next.000001000~q\)) # 
-- (\u0|new_sdram_controller_0|Selector29~11_combout\ & ((!\u0|new_sdram_controller_0|Selector29~3_combout\ & ((\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[43]~15_combout\))) # 
-- (\u0|new_sdram_controller_0|Selector29~3_combout\ & (\u0|new_sdram_controller_0|m_next.000001000~q\)))) ) ) ) # ( \u0|new_sdram_controller_0|m_state.000001000~q\ & ( !\u0|new_sdram_controller_0|Selector29~1_combout\ & ( 
-- (\u0|new_sdram_controller_0|Selector29~11_combout\ & !\u0|new_sdram_controller_0|Selector29~3_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010000000000100111001100110010011100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|new_sdram_controller_0|ALT_INV_Selector29~11_combout\,
	datab => \u0|new_sdram_controller_0|ALT_INV_m_next.000001000~q\,
	datac => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_rd_data[43]~15_combout\,
	datad => \u0|new_sdram_controller_0|ALT_INV_Selector29~3_combout\,
	datae => \u0|new_sdram_controller_0|ALT_INV_m_state.000001000~q\,
	dataf => \u0|new_sdram_controller_0|ALT_INV_Selector29~1_combout\,
	combout => \u0|new_sdram_controller_0|Selector28~0_combout\);

-- Location: FF_X31_Y11_N26
\u0|new_sdram_controller_0|m_state.000001000\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \u0|new_sdram_controller_0|Selector28~0_combout\,
	clrn => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|m_state.000001000~q\);

-- Location: LABCELL_X31_Y11_N6
\u0|new_sdram_controller_0|Selector43~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|Selector43~0_combout\ = ( \u0|new_sdram_controller_0|m_state.100000000~q\ & ( \u0|new_sdram_controller_0|m_state.000010000~DUPLICATE_q\ & ( ((!\u0|new_sdram_controller_0|refresh_request~DUPLICATE_q\ & 
-- \u0|new_sdram_controller_0|pending~4_combout\)) # (\u0|new_sdram_controller_0|Selector26~0_combout\) ) ) ) # ( !\u0|new_sdram_controller_0|m_state.100000000~q\ & ( \u0|new_sdram_controller_0|m_state.000010000~DUPLICATE_q\ & ( 
-- ((!\u0|new_sdram_controller_0|refresh_request~DUPLICATE_q\ & \u0|new_sdram_controller_0|pending~4_combout\)) # (\u0|new_sdram_controller_0|Selector26~0_combout\) ) ) ) # ( \u0|new_sdram_controller_0|m_state.100000000~q\ & ( 
-- !\u0|new_sdram_controller_0|m_state.000010000~DUPLICATE_q\ & ( ((!\u0|new_sdram_controller_0|refresh_request~DUPLICATE_q\ & \u0|new_sdram_controller_0|pending~4_combout\)) # (\u0|new_sdram_controller_0|Selector26~0_combout\) ) ) ) # ( 
-- !\u0|new_sdram_controller_0|m_state.100000000~q\ & ( !\u0|new_sdram_controller_0|m_state.000010000~DUPLICATE_q\ & ( ((\u0|new_sdram_controller_0|m_state.000001000~q\ & (!\u0|new_sdram_controller_0|refresh_request~DUPLICATE_q\ & 
-- \u0|new_sdram_controller_0|pending~4_combout\))) # (\u0|new_sdram_controller_0|Selector26~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101110011001100111111001100110011111100110011001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|new_sdram_controller_0|ALT_INV_m_state.000001000~q\,
	datab => \u0|new_sdram_controller_0|ALT_INV_Selector26~0_combout\,
	datac => \u0|new_sdram_controller_0|ALT_INV_refresh_request~DUPLICATE_q\,
	datad => \u0|new_sdram_controller_0|ALT_INV_pending~4_combout\,
	datae => \u0|new_sdram_controller_0|ALT_INV_m_state.100000000~q\,
	dataf => \u0|new_sdram_controller_0|ALT_INV_m_state.000010000~DUPLICATE_q\,
	combout => \u0|new_sdram_controller_0|Selector43~0_combout\);

-- Location: FF_X31_Y11_N7
\u0|new_sdram_controller_0|f_pop\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \u0|new_sdram_controller_0|Selector43~0_combout\,
	clrn => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|f_pop~q\);

-- Location: LABCELL_X30_Y13_N51
\u0|new_sdram_controller_0|f_select\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|f_select~combout\ = ( \u0|new_sdram_controller_0|pending~3_combout\ & ( \u0|new_sdram_controller_0|pending~2_combout\ & ( (\u0|new_sdram_controller_0|f_pop~q\ & 
-- (\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|Equal1~0_combout\ & \u0|new_sdram_controller_0|pending~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|new_sdram_controller_0|ALT_INV_f_pop~q\,
	datac => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_Equal1~0_combout\,
	datad => \u0|new_sdram_controller_0|ALT_INV_pending~0_combout\,
	datae => \u0|new_sdram_controller_0|ALT_INV_pending~3_combout\,
	dataf => \u0|new_sdram_controller_0|ALT_INV_pending~2_combout\,
	combout => \u0|new_sdram_controller_0|f_select~combout\);

-- Location: LABCELL_X30_Y14_N42
\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entries[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entries[1]~0_combout\ = ( \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entries\(1) & ( \SDRAM_RE_N~q\ & ( 
-- (!\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entries\(0) & ((!\u0|new_sdram_controller_0|f_select~combout\))) # (\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entries\(0) & 
-- ((\u0|new_sdram_controller_0|f_select~combout\) # (\SDRAM_WE_N~DUPLICATE_q\))) ) ) ) # ( !\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entries\(1) & ( \SDRAM_RE_N~q\ & ( 
-- (!\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entries\(0) & (\SDRAM_WE_N~DUPLICATE_q\ & \u0|new_sdram_controller_0|f_select~combout\)) # 
-- (\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entries\(0) & (!\SDRAM_WE_N~DUPLICATE_q\ & !\u0|new_sdram_controller_0|f_select~combout\)) ) ) ) # ( 
-- \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entries\(1) & ( !\SDRAM_RE_N~q\ & ( !\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entries\(0) $ 
-- (\u0|new_sdram_controller_0|f_select~combout\) ) ) ) # ( !\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entries\(1) & ( !\SDRAM_RE_N~q\ & ( 
-- (\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entries\(0) & !\u0|new_sdram_controller_0|f_select~combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000101010100101010101000100001000101011101101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_entries\(0),
	datab => \ALT_INV_SDRAM_WE_N~DUPLICATE_q\,
	datad => \u0|new_sdram_controller_0|ALT_INV_f_select~combout\,
	datae => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_entries\(1),
	dataf => \ALT_INV_SDRAM_RE_N~q\,
	combout => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entries[1]~0_combout\);

-- Location: FF_X30_Y14_N43
\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entries[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entries[1]~0_combout\,
	clrn => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entries\(1));

-- Location: LABCELL_X29_Y13_N51
\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entries[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entries[0]~1_combout\ = ( \u0|new_sdram_controller_0|f_select~combout\ & ( (!\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entries\(0) & 
-- (((\SDRAM_WE_N~q\ & \SDRAM_RE_N~q\)) # (\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entries\(1)))) # (\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entries\(0) & (((!\SDRAM_WE_N~q\) # 
-- (!\SDRAM_RE_N~q\)))) ) ) # ( !\u0|new_sdram_controller_0|f_select~combout\ & ( (!\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entries\(0) & 
-- (!\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entries\(1) & ((!\SDRAM_WE_N~q\) # (!\SDRAM_RE_N~q\)))) # (\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entries\(0) & (((\SDRAM_WE_N~q\ & 
-- \SDRAM_RE_N~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010100000000011101010000000001101010111111111000101011111111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_entries\(1),
	datab => \ALT_INV_SDRAM_WE_N~q\,
	datac => \ALT_INV_SDRAM_RE_N~q\,
	datad => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_entries\(0),
	dataf => \u0|new_sdram_controller_0|ALT_INV_f_select~combout\,
	combout => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entries[0]~1_combout\);

-- Location: FF_X29_Y13_N53
\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entries[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entries[0]~1_combout\,
	clrn => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entries[0]~DUPLICATE_q\);

-- Location: LABCELL_X29_Y13_N3
\u0|new_sdram_controller_0|Selector25~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|Selector25~2_combout\ = ( !\u0|new_sdram_controller_0|refresh_request~q\ & ( \u0|new_sdram_controller_0|m_state.100000000~q\ & ( 
-- (!\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entries[0]~DUPLICATE_q\ & (!\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entries\(1) & 
-- ((\u0|new_sdram_controller_0|init_done~DUPLICATE_q\) # (\u0|new_sdram_controller_0|m_state.000000001~q\)))) ) ) ) # ( \u0|new_sdram_controller_0|refresh_request~q\ & ( !\u0|new_sdram_controller_0|m_state.100000000~q\ & ( 
-- \u0|new_sdram_controller_0|m_state.000000001~q\ ) ) ) # ( !\u0|new_sdram_controller_0|refresh_request~q\ & ( !\u0|new_sdram_controller_0|m_state.100000000~q\ & ( 
-- ((!\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entries[0]~DUPLICATE_q\ & (!\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entries\(1) & 
-- \u0|new_sdram_controller_0|init_done~DUPLICATE_q\))) # (\u0|new_sdram_controller_0|m_state.000000001~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111110001111000011110000111100001000100010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_entries[0]~DUPLICATE_q\,
	datab => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_entries\(1),
	datac => \u0|new_sdram_controller_0|ALT_INV_m_state.000000001~q\,
	datad => \u0|new_sdram_controller_0|ALT_INV_init_done~DUPLICATE_q\,
	datae => \u0|new_sdram_controller_0|ALT_INV_refresh_request~q\,
	dataf => \u0|new_sdram_controller_0|ALT_INV_m_state.100000000~q\,
	combout => \u0|new_sdram_controller_0|Selector25~2_combout\);

-- Location: LABCELL_X33_Y10_N18
\u0|new_sdram_controller_0|Selector37~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|Selector37~0_combout\ = ( !\u0|new_sdram_controller_0|m_state.000000100~q\ & ( (!\u0|new_sdram_controller_0|m_state.000100000~q\ & (!\u0|new_sdram_controller_0|m_state.001000000~q\ & 
-- ((!\u0|new_sdram_controller_0|init_done~DUPLICATE_q\) # (\u0|new_sdram_controller_0|m_state.000000001~q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011000000000000101100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|new_sdram_controller_0|ALT_INV_init_done~DUPLICATE_q\,
	datab => \u0|new_sdram_controller_0|ALT_INV_m_state.000000001~q\,
	datac => \u0|new_sdram_controller_0|ALT_INV_m_state.000100000~q\,
	datad => \u0|new_sdram_controller_0|ALT_INV_m_state.001000000~q\,
	dataf => \u0|new_sdram_controller_0|ALT_INV_m_state.000000100~q\,
	combout => \u0|new_sdram_controller_0|Selector37~0_combout\);

-- Location: LABCELL_X33_Y12_N21
\u0|new_sdram_controller_0|Selector37~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|Selector37~1_combout\ = ( \u0|new_sdram_controller_0|m_count[1]~0_combout\ & ( \u0|new_sdram_controller_0|Selector37~0_combout\ & ( 
-- (\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|Equal1~0_combout\ & ((!\u0|new_sdram_controller_0|pending~0_combout\) # ((!\u0|new_sdram_controller_0|pending~3_combout\) # 
-- (!\u0|new_sdram_controller_0|pending~2_combout\)))) ) ) ) # ( !\u0|new_sdram_controller_0|m_count[1]~0_combout\ & ( \u0|new_sdram_controller_0|Selector37~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110011001100110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|new_sdram_controller_0|ALT_INV_pending~0_combout\,
	datab => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_Equal1~0_combout\,
	datac => \u0|new_sdram_controller_0|ALT_INV_pending~3_combout\,
	datad => \u0|new_sdram_controller_0|ALT_INV_pending~2_combout\,
	datae => \u0|new_sdram_controller_0|ALT_INV_m_count[1]~0_combout\,
	dataf => \u0|new_sdram_controller_0|ALT_INV_Selector37~0_combout\,
	combout => \u0|new_sdram_controller_0|Selector37~1_combout\);

-- Location: LABCELL_X33_Y12_N30
\u0|new_sdram_controller_0|Selector37~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|Selector37~2_combout\ = ( \u0|new_sdram_controller_0|m_next.010000000~q\ & ( \u0|new_sdram_controller_0|refresh_request~DUPLICATE_q\ & ( (!\u0|new_sdram_controller_0|Selector37~1_combout\) # 
-- (((!\u0|new_sdram_controller_0|m_addr~0_combout\ & !\u0|new_sdram_controller_0|pending~4_combout\)) # (\u0|new_sdram_controller_0|Selector31~0_combout\)) ) ) ) # ( !\u0|new_sdram_controller_0|m_next.010000000~q\ & ( 
-- \u0|new_sdram_controller_0|refresh_request~DUPLICATE_q\ & ( \u0|new_sdram_controller_0|Selector31~0_combout\ ) ) ) # ( \u0|new_sdram_controller_0|m_next.010000000~q\ & ( !\u0|new_sdram_controller_0|refresh_request~DUPLICATE_q\ & ( 
-- (!\u0|new_sdram_controller_0|Selector37~1_combout\) # (!\u0|new_sdram_controller_0|m_addr~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111110101111101000110011001100111111101110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|new_sdram_controller_0|ALT_INV_Selector37~1_combout\,
	datab => \u0|new_sdram_controller_0|ALT_INV_Selector31~0_combout\,
	datac => \u0|new_sdram_controller_0|ALT_INV_m_addr~0_combout\,
	datad => \u0|new_sdram_controller_0|ALT_INV_pending~4_combout\,
	datae => \u0|new_sdram_controller_0|ALT_INV_m_next.010000000~q\,
	dataf => \u0|new_sdram_controller_0|ALT_INV_refresh_request~DUPLICATE_q\,
	combout => \u0|new_sdram_controller_0|Selector37~2_combout\);

-- Location: FF_X33_Y12_N32
\u0|new_sdram_controller_0|m_next.010000000\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \u0|new_sdram_controller_0|Selector37~2_combout\,
	clrn => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|m_next.010000000~q\);

-- Location: LABCELL_X33_Y11_N12
\u0|new_sdram_controller_0|Selector32~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|Selector32~0_combout\ = ( \u0|new_sdram_controller_0|Selector34~0_combout\ & ( \u0|new_sdram_controller_0|Selector29~2_combout\ & ( (\u0|new_sdram_controller_0|m_next.010000000~q\ & 
-- (\u0|new_sdram_controller_0|Selector25~1_combout\ & \u0|new_sdram_controller_0|Selector25~0_combout\)) ) ) ) # ( !\u0|new_sdram_controller_0|Selector34~0_combout\ & ( \u0|new_sdram_controller_0|Selector29~2_combout\ & ( 
-- (\u0|new_sdram_controller_0|m_next.010000000~q\ & (\u0|new_sdram_controller_0|Selector25~0_combout\ & (!\u0|new_sdram_controller_0|Selector25~2_combout\ $ (!\u0|new_sdram_controller_0|Selector25~1_combout\)))) ) ) ) # ( 
-- \u0|new_sdram_controller_0|Selector34~0_combout\ & ( !\u0|new_sdram_controller_0|Selector29~2_combout\ & ( (\u0|new_sdram_controller_0|m_next.010000000~q\ & (\u0|new_sdram_controller_0|Selector25~1_combout\ & 
-- \u0|new_sdram_controller_0|Selector25~0_combout\)) ) ) ) # ( !\u0|new_sdram_controller_0|Selector34~0_combout\ & ( !\u0|new_sdram_controller_0|Selector29~2_combout\ & ( (\u0|new_sdram_controller_0|m_next.010000000~q\ & 
-- (\u0|new_sdram_controller_0|Selector25~1_combout\ & \u0|new_sdram_controller_0|Selector25~0_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100000000000100100000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|new_sdram_controller_0|ALT_INV_Selector25~2_combout\,
	datab => \u0|new_sdram_controller_0|ALT_INV_m_next.010000000~q\,
	datac => \u0|new_sdram_controller_0|ALT_INV_Selector25~1_combout\,
	datad => \u0|new_sdram_controller_0|ALT_INV_Selector25~0_combout\,
	datae => \u0|new_sdram_controller_0|ALT_INV_Selector34~0_combout\,
	dataf => \u0|new_sdram_controller_0|ALT_INV_Selector29~2_combout\,
	combout => \u0|new_sdram_controller_0|Selector32~0_combout\);

-- Location: FF_X33_Y11_N13
\u0|new_sdram_controller_0|m_state.010000000\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \u0|new_sdram_controller_0|Selector32~0_combout\,
	clrn => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|m_state.010000000~q\);

-- Location: MLABCELL_X28_Y12_N57
\u0|new_sdram_controller_0|Selector24~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|Selector24~0_combout\ = ( \u0|new_sdram_controller_0|ack_refresh_request~q\ & ( \u0|new_sdram_controller_0|m_state.010000000~q\ & ( (!\u0|new_sdram_controller_0|init_done~q\) # (\u0|new_sdram_controller_0|m_state.000000001~q\) ) 
-- ) ) # ( !\u0|new_sdram_controller_0|ack_refresh_request~q\ & ( \u0|new_sdram_controller_0|m_state.010000000~q\ & ( \u0|new_sdram_controller_0|m_state.000000001~q\ ) ) ) # ( \u0|new_sdram_controller_0|ack_refresh_request~q\ & ( 
-- !\u0|new_sdram_controller_0|m_state.010000000~q\ & ( (!\u0|new_sdram_controller_0|init_done~q\) # (\u0|new_sdram_controller_0|m_state.000000001~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101011111010111100001111000011111010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|new_sdram_controller_0|ALT_INV_init_done~q\,
	datac => \u0|new_sdram_controller_0|ALT_INV_m_state.000000001~q\,
	datae => \u0|new_sdram_controller_0|ALT_INV_ack_refresh_request~q\,
	dataf => \u0|new_sdram_controller_0|ALT_INV_m_state.010000000~q\,
	combout => \u0|new_sdram_controller_0|Selector24~0_combout\);

-- Location: FF_X28_Y12_N58
\u0|new_sdram_controller_0|ack_refresh_request\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \u0|new_sdram_controller_0|Selector24~0_combout\,
	clrn => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|ack_refresh_request~q\);

-- Location: LABCELL_X29_Y13_N27
\u0|new_sdram_controller_0|refresh_request~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|refresh_request~0_combout\ = ( !\u0|new_sdram_controller_0|ack_refresh_request~q\ & ( (\u0|new_sdram_controller_0|init_done~DUPLICATE_q\ & ((\u0|new_sdram_controller_0|refresh_request~q\) # 
-- (\u0|new_sdram_controller_0|Equal0~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101010101000001010101010100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|new_sdram_controller_0|ALT_INV_init_done~DUPLICATE_q\,
	datac => \u0|new_sdram_controller_0|ALT_INV_Equal0~2_combout\,
	datad => \u0|new_sdram_controller_0|ALT_INV_refresh_request~q\,
	dataf => \u0|new_sdram_controller_0|ALT_INV_ack_refresh_request~q\,
	combout => \u0|new_sdram_controller_0|refresh_request~0_combout\);

-- Location: FF_X29_Y13_N28
\u0|new_sdram_controller_0|refresh_request~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \u0|new_sdram_controller_0|refresh_request~0_combout\,
	clrn => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|refresh_request~DUPLICATE_q\);

-- Location: LABCELL_X33_Y10_N36
\u0|new_sdram_controller_0|Selector31~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|Selector31~1_combout\ = ( \u0|new_sdram_controller_0|Selector25~1_combout\ ) # ( !\u0|new_sdram_controller_0|Selector25~1_combout\ & ( (\u0|new_sdram_controller_0|refresh_request~DUPLICATE_q\ & 
-- \u0|new_sdram_controller_0|Selector31~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u0|new_sdram_controller_0|ALT_INV_refresh_request~DUPLICATE_q\,
	datad => \u0|new_sdram_controller_0|ALT_INV_Selector31~0_combout\,
	dataf => \u0|new_sdram_controller_0|ALT_INV_Selector25~1_combout\,
	combout => \u0|new_sdram_controller_0|Selector31~1_combout\);

-- Location: FF_X33_Y10_N37
\u0|new_sdram_controller_0|m_state.001000000\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \u0|new_sdram_controller_0|Selector31~1_combout\,
	clrn => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|m_state.001000000~q\);

-- Location: MLABCELL_X28_Y12_N42
\u0|new_sdram_controller_0|WideOr8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|WideOr8~0_combout\ = ( !\u0|new_sdram_controller_0|m_state.000000010~q\ & ( !\u0|new_sdram_controller_0|m_state.010000000~q\ & ( !\u0|new_sdram_controller_0|m_state.001000000~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u0|new_sdram_controller_0|ALT_INV_m_state.001000000~q\,
	datae => \u0|new_sdram_controller_0|ALT_INV_m_state.000000010~q\,
	dataf => \u0|new_sdram_controller_0|ALT_INV_m_state.010000000~q\,
	combout => \u0|new_sdram_controller_0|WideOr8~0_combout\);

-- Location: LABCELL_X31_Y11_N36
\u0|new_sdram_controller_0|Selector34~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|Selector34~2_combout\ = ( !\u0|new_sdram_controller_0|m_state.000010000~DUPLICATE_q\ & ( (!\u0|new_sdram_controller_0|m_state.000001000~q\ & (!\u0|new_sdram_controller_0|m_state.100000000~q\ & 
-- ((\u0|new_sdram_controller_0|m_state.000000001~q\) # (\u0|new_sdram_controller_0|refresh_request~DUPLICATE_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111000000000000011100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|new_sdram_controller_0|ALT_INV_refresh_request~DUPLICATE_q\,
	datab => \u0|new_sdram_controller_0|ALT_INV_m_state.000000001~q\,
	datac => \u0|new_sdram_controller_0|ALT_INV_m_state.000001000~q\,
	datad => \u0|new_sdram_controller_0|ALT_INV_m_state.100000000~q\,
	dataf => \u0|new_sdram_controller_0|ALT_INV_m_state.000010000~DUPLICATE_q\,
	combout => \u0|new_sdram_controller_0|Selector34~2_combout\);

-- Location: LABCELL_X31_Y11_N30
\u0|new_sdram_controller_0|Selector37~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|Selector37~3_combout\ = ( !\u0|new_sdram_controller_0|m_state.000000100~q\ & ( (!\u0|new_sdram_controller_0|m_state.000100000~q\ & !\u0|new_sdram_controller_0|m_state.001000000~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000110000001100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u0|new_sdram_controller_0|ALT_INV_m_state.000100000~q\,
	datac => \u0|new_sdram_controller_0|ALT_INV_m_state.001000000~q\,
	dataf => \u0|new_sdram_controller_0|ALT_INV_m_state.000000100~q\,
	combout => \u0|new_sdram_controller_0|Selector37~3_combout\);

-- Location: LABCELL_X31_Y11_N48
\u0|new_sdram_controller_0|Selector34~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|Selector34~3_combout\ = ( \u0|new_sdram_controller_0|Selector37~3_combout\ & ( (!\u0|new_sdram_controller_0|m_next.000000001~q\ & (\u0|new_sdram_controller_0|Selector34~2_combout\ & 
-- ((\u0|new_sdram_controller_0|init_done~DUPLICATE_q\) # (\u0|new_sdram_controller_0|m_state.000000001~q\)))) # (\u0|new_sdram_controller_0|m_next.000000001~q\ & (((\u0|new_sdram_controller_0|init_done~DUPLICATE_q\)) # 
-- (\u0|new_sdram_controller_0|m_state.000000001~q\))) ) ) # ( !\u0|new_sdram_controller_0|Selector37~3_combout\ & ( (\u0|new_sdram_controller_0|m_next.000000001~q\ & ((\u0|new_sdram_controller_0|init_done~DUPLICATE_q\) # 
-- (\u0|new_sdram_controller_0|m_state.000000001~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000101010101000100010101010100010011010111110001001101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|new_sdram_controller_0|ALT_INV_m_next.000000001~q\,
	datab => \u0|new_sdram_controller_0|ALT_INV_m_state.000000001~q\,
	datac => \u0|new_sdram_controller_0|ALT_INV_Selector34~2_combout\,
	datad => \u0|new_sdram_controller_0|ALT_INV_init_done~DUPLICATE_q\,
	dataf => \u0|new_sdram_controller_0|ALT_INV_Selector37~3_combout\,
	combout => \u0|new_sdram_controller_0|Selector34~3_combout\);

-- Location: LABCELL_X31_Y11_N0
\u0|new_sdram_controller_0|Selector34~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|Selector34~4_combout\ = ( !\u0|new_sdram_controller_0|Selector34~0_combout\ & ( (!\u0|new_sdram_controller_0|m_state.010000000~q\ & (\u0|new_sdram_controller_0|Selector34~3_combout\ & 
-- ((!\u0|new_sdram_controller_0|m_state.100000000~q\) # (\u0|new_sdram_controller_0|Selector34~1_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000100000011000000010000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|new_sdram_controller_0|ALT_INV_Selector34~1_combout\,
	datab => \u0|new_sdram_controller_0|ALT_INV_m_state.010000000~q\,
	datac => \u0|new_sdram_controller_0|ALT_INV_Selector34~3_combout\,
	datad => \u0|new_sdram_controller_0|ALT_INV_m_state.100000000~q\,
	dataf => \u0|new_sdram_controller_0|ALT_INV_Selector34~0_combout\,
	combout => \u0|new_sdram_controller_0|Selector34~4_combout\);

-- Location: FF_X31_Y11_N1
\u0|new_sdram_controller_0|m_next.000000001\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \u0|new_sdram_controller_0|Selector34~4_combout\,
	clrn => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|m_next.000000001~q\);

-- Location: LABCELL_X33_Y11_N48
\u0|new_sdram_controller_0|Selector25~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|Selector25~3_combout\ = ( \u0|new_sdram_controller_0|Selector29~2_combout\ & ( !\u0|new_sdram_controller_0|Selector25~1_combout\ $ (((!\u0|new_sdram_controller_0|Selector25~2_combout\) # 
-- (\u0|new_sdram_controller_0|Selector34~0_combout\))) ) ) # ( !\u0|new_sdram_controller_0|Selector29~2_combout\ & ( \u0|new_sdram_controller_0|Selector25~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101011010010101010101101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|new_sdram_controller_0|ALT_INV_Selector25~1_combout\,
	datac => \u0|new_sdram_controller_0|ALT_INV_Selector25~2_combout\,
	datad => \u0|new_sdram_controller_0|ALT_INV_Selector34~0_combout\,
	dataf => \u0|new_sdram_controller_0|ALT_INV_Selector29~2_combout\,
	combout => \u0|new_sdram_controller_0|Selector25~3_combout\);

-- Location: LABCELL_X33_Y11_N42
\u0|new_sdram_controller_0|Selector25~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|Selector25~4_combout\ = ( \u0|new_sdram_controller_0|m_state.000000001~q\ & ( \u0|new_sdram_controller_0|Selector25~3_combout\ & ( (!\u0|new_sdram_controller_0|Selector25~0_combout\) # 
-- (\u0|new_sdram_controller_0|m_next.000000001~q\) ) ) ) # ( !\u0|new_sdram_controller_0|m_state.000000001~q\ & ( \u0|new_sdram_controller_0|Selector25~3_combout\ & ( (\u0|new_sdram_controller_0|m_next.000000001~q\ & 
-- \u0|new_sdram_controller_0|Selector25~0_combout\) ) ) ) # ( \u0|new_sdram_controller_0|m_state.000000001~q\ & ( !\u0|new_sdram_controller_0|Selector25~3_combout\ ) ) # ( !\u0|new_sdram_controller_0|m_state.000000001~q\ & ( 
-- !\u0|new_sdram_controller_0|Selector25~3_combout\ & ( (!\u0|new_sdram_controller_0|WideOr8~0_combout\) # (\u0|new_sdram_controller_0|init_done~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1011101110111011111111111111111100000000000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|new_sdram_controller_0|ALT_INV_WideOr8~0_combout\,
	datab => \u0|new_sdram_controller_0|ALT_INV_init_done~DUPLICATE_q\,
	datac => \u0|new_sdram_controller_0|ALT_INV_m_next.000000001~q\,
	datad => \u0|new_sdram_controller_0|ALT_INV_Selector25~0_combout\,
	datae => \u0|new_sdram_controller_0|ALT_INV_m_state.000000001~q\,
	dataf => \u0|new_sdram_controller_0|ALT_INV_Selector25~3_combout\,
	combout => \u0|new_sdram_controller_0|Selector25~4_combout\);

-- Location: FF_X33_Y11_N44
\u0|new_sdram_controller_0|m_state.000000001\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \u0|new_sdram_controller_0|Selector25~4_combout\,
	clrn => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|m_state.000000001~q\);

-- Location: MLABCELL_X28_Y12_N15
\u0|new_sdram_controller_0|Selector21~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|Selector21~0_combout\ = ( \u0|new_sdram_controller_0|WideOr8~0_combout\ & ( (!\u0|new_sdram_controller_0|init_done~q\ & (\u0|new_sdram_controller_0|i_cmd\(2) & !\u0|new_sdram_controller_0|m_state.000000001~q\)) ) ) # ( 
-- !\u0|new_sdram_controller_0|WideOr8~0_combout\ & ( ((!\u0|new_sdram_controller_0|init_done~q\ & \u0|new_sdram_controller_0|i_cmd\(2))) # (\u0|new_sdram_controller_0|m_state.000000001~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101011111111000010101111111100001010000000000000101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|new_sdram_controller_0|ALT_INV_init_done~q\,
	datac => \u0|new_sdram_controller_0|ALT_INV_i_cmd\(2),
	datad => \u0|new_sdram_controller_0|ALT_INV_m_state.000000001~q\,
	dataf => \u0|new_sdram_controller_0|ALT_INV_WideOr8~0_combout\,
	combout => \u0|new_sdram_controller_0|Selector21~0_combout\);

-- Location: FF_X28_Y12_N17
\u0|new_sdram_controller_0|m_cmd[2]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \u0|new_sdram_controller_0|Selector21~0_combout\,
	clrn => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|m_cmd[2]~_Duplicate_1_q\);

-- Location: MLABCELL_X28_Y12_N27
\u0|new_sdram_controller_0|Selector3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|Selector3~0_combout\ = ( \u0|new_sdram_controller_0|i_state.000~DUPLICATE_q\ & ( (!\u0|new_sdram_controller_0|i_state.011~q\ & (!\u0|new_sdram_controller_0|i_state.010~q\ & ((!\u0|new_sdram_controller_0|i_state.101~q\) # 
-- (\u0|new_sdram_controller_0|i_cmd\(0))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000110000001000000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|new_sdram_controller_0|ALT_INV_i_state.101~q\,
	datab => \u0|new_sdram_controller_0|ALT_INV_i_state.011~q\,
	datac => \u0|new_sdram_controller_0|ALT_INV_i_state.010~q\,
	datad => \u0|new_sdram_controller_0|ALT_INV_i_cmd\(0),
	dataf => \u0|new_sdram_controller_0|ALT_INV_i_state.000~DUPLICATE_q\,
	combout => \u0|new_sdram_controller_0|Selector3~0_combout\);

-- Location: FF_X28_Y12_N28
\u0|new_sdram_controller_0|i_cmd[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \u0|new_sdram_controller_0|Selector3~0_combout\,
	clrn => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|i_cmd\(0));

-- Location: LABCELL_X31_Y12_N36
\u0|new_sdram_controller_0|always5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|always5~0_combout\ = ( \u0|new_sdram_controller_0|pending~3_combout\ & ( (!\u0|new_sdram_controller_0|f_pop~q\) # ((\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|Equal1~0_combout\ & 
-- (\u0|new_sdram_controller_0|pending~0_combout\ & \u0|new_sdram_controller_0|pending~2_combout\))) ) ) # ( !\u0|new_sdram_controller_0|pending~3_combout\ & ( !\u0|new_sdram_controller_0|f_pop~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011110000111100001111000011110000111100011111000011110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_Equal1~0_combout\,
	datab => \u0|new_sdram_controller_0|ALT_INV_pending~0_combout\,
	datac => \u0|new_sdram_controller_0|ALT_INV_f_pop~q\,
	datad => \u0|new_sdram_controller_0|ALT_INV_pending~2_combout\,
	dataf => \u0|new_sdram_controller_0|ALT_INV_pending~3_combout\,
	combout => \u0|new_sdram_controller_0|always5~0_combout\);

-- Location: MLABCELL_X28_Y12_N6
\u0|new_sdram_controller_0|Selector23~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|Selector23~0_combout\ = ( \u0|new_sdram_controller_0|m_state.000000001~q\ & ( \u0|new_sdram_controller_0|always5~0_combout\ & ( (\u0|new_sdram_controller_0|m_state.000010000~DUPLICATE_q\) # 
-- (\u0|new_sdram_controller_0|m_state.001000000~q\) ) ) ) # ( !\u0|new_sdram_controller_0|m_state.000000001~q\ & ( \u0|new_sdram_controller_0|always5~0_combout\ & ( (!\u0|new_sdram_controller_0|init_done~q\ & \u0|new_sdram_controller_0|i_cmd\(0)) ) ) ) # ( 
-- \u0|new_sdram_controller_0|m_state.000000001~q\ & ( !\u0|new_sdram_controller_0|always5~0_combout\ & ( (\u0|new_sdram_controller_0|m_state.001000000~q\ & !\u0|new_sdram_controller_0|m_state.000010000~DUPLICATE_q\) ) ) ) # ( 
-- !\u0|new_sdram_controller_0|m_state.000000001~q\ & ( !\u0|new_sdram_controller_0|always5~0_combout\ & ( (!\u0|new_sdram_controller_0|init_done~q\ & (\u0|new_sdram_controller_0|i_cmd\(0) & !\u0|new_sdram_controller_0|m_state.000010000~DUPLICATE_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000000000000011110000000000100010001000100000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|new_sdram_controller_0|ALT_INV_init_done~q\,
	datab => \u0|new_sdram_controller_0|ALT_INV_i_cmd\(0),
	datac => \u0|new_sdram_controller_0|ALT_INV_m_state.001000000~q\,
	datad => \u0|new_sdram_controller_0|ALT_INV_m_state.000010000~DUPLICATE_q\,
	datae => \u0|new_sdram_controller_0|ALT_INV_m_state.000000001~q\,
	dataf => \u0|new_sdram_controller_0|ALT_INV_always5~0_combout\,
	combout => \u0|new_sdram_controller_0|Selector23~0_combout\);

-- Location: FF_X28_Y12_N8
\u0|new_sdram_controller_0|m_cmd[0]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \u0|new_sdram_controller_0|Selector23~0_combout\,
	clrn => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|m_cmd[0]~_Duplicate_1_q\);

-- Location: MLABCELL_X25_Y11_N12
\u0|new_sdram_controller_0|Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|Selector2~0_combout\ = ( !\u0|new_sdram_controller_0|i_state.011~DUPLICATE_q\ & ( (\u0|new_sdram_controller_0|i_state.000~q\ & (!\u0|new_sdram_controller_0|i_state.001~q\ & ((!\u0|new_sdram_controller_0|i_state.101~q\) # 
-- (\u0|new_sdram_controller_0|i_cmd\(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000110000001000000011000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|new_sdram_controller_0|ALT_INV_i_state.101~q\,
	datab => \u0|new_sdram_controller_0|ALT_INV_i_state.000~q\,
	datac => \u0|new_sdram_controller_0|ALT_INV_i_state.001~q\,
	datad => \u0|new_sdram_controller_0|ALT_INV_i_cmd\(1),
	dataf => \u0|new_sdram_controller_0|ALT_INV_i_state.011~DUPLICATE_q\,
	combout => \u0|new_sdram_controller_0|Selector2~0_combout\);

-- Location: FF_X25_Y11_N13
\u0|new_sdram_controller_0|i_cmd[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \u0|new_sdram_controller_0|Selector2~0_combout\,
	clrn => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|i_cmd\(1));

-- Location: MLABCELL_X28_Y12_N18
\u0|new_sdram_controller_0|Selector22~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|Selector22~0_combout\ = ( \u0|new_sdram_controller_0|m_state.000000001~q\ & ( \u0|new_sdram_controller_0|always5~0_combout\ & ( (!\u0|new_sdram_controller_0|m_addr~0_combout\) # (\u0|new_sdram_controller_0|m_state.010000000~q\) 
-- ) ) ) # ( !\u0|new_sdram_controller_0|m_state.000000001~q\ & ( \u0|new_sdram_controller_0|always5~0_combout\ & ( (!\u0|new_sdram_controller_0|init_done~q\ & \u0|new_sdram_controller_0|i_cmd\(1)) ) ) ) # ( \u0|new_sdram_controller_0|m_state.000000001~q\ & 
-- ( !\u0|new_sdram_controller_0|always5~0_combout\ & ( (\u0|new_sdram_controller_0|m_state.010000000~q\ & \u0|new_sdram_controller_0|m_addr~0_combout\) ) ) ) # ( !\u0|new_sdram_controller_0|m_state.000000001~q\ & ( 
-- !\u0|new_sdram_controller_0|always5~0_combout\ & ( (!\u0|new_sdram_controller_0|init_done~q\ & (\u0|new_sdram_controller_0|m_addr~0_combout\ & \u0|new_sdram_controller_0|i_cmd\(1))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001010000000110000001100000000101010101111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|new_sdram_controller_0|ALT_INV_init_done~q\,
	datab => \u0|new_sdram_controller_0|ALT_INV_m_state.010000000~q\,
	datac => \u0|new_sdram_controller_0|ALT_INV_m_addr~0_combout\,
	datad => \u0|new_sdram_controller_0|ALT_INV_i_cmd\(1),
	datae => \u0|new_sdram_controller_0|ALT_INV_m_state.000000001~q\,
	dataf => \u0|new_sdram_controller_0|ALT_INV_always5~0_combout\,
	combout => \u0|new_sdram_controller_0|Selector22~0_combout\);

-- Location: FF_X28_Y12_N19
\u0|new_sdram_controller_0|m_cmd[1]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \u0|new_sdram_controller_0|Selector22~0_combout\,
	clrn => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|m_cmd[1]~_Duplicate_1_q\);

-- Location: MLABCELL_X28_Y12_N12
\u0|new_sdram_controller_0|Equal4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|Equal4~0_combout\ = (!\u0|new_sdram_controller_0|m_cmd[2]~_Duplicate_1_q\ & (!\u0|new_sdram_controller_0|m_cmd[0]~_Duplicate_1_q\ & \u0|new_sdram_controller_0|m_cmd[1]~_Duplicate_1_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000001100000000000000110000000000000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u0|new_sdram_controller_0|ALT_INV_m_cmd[2]~_Duplicate_1_q\,
	datac => \u0|new_sdram_controller_0|ALT_INV_m_cmd[0]~_Duplicate_1_q\,
	datad => \u0|new_sdram_controller_0|ALT_INV_m_cmd[1]~_Duplicate_1_q\,
	combout => \u0|new_sdram_controller_0|Equal4~0_combout\);

-- Location: FF_X28_Y12_N13
\u0|new_sdram_controller_0|rd_valid[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \u0|new_sdram_controller_0|Equal4~0_combout\,
	clrn => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|rd_valid\(0));

-- Location: FF_X34_Y12_N40
\u0|new_sdram_controller_0|rd_valid[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	asdata => \u0|new_sdram_controller_0|rd_valid\(0),
	clrn => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|rd_valid\(1));

-- Location: FF_X33_Y12_N34
\u0|new_sdram_controller_0|rd_valid[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	asdata => \u0|new_sdram_controller_0|rd_valid\(1),
	clrn => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|rd_valid\(2));

-- Location: FF_X28_Y12_N31
\u0|new_sdram_controller_0|za_valid\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	asdata => \u0|new_sdram_controller_0|rd_valid\(2),
	clrn => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|za_valid~q\);

-- Location: MLABCELL_X28_Y12_N30
\RAMADDR1[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAMADDR1[0]~1_combout\ = ( \u0|new_sdram_controller_0|za_valid~q\ & ( \LessThan3~3_combout\ ) ) # ( !\u0|new_sdram_controller_0|za_valid~q\ & ( \LessThan3~3_combout\ & ( !\BUFF_CTRL~q\ ) ) ) # ( \u0|new_sdram_controller_0|za_valid~q\ & ( 
-- !\LessThan3~3_combout\ & ( \BUFF_CTRL~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111111110000111100001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_BUFF_CTRL~q\,
	datae => \u0|new_sdram_controller_0|ALT_INV_za_valid~q\,
	dataf => \ALT_INV_LessThan3~3_combout\,
	combout => \RAMADDR1[0]~1_combout\);

-- Location: FF_X27_Y12_N22
\RAMADDR1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Add10~29_sumout\,
	sclr => \RAMADDR1[0]~0_combout\,
	ena => \RAMADDR1[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RAMADDR1(7));

-- Location: LABCELL_X27_Y12_N18
\Add10~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add10~25_sumout\ = SUM(( RAMADDR1(6) ) + ( GND ) + ( \Add10~22\ ))
-- \Add10~26\ = CARRY(( RAMADDR1(6) ) + ( GND ) + ( \Add10~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_RAMADDR1(6),
	cin => \Add10~22\,
	sumout => \Add10~25_sumout\,
	cout => \Add10~26\);

-- Location: LABCELL_X27_Y12_N21
\Add10~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add10~29_sumout\ = SUM(( RAMADDR1(7) ) + ( GND ) + ( \Add10~26\ ))
-- \Add10~30\ = CARRY(( RAMADDR1(7) ) + ( GND ) + ( \Add10~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_RAMADDR1(7),
	cin => \Add10~26\,
	sumout => \Add10~29_sumout\,
	cout => \Add10~30\);

-- Location: FF_X27_Y12_N23
\RAMADDR1[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Add10~29_sumout\,
	sclr => \RAMADDR1[0]~0_combout\,
	ena => \RAMADDR1[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAMADDR1[7]~DUPLICATE_q\);

-- Location: LABCELL_X27_Y12_N24
\Add10~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add10~33_sumout\ = SUM(( RAMADDR1(8) ) + ( GND ) + ( \Add10~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_RAMADDR1(8),
	cin => \Add10~30\,
	sumout => \Add10~33_sumout\);

-- Location: FF_X27_Y12_N25
\RAMADDR1[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Add10~33_sumout\,
	sclr => \RAMADDR1[0]~0_combout\,
	ena => \RAMADDR1[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RAMADDR1(8));

-- Location: FF_X27_Y12_N20
\RAMADDR1[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Add10~25_sumout\,
	sclr => \RAMADDR1[0]~0_combout\,
	ena => \RAMADDR1[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAMADDR1[6]~DUPLICATE_q\);

-- Location: FF_X27_Y12_N14
\RAMADDR1[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Add10~17_sumout\,
	sclr => \RAMADDR1[0]~0_combout\,
	ena => \RAMADDR1[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAMADDR1[4]~DUPLICATE_q\);

-- Location: FF_X27_Y12_N5
\RAMADDR1[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Add10~5_sumout\,
	sclr => \RAMADDR1[0]~0_combout\,
	ena => \RAMADDR1[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAMADDR1[1]~DUPLICATE_q\);

-- Location: FF_X27_Y12_N8
\RAMADDR1[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Add10~9_sumout\,
	sclr => \RAMADDR1[0]~0_combout\,
	ena => \RAMADDR1[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAMADDR1[2]~DUPLICATE_q\);

-- Location: LABCELL_X27_Y12_N54
\LessThan6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan6~0_combout\ = ( \RAMADDR1[1]~DUPLICATE_q\ & ( \RAMADDR1[2]~DUPLICATE_q\ & ( (RAMADDR1(3) & (\RAMADDR1[4]~DUPLICATE_q\ & RAMADDR1(0))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_RAMADDR1(3),
	datab => \ALT_INV_RAMADDR1[4]~DUPLICATE_q\,
	datac => ALT_INV_RAMADDR1(0),
	datae => \ALT_INV_RAMADDR1[1]~DUPLICATE_q\,
	dataf => \ALT_INV_RAMADDR1[2]~DUPLICATE_q\,
	combout => \LessThan6~0_combout\);

-- Location: LABCELL_X27_Y12_N48
\RAMADDR1[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAMADDR1[0]~0_combout\ = ( \LessThan6~0_combout\ & ( \BUFF_CTRL~q\ & ( (\RAMADDR1[7]~DUPLICATE_q\ & (RAMADDR1(8) & (\RAMADDR1[6]~DUPLICATE_q\ & RAMADDR1(5)))) ) ) ) # ( \LessThan6~0_combout\ & ( !\BUFF_CTRL~q\ ) ) # ( !\LessThan6~0_combout\ & ( 
-- !\BUFF_CTRL~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RAMADDR1[7]~DUPLICATE_q\,
	datab => ALT_INV_RAMADDR1(8),
	datac => \ALT_INV_RAMADDR1[6]~DUPLICATE_q\,
	datad => ALT_INV_RAMADDR1(5),
	datae => \ALT_INV_LessThan6~0_combout\,
	dataf => \ALT_INV_BUFF_CTRL~q\,
	combout => \RAMADDR1[0]~0_combout\);

-- Location: FF_X27_Y12_N2
\RAMADDR1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Add10~1_sumout\,
	sclr => \RAMADDR1[0]~0_combout\,
	ena => \RAMADDR1[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RAMADDR1(0));

-- Location: LABCELL_X27_Y12_N3
\Add10~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add10~5_sumout\ = SUM(( RAMADDR1(1) ) + ( GND ) + ( \Add10~2\ ))
-- \Add10~6\ = CARRY(( RAMADDR1(1) ) + ( GND ) + ( \Add10~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_RAMADDR1(1),
	cin => \Add10~2\,
	sumout => \Add10~5_sumout\,
	cout => \Add10~6\);

-- Location: FF_X27_Y12_N4
\RAMADDR1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Add10~5_sumout\,
	sclr => \RAMADDR1[0]~0_combout\,
	ena => \RAMADDR1[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RAMADDR1(1));

-- Location: LABCELL_X27_Y12_N6
\Add10~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add10~9_sumout\ = SUM(( RAMADDR1(2) ) + ( GND ) + ( \Add10~6\ ))
-- \Add10~10\ = CARRY(( RAMADDR1(2) ) + ( GND ) + ( \Add10~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_RAMADDR1(2),
	cin => \Add10~6\,
	sumout => \Add10~9_sumout\,
	cout => \Add10~10\);

-- Location: FF_X27_Y12_N7
\RAMADDR1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Add10~9_sumout\,
	sclr => \RAMADDR1[0]~0_combout\,
	ena => \RAMADDR1[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RAMADDR1(2));

-- Location: LABCELL_X27_Y12_N9
\Add10~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add10~13_sumout\ = SUM(( RAMADDR1(3) ) + ( GND ) + ( \Add10~10\ ))
-- \Add10~14\ = CARRY(( RAMADDR1(3) ) + ( GND ) + ( \Add10~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_RAMADDR1(3),
	cin => \Add10~10\,
	sumout => \Add10~13_sumout\,
	cout => \Add10~14\);

-- Location: FF_X27_Y12_N10
\RAMADDR1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Add10~13_sumout\,
	sclr => \RAMADDR1[0]~0_combout\,
	ena => \RAMADDR1[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RAMADDR1(3));

-- Location: LABCELL_X27_Y12_N12
\Add10~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add10~17_sumout\ = SUM(( RAMADDR1(4) ) + ( GND ) + ( \Add10~14\ ))
-- \Add10~18\ = CARRY(( RAMADDR1(4) ) + ( GND ) + ( \Add10~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_RAMADDR1(4),
	cin => \Add10~14\,
	sumout => \Add10~17_sumout\,
	cout => \Add10~18\);

-- Location: FF_X27_Y12_N13
\RAMADDR1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Add10~17_sumout\,
	sclr => \RAMADDR1[0]~0_combout\,
	ena => \RAMADDR1[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RAMADDR1(4));

-- Location: LABCELL_X27_Y12_N15
\Add10~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add10~21_sumout\ = SUM(( RAMADDR1(5) ) + ( GND ) + ( \Add10~18\ ))
-- \Add10~22\ = CARRY(( RAMADDR1(5) ) + ( GND ) + ( \Add10~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_RAMADDR1(5),
	cin => \Add10~18\,
	sumout => \Add10~21_sumout\,
	cout => \Add10~22\);

-- Location: FF_X27_Y12_N16
\RAMADDR1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Add10~21_sumout\,
	sclr => \RAMADDR1[0]~0_combout\,
	ena => \RAMADDR1[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RAMADDR1(5));

-- Location: FF_X27_Y12_N19
\RAMADDR1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Add10~25_sumout\,
	sclr => \RAMADDR1[0]~0_combout\,
	ena => \RAMADDR1[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RAMADDR1(6));

-- Location: LABCELL_X36_Y12_N42
\gray~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \gray~1_combout\ = ( RAMADDR1(7) & ( !RAMADDR1(6) ) ) # ( !RAMADDR1(7) & ( RAMADDR1(6) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_RAMADDR1(6),
	dataf => ALT_INV_RAMADDR1(7),
	combout => \gray~1_combout\);

-- Location: FF_X36_Y12_N43
\RAMADDR1GR[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \gray~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RAMADDR1GR(6));

-- Location: LABCELL_X36_Y12_N12
\RAMADDR1GR_sync0[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAMADDR1GR_sync0[6]~feeder_combout\ = ( RAMADDR1GR(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_RAMADDR1GR(6),
	combout => \RAMADDR1GR_sync0[6]~feeder_combout\);

-- Location: FF_X36_Y12_N14
\RAMADDR1GR_sync0[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \RAMADDR1GR_sync0[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RAMADDR1GR_sync0(6));

-- Location: LABCELL_X36_Y12_N33
\RAMADDR1GR_sync1[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAMADDR1GR_sync1[6]~feeder_combout\ = RAMADDR1GR_sync0(6)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_RAMADDR1GR_sync0(6),
	combout => \RAMADDR1GR_sync1[6]~feeder_combout\);

-- Location: FF_X36_Y12_N35
\RAMADDR1GR_sync1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \RAMADDR1GR_sync1[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RAMADDR1GR_sync1(6));

-- Location: LABCELL_X36_Y12_N57
\gray~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \gray~4_combout\ = ( RAMADDR1(3) & ( !RAMADDR1(4) ) ) # ( !RAMADDR1(3) & ( RAMADDR1(4) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010110101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_RAMADDR1(4),
	dataf => ALT_INV_RAMADDR1(3),
	combout => \gray~4_combout\);

-- Location: FF_X36_Y12_N58
\RAMADDR1GR[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \gray~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RAMADDR1GR(3));

-- Location: FF_X36_Y12_N23
\RAMADDR1GR_sync0[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => RAMADDR1GR(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RAMADDR1GR_sync0(3));

-- Location: FF_X36_Y12_N52
\RAMADDR1GR_sync1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => RAMADDR1GR_sync0(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RAMADDR1GR_sync1(3));

-- Location: LABCELL_X36_Y12_N54
\gray~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \gray~3_combout\ = !RAMADDR1(4) $ (!RAMADDR1(5))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010010110100101101001011010010110100101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_RAMADDR1(4),
	datac => ALT_INV_RAMADDR1(5),
	combout => \gray~3_combout\);

-- Location: FF_X36_Y12_N55
\RAMADDR1GR[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \gray~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RAMADDR1GR(4));

-- Location: LABCELL_X36_Y12_N15
\RAMADDR1GR_sync0[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAMADDR1GR_sync0[4]~feeder_combout\ = ( RAMADDR1GR(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_RAMADDR1GR(4),
	combout => \RAMADDR1GR_sync0[4]~feeder_combout\);

-- Location: FF_X36_Y12_N16
\RAMADDR1GR_sync0[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \RAMADDR1GR_sync0[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RAMADDR1GR_sync0(4));

-- Location: FF_X36_Y12_N50
\RAMADDR1GR_sync1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => RAMADDR1GR_sync0(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RAMADDR1GR_sync1(4));

-- Location: FF_X35_Y12_N53
\RAMADDR1GR[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	asdata => RAMADDR1(8),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RAMADDR1GR(8));

-- Location: LABCELL_X35_Y12_N54
\RAMADDR1GR_sync0[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAMADDR1GR_sync0[8]~feeder_combout\ = ( RAMADDR1GR(8) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_RAMADDR1GR(8),
	combout => \RAMADDR1GR_sync0[8]~feeder_combout\);

-- Location: FF_X35_Y12_N56
\RAMADDR1GR_sync0[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \RAMADDR1GR_sync0[8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RAMADDR1GR_sync0(8));

-- Location: LABCELL_X35_Y12_N57
\RAMADDR1GR_sync1[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAMADDR1GR_sync1[8]~feeder_combout\ = RAMADDR1GR_sync0(8)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_RAMADDR1GR_sync0(8),
	combout => \RAMADDR1GR_sync1[8]~feeder_combout\);

-- Location: FF_X35_Y12_N58
\RAMADDR1GR_sync1[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \RAMADDR1GR_sync1[8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RAMADDR1GR_sync1(8));

-- Location: LABCELL_X36_Y12_N45
\gray~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \gray~2_combout\ = !RAMADDR1(6) $ (!RAMADDR1(5))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111001100001100111100110000110011110011000011001111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_RAMADDR1(6),
	datad => ALT_INV_RAMADDR1(5),
	combout => \gray~2_combout\);

-- Location: FF_X36_Y12_N47
\RAMADDR1GR[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \gray~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RAMADDR1GR(5));

-- Location: LABCELL_X36_Y12_N3
\RAMADDR1GR_sync0[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAMADDR1GR_sync0[5]~feeder_combout\ = ( RAMADDR1GR(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_RAMADDR1GR(5),
	combout => \RAMADDR1GR_sync0[5]~feeder_combout\);

-- Location: FF_X36_Y12_N5
\RAMADDR1GR_sync0[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \RAMADDR1GR_sync0[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RAMADDR1GR_sync0(5));

-- Location: FF_X36_Y12_N40
\RAMADDR1GR_sync1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => RAMADDR1GR_sync0(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RAMADDR1GR_sync1(5));

-- Location: LABCELL_X35_Y12_N48
\gray~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \gray~0_combout\ = ( !RAMADDR1(7) & ( RAMADDR1(8) ) ) # ( RAMADDR1(7) & ( !RAMADDR1(8) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => ALT_INV_RAMADDR1(7),
	dataf => ALT_INV_RAMADDR1(8),
	combout => \gray~0_combout\);

-- Location: FF_X35_Y12_N49
\RAMADDR1GR[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \gray~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RAMADDR1GR(7));

-- Location: LABCELL_X35_Y12_N0
\RAMADDR1GR_sync0[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAMADDR1GR_sync0[7]~feeder_combout\ = ( RAMADDR1GR(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_RAMADDR1GR(7),
	combout => \RAMADDR1GR_sync0[7]~feeder_combout\);

-- Location: FF_X35_Y12_N1
\RAMADDR1GR_sync0[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \RAMADDR1GR_sync0[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RAMADDR1GR_sync0(7));

-- Location: FF_X35_Y12_N31
\RAMADDR1GR_sync1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => RAMADDR1GR_sync0(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RAMADDR1GR_sync1(7));

-- Location: LABCELL_X36_Y12_N36
\binary~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \binary~2_combout\ = ( RAMADDR1GR_sync1(5) & ( RAMADDR1GR_sync1(7) & ( !RAMADDR1GR_sync1(6) $ (!RAMADDR1GR_sync1(3) $ (!RAMADDR1GR_sync1(4) $ (!RAMADDR1GR_sync1(8)))) ) ) ) # ( !RAMADDR1GR_sync1(5) & ( RAMADDR1GR_sync1(7) & ( !RAMADDR1GR_sync1(6) $ 
-- (!RAMADDR1GR_sync1(3) $ (!RAMADDR1GR_sync1(4) $ (RAMADDR1GR_sync1(8)))) ) ) ) # ( RAMADDR1GR_sync1(5) & ( !RAMADDR1GR_sync1(7) & ( !RAMADDR1GR_sync1(6) $ (!RAMADDR1GR_sync1(3) $ (!RAMADDR1GR_sync1(4) $ (RAMADDR1GR_sync1(8)))) ) ) ) # ( 
-- !RAMADDR1GR_sync1(5) & ( !RAMADDR1GR_sync1(7) & ( !RAMADDR1GR_sync1(6) $ (!RAMADDR1GR_sync1(3) $ (!RAMADDR1GR_sync1(4) $ (!RAMADDR1GR_sync1(8)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100110010110100101100110100110010110011010010110100110010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_RAMADDR1GR_sync1(6),
	datab => ALT_INV_RAMADDR1GR_sync1(3),
	datac => ALT_INV_RAMADDR1GR_sync1(4),
	datad => ALT_INV_RAMADDR1GR_sync1(8),
	datae => ALT_INV_RAMADDR1GR_sync1(5),
	dataf => ALT_INV_RAMADDR1GR_sync1(7),
	combout => \binary~2_combout\);

-- Location: FF_X36_Y12_N38
\RAMADDR1_bin[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \binary~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RAMADDR1_bin(3));

-- Location: LABCELL_X36_Y12_N24
\binary~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \binary~6_combout\ = ( RAMADDR1GR_sync1(7) & ( !RAMADDR1GR_sync1(6) $ (!RAMADDR1GR_sync1(8) $ (!RAMADDR1GR_sync1(4) $ (RAMADDR1GR_sync1(5)))) ) ) # ( !RAMADDR1GR_sync1(7) & ( !RAMADDR1GR_sync1(6) $ (!RAMADDR1GR_sync1(8) $ (!RAMADDR1GR_sync1(4) $ 
-- (!RAMADDR1GR_sync1(5)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110100110010110011010011001011010010110011010011001011001101001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_RAMADDR1GR_sync1(6),
	datab => ALT_INV_RAMADDR1GR_sync1(8),
	datac => ALT_INV_RAMADDR1GR_sync1(4),
	datad => ALT_INV_RAMADDR1GR_sync1(5),
	dataf => ALT_INV_RAMADDR1GR_sync1(7),
	combout => \binary~6_combout\);

-- Location: FF_X36_Y12_N26
\RAMADDR1_bin[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \binary~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RAMADDR1_bin(4));

-- Location: LABCELL_X36_Y12_N27
\binary~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \binary~7_combout\ = ( RAMADDR1GR_sync1(7) & ( !RAMADDR1GR_sync1(6) $ (!RAMADDR1GR_sync1(8) $ (!RAMADDR1GR_sync1(5))) ) ) # ( !RAMADDR1GR_sync1(7) & ( !RAMADDR1GR_sync1(6) $ (!RAMADDR1GR_sync1(8) $ (RAMADDR1GR_sync1(5))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101010100101010110101010010110100101010110101010010101011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_RAMADDR1GR_sync1(6),
	datac => ALT_INV_RAMADDR1GR_sync1(8),
	datad => ALT_INV_RAMADDR1GR_sync1(5),
	dataf => ALT_INV_RAMADDR1GR_sync1(7),
	combout => \binary~7_combout\);

-- Location: FF_X36_Y12_N29
\RAMADDR1_bin[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \binary~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RAMADDR1_bin(5));

-- Location: LABCELL_X36_Y12_N48
\Equal2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal2~2_combout\ = ( RAMADDR1_bin(5) & ( RAMADDR2(5) & ( (!RAMADDR1_bin(3) & (!RAMADDR2(3) & (!RAMADDR1_bin(4) $ (RAMADDR2(4))))) # (RAMADDR1_bin(3) & (RAMADDR2(3) & (!RAMADDR1_bin(4) $ (RAMADDR2(4))))) ) ) ) # ( !RAMADDR1_bin(5) & ( !RAMADDR2(5) & ( 
-- (!RAMADDR1_bin(3) & (!RAMADDR2(3) & (!RAMADDR1_bin(4) $ (RAMADDR2(4))))) # (RAMADDR1_bin(3) & (RAMADDR2(3) & (!RAMADDR1_bin(4) $ (RAMADDR2(4))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1001000000001001000000000000000000000000000000001001000000001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_RAMADDR1_bin(3),
	datab => ALT_INV_RAMADDR2(3),
	datac => ALT_INV_RAMADDR1_bin(4),
	datad => ALT_INV_RAMADDR2(4),
	datae => ALT_INV_RAMADDR1_bin(5),
	dataf => ALT_INV_RAMADDR2(5),
	combout => \Equal2~2_combout\);

-- Location: LABCELL_X29_Y65_N51
\u1|Equal3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|Equal3~1_combout\ = ( \u1|Xpos\(8) & ( (!\u1|Xpos\(10) & (!\u1|Xpos\(7) & \u1|Xpos\(9))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001000000010000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_Xpos\(10),
	datab => \u1|ALT_INV_Xpos\(7),
	datac => \u1|ALT_INV_Xpos\(9),
	dataf => \u1|ALT_INV_Xpos\(8),
	combout => \u1|Equal3~1_combout\);

-- Location: LABCELL_X27_Y13_N48
\u1|LessThan7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|LessThan7~0_combout\ = ( \u1|Ypos\(5) & ( \u1|Ypos\(6) ) ) # ( !\u1|Ypos\(5) & ( (\u1|Ypos\(4) & (\u1|Ypos\(6) & \u1|Ypos[3]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000011000000000000001100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u1|ALT_INV_Ypos\(4),
	datac => \u1|ALT_INV_Ypos\(6),
	datad => \u1|ALT_INV_Ypos[3]~DUPLICATE_q\,
	dataf => \u1|ALT_INV_Ypos\(5),
	combout => \u1|LessThan7~0_combout\);

-- Location: LABCELL_X27_Y13_N54
\u1|ACTVID~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|ACTVID~0_combout\ = ( \u1|Ypos\(8) & ( (!\u1|Ypos\(10) & !\u1|Ypos\(9)) ) ) # ( !\u1|Ypos\(8) & ( (!\u1|Ypos\(10) & ((!\u1|Ypos\(9)) # ((!\u1|Ypos\(7) & !\u1|LessThan7~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110010000000110011001000000011001100000000001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_Ypos\(7),
	datab => \u1|ALT_INV_Ypos\(10),
	datac => \u1|ALT_INV_LessThan7~0_combout\,
	datad => \u1|ALT_INV_Ypos\(9),
	dataf => \u1|ALT_INV_Ypos\(8),
	combout => \u1|ACTVID~0_combout\);

-- Location: LABCELL_X29_Y57_N48
\u1|ACTVID~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|ACTVID~1_combout\ = ( \u1|ACTVID~q\ & ( \u1|ACTVID~0_combout\ & ( (!\u1|Equal3~2_combout\) # ((!\u1|Equal3~1_combout\) # (\u1|Equal2~0_combout\)) ) ) ) # ( !\u1|ACTVID~q\ & ( \u1|ACTVID~0_combout\ & ( (\u1|Equal3~2_combout\ & \u1|Equal2~0_combout\) ) 
-- ) ) # ( \u1|ACTVID~q\ & ( !\u1|ACTVID~0_combout\ & ( (\u1|Equal3~2_combout\ & \u1|Equal2~0_combout\) ) ) ) # ( !\u1|ACTVID~q\ & ( !\u1|ACTVID~0_combout\ & ( (\u1|Equal3~2_combout\ & \u1|Equal2~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100011111101111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_Equal3~2_combout\,
	datab => \u1|ALT_INV_Equal2~0_combout\,
	datac => \u1|ALT_INV_Equal3~1_combout\,
	datae => \u1|ALT_INV_ACTVID~q\,
	dataf => \u1|ALT_INV_ACTVID~0_combout\,
	combout => \u1|ACTVID~1_combout\);

-- Location: FF_X29_Y57_N49
\u1|ACTVID\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \u1|ACTVID~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|ACTVID~q\);

-- Location: LABCELL_X35_Y12_N18
\gray~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \gray~5_combout\ = !RAMADDR1(2) $ (!RAMADDR1(3))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010010110100101101001011010010110100101101001011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_RAMADDR1(2),
	datac => ALT_INV_RAMADDR1(3),
	combout => \gray~5_combout\);

-- Location: FF_X35_Y12_N20
\RAMADDR1GR[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \gray~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RAMADDR1GR(2));

-- Location: LABCELL_X35_Y12_N6
\RAMADDR1GR_sync0[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAMADDR1GR_sync0[2]~feeder_combout\ = ( RAMADDR1GR(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_RAMADDR1GR(2),
	combout => \RAMADDR1GR_sync0[2]~feeder_combout\);

-- Location: FF_X35_Y12_N8
\RAMADDR1GR_sync0[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \RAMADDR1GR_sync0[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RAMADDR1GR_sync0(2));

-- Location: LABCELL_X35_Y12_N9
\RAMADDR1GR_sync1[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAMADDR1GR_sync1[2]~feeder_combout\ = RAMADDR1GR_sync0(2)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_RAMADDR1GR_sync0(2),
	combout => \RAMADDR1GR_sync1[2]~feeder_combout\);

-- Location: FF_X35_Y12_N11
\RAMADDR1GR_sync1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \RAMADDR1GR_sync1[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RAMADDR1GR_sync1(2));

-- Location: LABCELL_X35_Y12_N21
\gray~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \gray~6_combout\ = !RAMADDR1(2) $ (!RAMADDR1(1))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010110101010010101011010101001010101101010100101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_RAMADDR1(2),
	datad => ALT_INV_RAMADDR1(1),
	combout => \gray~6_combout\);

-- Location: FF_X35_Y12_N22
\RAMADDR1GR[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \gray~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RAMADDR1GR(1));

-- Location: LABCELL_X35_Y12_N36
\RAMADDR1GR_sync0[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAMADDR1GR_sync0[1]~feeder_combout\ = ( RAMADDR1GR(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_RAMADDR1GR(1),
	combout => \RAMADDR1GR_sync0[1]~feeder_combout\);

-- Location: FF_X35_Y12_N38
\RAMADDR1GR_sync0[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \RAMADDR1GR_sync0[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RAMADDR1GR_sync0(1));

-- Location: FF_X35_Y12_N46
\RAMADDR1GR_sync1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => RAMADDR1GR_sync0(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RAMADDR1GR_sync1(1));

-- Location: LABCELL_X35_Y12_N15
\binary~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \binary~4_combout\ = !RAMADDR1GR_sync1(2) $ (!\binary~2_combout\ $ (RAMADDR1GR_sync1(1)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011000011001111001100001100111100110000110011110011000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_RAMADDR1GR_sync1(2),
	datac => \ALT_INV_binary~2_combout\,
	datad => ALT_INV_RAMADDR1GR_sync1(1),
	combout => \binary~4_combout\);

-- Location: FF_X35_Y12_N16
\RAMADDR1_bin[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \binary~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RAMADDR1_bin(1));

-- Location: LABCELL_X35_Y12_N24
\gray~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \gray~7_combout\ = ( !RAMADDR1(1) & ( RAMADDR1(0) ) ) # ( RAMADDR1(1) & ( !RAMADDR1(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111111111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => ALT_INV_RAMADDR1(1),
	dataf => ALT_INV_RAMADDR1(0),
	combout => \gray~7_combout\);

-- Location: FF_X35_Y12_N26
\RAMADDR1GR[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \gray~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RAMADDR1GR(0));

-- Location: LABCELL_X35_Y12_N39
\RAMADDR1GR_sync0[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAMADDR1GR_sync0[0]~feeder_combout\ = ( RAMADDR1GR(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_RAMADDR1GR(0),
	combout => \RAMADDR1GR_sync0[0]~feeder_combout\);

-- Location: FF_X35_Y12_N41
\RAMADDR1GR_sync0[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \RAMADDR1GR_sync0[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RAMADDR1GR_sync0(0));

-- Location: FF_X35_Y12_N35
\RAMADDR1GR_sync1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => RAMADDR1GR_sync0(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RAMADDR1GR_sync1(0));

-- Location: LABCELL_X35_Y12_N12
\binary~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \binary~3_combout\ = ( RAMADDR1GR_sync1(1) & ( !RAMADDR1GR_sync1(2) $ (!RAMADDR1GR_sync1(0) $ (!\binary~2_combout\)) ) ) # ( !RAMADDR1GR_sync1(1) & ( !RAMADDR1GR_sync1(2) $ (!RAMADDR1GR_sync1(0) $ (\binary~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110011000011001111001100001111000011001111001100001100111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_RAMADDR1GR_sync1(2),
	datac => ALT_INV_RAMADDR1GR_sync1(0),
	datad => \ALT_INV_binary~2_combout\,
	dataf => ALT_INV_RAMADDR1GR_sync1(1),
	combout => \binary~3_combout\);

-- Location: FF_X35_Y12_N14
\RAMADDR1_bin[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \binary~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RAMADDR1_bin(0));

-- Location: LABCELL_X35_Y12_N42
\binary~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \binary~5_combout\ = ( \binary~2_combout\ & ( !RAMADDR1GR_sync1(2) ) ) # ( !\binary~2_combout\ & ( RAMADDR1GR_sync1(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011110011001100110000110011001100111100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_RAMADDR1GR_sync1(2),
	datae => \ALT_INV_binary~2_combout\,
	combout => \binary~5_combout\);

-- Location: FF_X35_Y12_N43
\RAMADDR1_bin[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \binary~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RAMADDR1_bin(2));

-- Location: LABCELL_X35_Y12_N33
\Equal2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal2~1_combout\ = ( RAMADDR2(1) & ( RAMADDR2(0) & ( (RAMADDR1_bin(1) & (RAMADDR1_bin(0) & (!RAMADDR2(2) $ (RAMADDR1_bin(2))))) ) ) ) # ( !RAMADDR2(1) & ( RAMADDR2(0) & ( (!RAMADDR1_bin(1) & (RAMADDR1_bin(0) & (!RAMADDR2(2) $ (RAMADDR1_bin(2))))) ) ) ) 
-- # ( RAMADDR2(1) & ( !RAMADDR2(0) & ( (RAMADDR1_bin(1) & (!RAMADDR1_bin(0) & (!RAMADDR2(2) $ (RAMADDR1_bin(2))))) ) ) ) # ( !RAMADDR2(1) & ( !RAMADDR2(0) & ( (!RAMADDR1_bin(1) & (!RAMADDR1_bin(0) & (!RAMADDR2(2) $ (RAMADDR1_bin(2))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000100000010000000001000000001000000000100000010000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_RAMADDR1_bin(1),
	datab => ALT_INV_RAMADDR2(2),
	datac => ALT_INV_RAMADDR1_bin(0),
	datad => ALT_INV_RAMADDR1_bin(2),
	datae => ALT_INV_RAMADDR2(1),
	dataf => ALT_INV_RAMADDR2(0),
	combout => \Equal2~1_combout\);

-- Location: LABCELL_X36_Y12_N6
\binary~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \binary~1_combout\ = ( RAMADDR1GR_sync1(7) & ( !RAMADDR1GR_sync1(8) ) ) # ( !RAMADDR1GR_sync1(7) & ( RAMADDR1GR_sync1(8) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001111001100110011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_RAMADDR1GR_sync1(8),
	dataf => ALT_INV_RAMADDR1GR_sync1(7),
	combout => \binary~1_combout\);

-- Location: FF_X36_Y12_N8
\RAMADDR1_bin[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \binary~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RAMADDR1_bin(7));

-- Location: FF_X36_Y12_N20
\RAMADDR1_bin[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => RAMADDR1GR_sync1(8),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RAMADDR1_bin(8));

-- Location: LABCELL_X36_Y12_N9
\binary~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \binary~0_combout\ = ( RAMADDR1GR_sync1(7) & ( !RAMADDR1GR_sync1(6) $ (RAMADDR1GR_sync1(8)) ) ) # ( !RAMADDR1GR_sync1(7) & ( !RAMADDR1GR_sync1(6) $ (!RAMADDR1GR_sync1(8)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011010011001100110011001100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_RAMADDR1GR_sync1(6),
	datab => ALT_INV_RAMADDR1GR_sync1(8),
	dataf => ALT_INV_RAMADDR1GR_sync1(7),
	combout => \binary~0_combout\);

-- Location: FF_X36_Y12_N11
\RAMADDR1_bin[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \binary~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RAMADDR1_bin(6));

-- Location: LABCELL_X36_Y12_N18
\Equal2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = ( RAMADDR1_bin(8) & ( RAMADDR1_bin(6) & ( (RAMADDR2(6) & (RAMADDR2(8) & (!RAMADDR2(7) $ (RAMADDR1_bin(7))))) ) ) ) # ( !RAMADDR1_bin(8) & ( RAMADDR1_bin(6) & ( (RAMADDR2(6) & (!RAMADDR2(8) & (!RAMADDR2(7) $ (RAMADDR1_bin(7))))) ) ) ) 
-- # ( RAMADDR1_bin(8) & ( !RAMADDR1_bin(6) & ( (!RAMADDR2(6) & (RAMADDR2(8) & (!RAMADDR2(7) $ (RAMADDR1_bin(7))))) ) ) ) # ( !RAMADDR1_bin(8) & ( !RAMADDR1_bin(6) & ( (!RAMADDR2(6) & (!RAMADDR2(8) & (!RAMADDR2(7) $ (RAMADDR1_bin(7))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000100000000010000000001001000000000100000000010000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_RAMADDR2(6),
	datab => ALT_INV_RAMADDR2(7),
	datac => ALT_INV_RAMADDR2(8),
	datad => ALT_INV_RAMADDR1_bin(7),
	datae => ALT_INV_RAMADDR1_bin(8),
	dataf => ALT_INV_RAMADDR1_bin(6),
	combout => \Equal2~0_combout\);

-- Location: MLABCELL_X34_Y13_N24
\process_1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_1~0_combout\ = ( \Equal2~0_combout\ & ( (!\VGABEGIN~q\) # ((!\u1|ACTVID~q\) # ((\Equal2~2_combout\ & \Equal2~1_combout\))) ) ) # ( !\Equal2~0_combout\ & ( (!\VGABEGIN~q\) # (!\u1|ACTVID~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101011111010111110101111101011111010111110111111101011111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_VGABEGIN~q\,
	datab => \ALT_INV_Equal2~2_combout\,
	datac => \u1|ALT_INV_ACTVID~q\,
	datad => \ALT_INV_Equal2~1_combout\,
	dataf => \ALT_INV_Equal2~0_combout\,
	combout => \process_1~0_combout\);

-- Location: LABCELL_X36_Y14_N54
\RAMADDR2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAMADDR2~0_combout\ = ( RAMADDR2(3) & ( (RAMADDR2(2) & RAMADDR2(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000110000001100000000000000000000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_RAMADDR2(2),
	datac => ALT_INV_RAMADDR2(1),
	datae => ALT_INV_RAMADDR2(3),
	combout => \RAMADDR2~0_combout\);

-- Location: LABCELL_X36_Y14_N15
\RAMADDR2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAMADDR2~1_combout\ = ( RAMADDR2(0) & ( RAMADDR2(7) & ( (RAMADDR2(4) & (RAMADDR2(6) & (RAMADDR2(8) & RAMADDR2(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_RAMADDR2(4),
	datab => ALT_INV_RAMADDR2(6),
	datac => ALT_INV_RAMADDR2(8),
	datad => ALT_INV_RAMADDR2(5),
	datae => ALT_INV_RAMADDR2(0),
	dataf => ALT_INV_RAMADDR2(7),
	combout => \RAMADDR2~1_combout\);

-- Location: LABCELL_X36_Y14_N24
\RAMADDR2~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAMADDR2~11_combout\ = ( \RAMADDR2~1_combout\ & ( (!\VGABEGIN~q\) # ((!\process_1~0_combout\ & \RAMADDR2~0_combout\)) ) ) # ( !\RAMADDR2~1_combout\ & ( !\VGABEGIN~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111000011001111111100001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_process_1~0_combout\,
	datac => \ALT_INV_RAMADDR2~0_combout\,
	datad => \ALT_INV_VGABEGIN~q\,
	dataf => \ALT_INV_RAMADDR2~1_combout\,
	combout => \RAMADDR2~11_combout\);

-- Location: LABCELL_X36_Y14_N51
\RAMADDR2[0]~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAMADDR2[0]~12_combout\ = ( \process_1~0_combout\ & ( !\VGABEGIN~q\ ) ) # ( !\process_1~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111110101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_VGABEGIN~q\,
	dataf => \ALT_INV_process_1~0_combout\,
	combout => \RAMADDR2[0]~12_combout\);

-- Location: FF_X37_Y13_N2
\RAMADDR2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \Add11~1_sumout\,
	sclr => \RAMADDR2~11_combout\,
	sload => VCC,
	ena => \RAMADDR2[0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RAMADDR2(0));

-- Location: LABCELL_X37_Y13_N33
\Add11~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add11~5_sumout\ = SUM(( RAMADDR2(1) ) + ( GND ) + ( \Add11~2\ ))
-- \Add11~6\ = CARRY(( RAMADDR2(1) ) + ( GND ) + ( \Add11~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_RAMADDR2(1),
	cin => \Add11~2\,
	sumout => \Add11~5_sumout\,
	cout => \Add11~6\);

-- Location: FF_X37_Y13_N5
\RAMADDR2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \Add11~5_sumout\,
	sclr => \RAMADDR2~11_combout\,
	sload => VCC,
	ena => \RAMADDR2[0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RAMADDR2(1));

-- Location: LABCELL_X37_Y13_N36
\Add11~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add11~9_sumout\ = SUM(( RAMADDR2(2) ) + ( GND ) + ( \Add11~6\ ))
-- \Add11~10\ = CARRY(( RAMADDR2(2) ) + ( GND ) + ( \Add11~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_RAMADDR2(2),
	cin => \Add11~6\,
	sumout => \Add11~9_sumout\,
	cout => \Add11~10\);

-- Location: FF_X37_Y13_N8
\RAMADDR2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \Add11~9_sumout\,
	sclr => \RAMADDR2~11_combout\,
	sload => VCC,
	ena => \RAMADDR2[0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RAMADDR2(2));

-- Location: LABCELL_X37_Y13_N39
\Add11~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add11~13_sumout\ = SUM(( RAMADDR2(3) ) + ( GND ) + ( \Add11~10\ ))
-- \Add11~14\ = CARRY(( RAMADDR2(3) ) + ( GND ) + ( \Add11~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_RAMADDR2(3),
	cin => \Add11~10\,
	sumout => \Add11~13_sumout\,
	cout => \Add11~14\);

-- Location: FF_X37_Y13_N11
\RAMADDR2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \Add11~13_sumout\,
	sclr => \RAMADDR2~11_combout\,
	sload => VCC,
	ena => \RAMADDR2[0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RAMADDR2(3));

-- Location: LABCELL_X37_Y13_N42
\Add11~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add11~17_sumout\ = SUM(( RAMADDR2(4) ) + ( GND ) + ( \Add11~14\ ))
-- \Add11~18\ = CARRY(( RAMADDR2(4) ) + ( GND ) + ( \Add11~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_RAMADDR2(4),
	cin => \Add11~14\,
	sumout => \Add11~17_sumout\,
	cout => \Add11~18\);

-- Location: FF_X37_Y13_N14
\RAMADDR2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \Add11~17_sumout\,
	sclr => \RAMADDR2~11_combout\,
	sload => VCC,
	ena => \RAMADDR2[0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RAMADDR2(4));

-- Location: LABCELL_X37_Y13_N45
\Add11~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add11~21_sumout\ = SUM(( RAMADDR2(5) ) + ( GND ) + ( \Add11~18\ ))
-- \Add11~22\ = CARRY(( RAMADDR2(5) ) + ( GND ) + ( \Add11~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_RAMADDR2(5),
	cin => \Add11~18\,
	sumout => \Add11~21_sumout\,
	cout => \Add11~22\);

-- Location: FF_X37_Y13_N17
\RAMADDR2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \Add11~21_sumout\,
	sclr => \RAMADDR2~11_combout\,
	sload => VCC,
	ena => \RAMADDR2[0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RAMADDR2(5));

-- Location: LABCELL_X37_Y13_N48
\Add11~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add11~25_sumout\ = SUM(( RAMADDR2(6) ) + ( GND ) + ( \Add11~22\ ))
-- \Add11~26\ = CARRY(( RAMADDR2(6) ) + ( GND ) + ( \Add11~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_RAMADDR2(6),
	cin => \Add11~22\,
	sumout => \Add11~25_sumout\,
	cout => \Add11~26\);

-- Location: FF_X37_Y13_N20
\RAMADDR2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \Add11~25_sumout\,
	sclr => \RAMADDR2~11_combout\,
	sload => VCC,
	ena => \RAMADDR2[0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RAMADDR2(6));

-- Location: LABCELL_X37_Y13_N51
\Add11~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add11~29_sumout\ = SUM(( RAMADDR2(7) ) + ( GND ) + ( \Add11~26\ ))
-- \Add11~30\ = CARRY(( RAMADDR2(7) ) + ( GND ) + ( \Add11~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_RAMADDR2(7),
	cin => \Add11~26\,
	sumout => \Add11~29_sumout\,
	cout => \Add11~30\);

-- Location: FF_X37_Y13_N53
\RAMADDR2[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \Add11~29_sumout\,
	sclr => \RAMADDR2~11_combout\,
	ena => \RAMADDR2[0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RAMADDR2(7));

-- Location: LABCELL_X37_Y13_N54
\Add11~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add11~33_sumout\ = SUM(( RAMADDR2(8) ) + ( GND ) + ( \Add11~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_RAMADDR2(8),
	cin => \Add11~30\,
	sumout => \Add11~33_sumout\);

-- Location: FF_X37_Y13_N56
\RAMADDR2[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \Add11~33_sumout\,
	sclr => \RAMADDR2~11_combout\,
	ena => \RAMADDR2[0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RAMADDR2(8));

-- Location: FF_X36_Y13_N50
\RAMADDR2GR[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => RAMADDR2(8),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RAMADDR2GR(8));

-- Location: FF_X36_Y13_N40
\RAMADDR2GR_sync0[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	asdata => RAMADDR2GR(8),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RAMADDR2GR_sync0(8));

-- Location: FF_X36_Y13_N58
\RAMADDR2GR_sync1[8]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	asdata => RAMADDR2GR_sync0(8),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAMADDR2GR_sync1[8]~DUPLICATE_q\);

-- Location: MLABCELL_X34_Y13_N15
\binary~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \binary~9_combout\ = ( RAMADDR2GR_sync1(7) & ( !\RAMADDR2GR_sync1[8]~DUPLICATE_q\ ) ) # ( !RAMADDR2GR_sync1(7) & ( \RAMADDR2GR_sync1[8]~DUPLICATE_q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010110101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RAMADDR2GR_sync1[8]~DUPLICATE_q\,
	dataf => ALT_INV_RAMADDR2GR_sync1(7),
	combout => \binary~9_combout\);

-- Location: FF_X34_Y13_N16
\RAMADDR2_bin[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \binary~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAMADDR2_bin[7]~DUPLICATE_q\);

-- Location: FF_X36_Y13_N31
\RAMADDR2_bin[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	asdata => \RAMADDR2GR_sync1[8]~DUPLICATE_q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RAMADDR2_bin(8));

-- Location: LABCELL_X35_Y13_N0
\binary~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \binary~8_combout\ = ( \RAMADDR2GR_sync1[8]~DUPLICATE_q\ & ( !RAMADDR2GR_sync1(6) $ (RAMADDR2GR_sync1(7)) ) ) # ( !\RAMADDR2GR_sync1[8]~DUPLICATE_q\ & ( !RAMADDR2GR_sync1(6) $ (!RAMADDR2GR_sync1(7)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110100110011001100101100110011001101001100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_RAMADDR2GR_sync1(6),
	datab => ALT_INV_RAMADDR2GR_sync1(7),
	datae => \ALT_INV_RAMADDR2GR_sync1[8]~DUPLICATE_q\,
	combout => \binary~8_combout\);

-- Location: FF_X35_Y13_N1
\RAMADDR2_bin[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \binary~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RAMADDR2_bin(6));

-- Location: FF_X28_Y11_N37
\RAMFULL_POINTER[8]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \RAMFULL_POINTER~6_combout\,
	sclr => \RAMFULL_POINTER[0]~3_combout\,
	ena => \RAMFULL_POINTER[0]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAMFULL_POINTER[8]~DUPLICATE_q\);

-- Location: LABCELL_X33_Y13_N12
\Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = ( \RAMFULL_POINTER[8]~DUPLICATE_q\ & ( RAMFULL_POINTER(7) & ( (\RAMADDR2_bin[7]~DUPLICATE_q\ & (RAMADDR2_bin(8) & (!RAMFULL_POINTER(6) $ (RAMADDR2_bin(6))))) ) ) ) # ( !\RAMFULL_POINTER[8]~DUPLICATE_q\ & ( RAMFULL_POINTER(7) & ( 
-- (\RAMADDR2_bin[7]~DUPLICATE_q\ & (!RAMADDR2_bin(8) & (!RAMFULL_POINTER(6) $ (RAMADDR2_bin(6))))) ) ) ) # ( \RAMFULL_POINTER[8]~DUPLICATE_q\ & ( !RAMFULL_POINTER(7) & ( (!\RAMADDR2_bin[7]~DUPLICATE_q\ & (RAMADDR2_bin(8) & (!RAMFULL_POINTER(6) $ 
-- (RAMADDR2_bin(6))))) ) ) ) # ( !\RAMFULL_POINTER[8]~DUPLICATE_q\ & ( !RAMFULL_POINTER(7) & ( (!\RAMADDR2_bin[7]~DUPLICATE_q\ & (!RAMADDR2_bin(8) & (!RAMFULL_POINTER(6) $ (RAMADDR2_bin(6))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000100000000010000000001001000000000100000000010000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_RAMADDR2_bin[7]~DUPLICATE_q\,
	datab => ALT_INV_RAMFULL_POINTER(6),
	datac => ALT_INV_RAMADDR2_bin(8),
	datad => ALT_INV_RAMADDR2_bin(6),
	datae => \ALT_INV_RAMFULL_POINTER[8]~DUPLICATE_q\,
	dataf => ALT_INV_RAMFULL_POINTER(7),
	combout => \Equal0~0_combout\);

-- Location: LABCELL_X33_Y13_N36
\VGAFLAG~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGAFLAG~0_combout\ = ( VGAFLAG(0) & ( \Equal0~2_combout\ & ( !NEXTFRAME(2) ) ) ) # ( !VGAFLAG(0) & ( \Equal0~2_combout\ & ( (!NEXTFRAME(2) & (\Equal0~0_combout\ & (\Equal0~1_combout\ & !\BUFF_WAIT~q\))) ) ) ) # ( VGAFLAG(0) & ( !\Equal0~2_combout\ & ( 
-- !NEXTFRAME(2) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000000010000000001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_NEXTFRAME(2),
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_Equal0~1_combout\,
	datad => \ALT_INV_BUFF_WAIT~q\,
	datae => ALT_INV_VGAFLAG(0),
	dataf => \ALT_INV_Equal0~2_combout\,
	combout => \VGAFLAG~0_combout\);

-- Location: FF_X33_Y13_N37
\VGAFLAG[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \VGAFLAG~0_combout\,
	ena => \BUFF_CTRL~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => VGAFLAG(0));

-- Location: LABCELL_X33_Y13_N21
\VGAFLAG[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGAFLAG[1]~feeder_combout\ = ( VGAFLAG(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_VGAFLAG(0),
	combout => \VGAFLAG[1]~feeder_combout\);

-- Location: FF_X33_Y13_N23
\VGAFLAG[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \VGAFLAG[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => VGAFLAG(1));

-- Location: FF_X33_Y13_N22
\VGAFLAG[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => VGAFLAG(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => VGAFLAG(2));

-- Location: MLABCELL_X25_Y13_N6
\VGABEGIN~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \VGABEGIN~0_combout\ = ( \VGABEGIN~q\ & ( VGAFLAG(2) & ( !\u1|VGA_FRAMEEND~q\ ) ) ) # ( !\VGABEGIN~q\ & ( VGAFLAG(2) & ( \u1|VGA_FRAMESTART~q\ ) ) ) # ( \VGABEGIN~q\ & ( !VGAFLAG(2) & ( !\u1|VGA_FRAMEEND~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000110011001100111111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u1|ALT_INV_VGA_FRAMESTART~q\,
	datac => \u1|ALT_INV_VGA_FRAMEEND~q\,
	datae => \ALT_INV_VGABEGIN~q\,
	dataf => ALT_INV_VGAFLAG(2),
	combout => \VGABEGIN~0_combout\);

-- Location: FF_X25_Y13_N7
VGABEGIN : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \VGABEGIN~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGABEGIN~q\);

-- Location: LABCELL_X27_Y13_N57
\process_1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \process_1~1_combout\ = ( \VGABEGIN~q\ & ( \u1|VGA_FRAMEEND~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \u1|ALT_INV_VGA_FRAMEEND~q\,
	dataf => \ALT_INV_VGABEGIN~q\,
	combout => \process_1~1_combout\);

-- Location: FF_X27_Y13_N59
\NEXTFRAME[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \process_1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => NEXTFRAME(0));

-- Location: FF_X27_Y13_N40
\NEXTFRAME[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	asdata => NEXTFRAME(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => NEXTFRAME(1));

-- Location: FF_X28_Y14_N25
\NEXTFRAME[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	asdata => NEXTFRAME(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => NEXTFRAME(2));

-- Location: LABCELL_X30_Y14_N24
\BUFF_CTRL~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \BUFF_CTRL~0_combout\ = ( \BUFF_CTRL~q\ & ( !NEXTFRAME(2) ) ) # ( !\BUFF_CTRL~q\ & ( \LessThan3~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101111100001111000001010101010101011111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan3~3_combout\,
	datac => ALT_INV_NEXTFRAME(2),
	datae => \ALT_INV_BUFF_CTRL~q\,
	combout => \BUFF_CTRL~0_combout\);

-- Location: FF_X30_Y14_N26
BUFF_CTRL : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \BUFF_CTRL~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BUFF_CTRL~q\);

-- Location: FF_X34_Y13_N17
\RAMADDR2_bin[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \binary~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RAMADDR2_bin(7));

-- Location: LABCELL_X36_Y13_N0
\Add8~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~17_sumout\ = SUM(( RAMADDR2_bin(0) ) + ( VCC ) + ( !VCC ))
-- \Add8~18\ = CARRY(( RAMADDR2_bin(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_RAMADDR2_bin(0),
	cin => GND,
	sumout => \Add8~17_sumout\,
	cout => \Add8~18\);

-- Location: LABCELL_X36_Y13_N3
\Add8~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~21_sumout\ = SUM(( RAMADDR2_bin(1) ) + ( VCC ) + ( \Add8~18\ ))
-- \Add8~22\ = CARRY(( RAMADDR2_bin(1) ) + ( VCC ) + ( \Add8~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_RAMADDR2_bin(1),
	cin => \Add8~18\,
	sumout => \Add8~21_sumout\,
	cout => \Add8~22\);

-- Location: LABCELL_X36_Y13_N6
\Add8~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~25_sumout\ = SUM(( RAMADDR2_bin(2) ) + ( VCC ) + ( \Add8~22\ ))
-- \Add8~26\ = CARRY(( RAMADDR2_bin(2) ) + ( VCC ) + ( \Add8~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_RAMADDR2_bin(2),
	cin => \Add8~22\,
	sumout => \Add8~25_sumout\,
	cout => \Add8~26\);

-- Location: LABCELL_X36_Y13_N9
\Add8~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~29_sumout\ = SUM(( RAMADDR2_bin(3) ) + ( VCC ) + ( \Add8~26\ ))
-- \Add8~30\ = CARRY(( RAMADDR2_bin(3) ) + ( VCC ) + ( \Add8~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_RAMADDR2_bin(3),
	cin => \Add8~26\,
	sumout => \Add8~29_sumout\,
	cout => \Add8~30\);

-- Location: LABCELL_X36_Y13_N12
\Add8~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~33_sumout\ = SUM(( RAMADDR2_bin(4) ) + ( VCC ) + ( \Add8~30\ ))
-- \Add8~34\ = CARRY(( RAMADDR2_bin(4) ) + ( VCC ) + ( \Add8~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_RAMADDR2_bin(4),
	cin => \Add8~30\,
	sumout => \Add8~33_sumout\,
	cout => \Add8~34\);

-- Location: LABCELL_X36_Y13_N15
\Add8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~1_sumout\ = SUM(( RAMADDR2_bin(5) ) + ( VCC ) + ( \Add8~34\ ))
-- \Add8~2\ = CARRY(( RAMADDR2_bin(5) ) + ( VCC ) + ( \Add8~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_RAMADDR2_bin(5),
	cin => \Add8~34\,
	sumout => \Add8~1_sumout\,
	cout => \Add8~2\);

-- Location: LABCELL_X36_Y13_N18
\Add8~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~5_sumout\ = SUM(( RAMADDR2_bin(6) ) + ( GND ) + ( \Add8~2\ ))
-- \Add8~6\ = CARRY(( RAMADDR2_bin(6) ) + ( GND ) + ( \Add8~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_RAMADDR2_bin(6),
	cin => \Add8~2\,
	sumout => \Add8~5_sumout\,
	cout => \Add8~6\);

-- Location: LABCELL_X36_Y13_N21
\Add8~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~9_sumout\ = SUM(( RAMADDR2_bin(7) ) + ( GND ) + ( \Add8~6\ ))
-- \Add8~10\ = CARRY(( RAMADDR2_bin(7) ) + ( GND ) + ( \Add8~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_RAMADDR2_bin(7),
	cin => \Add8~6\,
	sumout => \Add8~9_sumout\,
	cout => \Add8~10\);

-- Location: LABCELL_X35_Y13_N30
\Add9~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add9~30_cout\ = CARRY(( \Add8~17_sumout\ ) + ( \Add8~21_sumout\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add8~21_sumout\,
	datad => \ALT_INV_Add8~17_sumout\,
	cin => GND,
	cout => \Add9~30_cout\);

-- Location: LABCELL_X35_Y13_N33
\Add9~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add9~26_cout\ = CARRY(( \Add8~25_sumout\ ) + ( GND ) + ( \Add9~30_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Add8~25_sumout\,
	cin => \Add9~30_cout\,
	cout => \Add9~26_cout\);

-- Location: LABCELL_X35_Y13_N36
\Add9~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add9~22_cout\ = CARRY(( \Add8~29_sumout\ ) + ( GND ) + ( \Add9~26_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add8~29_sumout\,
	cin => \Add9~26_cout\,
	cout => \Add9~22_cout\);

-- Location: LABCELL_X35_Y13_N39
\Add9~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add9~18_cout\ = CARRY(( \Add8~33_sumout\ ) + ( GND ) + ( \Add9~22_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add8~33_sumout\,
	cin => \Add9~22_cout\,
	cout => \Add9~18_cout\);

-- Location: LABCELL_X35_Y13_N42
\Add9~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add9~14_cout\ = CARRY(( \Add8~1_sumout\ ) + ( GND ) + ( \Add9~18_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add8~1_sumout\,
	cin => \Add9~18_cout\,
	cout => \Add9~14_cout\);

-- Location: LABCELL_X35_Y13_N45
\Add9~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add9~10_cout\ = CARRY(( \Add8~5_sumout\ ) + ( GND ) + ( \Add9~14_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add8~5_sumout\,
	cin => \Add9~14_cout\,
	cout => \Add9~10_cout\);

-- Location: LABCELL_X35_Y13_N48
\Add9~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add9~1_sumout\ = SUM(( \Add8~9_sumout\ ) + ( GND ) + ( \Add9~10_cout\ ))
-- \Add9~2\ = CARRY(( \Add8~9_sumout\ ) + ( GND ) + ( \Add9~10_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add8~9_sumout\,
	cin => \Add9~10_cout\,
	sumout => \Add9~1_sumout\,
	cout => \Add9~2\);

-- Location: LABCELL_X37_Y13_N0
\Add7~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~21_sumout\ = SUM(( RAMADDR2(0) ) + ( VCC ) + ( !VCC ))
-- \Add7~22\ = CARRY(( RAMADDR2(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_RAMADDR2(0),
	cin => GND,
	sumout => \Add7~21_sumout\,
	cout => \Add7~22\);

-- Location: LABCELL_X37_Y13_N3
\Add7~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~25_sumout\ = SUM(( RAMADDR2(1) ) + ( VCC ) + ( \Add7~22\ ))
-- \Add7~26\ = CARRY(( RAMADDR2(1) ) + ( VCC ) + ( \Add7~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_RAMADDR2(1),
	cin => \Add7~22\,
	sumout => \Add7~25_sumout\,
	cout => \Add7~26\);

-- Location: LABCELL_X37_Y13_N6
\Add7~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~29_sumout\ = SUM(( RAMADDR2(2) ) + ( VCC ) + ( \Add7~26\ ))
-- \Add7~30\ = CARRY(( RAMADDR2(2) ) + ( VCC ) + ( \Add7~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_RAMADDR2(2),
	cin => \Add7~26\,
	sumout => \Add7~29_sumout\,
	cout => \Add7~30\);

-- Location: LABCELL_X37_Y13_N9
\Add7~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~33_sumout\ = SUM(( RAMADDR2(3) ) + ( VCC ) + ( \Add7~30\ ))
-- \Add7~34\ = CARRY(( RAMADDR2(3) ) + ( VCC ) + ( \Add7~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_RAMADDR2(3),
	cin => \Add7~30\,
	sumout => \Add7~33_sumout\,
	cout => \Add7~34\);

-- Location: LABCELL_X37_Y13_N12
\Add7~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~37_sumout\ = SUM(( RAMADDR2(4) ) + ( VCC ) + ( \Add7~34\ ))
-- \Add7~38\ = CARRY(( RAMADDR2(4) ) + ( VCC ) + ( \Add7~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_RAMADDR2(4),
	cin => \Add7~34\,
	sumout => \Add7~37_sumout\,
	cout => \Add7~38\);

-- Location: LABCELL_X37_Y13_N15
\Add7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~1_sumout\ = SUM(( RAMADDR2(5) ) + ( VCC ) + ( \Add7~38\ ))
-- \Add7~2\ = CARRY(( RAMADDR2(5) ) + ( VCC ) + ( \Add7~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_RAMADDR2(5),
	cin => \Add7~38\,
	sumout => \Add7~1_sumout\,
	cout => \Add7~2\);

-- Location: LABCELL_X37_Y13_N18
\Add7~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~5_sumout\ = SUM(( RAMADDR2(6) ) + ( GND ) + ( \Add7~2\ ))
-- \Add7~6\ = CARRY(( RAMADDR2(6) ) + ( GND ) + ( \Add7~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_RAMADDR2(6),
	cin => \Add7~2\,
	sumout => \Add7~5_sumout\,
	cout => \Add7~6\);

-- Location: LABCELL_X37_Y13_N21
\Add7~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~9_sumout\ = SUM(( RAMADDR2(7) ) + ( GND ) + ( \Add7~6\ ))
-- \Add7~10\ = CARRY(( RAMADDR2(7) ) + ( GND ) + ( \Add7~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_RAMADDR2(7),
	cin => \Add7~6\,
	sumout => \Add7~9_sumout\,
	cout => \Add7~10\);

-- Location: LABCELL_X37_Y13_N24
\Add7~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~13_sumout\ = SUM(( RAMADDR2(8) ) + ( GND ) + ( \Add7~10\ ))
-- \Add7~14\ = CARRY(( RAMADDR2(8) ) + ( GND ) + ( \Add7~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_RAMADDR2(8),
	cin => \Add7~10\,
	sumout => \Add7~13_sumout\,
	cout => \Add7~14\);

-- Location: LABCELL_X37_Y13_N27
\Add7~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add7~17_sumout\ = SUM(( GND ) + ( GND ) + ( \Add7~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \Add7~14\,
	sumout => \Add7~17_sumout\);

-- Location: LABCELL_X36_Y13_N42
\LessThan5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan5~0_combout\ = ( \Add7~37_sumout\ & ( (\Add7~21_sumout\ & (\Add7~29_sumout\ & (\Add7~33_sumout\ & \Add7~25_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add7~21_sumout\,
	datab => \ALT_INV_Add7~29_sumout\,
	datac => \ALT_INV_Add7~33_sumout\,
	datad => \ALT_INV_Add7~25_sumout\,
	dataf => \ALT_INV_Add7~37_sumout\,
	combout => \LessThan5~0_combout\);

-- Location: LABCELL_X36_Y13_N54
\LessThan5~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan5~1_combout\ = ( \Add7~17_sumout\ & ( \LessThan5~0_combout\ ) ) # ( !\Add7~17_sumout\ & ( \LessThan5~0_combout\ & ( (\Add7~9_sumout\ & (\Add7~13_sumout\ & (\Add7~5_sumout\ & \Add7~1_sumout\))) ) ) ) # ( \Add7~17_sumout\ & ( !\LessThan5~0_combout\ 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add7~9_sumout\,
	datab => \ALT_INV_Add7~13_sumout\,
	datac => \ALT_INV_Add7~5_sumout\,
	datad => \ALT_INV_Add7~1_sumout\,
	datae => \ALT_INV_Add7~17_sumout\,
	dataf => \ALT_INV_LessThan5~0_combout\,
	combout => \LessThan5~1_combout\);

-- Location: LABCELL_X33_Y13_N0
\RAMRESTART_POINTER[8]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAMRESTART_POINTER[8]~0_combout\ = ( \Equal0~1_combout\ & ( (\BUFF_CTRL~q\ & (\Equal0~2_combout\ & (\Equal0~0_combout\ & !\BUFF_WAIT~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000001000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BUFF_CTRL~q\,
	datab => \ALT_INV_Equal0~2_combout\,
	datac => \ALT_INV_Equal0~0_combout\,
	datad => \ALT_INV_BUFF_WAIT~q\,
	dataf => \ALT_INV_Equal0~1_combout\,
	combout => \RAMRESTART_POINTER[8]~0_combout\);

-- Location: FF_X36_Y13_N23
\RAMRESTART_POINTER[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Add8~9_sumout\,
	asdata => \Add9~1_sumout\,
	sload => \LessThan5~1_combout\,
	ena => \RAMRESTART_POINTER[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RAMRESTART_POINTER(7));

-- Location: LABCELL_X36_Y13_N45
\RAMADDR2_bin[6]~_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAMADDR2_bin[6]~_wirecell_combout\ = ( !RAMADDR2_bin(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_RAMADDR2_bin(6),
	combout => \RAMADDR2_bin[6]~_wirecell_combout\);

-- Location: FF_X36_Y13_N20
\RAMRESTART_POINTER[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Add8~5_sumout\,
	asdata => \RAMADDR2_bin[6]~_wirecell_combout\,
	sload => \LessThan5~1_combout\,
	ena => \RAMRESTART_POINTER[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RAMRESTART_POINTER(6));

-- Location: LABCELL_X36_Y13_N24
\Add8~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add8~13_sumout\ = SUM(( RAMADDR2_bin(8) ) + ( GND ) + ( \Add8~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_RAMADDR2_bin(8),
	cin => \Add8~10\,
	sumout => \Add8~13_sumout\);

-- Location: LABCELL_X35_Y13_N51
\Add9~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add9~5_sumout\ = SUM(( \Add8~13_sumout\ ) + ( GND ) + ( \Add9~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Add8~13_sumout\,
	cin => \Add9~2\,
	sumout => \Add9~5_sumout\);

-- Location: FF_X36_Y13_N26
\RAMRESTART_POINTER[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Add8~13_sumout\,
	asdata => \Add9~5_sumout\,
	sload => \LessThan5~1_combout\,
	ena => \RAMRESTART_POINTER[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RAMRESTART_POINTER(8));

-- Location: LABCELL_X36_Y13_N51
\Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = ( \RAMADDR2_bin[7]~DUPLICATE_q\ & ( RAMRESTART_POINTER(8) & ( (RAMRESTART_POINTER(7) & (RAMADDR2_bin(8) & (!RAMADDR2_bin(6) $ (RAMRESTART_POINTER(6))))) ) ) ) # ( !\RAMADDR2_bin[7]~DUPLICATE_q\ & ( RAMRESTART_POINTER(8) & ( 
-- (!RAMRESTART_POINTER(7) & (RAMADDR2_bin(8) & (!RAMADDR2_bin(6) $ (RAMRESTART_POINTER(6))))) ) ) ) # ( \RAMADDR2_bin[7]~DUPLICATE_q\ & ( !RAMRESTART_POINTER(8) & ( (RAMRESTART_POINTER(7) & (!RAMADDR2_bin(8) & (!RAMADDR2_bin(6) $ (RAMRESTART_POINTER(6))))) 
-- ) ) ) # ( !\RAMADDR2_bin[7]~DUPLICATE_q\ & ( !RAMRESTART_POINTER(8) & ( (!RAMRESTART_POINTER(7) & (!RAMADDR2_bin(8) & (!RAMADDR2_bin(6) $ (RAMRESTART_POINTER(6))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000100000010000000001000000001000000000100000010000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_RAMRESTART_POINTER(7),
	datab => ALT_INV_RAMADDR2_bin(6),
	datac => ALT_INV_RAMADDR2_bin(8),
	datad => ALT_INV_RAMRESTART_POINTER(6),
	datae => \ALT_INV_RAMADDR2_bin[7]~DUPLICATE_q\,
	dataf => ALT_INV_RAMRESTART_POINTER(8),
	combout => \Equal1~0_combout\);

-- Location: FF_X36_Y13_N16
\RAMRESTART_POINTER[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Add8~1_sumout\,
	asdata => RAMADDR2_bin(5),
	sload => \LessThan5~1_combout\,
	ena => \RAMRESTART_POINTER[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RAMRESTART_POINTER(5));

-- Location: FF_X36_Y13_N5
\RAMRESTART_POINTER[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Add8~21_sumout\,
	asdata => RAMADDR2_bin(1),
	sload => \LessThan5~1_combout\,
	ena => \RAMRESTART_POINTER[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RAMRESTART_POINTER(1));

-- Location: FF_X36_Y13_N8
\RAMRESTART_POINTER[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Add8~25_sumout\,
	asdata => RAMADDR2_bin(2),
	sload => \LessThan5~1_combout\,
	ena => \RAMRESTART_POINTER[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RAMRESTART_POINTER(2));

-- Location: FF_X36_Y13_N2
\RAMRESTART_POINTER[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Add8~17_sumout\,
	asdata => RAMADDR2_bin(0),
	sload => \LessThan5~1_combout\,
	ena => \RAMRESTART_POINTER[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RAMRESTART_POINTER(0));

-- Location: LABCELL_X36_Y13_N36
\Equal1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = ( RAMRESTART_POINTER(0) & ( RAMADDR2_bin(2) & ( (RAMADDR2_bin(0) & (RAMRESTART_POINTER(2) & (!RAMADDR2_bin(1) $ (RAMRESTART_POINTER(1))))) ) ) ) # ( !RAMRESTART_POINTER(0) & ( RAMADDR2_bin(2) & ( (!RAMADDR2_bin(0) & 
-- (RAMRESTART_POINTER(2) & (!RAMADDR2_bin(1) $ (RAMRESTART_POINTER(1))))) ) ) ) # ( RAMRESTART_POINTER(0) & ( !RAMADDR2_bin(2) & ( (RAMADDR2_bin(0) & (!RAMRESTART_POINTER(2) & (!RAMADDR2_bin(1) $ (RAMRESTART_POINTER(1))))) ) ) ) # ( !RAMRESTART_POINTER(0) & 
-- ( !RAMADDR2_bin(2) & ( (!RAMADDR2_bin(0) & (!RAMRESTART_POINTER(2) & (!RAMADDR2_bin(1) $ (RAMRESTART_POINTER(1))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000001000000000010000010000000000000000100000100000000001000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_RAMADDR2_bin(0),
	datab => ALT_INV_RAMADDR2_bin(1),
	datac => ALT_INV_RAMRESTART_POINTER(1),
	datad => ALT_INV_RAMRESTART_POINTER(2),
	datae => ALT_INV_RAMRESTART_POINTER(0),
	dataf => ALT_INV_RAMADDR2_bin(2),
	combout => \Equal1~1_combout\);

-- Location: FF_X36_Y13_N14
\RAMRESTART_POINTER[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Add8~33_sumout\,
	asdata => RAMADDR2_bin(4),
	sload => \LessThan5~1_combout\,
	ena => \RAMRESTART_POINTER[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RAMRESTART_POINTER(4));

-- Location: FF_X36_Y13_N11
\RAMRESTART_POINTER[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Add8~29_sumout\,
	asdata => RAMADDR2_bin(3),
	sload => \LessThan5~1_combout\,
	ena => \RAMRESTART_POINTER[8]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RAMRESTART_POINTER(3));

-- Location: LABCELL_X36_Y13_N33
\Equal1~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~2_combout\ = ( RAMADDR2_bin(3) & ( RAMADDR2_bin(4) & ( (RAMRESTART_POINTER(4) & RAMRESTART_POINTER(3)) ) ) ) # ( !RAMADDR2_bin(3) & ( RAMADDR2_bin(4) & ( (RAMRESTART_POINTER(4) & !RAMRESTART_POINTER(3)) ) ) ) # ( RAMADDR2_bin(3) & ( 
-- !RAMADDR2_bin(4) & ( (!RAMRESTART_POINTER(4) & RAMRESTART_POINTER(3)) ) ) ) # ( !RAMADDR2_bin(3) & ( !RAMADDR2_bin(4) & ( (!RAMRESTART_POINTER(4) & !RAMRESTART_POINTER(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000000011000000110000110000001100000000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_RAMRESTART_POINTER(4),
	datac => ALT_INV_RAMRESTART_POINTER(3),
	datae => ALT_INV_RAMADDR2_bin(3),
	dataf => ALT_INV_RAMADDR2_bin(4),
	combout => \Equal1~2_combout\);

-- Location: LABCELL_X35_Y13_N12
\Equal1~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal1~3_combout\ = ( \Equal1~1_combout\ & ( \Equal1~2_combout\ & ( (\Equal1~0_combout\ & (!RAMRESTART_POINTER(5) $ (RAMADDR2_bin(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000100000101000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal1~0_combout\,
	datab => ALT_INV_RAMRESTART_POINTER(5),
	datac => ALT_INV_RAMADDR2_bin(5),
	datae => \ALT_INV_Equal1~1_combout\,
	dataf => \ALT_INV_Equal1~2_combout\,
	combout => \Equal1~3_combout\);

-- Location: LABCELL_X33_Y13_N30
\BUFF_WAIT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \BUFF_WAIT~0_combout\ = ( !\BUFF_WAIT~q\ & ( (\BUFF_CTRL~q\ & (\Equal0~1_combout\ & (\Equal0~0_combout\ & ((\Equal0~2_combout\))))) ) ) # ( \BUFF_WAIT~q\ & ( (!\BUFF_CTRL~q\ & (((!\LessThan3~3_combout\)))) # (\BUFF_CTRL~q\ & ((((!\Equal1~3_combout\))))) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000000000111101011010000000000001000000011111010110100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BUFF_CTRL~q\,
	datab => \ALT_INV_Equal0~1_combout\,
	datac => \ALT_INV_LessThan3~3_combout\,
	datad => \ALT_INV_Equal1~3_combout\,
	datae => \ALT_INV_BUFF_WAIT~q\,
	dataf => \ALT_INV_Equal0~2_combout\,
	datag => \ALT_INV_Equal0~0_combout\,
	combout => \BUFF_WAIT~0_combout\);

-- Location: FF_X33_Y13_N31
BUFF_WAIT : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \BUFF_WAIT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BUFF_WAIT~q\);

-- Location: LABCELL_X33_Y13_N24
\SDRAM_ADDR[24]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \SDRAM_ADDR[24]~1_combout\ = ( !\BUFF_CTRL~q\ & ( (((!\LessThan3~3_combout\ & (!\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entries\(0) & 
-- \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entries\(1))))) ) ) # ( \BUFF_CTRL~q\ & ( (!NEXTFRAME(2) & ((((!\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entries\(0) & 
-- \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entries\(1))) # (\SDRAM_RE_N~q\)) # (\BUFF_WAIT~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "0000000000000000011100000111000011110000000000001111000001110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_BUFF_WAIT~q\,
	datab => \ALT_INV_SDRAM_RE_N~q\,
	datac => ALT_INV_NEXTFRAME(2),
	datad => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_entries\(0),
	datae => \ALT_INV_BUFF_CTRL~q\,
	dataf => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_entries\(1),
	datag => \ALT_INV_LessThan3~3_combout\,
	combout => \SDRAM_ADDR[24]~1_combout\);

-- Location: FF_X30_Y10_N11
\SDRAM_ADDR[13]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Add6~33_sumout\,
	sclr => \SDRAM_ADDR[24]~0_combout\,
	ena => \ALT_INV_SDRAM_ADDR[24]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SDRAM_ADDR[13]~DUPLICATE_q\);

-- Location: LABCELL_X30_Y10_N48
\LessThan3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan3~0_combout\ = ( SDRAM_ADDR(11) & ( SDRAM_ADDR(9) & ( (!\SDRAM_ADDR[13]~DUPLICATE_q\ & !SDRAM_ADDR(12)) ) ) ) # ( !SDRAM_ADDR(11) & ( SDRAM_ADDR(9) & ( (!\SDRAM_ADDR[13]~DUPLICATE_q\ & ((!SDRAM_ADDR(12)) # ((!SDRAM_ADDR(10) & !SDRAM_ADDR(8))))) ) 
-- ) ) # ( SDRAM_ADDR(11) & ( !SDRAM_ADDR(9) & ( (!\SDRAM_ADDR[13]~DUPLICATE_q\ & !SDRAM_ADDR(12)) ) ) ) # ( !SDRAM_ADDR(11) & ( !SDRAM_ADDR(9) & ( (!\SDRAM_ADDR[13]~DUPLICATE_q\ & ((!SDRAM_ADDR(10)) # (!SDRAM_ADDR(12)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110010001000110011000000000011001100100000001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_SDRAM_ADDR(10),
	datab => \ALT_INV_SDRAM_ADDR[13]~DUPLICATE_q\,
	datac => ALT_INV_SDRAM_ADDR(8),
	datad => ALT_INV_SDRAM_ADDR(12),
	datae => ALT_INV_SDRAM_ADDR(11),
	dataf => ALT_INV_SDRAM_ADDR(9),
	combout => \LessThan3~0_combout\);

-- Location: FF_X30_Y10_N32
\SDRAM_ADDR[20]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Add6~1_sumout\,
	sclr => \SDRAM_ADDR[24]~0_combout\,
	ena => \ALT_INV_SDRAM_ADDR[24]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SDRAM_ADDR[20]~DUPLICATE_q\);

-- Location: LABCELL_X30_Y10_N54
\LessThan3~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan3~2_combout\ = ( !SDRAM_ADDR(24) & ( (!SDRAM_ADDR(21) & (!\SDRAM_ADDR[20]~DUPLICATE_q\ & (!SDRAM_ADDR(22) & !SDRAM_ADDR(23)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_SDRAM_ADDR(21),
	datab => \ALT_INV_SDRAM_ADDR[20]~DUPLICATE_q\,
	datac => ALT_INV_SDRAM_ADDR(22),
	datad => ALT_INV_SDRAM_ADDR(23),
	dataf => ALT_INV_SDRAM_ADDR(24),
	combout => \LessThan3~2_combout\);

-- Location: FF_X30_Y10_N23
\SDRAM_ADDR[17]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Add6~49_sumout\,
	sclr => \SDRAM_ADDR[24]~0_combout\,
	ena => \ALT_INV_SDRAM_ADDR[24]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SDRAM_ADDR[17]~DUPLICATE_q\);

-- Location: LABCELL_X30_Y10_N57
\LessThan3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan3~1_combout\ = ( SDRAM_ADDR(18) & ( (SDRAM_ADDR(16) & \SDRAM_ADDR[17]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_SDRAM_ADDR(16),
	datad => \ALT_INV_SDRAM_ADDR[17]~DUPLICATE_q\,
	dataf => ALT_INV_SDRAM_ADDR(18),
	combout => \LessThan3~1_combout\);

-- Location: LABCELL_X30_Y11_N18
\LessThan3~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan3~3_combout\ = ( \LessThan3~1_combout\ & ( SDRAM_ADDR(14) & ( ((!\LessThan3~0_combout\) # ((!\LessThan3~2_combout\) # (SDRAM_ADDR(15)))) # (SDRAM_ADDR(19)) ) ) ) # ( !\LessThan3~1_combout\ & ( SDRAM_ADDR(14) & ( (!\LessThan3~2_combout\) # 
-- (SDRAM_ADDR(19)) ) ) ) # ( \LessThan3~1_combout\ & ( !SDRAM_ADDR(14) & ( ((!\LessThan3~2_combout\) # (SDRAM_ADDR(15))) # (SDRAM_ADDR(19)) ) ) ) # ( !\LessThan3~1_combout\ & ( !SDRAM_ADDR(14) & ( (!\LessThan3~2_combout\) # (SDRAM_ADDR(19)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111101010101111111110101111111111111010101011111111111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_SDRAM_ADDR(19),
	datab => \ALT_INV_LessThan3~0_combout\,
	datac => ALT_INV_SDRAM_ADDR(15),
	datad => \ALT_INV_LessThan3~2_combout\,
	datae => \ALT_INV_LessThan3~1_combout\,
	dataf => ALT_INV_SDRAM_ADDR(14),
	combout => \LessThan3~3_combout\);

-- Location: LABCELL_X33_Y13_N3
\SDRAM_ADDR[24]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SDRAM_ADDR[24]~0_combout\ = ( \BUFF_CTRL~q\ & ( NEXTFRAME(2) ) ) # ( !\BUFF_CTRL~q\ & ( \LessThan3~3_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_LessThan3~3_combout\,
	datad => ALT_INV_NEXTFRAME(2),
	dataf => \ALT_INV_BUFF_CTRL~q\,
	combout => \SDRAM_ADDR[24]~0_combout\);

-- Location: FF_X30_Y11_N31
\SDRAM_ADDR[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Add6~61_sumout\,
	sclr => \SDRAM_ADDR[24]~0_combout\,
	ena => \ALT_INV_SDRAM_ADDR[24]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SDRAM_ADDR(0));

-- Location: LABCELL_X30_Y11_N33
\Add6~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~65_sumout\ = SUM(( SDRAM_ADDR(1) ) + ( GND ) + ( \Add6~62\ ))
-- \Add6~66\ = CARRY(( SDRAM_ADDR(1) ) + ( GND ) + ( \Add6~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_SDRAM_ADDR(1),
	cin => \Add6~62\,
	sumout => \Add6~65_sumout\,
	cout => \Add6~66\);

-- Location: FF_X30_Y11_N34
\SDRAM_ADDR[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Add6~65_sumout\,
	sclr => \SDRAM_ADDR[24]~0_combout\,
	ena => \ALT_INV_SDRAM_ADDR[24]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SDRAM_ADDR(1));

-- Location: LABCELL_X30_Y11_N36
\Add6~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~69_sumout\ = SUM(( SDRAM_ADDR(2) ) + ( GND ) + ( \Add6~66\ ))
-- \Add6~70\ = CARRY(( SDRAM_ADDR(2) ) + ( GND ) + ( \Add6~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_SDRAM_ADDR(2),
	cin => \Add6~66\,
	sumout => \Add6~69_sumout\,
	cout => \Add6~70\);

-- Location: FF_X30_Y11_N37
\SDRAM_ADDR[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Add6~69_sumout\,
	sclr => \SDRAM_ADDR[24]~0_combout\,
	ena => \ALT_INV_SDRAM_ADDR[24]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SDRAM_ADDR(2));

-- Location: LABCELL_X30_Y11_N39
\Add6~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~73_sumout\ = SUM(( SDRAM_ADDR(3) ) + ( GND ) + ( \Add6~70\ ))
-- \Add6~74\ = CARRY(( SDRAM_ADDR(3) ) + ( GND ) + ( \Add6~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_SDRAM_ADDR(3),
	cin => \Add6~70\,
	sumout => \Add6~73_sumout\,
	cout => \Add6~74\);

-- Location: FF_X30_Y11_N40
\SDRAM_ADDR[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Add6~73_sumout\,
	sclr => \SDRAM_ADDR[24]~0_combout\,
	ena => \ALT_INV_SDRAM_ADDR[24]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SDRAM_ADDR(3));

-- Location: LABCELL_X30_Y11_N42
\Add6~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~77_sumout\ = SUM(( SDRAM_ADDR(4) ) + ( GND ) + ( \Add6~74\ ))
-- \Add6~78\ = CARRY(( SDRAM_ADDR(4) ) + ( GND ) + ( \Add6~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_SDRAM_ADDR(4),
	cin => \Add6~74\,
	sumout => \Add6~77_sumout\,
	cout => \Add6~78\);

-- Location: FF_X30_Y11_N44
\SDRAM_ADDR[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Add6~77_sumout\,
	sclr => \SDRAM_ADDR[24]~0_combout\,
	ena => \ALT_INV_SDRAM_ADDR[24]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SDRAM_ADDR(4));

-- Location: LABCELL_X30_Y11_N45
\Add6~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~81_sumout\ = SUM(( SDRAM_ADDR(5) ) + ( GND ) + ( \Add6~78\ ))
-- \Add6~82\ = CARRY(( SDRAM_ADDR(5) ) + ( GND ) + ( \Add6~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_SDRAM_ADDR(5),
	cin => \Add6~78\,
	sumout => \Add6~81_sumout\,
	cout => \Add6~82\);

-- Location: FF_X30_Y11_N46
\SDRAM_ADDR[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Add6~81_sumout\,
	sclr => \SDRAM_ADDR[24]~0_combout\,
	ena => \ALT_INV_SDRAM_ADDR[24]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SDRAM_ADDR(5));

-- Location: LABCELL_X30_Y11_N48
\Add6~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~85_sumout\ = SUM(( SDRAM_ADDR(6) ) + ( GND ) + ( \Add6~82\ ))
-- \Add6~86\ = CARRY(( SDRAM_ADDR(6) ) + ( GND ) + ( \Add6~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_SDRAM_ADDR(6),
	cin => \Add6~82\,
	sumout => \Add6~85_sumout\,
	cout => \Add6~86\);

-- Location: FF_X30_Y11_N50
\SDRAM_ADDR[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Add6~85_sumout\,
	sclr => \SDRAM_ADDR[24]~0_combout\,
	ena => \ALT_INV_SDRAM_ADDR[24]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SDRAM_ADDR(6));

-- Location: LABCELL_X30_Y11_N51
\Add6~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~89_sumout\ = SUM(( SDRAM_ADDR(7) ) + ( GND ) + ( \Add6~86\ ))
-- \Add6~90\ = CARRY(( SDRAM_ADDR(7) ) + ( GND ) + ( \Add6~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_SDRAM_ADDR(7),
	cin => \Add6~86\,
	sumout => \Add6~89_sumout\,
	cout => \Add6~90\);

-- Location: FF_X30_Y11_N52
\SDRAM_ADDR[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Add6~89_sumout\,
	sclr => \SDRAM_ADDR[24]~0_combout\,
	ena => \ALT_INV_SDRAM_ADDR[24]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SDRAM_ADDR(7));

-- Location: LABCELL_X30_Y11_N54
\Add6~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~93_sumout\ = SUM(( SDRAM_ADDR(8) ) + ( GND ) + ( \Add6~90\ ))
-- \Add6~94\ = CARRY(( SDRAM_ADDR(8) ) + ( GND ) + ( \Add6~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_SDRAM_ADDR(8),
	cin => \Add6~90\,
	sumout => \Add6~93_sumout\,
	cout => \Add6~94\);

-- Location: FF_X30_Y11_N55
\SDRAM_ADDR[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Add6~93_sumout\,
	sclr => \SDRAM_ADDR[24]~0_combout\,
	ena => \ALT_INV_SDRAM_ADDR[24]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SDRAM_ADDR(8));

-- Location: LABCELL_X30_Y11_N57
\Add6~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~97_sumout\ = SUM(( SDRAM_ADDR(9) ) + ( GND ) + ( \Add6~94\ ))
-- \Add6~98\ = CARRY(( SDRAM_ADDR(9) ) + ( GND ) + ( \Add6~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_SDRAM_ADDR(9),
	cin => \Add6~94\,
	sumout => \Add6~97_sumout\,
	cout => \Add6~98\);

-- Location: FF_X30_Y11_N58
\SDRAM_ADDR[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Add6~97_sumout\,
	sclr => \SDRAM_ADDR[24]~0_combout\,
	ena => \ALT_INV_SDRAM_ADDR[24]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SDRAM_ADDR(9));

-- Location: LABCELL_X30_Y10_N0
\Add6~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~17_sumout\ = SUM(( SDRAM_ADDR(10) ) + ( GND ) + ( \Add6~98\ ))
-- \Add6~18\ = CARRY(( SDRAM_ADDR(10) ) + ( GND ) + ( \Add6~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_SDRAM_ADDR(10),
	cin => \Add6~98\,
	sumout => \Add6~17_sumout\,
	cout => \Add6~18\);

-- Location: FF_X30_Y10_N1
\SDRAM_ADDR[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Add6~17_sumout\,
	sclr => \SDRAM_ADDR[24]~0_combout\,
	ena => \ALT_INV_SDRAM_ADDR[24]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SDRAM_ADDR(10));

-- Location: LABCELL_X30_Y10_N3
\Add6~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~25_sumout\ = SUM(( SDRAM_ADDR(11) ) + ( GND ) + ( \Add6~18\ ))
-- \Add6~26\ = CARRY(( SDRAM_ADDR(11) ) + ( GND ) + ( \Add6~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_SDRAM_ADDR(11),
	cin => \Add6~18\,
	sumout => \Add6~25_sumout\,
	cout => \Add6~26\);

-- Location: FF_X30_Y10_N5
\SDRAM_ADDR[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Add6~25_sumout\,
	sclr => \SDRAM_ADDR[24]~0_combout\,
	ena => \ALT_INV_SDRAM_ADDR[24]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SDRAM_ADDR(11));

-- Location: LABCELL_X30_Y10_N6
\Add6~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~29_sumout\ = SUM(( SDRAM_ADDR(12) ) + ( GND ) + ( \Add6~26\ ))
-- \Add6~30\ = CARRY(( SDRAM_ADDR(12) ) + ( GND ) + ( \Add6~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_SDRAM_ADDR(12),
	cin => \Add6~26\,
	sumout => \Add6~29_sumout\,
	cout => \Add6~30\);

-- Location: FF_X30_Y10_N8
\SDRAM_ADDR[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Add6~29_sumout\,
	sclr => \SDRAM_ADDR[24]~0_combout\,
	ena => \ALT_INV_SDRAM_ADDR[24]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SDRAM_ADDR(12));

-- Location: LABCELL_X30_Y10_N9
\Add6~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~33_sumout\ = SUM(( SDRAM_ADDR(13) ) + ( GND ) + ( \Add6~30\ ))
-- \Add6~34\ = CARRY(( SDRAM_ADDR(13) ) + ( GND ) + ( \Add6~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_SDRAM_ADDR(13),
	cin => \Add6~30\,
	sumout => \Add6~33_sumout\,
	cout => \Add6~34\);

-- Location: FF_X30_Y10_N10
\SDRAM_ADDR[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Add6~33_sumout\,
	sclr => \SDRAM_ADDR[24]~0_combout\,
	ena => \ALT_INV_SDRAM_ADDR[24]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SDRAM_ADDR(13));

-- Location: LABCELL_X30_Y10_N12
\Add6~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~37_sumout\ = SUM(( SDRAM_ADDR(14) ) + ( GND ) + ( \Add6~34\ ))
-- \Add6~38\ = CARRY(( SDRAM_ADDR(14) ) + ( GND ) + ( \Add6~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_SDRAM_ADDR(14),
	cin => \Add6~34\,
	sumout => \Add6~37_sumout\,
	cout => \Add6~38\);

-- Location: FF_X30_Y10_N13
\SDRAM_ADDR[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Add6~37_sumout\,
	sclr => \SDRAM_ADDR[24]~0_combout\,
	ena => \ALT_INV_SDRAM_ADDR[24]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SDRAM_ADDR(14));

-- Location: LABCELL_X30_Y10_N15
\Add6~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~41_sumout\ = SUM(( SDRAM_ADDR(15) ) + ( GND ) + ( \Add6~38\ ))
-- \Add6~42\ = CARRY(( SDRAM_ADDR(15) ) + ( GND ) + ( \Add6~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_SDRAM_ADDR(15),
	cin => \Add6~38\,
	sumout => \Add6~41_sumout\,
	cout => \Add6~42\);

-- Location: FF_X30_Y10_N16
\SDRAM_ADDR[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Add6~41_sumout\,
	sclr => \SDRAM_ADDR[24]~0_combout\,
	ena => \ALT_INV_SDRAM_ADDR[24]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SDRAM_ADDR(15));

-- Location: LABCELL_X30_Y10_N18
\Add6~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~45_sumout\ = SUM(( SDRAM_ADDR(16) ) + ( GND ) + ( \Add6~42\ ))
-- \Add6~46\ = CARRY(( SDRAM_ADDR(16) ) + ( GND ) + ( \Add6~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_SDRAM_ADDR(16),
	cin => \Add6~42\,
	sumout => \Add6~45_sumout\,
	cout => \Add6~46\);

-- Location: FF_X30_Y10_N19
\SDRAM_ADDR[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Add6~45_sumout\,
	sclr => \SDRAM_ADDR[24]~0_combout\,
	ena => \ALT_INV_SDRAM_ADDR[24]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SDRAM_ADDR(16));

-- Location: LABCELL_X30_Y10_N21
\Add6~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~49_sumout\ = SUM(( SDRAM_ADDR(17) ) + ( GND ) + ( \Add6~46\ ))
-- \Add6~50\ = CARRY(( SDRAM_ADDR(17) ) + ( GND ) + ( \Add6~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_SDRAM_ADDR(17),
	cin => \Add6~46\,
	sumout => \Add6~49_sumout\,
	cout => \Add6~50\);

-- Location: FF_X30_Y10_N22
\SDRAM_ADDR[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Add6~49_sumout\,
	sclr => \SDRAM_ADDR[24]~0_combout\,
	ena => \ALT_INV_SDRAM_ADDR[24]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SDRAM_ADDR(17));

-- Location: LABCELL_X30_Y10_N24
\Add6~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~53_sumout\ = SUM(( SDRAM_ADDR(18) ) + ( GND ) + ( \Add6~50\ ))
-- \Add6~54\ = CARRY(( SDRAM_ADDR(18) ) + ( GND ) + ( \Add6~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_SDRAM_ADDR(18),
	cin => \Add6~50\,
	sumout => \Add6~53_sumout\,
	cout => \Add6~54\);

-- Location: FF_X30_Y10_N25
\SDRAM_ADDR[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Add6~53_sumout\,
	sclr => \SDRAM_ADDR[24]~0_combout\,
	ena => \ALT_INV_SDRAM_ADDR[24]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SDRAM_ADDR(18));

-- Location: LABCELL_X30_Y10_N27
\Add6~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~57_sumout\ = SUM(( SDRAM_ADDR(19) ) + ( GND ) + ( \Add6~54\ ))
-- \Add6~58\ = CARRY(( SDRAM_ADDR(19) ) + ( GND ) + ( \Add6~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_SDRAM_ADDR(19),
	cin => \Add6~54\,
	sumout => \Add6~57_sumout\,
	cout => \Add6~58\);

-- Location: FF_X30_Y10_N28
\SDRAM_ADDR[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Add6~57_sumout\,
	sclr => \SDRAM_ADDR[24]~0_combout\,
	ena => \ALT_INV_SDRAM_ADDR[24]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SDRAM_ADDR(19));

-- Location: LABCELL_X30_Y10_N30
\Add6~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~1_sumout\ = SUM(( SDRAM_ADDR(20) ) + ( GND ) + ( \Add6~58\ ))
-- \Add6~2\ = CARRY(( SDRAM_ADDR(20) ) + ( GND ) + ( \Add6~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_SDRAM_ADDR(20),
	cin => \Add6~58\,
	sumout => \Add6~1_sumout\,
	cout => \Add6~2\);

-- Location: FF_X30_Y10_N31
\SDRAM_ADDR[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Add6~1_sumout\,
	sclr => \SDRAM_ADDR[24]~0_combout\,
	ena => \ALT_INV_SDRAM_ADDR[24]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SDRAM_ADDR(20));

-- Location: LABCELL_X30_Y10_N33
\Add6~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add6~5_sumout\ = SUM(( SDRAM_ADDR(21) ) + ( GND ) + ( \Add6~2\ ))
-- \Add6~6\ = CARRY(( SDRAM_ADDR(21) ) + ( GND ) + ( \Add6~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_SDRAM_ADDR(21),
	cin => \Add6~2\,
	sumout => \Add6~5_sumout\,
	cout => \Add6~6\);

-- Location: FF_X30_Y10_N35
\SDRAM_ADDR[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Add6~5_sumout\,
	sclr => \SDRAM_ADDR[24]~0_combout\,
	ena => \ALT_INV_SDRAM_ADDR[24]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SDRAM_ADDR(21));

-- Location: FF_X30_Y10_N38
\SDRAM_ADDR[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Add6~9_sumout\,
	sclr => \SDRAM_ADDR[24]~0_combout\,
	ena => \ALT_INV_SDRAM_ADDR[24]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SDRAM_ADDR(22));

-- Location: FF_X31_Y12_N28
\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0[40]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	asdata => SDRAM_ADDR(22),
	sload => VCC,
	ena => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0\(40));

-- Location: FF_X31_Y12_N35
\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1[40]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	asdata => SDRAM_ADDR(22),
	sload => VCC,
	ena => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1\(40));

-- Location: LABCELL_X31_Y12_N18
\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[40]~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[40]~16_combout\ = (!\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_address~DUPLICATE_q\ & 
-- (\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0\(40))) # (\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_address~DUPLICATE_q\ & 
-- ((\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1\(40))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111001001110010011100100111001001110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_rd_address~DUPLICATE_q\,
	datab => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_entry_0\(40),
	datac => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_entry_1\(40),
	combout => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[40]~16_combout\);

-- Location: FF_X31_Y12_N20
\u0|new_sdram_controller_0|active_addr[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[40]~16_combout\,
	ena => \u0|new_sdram_controller_0|active_rnw~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|active_addr\(22));

-- Location: FF_X31_Y12_N25
\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0[41]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	asdata => SDRAM_ADDR(23),
	sload => VCC,
	ena => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0\(41));

-- Location: FF_X31_Y12_N55
\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1[41]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	asdata => SDRAM_ADDR(23),
	sload => VCC,
	ena => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1\(41));

-- Location: LABCELL_X31_Y12_N21
\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[41]~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[41]~17_combout\ = ( \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1\(41) & ( 
-- (\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0\(41)) # (\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_address~DUPLICATE_q\) ) ) # ( 
-- !\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1\(41) & ( (!\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_address~DUPLICATE_q\ & 
-- \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0\(41)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_rd_address~DUPLICATE_q\,
	datac => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_entry_0\(41),
	dataf => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_entry_1\(41),
	combout => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[41]~17_combout\);

-- Location: FF_X31_Y12_N23
\u0|new_sdram_controller_0|active_addr[23]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[41]~17_combout\,
	ena => \u0|new_sdram_controller_0|active_rnw~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|active_addr[23]~DUPLICATE_q\);

-- Location: FF_X31_Y12_N17
\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	asdata => SDRAM_ADDR(20),
	sload => VCC,
	ena => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0\(38));

-- Location: FF_X31_Y12_N8
\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1[38]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	asdata => SDRAM_ADDR(20),
	sload => VCC,
	ena => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1\(38));

-- Location: LABCELL_X31_Y12_N51
\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[38]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[38]~0_combout\ = ( \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_address~DUPLICATE_q\ & ( 
-- \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1\(38) ) ) # ( !\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_address~DUPLICATE_q\ & ( 
-- \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0\(38) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_entry_1\(38),
	datac => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_entry_0\(38),
	dataf => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_rd_address~DUPLICATE_q\,
	combout => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[38]~0_combout\);

-- Location: FF_X31_Y12_N53
\u0|new_sdram_controller_0|active_addr[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[38]~0_combout\,
	ena => \u0|new_sdram_controller_0|active_rnw~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|active_addr\(20));

-- Location: LABCELL_X31_Y12_N54
\u0|new_sdram_controller_0|pending~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|pending~10_combout\ = ( \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1\(41) & ( \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_address~DUPLICATE_q\ & ( 
-- (\u0|new_sdram_controller_0|active_addr[23]~DUPLICATE_q\ & (!\u0|new_sdram_controller_0|active_addr\(20) $ (\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1\(38)))) ) ) ) # ( 
-- !\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1\(41) & ( \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_address~DUPLICATE_q\ & ( 
-- (!\u0|new_sdram_controller_0|active_addr[23]~DUPLICATE_q\ & (!\u0|new_sdram_controller_0|active_addr\(20) $ (\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1\(38)))) ) ) ) # ( 
-- \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1\(41) & ( !\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_address~DUPLICATE_q\ & ( 
-- !\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0\(38) $ (\u0|new_sdram_controller_0|active_addr\(20)) ) ) ) # ( !\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1\(41) & ( 
-- !\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_address~DUPLICATE_q\ & ( !\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0\(38) $ (\u0|new_sdram_controller_0|active_addr\(20)) ) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001111000011110000111100001110100000000010100101000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|new_sdram_controller_0|ALT_INV_active_addr[23]~DUPLICATE_q\,
	datab => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_entry_0\(38),
	datac => \u0|new_sdram_controller_0|ALT_INV_active_addr\(20),
	datad => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_entry_1\(38),
	datae => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_entry_1\(41),
	dataf => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_rd_address~DUPLICATE_q\,
	combout => \u0|new_sdram_controller_0|pending~10_combout\);

-- Location: FF_X31_Y12_N5
\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0[39]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	asdata => SDRAM_ADDR(21),
	sload => VCC,
	ena => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0\(39));

-- Location: FF_X31_Y12_N31
\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1[39]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	asdata => SDRAM_ADDR(21),
	sload => VCC,
	ena => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1[39]~DUPLICATE_q\);

-- Location: LABCELL_X31_Y12_N48
\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[39]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[39]~1_combout\ = ( \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_address~DUPLICATE_q\ & ( 
-- \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1[39]~DUPLICATE_q\ ) ) # ( !\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_address~DUPLICATE_q\ & ( 
-- \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0\(39) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_entry_0\(39),
	datac => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_entry_1[39]~DUPLICATE_q\,
	dataf => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_rd_address~DUPLICATE_q\,
	combout => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[39]~1_combout\);

-- Location: FF_X31_Y12_N50
\u0|new_sdram_controller_0|active_addr[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[39]~1_combout\,
	ena => \u0|new_sdram_controller_0|active_rnw~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|active_addr\(21));

-- Location: FF_X31_Y12_N22
\u0|new_sdram_controller_0|active_addr[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[41]~17_combout\,
	ena => \u0|new_sdram_controller_0|active_rnw~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|active_addr\(23));

-- Location: FF_X31_Y12_N32
\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1[39]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	asdata => SDRAM_ADDR(21),
	sload => VCC,
	ena => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1\(39));

-- Location: LABCELL_X31_Y12_N24
\u0|new_sdram_controller_0|pending~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|pending~9_combout\ = ( \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0\(41) & ( \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_address~DUPLICATE_q\ & ( 
-- !\u0|new_sdram_controller_0|active_addr\(21) $ (\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1\(39)) ) ) ) # ( !\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0\(41) & ( 
-- \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_address~DUPLICATE_q\ & ( !\u0|new_sdram_controller_0|active_addr\(21) $ (\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1\(39)) ) ) ) 
-- # ( \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0\(41) & ( !\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_address~DUPLICATE_q\ & ( (\u0|new_sdram_controller_0|active_addr\(23) 
-- & (!\u0|new_sdram_controller_0|active_addr\(21) $ (\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0\(39)))) ) ) ) # ( !\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0\(41) & ( 
-- !\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_address~DUPLICATE_q\ & ( (!\u0|new_sdram_controller_0|active_addr\(23) & (!\u0|new_sdram_controller_0|active_addr\(21) $ 
-- (\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0\(39)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000010010000100001000010010000110101010010101011010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|new_sdram_controller_0|ALT_INV_active_addr\(21),
	datab => \u0|new_sdram_controller_0|ALT_INV_active_addr\(23),
	datac => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_entry_0\(39),
	datad => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_entry_1\(39),
	datae => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_entry_0\(41),
	dataf => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_rd_address~DUPLICATE_q\,
	combout => \u0|new_sdram_controller_0|pending~9_combout\);

-- Location: LABCELL_X31_Y12_N12
\u0|new_sdram_controller_0|pending~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|pending~0_combout\ = ( \u0|new_sdram_controller_0|pending~10_combout\ & ( \u0|new_sdram_controller_0|pending~9_combout\ & ( !\u0|new_sdram_controller_0|active_addr\(22) $ 
-- (((!\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_address~DUPLICATE_q\ & (\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0\(40))) # 
-- (\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_address~DUPLICATE_q\ & ((\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1\(40)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001001101010010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|new_sdram_controller_0|ALT_INV_active_addr\(22),
	datab => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_entry_0\(40),
	datac => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_rd_address~DUPLICATE_q\,
	datad => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_entry_1\(40),
	datae => \u0|new_sdram_controller_0|ALT_INV_pending~10_combout\,
	dataf => \u0|new_sdram_controller_0|ALT_INV_pending~9_combout\,
	combout => \u0|new_sdram_controller_0|pending~0_combout\);

-- Location: FF_X33_Y12_N55
\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_address\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_address~0_combout\,
	clrn => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_address~q\);

-- Location: LABCELL_X33_Y12_N54
\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_address~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_address~0_combout\ = ( \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_address~q\ & ( \u0|new_sdram_controller_0|pending~2_combout\ & ( 
-- (!\u0|new_sdram_controller_0|pending~0_combout\) # ((!\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|Equal1~0_combout\) # ((!\u0|new_sdram_controller_0|f_pop~q\) # (!\u0|new_sdram_controller_0|pending~3_combout\))) ) ) ) # 
-- ( !\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_address~q\ & ( \u0|new_sdram_controller_0|pending~2_combout\ & ( (\u0|new_sdram_controller_0|pending~0_combout\ & 
-- (\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|Equal1~0_combout\ & (\u0|new_sdram_controller_0|f_pop~q\ & \u0|new_sdram_controller_0|pending~3_combout\))) ) ) ) # ( 
-- \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_address~q\ & ( !\u0|new_sdram_controller_0|pending~2_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000011111111111111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|new_sdram_controller_0|ALT_INV_pending~0_combout\,
	datab => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_Equal1~0_combout\,
	datac => \u0|new_sdram_controller_0|ALT_INV_f_pop~q\,
	datad => \u0|new_sdram_controller_0|ALT_INV_pending~3_combout\,
	datae => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_rd_address~q\,
	dataf => \u0|new_sdram_controller_0|ALT_INV_pending~2_combout\,
	combout => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_address~0_combout\);

-- Location: FF_X33_Y12_N56
\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_address~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_address~0_combout\,
	clrn => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_address~DUPLICATE_q\);

-- Location: LABCELL_X33_Y14_N0
\Add1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~1_sumout\ = SUM(( Ypos(0) ) + ( VCC ) + ( !VCC ))
-- \Add1~2\ = CARRY(( Ypos(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_Ypos(0),
	cin => GND,
	sumout => \Add1~1_sumout\,
	cout => \Add1~2\);

-- Location: LABCELL_X33_Y14_N3
\Add1~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~5_sumout\ = SUM(( Ypos(1) ) + ( GND ) + ( \Add1~2\ ))
-- \Add1~6\ = CARRY(( Ypos(1) ) + ( GND ) + ( \Add1~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_Ypos(1),
	cin => \Add1~2\,
	sumout => \Add1~5_sumout\,
	cout => \Add1~6\);

-- Location: LABCELL_X30_Y13_N0
\Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~9_sumout\ = SUM(( Xpos(0) ) + ( VCC ) + ( !VCC ))
-- \Add0~10\ = CARRY(( Xpos(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_Xpos(0),
	cin => GND,
	sumout => \Add0~9_sumout\,
	cout => \Add0~10\);

-- Location: LABCELL_X30_Y13_N36
\Xpos[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Xpos[1]~1_combout\ = ( \BUFF_CTRL~q\ & ( NEXTFRAME(2) ) ) # ( !\BUFF_CTRL~q\ & ( (!\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entries\(1)) # 
-- (\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entries\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100111111001111000000001111111111001111110011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_entries\(1),
	datac => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_entries\(0),
	datad => ALT_INV_NEXTFRAME(2),
	datae => \ALT_INV_BUFF_CTRL~q\,
	combout => \Xpos[1]~1_combout\);

-- Location: FF_X30_Y13_N2
\Xpos[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Add0~9_sumout\,
	sclr => \Xpos[1]~0_combout\,
	ena => \Xpos[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Xpos(0));

-- Location: LABCELL_X30_Y13_N3
\Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~13_sumout\ = SUM(( Xpos(1) ) + ( GND ) + ( \Add0~10\ ))
-- \Add0~14\ = CARRY(( Xpos(1) ) + ( GND ) + ( \Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_Xpos(1),
	cin => \Add0~10\,
	sumout => \Add0~13_sumout\,
	cout => \Add0~14\);

-- Location: FF_X30_Y13_N5
\Xpos[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Add0~13_sumout\,
	sclr => \Xpos[1]~0_combout\,
	ena => \Xpos[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Xpos(1));

-- Location: LABCELL_X30_Y13_N6
\Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~17_sumout\ = SUM(( Xpos(2) ) + ( GND ) + ( \Add0~14\ ))
-- \Add0~18\ = CARRY(( Xpos(2) ) + ( GND ) + ( \Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_Xpos(2),
	cin => \Add0~14\,
	sumout => \Add0~17_sumout\,
	cout => \Add0~18\);

-- Location: FF_X30_Y13_N8
\Xpos[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Add0~17_sumout\,
	sclr => \Xpos[1]~0_combout\,
	ena => \Xpos[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Xpos(2));

-- Location: LABCELL_X30_Y13_N9
\Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~21_sumout\ = SUM(( Xpos(3) ) + ( GND ) + ( \Add0~18\ ))
-- \Add0~22\ = CARRY(( Xpos(3) ) + ( GND ) + ( \Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_Xpos(3),
	cin => \Add0~18\,
	sumout => \Add0~21_sumout\,
	cout => \Add0~22\);

-- Location: FF_X30_Y13_N11
\Xpos[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Add0~21_sumout\,
	sclr => \Xpos[1]~0_combout\,
	ena => \Xpos[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Xpos(3));

-- Location: LABCELL_X30_Y13_N12
\Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~25_sumout\ = SUM(( Xpos(4) ) + ( GND ) + ( \Add0~22\ ))
-- \Add0~26\ = CARRY(( Xpos(4) ) + ( GND ) + ( \Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_Xpos(4),
	cin => \Add0~22\,
	sumout => \Add0~25_sumout\,
	cout => \Add0~26\);

-- Location: FF_X30_Y13_N14
\Xpos[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Add0~25_sumout\,
	sclr => \Xpos[1]~0_combout\,
	ena => \Xpos[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Xpos(4));

-- Location: LABCELL_X30_Y13_N15
\Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~29_sumout\ = SUM(( Xpos(5) ) + ( GND ) + ( \Add0~26\ ))
-- \Add0~30\ = CARRY(( Xpos(5) ) + ( GND ) + ( \Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_Xpos(5),
	cin => \Add0~26\,
	sumout => \Add0~29_sumout\,
	cout => \Add0~30\);

-- Location: FF_X30_Y13_N17
\Xpos[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Add0~29_sumout\,
	sclr => \Xpos[1]~0_combout\,
	ena => \Xpos[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Xpos(5));

-- Location: LABCELL_X30_Y13_N18
\Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~33_sumout\ = SUM(( Xpos(6) ) + ( GND ) + ( \Add0~30\ ))
-- \Add0~34\ = CARRY(( Xpos(6) ) + ( GND ) + ( \Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_Xpos(6),
	cin => \Add0~30\,
	sumout => \Add0~33_sumout\,
	cout => \Add0~34\);

-- Location: FF_X30_Y13_N20
\Xpos[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Add0~33_sumout\,
	sclr => \Xpos[1]~0_combout\,
	ena => \Xpos[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Xpos(6));

-- Location: LABCELL_X30_Y13_N21
\Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~37_sumout\ = SUM(( Xpos(7) ) + ( GND ) + ( \Add0~34\ ))
-- \Add0~38\ = CARRY(( Xpos(7) ) + ( GND ) + ( \Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_Xpos(7),
	cin => \Add0~34\,
	sumout => \Add0~37_sumout\,
	cout => \Add0~38\);

-- Location: FF_X30_Y13_N23
\Xpos[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Add0~37_sumout\,
	sclr => \Xpos[1]~0_combout\,
	ena => \Xpos[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Xpos(7));

-- Location: LABCELL_X30_Y13_N57
\LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = ( !Xpos(6) & ( (!Xpos(5) & !Xpos(7)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_Xpos(5),
	datad => ALT_INV_Xpos(7),
	dataf => ALT_INV_Xpos(6),
	combout => \LessThan0~1_combout\);

-- Location: LABCELL_X30_Y13_N54
\LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = ( Xpos(4) & ( (Xpos(1) & (Xpos(3) & (Xpos(0) & Xpos(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_Xpos(1),
	datab => ALT_INV_Xpos(3),
	datac => ALT_INV_Xpos(0),
	datad => ALT_INV_Xpos(2),
	dataf => ALT_INV_Xpos(4),
	combout => \LessThan0~0_combout\);

-- Location: LABCELL_X30_Y13_N24
\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_sumout\ = SUM(( Xpos(8) ) + ( GND ) + ( \Add0~38\ ))
-- \Add0~2\ = CARRY(( Xpos(8) ) + ( GND ) + ( \Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_Xpos(8),
	cin => \Add0~38\,
	sumout => \Add0~1_sumout\,
	cout => \Add0~2\);

-- Location: LABCELL_X30_Y13_N27
\Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~5_sumout\ = SUM(( Xpos(9) ) + ( GND ) + ( \Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_Xpos(9),
	cin => \Add0~2\,
	sumout => \Add0~5_sumout\);

-- Location: FF_X30_Y13_N28
\Xpos[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Add0~5_sumout\,
	sclr => \Xpos[1]~0_combout\,
	ena => \Xpos[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Xpos(9));

-- Location: LABCELL_X30_Y13_N30
\Xpos[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Xpos[1]~0_combout\ = ( Xpos(9) & ( ((\Xpos[8]~DUPLICATE_q\ & ((!\LessThan0~1_combout\) # (\LessThan0~0_combout\)))) # (\BUFF_CTRL~q\) ) ) # ( !Xpos(9) & ( \BUFF_CTRL~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111101000101111111110100010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Xpos[8]~DUPLICATE_q\,
	datab => \ALT_INV_LessThan0~1_combout\,
	datac => \ALT_INV_LessThan0~0_combout\,
	datad => \ALT_INV_BUFF_CTRL~q\,
	dataf => ALT_INV_Xpos(9),
	combout => \Xpos[1]~0_combout\);

-- Location: FF_X30_Y13_N25
\Xpos[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Add0~1_sumout\,
	sclr => \Xpos[1]~0_combout\,
	ena => \Xpos[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Xpos(8));

-- Location: FF_X30_Y13_N26
\Xpos[8]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Add0~1_sumout\,
	sclr => \Xpos[1]~0_combout\,
	ena => \Xpos[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Xpos[8]~DUPLICATE_q\);

-- Location: LABCELL_X30_Y13_N33
\LessThan0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (\Xpos[8]~DUPLICATE_q\ & (Xpos(9) & ((!\LessThan0~1_combout\) # (\LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000101000001000000010100000100000001010000010000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Xpos[8]~DUPLICATE_q\,
	datab => \ALT_INV_LessThan0~1_combout\,
	datac => ALT_INV_Xpos(9),
	datad => \ALT_INV_LessThan0~0_combout\,
	combout => \LessThan0~2_combout\);

-- Location: LABCELL_X30_Y13_N45
\Ypos[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \Ypos[2]~2_combout\ = ( \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entries\(0) & ( (!\BUFF_CTRL~q\ & (\LessThan0~2_combout\)) # (\BUFF_CTRL~q\ & ((NEXTFRAME(2)))) ) ) # ( 
-- !\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entries\(0) & ( (!\BUFF_CTRL~q\ & (\LessThan0~2_combout\ & (!\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entries\(1)))) # (\BUFF_CTRL~q\ & 
-- (((NEXTFRAME(2))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010000001111010001000000111101010101000011110101010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~2_combout\,
	datab => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_entries\(1),
	datac => ALT_INV_NEXTFRAME(2),
	datad => \ALT_INV_BUFF_CTRL~q\,
	dataf => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_entries\(0),
	combout => \Ypos[2]~2_combout\);

-- Location: FF_X33_Y14_N4
\Ypos[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Add1~5_sumout\,
	sclr => \Ypos[2]~1_combout\,
	ena => \Ypos[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Ypos(1));

-- Location: LABCELL_X33_Y14_N6
\Add1~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~25_sumout\ = SUM(( Ypos(2) ) + ( GND ) + ( \Add1~6\ ))
-- \Add1~26\ = CARRY(( Ypos(2) ) + ( GND ) + ( \Add1~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_Ypos(2),
	cin => \Add1~6\,
	sumout => \Add1~25_sumout\,
	cout => \Add1~26\);

-- Location: FF_X33_Y14_N8
\Ypos[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Add1~25_sumout\,
	sclr => \Ypos[2]~1_combout\,
	ena => \Ypos[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Ypos(2));

-- Location: LABCELL_X33_Y14_N9
\Add1~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~29_sumout\ = SUM(( Ypos(3) ) + ( GND ) + ( \Add1~26\ ))
-- \Add1~30\ = CARRY(( Ypos(3) ) + ( GND ) + ( \Add1~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_Ypos(3),
	cin => \Add1~26\,
	sumout => \Add1~29_sumout\,
	cout => \Add1~30\);

-- Location: FF_X33_Y14_N11
\Ypos[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Add1~29_sumout\,
	sclr => \Ypos[2]~1_combout\,
	ena => \Ypos[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Ypos(3));

-- Location: LABCELL_X33_Y14_N12
\Add1~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~33_sumout\ = SUM(( Ypos(4) ) + ( GND ) + ( \Add1~30\ ))
-- \Add1~34\ = CARRY(( Ypos(4) ) + ( GND ) + ( \Add1~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_Ypos(4),
	cin => \Add1~30\,
	sumout => \Add1~33_sumout\,
	cout => \Add1~34\);

-- Location: FF_X33_Y14_N13
\Ypos[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Add1~33_sumout\,
	sclr => \Ypos[2]~1_combout\,
	ena => \Ypos[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Ypos(4));

-- Location: LABCELL_X33_Y14_N15
\Add1~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~37_sumout\ = SUM(( Ypos(5) ) + ( GND ) + ( \Add1~34\ ))
-- \Add1~38\ = CARRY(( Ypos(5) ) + ( GND ) + ( \Add1~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_Ypos(5),
	cin => \Add1~34\,
	sumout => \Add1~37_sumout\,
	cout => \Add1~38\);

-- Location: FF_X33_Y14_N17
\Ypos[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Add1~37_sumout\,
	sclr => \Ypos[2]~1_combout\,
	ena => \Ypos[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Ypos(5));

-- Location: LABCELL_X33_Y14_N18
\Add1~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~9_sumout\ = SUM(( Ypos(6) ) + ( GND ) + ( \Add1~38\ ))
-- \Add1~10\ = CARRY(( Ypos(6) ) + ( GND ) + ( \Add1~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_Ypos(6),
	cin => \Add1~38\,
	sumout => \Add1~9_sumout\,
	cout => \Add1~10\);

-- Location: FF_X33_Y14_N20
\Ypos[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Add1~9_sumout\,
	sclr => \Ypos[2]~1_combout\,
	ena => \Ypos[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Ypos(6));

-- Location: LABCELL_X33_Y14_N21
\Add1~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~13_sumout\ = SUM(( Ypos(7) ) + ( GND ) + ( \Add1~10\ ))
-- \Add1~14\ = CARRY(( Ypos(7) ) + ( GND ) + ( \Add1~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_Ypos(7),
	cin => \Add1~10\,
	sumout => \Add1~13_sumout\,
	cout => \Add1~14\);

-- Location: FF_X33_Y14_N23
\Ypos[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Add1~13_sumout\,
	sclr => \Ypos[2]~1_combout\,
	ena => \Ypos[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Ypos(7));

-- Location: LABCELL_X33_Y14_N24
\Add1~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~17_sumout\ = SUM(( Ypos(8) ) + ( GND ) + ( \Add1~14\ ))
-- \Add1~18\ = CARRY(( Ypos(8) ) + ( GND ) + ( \Add1~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_Ypos(8),
	cin => \Add1~14\,
	sumout => \Add1~17_sumout\,
	cout => \Add1~18\);

-- Location: FF_X33_Y14_N25
\Ypos[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Add1~17_sumout\,
	sclr => \Ypos[2]~1_combout\,
	ena => \Ypos[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Ypos(8));

-- Location: LABCELL_X33_Y14_N27
\Add1~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add1~21_sumout\ = SUM(( Ypos(9) ) + ( GND ) + ( \Add1~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_Ypos(9),
	cin => \Add1~18\,
	sumout => \Add1~21_sumout\);

-- Location: FF_X33_Y14_N29
\Ypos[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Add1~21_sumout\,
	sclr => \Ypos[2]~1_combout\,
	ena => \Ypos[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Ypos(9));

-- Location: LABCELL_X31_Y14_N24
\Ypos[2]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Ypos[2]~0_combout\ = ( Ypos(2) & ( !Ypos(5) & ( (!Ypos(4)) # ((!Ypos(3) & ((!Ypos(1)) # (!Ypos(0))))) ) ) ) # ( !Ypos(2) & ( !Ypos(5) & ( (!Ypos(3)) # (!Ypos(4)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110011111100111111001111100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_Ypos(1),
	datab => ALT_INV_Ypos(3),
	datac => ALT_INV_Ypos(4),
	datad => ALT_INV_Ypos(0),
	datae => ALT_INV_Ypos(2),
	dataf => ALT_INV_Ypos(5),
	combout => \Ypos[2]~0_combout\);

-- Location: LABCELL_X31_Y14_N33
\Ypos[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Ypos[2]~1_combout\ = ( Ypos(8) & ( \Ypos[2]~0_combout\ & ( (Ypos(9)) # (\BUFF_CTRL~q\) ) ) ) # ( !Ypos(8) & ( \Ypos[2]~0_combout\ & ( ((Ypos(7) & Ypos(9))) # (\BUFF_CTRL~q\) ) ) ) # ( Ypos(8) & ( !\Ypos[2]~0_combout\ & ( (Ypos(9)) # (\BUFF_CTRL~q\) ) ) ) 
-- # ( !Ypos(8) & ( !\Ypos[2]~0_combout\ & ( ((Ypos(9) & ((Ypos(6)) # (Ypos(7))))) # (\BUFF_CTRL~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001101111111001100111111111100110011011101110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_Ypos(7),
	datab => \ALT_INV_BUFF_CTRL~q\,
	datac => ALT_INV_Ypos(6),
	datad => ALT_INV_Ypos(9),
	datae => ALT_INV_Ypos(8),
	dataf => \ALT_INV_Ypos[2]~0_combout\,
	combout => \Ypos[2]~1_combout\);

-- Location: FF_X33_Y14_N2
\Ypos[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Add1~1_sumout\,
	sclr => \Ypos[2]~1_combout\,
	ena => \Ypos[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Ypos(0));

-- Location: FF_X33_Y14_N7
\Ypos[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Add1~25_sumout\,
	sclr => \Ypos[2]~1_combout\,
	ena => \Ypos[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ypos[2]~DUPLICATE_q\);

-- Location: LABCELL_X33_Y14_N30
\Add3~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~1_sumout\ = SUM(( \Ypos[2]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))
-- \Add3~2\ = CARRY(( \Ypos[2]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_Ypos[2]~DUPLICATE_q\,
	cin => GND,
	sumout => \Add3~1_sumout\,
	cout => \Add3~2\);

-- Location: LABCELL_X33_Y14_N33
\Add3~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~5_sumout\ = SUM(( Ypos(3) ) + ( GND ) + ( \Add3~2\ ))
-- \Add3~6\ = CARRY(( Ypos(3) ) + ( GND ) + ( \Add3~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_Ypos(3),
	cin => \Add3~2\,
	sumout => \Add3~5_sumout\,
	cout => \Add3~6\);

-- Location: FF_X33_Y14_N14
\Ypos[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Add1~33_sumout\,
	sclr => \Ypos[2]~1_combout\,
	ena => \Ypos[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ypos[4]~DUPLICATE_q\);

-- Location: LABCELL_X33_Y14_N36
\Add3~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~9_sumout\ = SUM(( \Ypos[4]~DUPLICATE_q\ ) + ( VCC ) + ( \Add3~6\ ))
-- \Add3~10\ = CARRY(( \Ypos[4]~DUPLICATE_q\ ) + ( VCC ) + ( \Add3~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Ypos[4]~DUPLICATE_q\,
	cin => \Add3~6\,
	sumout => \Add3~9_sumout\,
	cout => \Add3~10\);

-- Location: LABCELL_X33_Y14_N39
\Add3~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~13_sumout\ = SUM(( Ypos(5) ) + ( GND ) + ( \Add3~10\ ))
-- \Add3~14\ = CARRY(( Ypos(5) ) + ( GND ) + ( \Add3~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_Ypos(5),
	cin => \Add3~10\,
	sumout => \Add3~13_sumout\,
	cout => \Add3~14\);

-- Location: LABCELL_X33_Y14_N42
\Add3~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~17_sumout\ = SUM(( Ypos(6) ) + ( VCC ) + ( \Add3~14\ ))
-- \Add3~18\ = CARRY(( Ypos(6) ) + ( VCC ) + ( \Add3~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_Ypos(6),
	cin => \Add3~14\,
	sumout => \Add3~17_sumout\,
	cout => \Add3~18\);

-- Location: LABCELL_X33_Y14_N45
\Add3~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~21_sumout\ = SUM(( Ypos(7) ) + ( VCC ) + ( \Add3~18\ ))
-- \Add3~22\ = CARRY(( Ypos(7) ) + ( VCC ) + ( \Add3~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_Ypos(7),
	cin => \Add3~18\,
	sumout => \Add3~21_sumout\,
	cout => \Add3~22\);

-- Location: FF_X33_Y14_N26
\Ypos[8]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Add1~17_sumout\,
	sclr => \Ypos[2]~1_combout\,
	ena => \Ypos[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Ypos[8]~DUPLICATE_q\);

-- Location: LABCELL_X33_Y14_N48
\Add3~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~25_sumout\ = SUM(( \Ypos[8]~DUPLICATE_q\ ) + ( GND ) + ( \Add3~22\ ))
-- \Add3~26\ = CARRY(( \Ypos[8]~DUPLICATE_q\ ) + ( GND ) + ( \Add3~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Ypos[8]~DUPLICATE_q\,
	cin => \Add3~22\,
	sumout => \Add3~25_sumout\,
	cout => \Add3~26\);

-- Location: LABCELL_X33_Y14_N51
\Add3~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~29_sumout\ = SUM(( Ypos(9) ) + ( VCC ) + ( \Add3~26\ ))
-- \Add3~30\ = CARRY(( Ypos(9) ) + ( VCC ) + ( \Add3~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_Ypos(9),
	cin => \Add3~26\,
	sumout => \Add3~29_sumout\,
	cout => \Add3~30\);

-- Location: LABCELL_X33_Y14_N54
\Add3~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add3~33_sumout\ = SUM(( GND ) + ( GND ) + ( \Add3~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \Add3~30\,
	sumout => \Add3~33_sumout\);

-- Location: FF_X30_Y13_N1
\Xpos[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Add0~9_sumout\,
	sclr => \Xpos[1]~0_combout\,
	ena => \Xpos[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Xpos[0]~DUPLICATE_q\);

-- Location: IOIBUF_X12_Y0_N18
\SW[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: LABCELL_X31_Y13_N0
\Add2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~1_sumout\ = SUM(( !\Xpos[0]~DUPLICATE_q\ $ (!\SW[0]~input_o\) ) + ( !VCC ) + ( !VCC ))
-- \Add2~2\ = CARRY(( !\Xpos[0]~DUPLICATE_q\ $ (!\SW[0]~input_o\) ) + ( !VCC ) + ( !VCC ))
-- \Add2~3\ = SHARE((!\SW[0]~input_o\) # (\Xpos[0]~DUPLICATE_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100111111001100000000000000000011110000111100",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Xpos[0]~DUPLICATE_q\,
	datac => \ALT_INV_SW[0]~input_o\,
	cin => GND,
	sharein => GND,
	sumout => \Add2~1_sumout\,
	cout => \Add2~2\,
	shareout => \Add2~3\);

-- Location: IOIBUF_X16_Y0_N1
\SW[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: FF_X30_Y13_N4
\Xpos[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Add0~13_sumout\,
	sclr => \Xpos[1]~0_combout\,
	ena => \Xpos[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Xpos[1]~DUPLICATE_q\);

-- Location: LABCELL_X31_Y13_N3
\Add2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~5_sumout\ = SUM(( !\SW[1]~input_o\ $ (\Xpos[1]~DUPLICATE_q\) ) + ( \Add2~3\ ) + ( \Add2~2\ ))
-- \Add2~6\ = CARRY(( !\SW[1]~input_o\ $ (\Xpos[1]~DUPLICATE_q\) ) + ( \Add2~3\ ) + ( \Add2~2\ ))
-- \Add2~7\ = SHARE((!\SW[1]~input_o\ & \Xpos[1]~DUPLICATE_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010100000101000000000000000001010010110100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[1]~input_o\,
	datac => \ALT_INV_Xpos[1]~DUPLICATE_q\,
	cin => \Add2~2\,
	sharein => \Add2~3\,
	sumout => \Add2~5_sumout\,
	cout => \Add2~6\,
	shareout => \Add2~7\);

-- Location: IOIBUF_X8_Y0_N35
\SW[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: FF_X30_Y13_N7
\Xpos[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Add0~17_sumout\,
	sclr => \Xpos[1]~0_combout\,
	ena => \Xpos[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Xpos[2]~DUPLICATE_q\);

-- Location: LABCELL_X31_Y13_N6
\Add2~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~9_sumout\ = SUM(( !\SW[2]~input_o\ $ (\Xpos[2]~DUPLICATE_q\) ) + ( \Add2~7\ ) + ( \Add2~6\ ))
-- \Add2~10\ = CARRY(( !\SW[2]~input_o\ $ (\Xpos[2]~DUPLICATE_q\) ) + ( \Add2~7\ ) + ( \Add2~6\ ))
-- \Add2~11\ = SHARE((!\SW[2]~input_o\ & \Xpos[2]~DUPLICATE_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001100110000000000000000001100110000110011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[2]~input_o\,
	datad => \ALT_INV_Xpos[2]~DUPLICATE_q\,
	cin => \Add2~6\,
	sharein => \Add2~7\,
	sumout => \Add2~9_sumout\,
	cout => \Add2~10\,
	shareout => \Add2~11\);

-- Location: IOIBUF_X4_Y0_N52
\SW[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: FF_X30_Y13_N10
\Xpos[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Add0~21_sumout\,
	sclr => \Xpos[1]~0_combout\,
	ena => \Xpos[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Xpos[3]~DUPLICATE_q\);

-- Location: LABCELL_X31_Y13_N9
\Add2~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~13_sumout\ = SUM(( !\SW[3]~input_o\ $ (\Xpos[3]~DUPLICATE_q\) ) + ( \Add2~11\ ) + ( \Add2~10\ ))
-- \Add2~14\ = CARRY(( !\SW[3]~input_o\ $ (\Xpos[3]~DUPLICATE_q\) ) + ( \Add2~11\ ) + ( \Add2~10\ ))
-- \Add2~15\ = SHARE((!\SW[3]~input_o\ & \Xpos[3]~DUPLICATE_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010100000101000000000000000001010010110100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[3]~input_o\,
	datac => \ALT_INV_Xpos[3]~DUPLICATE_q\,
	cin => \Add2~10\,
	sharein => \Add2~11\,
	sumout => \Add2~13_sumout\,
	cout => \Add2~14\,
	shareout => \Add2~15\);

-- Location: IOIBUF_X2_Y0_N41
\SW[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: FF_X30_Y13_N13
\Xpos[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Add0~25_sumout\,
	sclr => \Xpos[1]~0_combout\,
	ena => \Xpos[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Xpos[4]~DUPLICATE_q\);

-- Location: LABCELL_X31_Y13_N12
\Add2~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~17_sumout\ = SUM(( !\SW[4]~input_o\ $ (\Xpos[4]~DUPLICATE_q\) ) + ( \Add2~15\ ) + ( \Add2~14\ ))
-- \Add2~18\ = CARRY(( !\SW[4]~input_o\ $ (\Xpos[4]~DUPLICATE_q\) ) + ( \Add2~15\ ) + ( \Add2~14\ ))
-- \Add2~19\ = SHARE((!\SW[4]~input_o\ & \Xpos[4]~DUPLICATE_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001100110000000000000000001100110000110011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_SW[4]~input_o\,
	datad => \ALT_INV_Xpos[4]~DUPLICATE_q\,
	cin => \Add2~14\,
	sharein => \Add2~15\,
	sumout => \Add2~17_sumout\,
	cout => \Add2~18\,
	shareout => \Add2~19\);

-- Location: IOIBUF_X16_Y0_N18
\SW[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: FF_X30_Y13_N16
\Xpos[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Add0~29_sumout\,
	sclr => \Xpos[1]~0_combout\,
	ena => \Xpos[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Xpos[5]~DUPLICATE_q\);

-- Location: LABCELL_X31_Y13_N15
\Add2~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~21_sumout\ = SUM(( !\SW[5]~input_o\ $ (\Xpos[5]~DUPLICATE_q\) ) + ( \Add2~19\ ) + ( \Add2~18\ ))
-- \Add2~22\ = CARRY(( !\SW[5]~input_o\ $ (\Xpos[5]~DUPLICATE_q\) ) + ( \Add2~19\ ) + ( \Add2~18\ ))
-- \Add2~23\ = SHARE((!\SW[5]~input_o\ & \Xpos[5]~DUPLICATE_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010100000101000000000000000001010010110100101",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_SW[5]~input_o\,
	datac => \ALT_INV_Xpos[5]~DUPLICATE_q\,
	cin => \Add2~18\,
	sharein => \Add2~19\,
	sumout => \Add2~21_sumout\,
	cout => \Add2~22\,
	shareout => \Add2~23\);

-- Location: FF_X30_Y13_N19
\Xpos[6]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Add0~33_sumout\,
	sclr => \Xpos[1]~0_combout\,
	ena => \Xpos[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Xpos[6]~DUPLICATE_q\);

-- Location: IOIBUF_X4_Y0_N35
\SW[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: LABCELL_X31_Y13_N18
\Add2~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~25_sumout\ = SUM(( !\Xpos[6]~DUPLICATE_q\ $ (\SW[6]~input_o\) ) + ( \Add2~23\ ) + ( \Add2~22\ ))
-- \Add2~26\ = CARRY(( !\Xpos[6]~DUPLICATE_q\ $ (\SW[6]~input_o\) ) + ( \Add2~23\ ) + ( \Add2~22\ ))
-- \Add2~27\ = SHARE((\Xpos[6]~DUPLICATE_q\ & !\SW[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100000011000000000000000000001100001111000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Xpos[6]~DUPLICATE_q\,
	datac => \ALT_INV_SW[6]~input_o\,
	cin => \Add2~22\,
	sharein => \Add2~23\,
	sumout => \Add2~25_sumout\,
	cout => \Add2~26\,
	shareout => \Add2~27\);

-- Location: IOIBUF_X4_Y0_N1
\SW[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: FF_X30_Y13_N22
\Xpos[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Add0~37_sumout\,
	sclr => \Xpos[1]~0_combout\,
	ena => \Xpos[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Xpos[7]~DUPLICATE_q\);

-- Location: LABCELL_X31_Y13_N21
\Add2~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~29_sumout\ = SUM(( !\SW[7]~input_o\ $ (\Xpos[7]~DUPLICATE_q\) ) + ( \Add2~27\ ) + ( \Add2~26\ ))
-- \Add2~30\ = CARRY(( !\SW[7]~input_o\ $ (\Xpos[7]~DUPLICATE_q\) ) + ( \Add2~27\ ) + ( \Add2~26\ ))
-- \Add2~31\ = SHARE((!\SW[7]~input_o\ & \Xpos[7]~DUPLICATE_q\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SW[7]~input_o\,
	datad => \ALT_INV_Xpos[7]~DUPLICATE_q\,
	cin => \Add2~26\,
	sharein => \Add2~27\,
	sumout => \Add2~29_sumout\,
	cout => \Add2~30\,
	shareout => \Add2~31\);

-- Location: IOIBUF_X4_Y0_N18
\SW[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: LABCELL_X31_Y13_N24
\Add2~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~33_sumout\ = SUM(( !Xpos(8) $ (\SW[8]~input_o\) ) + ( \Add2~31\ ) + ( \Add2~30\ ))
-- \Add2~34\ = CARRY(( !Xpos(8) $ (\SW[8]~input_o\) ) + ( \Add2~31\ ) + ( \Add2~30\ ))
-- \Add2~35\ = SHARE((Xpos(8) & !\SW[8]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100000011000000000000000000001100001111000011",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_Xpos(8),
	datac => \ALT_INV_SW[8]~input_o\,
	cin => \Add2~30\,
	sharein => \Add2~31\,
	sumout => \Add2~33_sumout\,
	cout => \Add2~34\,
	shareout => \Add2~35\);

-- Location: IOIBUF_X2_Y0_N58
\SW[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: LABCELL_X31_Y13_N27
\Add2~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~37_sumout\ = SUM(( !\SW[9]~input_o\ $ (Xpos(9)) ) + ( \Add2~35\ ) + ( \Add2~34\ ))
-- \Add2~38\ = CARRY(( !\SW[9]~input_o\ $ (Xpos(9)) ) + ( \Add2~35\ ) + ( \Add2~34\ ))
-- \Add2~39\ = SHARE((!\SW[9]~input_o\ & Xpos(9)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001111000000000000000000001111000000001111",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SW[9]~input_o\,
	datad => ALT_INV_Xpos(9),
	cin => \Add2~34\,
	sharein => \Add2~35\,
	sumout => \Add2~37_sumout\,
	cout => \Add2~38\,
	shareout => \Add2~39\);

-- Location: LABCELL_X31_Y13_N30
\Add2~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add2~41_sumout\ = SUM(( GND ) + ( \Add2~39\ ) + ( \Add2~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "on")
-- pragma translate_on
PORT MAP (
	cin => \Add2~38\,
	sharein => \Add2~39\,
	sumout => \Add2~41_sumout\);

-- Location: DSP_X32_Y14_N0
\Add4~8\ : cyclonev_mac
-- pragma translate_off
GENERIC MAP (
	accumulate_clock => "none",
	ax_clock => "none",
	ax_width => 18,
	ay_scan_in_clock => "none",
	ay_scan_in_width => 19,
	ay_use_scan_in => "false",
	az_clock => "none",
	bx_clock => "none",
	bx_width => 18,
	by_clock => "none",
	by_use_scan_in => "false",
	by_width => 19,
	bz_clock => "none",
	coef_a_0 => 0,
	coef_a_1 => 0,
	coef_a_2 => 0,
	coef_a_3 => 0,
	coef_a_4 => 0,
	coef_a_5 => 0,
	coef_a_6 => 0,
	coef_a_7 => 0,
	coef_b_0 => 0,
	coef_b_1 => 0,
	coef_b_2 => 0,
	coef_b_3 => 0,
	coef_b_4 => 0,
	coef_b_5 => 0,
	coef_b_6 => 0,
	coef_b_7 => 0,
	coef_sel_a_clock => "none",
	coef_sel_b_clock => "none",
	delay_scan_out_ay => "false",
	delay_scan_out_by => "false",
	enable_double_accum => "false",
	load_const_clock => "none",
	load_const_value => 0,
	mode_sub_location => 0,
	negate_clock => "none",
	operand_source_max => "input",
	operand_source_may => "input",
	operand_source_mbx => "input",
	operand_source_mby => "input",
	operation_mode => "m18x18_sumof2",
	output_clock => "none",
	preadder_subtract_a => "false",
	preadder_subtract_b => "false",
	result_a_width => 64,
	signed_max => "true",
	signed_may => "true",
	signed_mbx => "true",
	signed_mby => "true",
	sub_clock => "none",
	use_chainadder => "false")
-- pragma translate_on
PORT MAP (
	sub => GND,
	negate => GND,
	ax => \Add4~8_AX_bus\,
	ay => \Add4~8_AY_bus\,
	bx => \Add4~8_BX_bus\,
	by => \Add4~8_BY_bus\,
	resulta => \Add4~8_RESULTA_bus\);

-- Location: LABCELL_X31_Y14_N3
\LessThan2~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~4_combout\ = ( !\Add4~22\ & ( !\Add4~21\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_Add4~22\,
	dataf => \ALT_INV_Add4~21\,
	combout => \LessThan2~4_combout\);

-- Location: LABCELL_X31_Y14_N6
\LessThan2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~1_combout\ = ( !\Add4~25\ & ( !\Add4~24\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_Add4~25\,
	dataf => \ALT_INV_Add4~24\,
	combout => \LessThan2~1_combout\);

-- Location: LABCELL_X31_Y14_N54
\LessThan2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~0_combout\ = ( !\Add4~31\ & ( !\Add4~30\ & ( (!\Add4~29\ & (!\Add4~28\ & (!\Add4~27\ & !\Add4~26\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add4~29\,
	datab => \ALT_INV_Add4~28\,
	datac => \ALT_INV_Add4~27\,
	datad => \ALT_INV_Add4~26\,
	datae => \ALT_INV_Add4~31\,
	dataf => \ALT_INV_Add4~30\,
	combout => \LessThan2~0_combout\);

-- Location: LABCELL_X31_Y14_N39
\LessThan2~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~3_combout\ = ( \Add4~14\ & ( \Add4~16\ & ( (\Add4~20\ & \Add4~19\) ) ) ) # ( !\Add4~14\ & ( \Add4~16\ & ( (\Add4~20\ & \Add4~19\) ) ) ) # ( \Add4~14\ & ( !\Add4~16\ & ( (\Add4~20\ & \Add4~19\) ) ) ) # ( !\Add4~14\ & ( !\Add4~16\ & ( (\Add4~20\ 
-- & (\Add4~19\ & ((\Add4~17\) # (\Add4~15\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010011000000000011001100000000001100110000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add4~15\,
	datab => \ALT_INV_Add4~20\,
	datac => \ALT_INV_Add4~17\,
	datad => \ALT_INV_Add4~19\,
	datae => \ALT_INV_Add4~14\,
	dataf => \ALT_INV_Add4~16\,
	combout => \LessThan2~3_combout\);

-- Location: LABCELL_X31_Y14_N51
\LessThan2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~2_combout\ = ( \LessThan2~0_combout\ & ( \LessThan2~3_combout\ & ( (\LessThan2~1_combout\ & ((!\Add4~23\) # ((\LessThan2~4_combout\ & !\Add4~18\)))) ) ) ) # ( \LessThan2~0_combout\ & ( !\LessThan2~3_combout\ & ( (\LessThan2~1_combout\ & 
-- ((!\Add4~23\) # (\LessThan2~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011010000110100000000000000000000110100001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan2~4_combout\,
	datab => \ALT_INV_Add4~23\,
	datac => \ALT_INV_LessThan2~1_combout\,
	datad => \ALT_INV_Add4~18\,
	datae => \ALT_INV_LessThan2~0_combout\,
	dataf => \ALT_INV_LessThan2~3_combout\,
	combout => \LessThan2~2_combout\);

-- Location: LABCELL_X31_Y14_N18
\test~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \test~0_combout\ = ( !\BUFF_CTRL~q\ & ( (!\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entries\(1) & ((((!\Add4~32\ & !\LessThan2~2_combout\))))) # 
-- (\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entries\(1) & ((!\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entries\(0) & (\test~q\)) # 
-- (\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entries\(0) & (((!\Add4~32\ & !\LessThan2~2_combout\)))))) ) ) # ( \BUFF_CTRL~q\ & ( (\test~q\ & (((!NEXTFRAME(2))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "on",
	lut_mask => "1101111100010000010100000101000000010000000100000101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_test~q\,
	datab => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_entries\(1),
	datac => ALT_INV_NEXTFRAME(2),
	datad => \ALT_INV_Add4~32\,
	datae => \ALT_INV_BUFF_CTRL~q\,
	dataf => \ALT_INV_LessThan2~2_combout\,
	datag => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_entries\(0),
	combout => \test~0_combout\);

-- Location: FF_X31_Y14_N20
test : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \test~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \test~q\);

-- Location: FF_X31_Y14_N44
\SDRAM_WRITEDATA[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \SDRAM_WRITEDATA[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => SDRAM_WRITEDATA(0));

-- Location: LABCELL_X31_Y14_N42
\SDRAM_WRITEDATA[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \SDRAM_WRITEDATA[0]~0_combout\ = ( SDRAM_WRITEDATA(0) & ( (((\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entries\(1) & !\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entries\(0))) # 
-- (\BUFF_CTRL~q\)) # (\test~q\) ) ) # ( !SDRAM_WRITEDATA(0) & ( (\test~q\ & (!\BUFF_CTRL~q\ & ((!\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entries\(1)) # 
-- (\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entries\(0))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010100000000011101011111111101000101000000000111010111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_test~q\,
	datab => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_entries\(1),
	datac => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_entries\(0),
	datad => \ALT_INV_BUFF_CTRL~q\,
	datae => ALT_INV_SDRAM_WRITEDATA(0),
	combout => \SDRAM_WRITEDATA[0]~0_combout\);

-- Location: FF_X31_Y14_N43
\SDRAM_WRITEDATA[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \SDRAM_WRITEDATA[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SDRAM_WRITEDATA[0]~DUPLICATE_q\);

-- Location: FF_X31_Y13_N35
\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	asdata => \SDRAM_WRITEDATA[0]~DUPLICATE_q\,
	sload => VCC,
	ena => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1\(0));

-- Location: LABCELL_X31_Y14_N12
\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0[0]~feeder_combout\ = SDRAM_WRITEDATA(0)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_SDRAM_WRITEDATA(0),
	combout => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0[0]~feeder_combout\);

-- Location: FF_X31_Y14_N13
\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0[0]~feeder_combout\,
	ena => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0\(0));

-- Location: LABCELL_X31_Y13_N45
\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[0]~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[0]~26_combout\ = ( \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0\(0) & ( 
-- (!\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_address~DUPLICATE_q\) # (\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1\(0)) ) ) # ( 
-- !\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0\(0) & ( (\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_address~DUPLICATE_q\ & 
-- \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_rd_address~DUPLICATE_q\,
	datad => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_entry_1\(0),
	dataf => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_entry_0\(0),
	combout => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[0]~26_combout\);

-- Location: FF_X31_Y13_N44
\u0|new_sdram_controller_0|active_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	asdata => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[0]~26_combout\,
	sload => VCC,
	ena => \u0|new_sdram_controller_0|active_rnw~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|active_data\(0));

-- Location: FF_X29_Y13_N35
\u0|new_sdram_controller_0|m_data[0]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \u0|new_sdram_controller_0|Selector118~0_combout\,
	clrn => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|m_data[0]~_Duplicate_1_q\);

-- Location: LABCELL_X29_Y13_N33
\u0|new_sdram_controller_0|Selector118~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|Selector118~0_combout\ = ( \u0|new_sdram_controller_0|m_data[0]~_Duplicate_1_q\ & ( \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[0]~26_combout\ & ( 
-- ((!\u0|new_sdram_controller_0|m_state.000010000~DUPLICATE_q\ & (!\u0|new_sdram_controller_0|m_state.000000010~q\)) # (\u0|new_sdram_controller_0|m_state.000010000~DUPLICATE_q\ & ((\u0|new_sdram_controller_0|f_select~combout\)))) # 
-- (\u0|new_sdram_controller_0|active_data\(0)) ) ) ) # ( !\u0|new_sdram_controller_0|m_data[0]~_Duplicate_1_q\ & ( \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[0]~26_combout\ & ( 
-- (!\u0|new_sdram_controller_0|active_data\(0) & (((\u0|new_sdram_controller_0|m_state.000010000~DUPLICATE_q\ & \u0|new_sdram_controller_0|f_select~combout\)))) # (\u0|new_sdram_controller_0|active_data\(0) & 
-- (((\u0|new_sdram_controller_0|m_state.000010000~DUPLICATE_q\)) # (\u0|new_sdram_controller_0|m_state.000000010~q\))) ) ) ) # ( \u0|new_sdram_controller_0|m_data[0]~_Duplicate_1_q\ & ( 
-- !\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[0]~26_combout\ & ( (!\u0|new_sdram_controller_0|active_data\(0) & (!\u0|new_sdram_controller_0|m_state.000000010~q\ & 
-- (!\u0|new_sdram_controller_0|m_state.000010000~DUPLICATE_q\))) # (\u0|new_sdram_controller_0|active_data\(0) & (((!\u0|new_sdram_controller_0|m_state.000010000~DUPLICATE_q\) # (!\u0|new_sdram_controller_0|f_select~combout\)))) ) ) ) # ( 
-- !\u0|new_sdram_controller_0|m_data[0]~_Duplicate_1_q\ & ( !\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[0]~26_combout\ & ( (\u0|new_sdram_controller_0|active_data\(0) & 
-- ((!\u0|new_sdram_controller_0|m_state.000010000~DUPLICATE_q\ & (\u0|new_sdram_controller_0|m_state.000000010~q\)) # (\u0|new_sdram_controller_0|m_state.000010000~DUPLICATE_q\ & ((!\u0|new_sdram_controller_0|f_select~combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010100010000110101011101000000010101000111111101010111011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|new_sdram_controller_0|ALT_INV_active_data\(0),
	datab => \u0|new_sdram_controller_0|ALT_INV_m_state.000000010~q\,
	datac => \u0|new_sdram_controller_0|ALT_INV_m_state.000010000~DUPLICATE_q\,
	datad => \u0|new_sdram_controller_0|ALT_INV_f_select~combout\,
	datae => \u0|new_sdram_controller_0|ALT_INV_m_data[0]~_Duplicate_1_q\,
	dataf => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_rd_data[0]~26_combout\,
	combout => \u0|new_sdram_controller_0|Selector118~0_combout\);

-- Location: DDIOOUTCELL_X24_Y0_N61
\u0|new_sdram_controller_0|m_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \u0|new_sdram_controller_0|Selector118~0_combout\,
	clrn => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|m_data\(0));

-- Location: DDIOOECELL_X24_Y0_N56
\u0|new_sdram_controller_0|oe\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "high")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \u0|new_sdram_controller_0|ALT_INV_always5~0_combout\,
	asdata => VCC,
	aload => \u0|rst_controller|alt_rst_sync_uq1|ALT_INV_altera_reset_synchronizer_int_chain_out~q\,
	sload => \u0|new_sdram_controller_0|ALT_INV_m_state.000010000~DUPLICATE_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|oe~q\);

-- Location: FF_X29_Y13_N32
\u0|new_sdram_controller_0|m_data[1]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \u0|new_sdram_controller_0|Selector117~0_combout\,
	clrn => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|m_data[1]~_Duplicate_1_q\);

-- Location: LABCELL_X29_Y13_N30
\u0|new_sdram_controller_0|Selector117~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|Selector117~0_combout\ = ( \u0|new_sdram_controller_0|m_data[1]~_Duplicate_1_q\ & ( \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[0]~26_combout\ & ( 
-- ((!\u0|new_sdram_controller_0|m_state.000010000~DUPLICATE_q\ & (!\u0|new_sdram_controller_0|m_state.000000010~q\)) # (\u0|new_sdram_controller_0|m_state.000010000~DUPLICATE_q\ & ((\u0|new_sdram_controller_0|f_select~combout\)))) # 
-- (\u0|new_sdram_controller_0|active_data\(0)) ) ) ) # ( !\u0|new_sdram_controller_0|m_data[1]~_Duplicate_1_q\ & ( \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[0]~26_combout\ & ( 
-- (!\u0|new_sdram_controller_0|active_data\(0) & (((\u0|new_sdram_controller_0|f_select~combout\ & \u0|new_sdram_controller_0|m_state.000010000~DUPLICATE_q\)))) # (\u0|new_sdram_controller_0|active_data\(0) & 
-- (((\u0|new_sdram_controller_0|m_state.000010000~DUPLICATE_q\)) # (\u0|new_sdram_controller_0|m_state.000000010~q\))) ) ) ) # ( \u0|new_sdram_controller_0|m_data[1]~_Duplicate_1_q\ & ( 
-- !\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[0]~26_combout\ & ( (!\u0|new_sdram_controller_0|active_data\(0) & (!\u0|new_sdram_controller_0|m_state.000000010~q\ & 
-- ((!\u0|new_sdram_controller_0|m_state.000010000~DUPLICATE_q\)))) # (\u0|new_sdram_controller_0|active_data\(0) & (((!\u0|new_sdram_controller_0|f_select~combout\) # (!\u0|new_sdram_controller_0|m_state.000010000~DUPLICATE_q\)))) ) ) ) # ( 
-- !\u0|new_sdram_controller_0|m_data[1]~_Duplicate_1_q\ & ( !\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[0]~26_combout\ & ( (\u0|new_sdram_controller_0|active_data\(0) & 
-- ((!\u0|new_sdram_controller_0|m_state.000010000~DUPLICATE_q\ & (\u0|new_sdram_controller_0|m_state.000000010~q\)) # (\u0|new_sdram_controller_0|m_state.000010000~DUPLICATE_q\ & ((!\u0|new_sdram_controller_0|f_select~combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000101010000110111010101000000010001010111111101110101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|new_sdram_controller_0|ALT_INV_active_data\(0),
	datab => \u0|new_sdram_controller_0|ALT_INV_m_state.000000010~q\,
	datac => \u0|new_sdram_controller_0|ALT_INV_f_select~combout\,
	datad => \u0|new_sdram_controller_0|ALT_INV_m_state.000010000~DUPLICATE_q\,
	datae => \u0|new_sdram_controller_0|ALT_INV_m_data[1]~_Duplicate_1_q\,
	dataf => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_rd_data[0]~26_combout\,
	combout => \u0|new_sdram_controller_0|Selector117~0_combout\);

-- Location: DDIOOUTCELL_X26_Y0_N101
\u0|new_sdram_controller_0|m_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \u0|new_sdram_controller_0|Selector117~0_combout\,
	clrn => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|m_data\(1));

-- Location: DDIOOECELL_X26_Y0_N96
\u0|new_sdram_controller_0|oe~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "high")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \u0|new_sdram_controller_0|ALT_INV_always5~0_combout\,
	asdata => VCC,
	aload => \u0|rst_controller|alt_rst_sync_uq1|ALT_INV_altera_reset_synchronizer_int_chain_out~q\,
	sload => \u0|new_sdram_controller_0|ALT_INV_m_state.000010000~DUPLICATE_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|oe~_Duplicate_1_q\);

-- Location: FF_X31_Y13_N38
\u0|new_sdram_controller_0|m_data[2]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \u0|new_sdram_controller_0|Selector116~0_combout\,
	clrn => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|m_data[2]~_Duplicate_1_q\);

-- Location: LABCELL_X31_Y13_N36
\u0|new_sdram_controller_0|Selector116~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|Selector116~0_combout\ = ( \u0|new_sdram_controller_0|m_data[2]~_Duplicate_1_q\ & ( \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[0]~26_combout\ & ( 
-- ((!\u0|new_sdram_controller_0|m_state.000010000~DUPLICATE_q\ & (!\u0|new_sdram_controller_0|m_state.000000010~q\)) # (\u0|new_sdram_controller_0|m_state.000010000~DUPLICATE_q\ & ((\u0|new_sdram_controller_0|f_select~combout\)))) # 
-- (\u0|new_sdram_controller_0|active_data\(0)) ) ) ) # ( !\u0|new_sdram_controller_0|m_data[2]~_Duplicate_1_q\ & ( \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[0]~26_combout\ & ( 
-- (!\u0|new_sdram_controller_0|active_data\(0) & (((\u0|new_sdram_controller_0|f_select~combout\ & \u0|new_sdram_controller_0|m_state.000010000~DUPLICATE_q\)))) # (\u0|new_sdram_controller_0|active_data\(0) & 
-- (((\u0|new_sdram_controller_0|m_state.000010000~DUPLICATE_q\)) # (\u0|new_sdram_controller_0|m_state.000000010~q\))) ) ) ) # ( \u0|new_sdram_controller_0|m_data[2]~_Duplicate_1_q\ & ( 
-- !\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[0]~26_combout\ & ( (!\u0|new_sdram_controller_0|active_data\(0) & (!\u0|new_sdram_controller_0|m_state.000000010~q\ & 
-- ((!\u0|new_sdram_controller_0|m_state.000010000~DUPLICATE_q\)))) # (\u0|new_sdram_controller_0|active_data\(0) & (((!\u0|new_sdram_controller_0|f_select~combout\) # (!\u0|new_sdram_controller_0|m_state.000010000~DUPLICATE_q\)))) ) ) ) # ( 
-- !\u0|new_sdram_controller_0|m_data[2]~_Duplicate_1_q\ & ( !\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[0]~26_combout\ & ( (\u0|new_sdram_controller_0|active_data\(0) & 
-- ((!\u0|new_sdram_controller_0|m_state.000010000~DUPLICATE_q\ & (\u0|new_sdram_controller_0|m_state.000000010~q\)) # (\u0|new_sdram_controller_0|m_state.000010000~DUPLICATE_q\ & ((!\u0|new_sdram_controller_0|f_select~combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100110000101110110011000000010001001111111011101100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|new_sdram_controller_0|ALT_INV_m_state.000000010~q\,
	datab => \u0|new_sdram_controller_0|ALT_INV_active_data\(0),
	datac => \u0|new_sdram_controller_0|ALT_INV_f_select~combout\,
	datad => \u0|new_sdram_controller_0|ALT_INV_m_state.000010000~DUPLICATE_q\,
	datae => \u0|new_sdram_controller_0|ALT_INV_m_data[2]~_Duplicate_1_q\,
	dataf => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_rd_data[0]~26_combout\,
	combout => \u0|new_sdram_controller_0|Selector116~0_combout\);

-- Location: DDIOOUTCELL_X28_Y0_N44
\u0|new_sdram_controller_0|m_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \u0|new_sdram_controller_0|Selector116~0_combout\,
	clrn => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|m_data\(2));

-- Location: DDIOOECELL_X28_Y0_N39
\u0|new_sdram_controller_0|oe~_Duplicate_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "high")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \u0|new_sdram_controller_0|ALT_INV_always5~0_combout\,
	asdata => VCC,
	aload => \u0|rst_controller|alt_rst_sync_uq1|ALT_INV_altera_reset_synchronizer_int_chain_out~q\,
	sload => \u0|new_sdram_controller_0|ALT_INV_m_state.000010000~DUPLICATE_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|oe~_Duplicate_2_q\);

-- Location: FF_X31_Y13_N56
\u0|new_sdram_controller_0|m_data[3]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \u0|new_sdram_controller_0|Selector115~0_combout\,
	clrn => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|m_data[3]~_Duplicate_1_q\);

-- Location: LABCELL_X31_Y13_N54
\u0|new_sdram_controller_0|Selector115~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|Selector115~0_combout\ = ( \u0|new_sdram_controller_0|m_data[3]~_Duplicate_1_q\ & ( \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[0]~26_combout\ & ( 
-- ((!\u0|new_sdram_controller_0|m_state.000010000~DUPLICATE_q\ & (!\u0|new_sdram_controller_0|m_state.000000010~q\)) # (\u0|new_sdram_controller_0|m_state.000010000~DUPLICATE_q\ & ((\u0|new_sdram_controller_0|f_select~combout\)))) # 
-- (\u0|new_sdram_controller_0|active_data\(0)) ) ) ) # ( !\u0|new_sdram_controller_0|m_data[3]~_Duplicate_1_q\ & ( \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[0]~26_combout\ & ( 
-- (!\u0|new_sdram_controller_0|active_data\(0) & (((\u0|new_sdram_controller_0|f_select~combout\ & \u0|new_sdram_controller_0|m_state.000010000~DUPLICATE_q\)))) # (\u0|new_sdram_controller_0|active_data\(0) & 
-- (((\u0|new_sdram_controller_0|m_state.000010000~DUPLICATE_q\)) # (\u0|new_sdram_controller_0|m_state.000000010~q\))) ) ) ) # ( \u0|new_sdram_controller_0|m_data[3]~_Duplicate_1_q\ & ( 
-- !\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[0]~26_combout\ & ( (!\u0|new_sdram_controller_0|active_data\(0) & (!\u0|new_sdram_controller_0|m_state.000000010~q\ & 
-- ((!\u0|new_sdram_controller_0|m_state.000010000~DUPLICATE_q\)))) # (\u0|new_sdram_controller_0|active_data\(0) & (((!\u0|new_sdram_controller_0|f_select~combout\) # (!\u0|new_sdram_controller_0|m_state.000010000~DUPLICATE_q\)))) ) ) ) # ( 
-- !\u0|new_sdram_controller_0|m_data[3]~_Duplicate_1_q\ & ( !\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[0]~26_combout\ & ( (\u0|new_sdram_controller_0|active_data\(0) & 
-- ((!\u0|new_sdram_controller_0|m_state.000010000~DUPLICATE_q\ & (\u0|new_sdram_controller_0|m_state.000000010~q\)) # (\u0|new_sdram_controller_0|m_state.000010000~DUPLICATE_q\ & ((!\u0|new_sdram_controller_0|f_select~combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100110000101110110011000000010001001111111011101100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|new_sdram_controller_0|ALT_INV_m_state.000000010~q\,
	datab => \u0|new_sdram_controller_0|ALT_INV_active_data\(0),
	datac => \u0|new_sdram_controller_0|ALT_INV_f_select~combout\,
	datad => \u0|new_sdram_controller_0|ALT_INV_m_state.000010000~DUPLICATE_q\,
	datae => \u0|new_sdram_controller_0|ALT_INV_m_data[3]~_Duplicate_1_q\,
	dataf => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_rd_data[0]~26_combout\,
	combout => \u0|new_sdram_controller_0|Selector115~0_combout\);

-- Location: DDIOOUTCELL_X28_Y0_N61
\u0|new_sdram_controller_0|m_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \u0|new_sdram_controller_0|Selector115~0_combout\,
	clrn => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|m_data\(3));

-- Location: DDIOOECELL_X28_Y0_N56
\u0|new_sdram_controller_0|oe~_Duplicate_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "high")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \u0|new_sdram_controller_0|ALT_INV_always5~0_combout\,
	asdata => VCC,
	aload => \u0|rst_controller|alt_rst_sync_uq1|ALT_INV_altera_reset_synchronizer_int_chain_out~q\,
	sload => \u0|new_sdram_controller_0|ALT_INV_m_state.000010000~DUPLICATE_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|oe~_Duplicate_3_q\);

-- Location: FF_X31_Y13_N41
\u0|new_sdram_controller_0|m_data[4]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \u0|new_sdram_controller_0|Selector114~0_combout\,
	clrn => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|m_data[4]~_Duplicate_1_q\);

-- Location: LABCELL_X31_Y13_N39
\u0|new_sdram_controller_0|Selector114~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|Selector114~0_combout\ = ( \u0|new_sdram_controller_0|m_data[4]~_Duplicate_1_q\ & ( \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[0]~26_combout\ & ( 
-- ((!\u0|new_sdram_controller_0|m_state.000010000~DUPLICATE_q\ & (!\u0|new_sdram_controller_0|m_state.000000010~q\)) # (\u0|new_sdram_controller_0|m_state.000010000~DUPLICATE_q\ & ((\u0|new_sdram_controller_0|f_select~combout\)))) # 
-- (\u0|new_sdram_controller_0|active_data\(0)) ) ) ) # ( !\u0|new_sdram_controller_0|m_data[4]~_Duplicate_1_q\ & ( \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[0]~26_combout\ & ( 
-- (!\u0|new_sdram_controller_0|active_data\(0) & (((\u0|new_sdram_controller_0|m_state.000010000~DUPLICATE_q\ & \u0|new_sdram_controller_0|f_select~combout\)))) # (\u0|new_sdram_controller_0|active_data\(0) & 
-- (((\u0|new_sdram_controller_0|m_state.000010000~DUPLICATE_q\)) # (\u0|new_sdram_controller_0|m_state.000000010~q\))) ) ) ) # ( \u0|new_sdram_controller_0|m_data[4]~_Duplicate_1_q\ & ( 
-- !\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[0]~26_combout\ & ( (!\u0|new_sdram_controller_0|active_data\(0) & (!\u0|new_sdram_controller_0|m_state.000000010~q\ & 
-- (!\u0|new_sdram_controller_0|m_state.000010000~DUPLICATE_q\))) # (\u0|new_sdram_controller_0|active_data\(0) & (((!\u0|new_sdram_controller_0|m_state.000010000~DUPLICATE_q\) # (!\u0|new_sdram_controller_0|f_select~combout\)))) ) ) ) # ( 
-- !\u0|new_sdram_controller_0|m_data[4]~_Duplicate_1_q\ & ( !\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[0]~26_combout\ & ( (\u0|new_sdram_controller_0|active_data\(0) & 
-- ((!\u0|new_sdram_controller_0|m_state.000010000~DUPLICATE_q\ & (\u0|new_sdram_controller_0|m_state.000000010~q\)) # (\u0|new_sdram_controller_0|m_state.000010000~DUPLICATE_q\ & ((!\u0|new_sdram_controller_0|f_select~combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001100010000101100111011000000010011000111111011001110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|new_sdram_controller_0|ALT_INV_m_state.000000010~q\,
	datab => \u0|new_sdram_controller_0|ALT_INV_active_data\(0),
	datac => \u0|new_sdram_controller_0|ALT_INV_m_state.000010000~DUPLICATE_q\,
	datad => \u0|new_sdram_controller_0|ALT_INV_f_select~combout\,
	datae => \u0|new_sdram_controller_0|ALT_INV_m_data[4]~_Duplicate_1_q\,
	dataf => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_rd_data[0]~26_combout\,
	combout => \u0|new_sdram_controller_0|Selector114~0_combout\);

-- Location: DDIOOUTCELL_X30_Y0_N61
\u0|new_sdram_controller_0|m_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \u0|new_sdram_controller_0|Selector114~0_combout\,
	clrn => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|m_data\(4));

-- Location: DDIOOECELL_X30_Y0_N56
\u0|new_sdram_controller_0|oe~_Duplicate_4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "high")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \u0|new_sdram_controller_0|ALT_INV_always5~0_combout\,
	asdata => VCC,
	aload => \u0|rst_controller|alt_rst_sync_uq1|ALT_INV_altera_reset_synchronizer_int_chain_out~q\,
	sload => \u0|new_sdram_controller_0|ALT_INV_m_state.000010000~DUPLICATE_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|oe~_Duplicate_4_q\);

-- Location: FF_X31_Y13_N59
\u0|new_sdram_controller_0|m_data[5]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \u0|new_sdram_controller_0|Selector113~0_combout\,
	clrn => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|m_data[5]~_Duplicate_1_q\);

-- Location: LABCELL_X31_Y13_N57
\u0|new_sdram_controller_0|Selector113~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|Selector113~0_combout\ = ( \u0|new_sdram_controller_0|m_data[5]~_Duplicate_1_q\ & ( \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[0]~26_combout\ & ( 
-- ((!\u0|new_sdram_controller_0|m_state.000010000~DUPLICATE_q\ & (!\u0|new_sdram_controller_0|m_state.000000010~q\)) # (\u0|new_sdram_controller_0|m_state.000010000~DUPLICATE_q\ & ((\u0|new_sdram_controller_0|f_select~combout\)))) # 
-- (\u0|new_sdram_controller_0|active_data\(0)) ) ) ) # ( !\u0|new_sdram_controller_0|m_data[5]~_Duplicate_1_q\ & ( \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[0]~26_combout\ & ( 
-- (!\u0|new_sdram_controller_0|active_data\(0) & (((\u0|new_sdram_controller_0|m_state.000010000~DUPLICATE_q\ & \u0|new_sdram_controller_0|f_select~combout\)))) # (\u0|new_sdram_controller_0|active_data\(0) & 
-- (((\u0|new_sdram_controller_0|m_state.000010000~DUPLICATE_q\)) # (\u0|new_sdram_controller_0|m_state.000000010~q\))) ) ) ) # ( \u0|new_sdram_controller_0|m_data[5]~_Duplicate_1_q\ & ( 
-- !\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[0]~26_combout\ & ( (!\u0|new_sdram_controller_0|active_data\(0) & (!\u0|new_sdram_controller_0|m_state.000000010~q\ & 
-- (!\u0|new_sdram_controller_0|m_state.000010000~DUPLICATE_q\))) # (\u0|new_sdram_controller_0|active_data\(0) & (((!\u0|new_sdram_controller_0|m_state.000010000~DUPLICATE_q\) # (!\u0|new_sdram_controller_0|f_select~combout\)))) ) ) ) # ( 
-- !\u0|new_sdram_controller_0|m_data[5]~_Duplicate_1_q\ & ( !\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[0]~26_combout\ & ( (\u0|new_sdram_controller_0|active_data\(0) & 
-- ((!\u0|new_sdram_controller_0|m_state.000010000~DUPLICATE_q\ & (\u0|new_sdram_controller_0|m_state.000000010~q\)) # (\u0|new_sdram_controller_0|m_state.000010000~DUPLICATE_q\ & ((!\u0|new_sdram_controller_0|f_select~combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001100010000101100111011000000010011000111111011001110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|new_sdram_controller_0|ALT_INV_m_state.000000010~q\,
	datab => \u0|new_sdram_controller_0|ALT_INV_active_data\(0),
	datac => \u0|new_sdram_controller_0|ALT_INV_m_state.000010000~DUPLICATE_q\,
	datad => \u0|new_sdram_controller_0|ALT_INV_f_select~combout\,
	datae => \u0|new_sdram_controller_0|ALT_INV_m_data[5]~_Duplicate_1_q\,
	dataf => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_rd_data[0]~26_combout\,
	combout => \u0|new_sdram_controller_0|Selector113~0_combout\);

-- Location: DDIOOUTCELL_X18_Y0_N84
\u0|new_sdram_controller_0|m_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \u0|new_sdram_controller_0|Selector113~0_combout\,
	clrn => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|m_data\(5));

-- Location: DDIOOECELL_X18_Y0_N79
\u0|new_sdram_controller_0|oe~_Duplicate_5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "high")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \u0|new_sdram_controller_0|ALT_INV_always5~0_combout\,
	asdata => VCC,
	aload => \u0|rst_controller|alt_rst_sync_uq1|ALT_INV_altera_reset_synchronizer_int_chain_out~q\,
	sload => \u0|new_sdram_controller_0|ALT_INV_m_state.000010000~DUPLICATE_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|oe~_Duplicate_5_q\);

-- Location: FF_X31_Y13_N50
\u0|new_sdram_controller_0|m_data[6]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \u0|new_sdram_controller_0|Selector112~0_combout\,
	clrn => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|m_data[6]~_Duplicate_1_q\);

-- Location: LABCELL_X31_Y13_N48
\u0|new_sdram_controller_0|Selector112~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|Selector112~0_combout\ = ( \u0|new_sdram_controller_0|m_data[6]~_Duplicate_1_q\ & ( \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[0]~26_combout\ & ( 
-- ((!\u0|new_sdram_controller_0|m_state.000010000~DUPLICATE_q\ & (!\u0|new_sdram_controller_0|m_state.000000010~q\)) # (\u0|new_sdram_controller_0|m_state.000010000~DUPLICATE_q\ & ((\u0|new_sdram_controller_0|f_select~combout\)))) # 
-- (\u0|new_sdram_controller_0|active_data\(0)) ) ) ) # ( !\u0|new_sdram_controller_0|m_data[6]~_Duplicate_1_q\ & ( \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[0]~26_combout\ & ( 
-- (!\u0|new_sdram_controller_0|active_data\(0) & (((\u0|new_sdram_controller_0|f_select~combout\ & \u0|new_sdram_controller_0|m_state.000010000~DUPLICATE_q\)))) # (\u0|new_sdram_controller_0|active_data\(0) & 
-- (((\u0|new_sdram_controller_0|m_state.000010000~DUPLICATE_q\)) # (\u0|new_sdram_controller_0|m_state.000000010~q\))) ) ) ) # ( \u0|new_sdram_controller_0|m_data[6]~_Duplicate_1_q\ & ( 
-- !\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[0]~26_combout\ & ( (!\u0|new_sdram_controller_0|active_data\(0) & (!\u0|new_sdram_controller_0|m_state.000000010~q\ & 
-- ((!\u0|new_sdram_controller_0|m_state.000010000~DUPLICATE_q\)))) # (\u0|new_sdram_controller_0|active_data\(0) & (((!\u0|new_sdram_controller_0|f_select~combout\) # (!\u0|new_sdram_controller_0|m_state.000010000~DUPLICATE_q\)))) ) ) ) # ( 
-- !\u0|new_sdram_controller_0|m_data[6]~_Duplicate_1_q\ & ( !\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[0]~26_combout\ & ( (\u0|new_sdram_controller_0|active_data\(0) & 
-- ((!\u0|new_sdram_controller_0|m_state.000010000~DUPLICATE_q\ & (\u0|new_sdram_controller_0|m_state.000000010~q\)) # (\u0|new_sdram_controller_0|m_state.000010000~DUPLICATE_q\ & ((!\u0|new_sdram_controller_0|f_select~combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100110000101110110011000000010001001111111011101100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|new_sdram_controller_0|ALT_INV_m_state.000000010~q\,
	datab => \u0|new_sdram_controller_0|ALT_INV_active_data\(0),
	datac => \u0|new_sdram_controller_0|ALT_INV_f_select~combout\,
	datad => \u0|new_sdram_controller_0|ALT_INV_m_state.000010000~DUPLICATE_q\,
	datae => \u0|new_sdram_controller_0|ALT_INV_m_data[6]~_Duplicate_1_q\,
	dataf => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_rd_data[0]~26_combout\,
	combout => \u0|new_sdram_controller_0|Selector112~0_combout\);

-- Location: DDIOOUTCELL_X34_Y0_N67
\u0|new_sdram_controller_0|m_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \u0|new_sdram_controller_0|Selector112~0_combout\,
	clrn => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|m_data\(6));

-- Location: DDIOOECELL_X34_Y0_N62
\u0|new_sdram_controller_0|oe~_Duplicate_6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "high")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \u0|new_sdram_controller_0|ALT_INV_always5~0_combout\,
	asdata => VCC,
	aload => \u0|rst_controller|alt_rst_sync_uq1|ALT_INV_altera_reset_synchronizer_int_chain_out~q\,
	sload => \u0|new_sdram_controller_0|ALT_INV_m_state.000010000~DUPLICATE_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|oe~_Duplicate_6_q\);

-- Location: FF_X31_Y13_N53
\u0|new_sdram_controller_0|m_data[7]~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \u0|new_sdram_controller_0|Selector111~0_combout\,
	clrn => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|m_data[7]~_Duplicate_1_q\);

-- Location: LABCELL_X31_Y13_N51
\u0|new_sdram_controller_0|Selector111~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|Selector111~0_combout\ = ( \u0|new_sdram_controller_0|m_data[7]~_Duplicate_1_q\ & ( \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[0]~26_combout\ & ( 
-- ((!\u0|new_sdram_controller_0|m_state.000010000~DUPLICATE_q\ & (!\u0|new_sdram_controller_0|m_state.000000010~q\)) # (\u0|new_sdram_controller_0|m_state.000010000~DUPLICATE_q\ & ((\u0|new_sdram_controller_0|f_select~combout\)))) # 
-- (\u0|new_sdram_controller_0|active_data\(0)) ) ) ) # ( !\u0|new_sdram_controller_0|m_data[7]~_Duplicate_1_q\ & ( \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[0]~26_combout\ & ( 
-- (!\u0|new_sdram_controller_0|active_data\(0) & (((\u0|new_sdram_controller_0|m_state.000010000~DUPLICATE_q\ & \u0|new_sdram_controller_0|f_select~combout\)))) # (\u0|new_sdram_controller_0|active_data\(0) & 
-- (((\u0|new_sdram_controller_0|m_state.000010000~DUPLICATE_q\)) # (\u0|new_sdram_controller_0|m_state.000000010~q\))) ) ) ) # ( \u0|new_sdram_controller_0|m_data[7]~_Duplicate_1_q\ & ( 
-- !\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[0]~26_combout\ & ( (!\u0|new_sdram_controller_0|active_data\(0) & (!\u0|new_sdram_controller_0|m_state.000000010~q\ & 
-- (!\u0|new_sdram_controller_0|m_state.000010000~DUPLICATE_q\))) # (\u0|new_sdram_controller_0|active_data\(0) & (((!\u0|new_sdram_controller_0|m_state.000010000~DUPLICATE_q\) # (!\u0|new_sdram_controller_0|f_select~combout\)))) ) ) ) # ( 
-- !\u0|new_sdram_controller_0|m_data[7]~_Duplicate_1_q\ & ( !\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[0]~26_combout\ & ( (\u0|new_sdram_controller_0|active_data\(0) & 
-- ((!\u0|new_sdram_controller_0|m_state.000010000~DUPLICATE_q\ & (\u0|new_sdram_controller_0|m_state.000000010~q\)) # (\u0|new_sdram_controller_0|m_state.000010000~DUPLICATE_q\ & ((!\u0|new_sdram_controller_0|f_select~combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001100010000101100111011000000010011000111111011001110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|new_sdram_controller_0|ALT_INV_m_state.000000010~q\,
	datab => \u0|new_sdram_controller_0|ALT_INV_active_data\(0),
	datac => \u0|new_sdram_controller_0|ALT_INV_m_state.000010000~DUPLICATE_q\,
	datad => \u0|new_sdram_controller_0|ALT_INV_f_select~combout\,
	datae => \u0|new_sdram_controller_0|ALT_INV_m_data[7]~_Duplicate_1_q\,
	dataf => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_rd_data[0]~26_combout\,
	combout => \u0|new_sdram_controller_0|Selector111~0_combout\);

-- Location: DDIOOUTCELL_X34_Y0_N50
\u0|new_sdram_controller_0|m_data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \u0|new_sdram_controller_0|Selector111~0_combout\,
	clrn => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|m_data\(7));

-- Location: DDIOOECELL_X34_Y0_N45
\u0|new_sdram_controller_0|oe~_Duplicate_7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "high")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \u0|new_sdram_controller_0|ALT_INV_always5~0_combout\,
	asdata => VCC,
	aload => \u0|rst_controller|alt_rst_sync_uq1|ALT_INV_altera_reset_synchronizer_int_chain_out~q\,
	sload => \u0|new_sdram_controller_0|ALT_INV_m_state.000010000~DUPLICATE_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|oe~_Duplicate_7_q\);

-- Location: DDIOOECELL_X34_Y0_N79
\u0|new_sdram_controller_0|oe~_Duplicate_8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "high")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \u0|new_sdram_controller_0|ALT_INV_always5~0_combout\,
	asdata => VCC,
	aload => \u0|rst_controller|alt_rst_sync_uq1|ALT_INV_altera_reset_synchronizer_int_chain_out~q\,
	sload => \u0|new_sdram_controller_0|ALT_INV_m_state.000010000~DUPLICATE_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|oe~_Duplicate_8_q\);

-- Location: DDIOOECELL_X34_Y0_N96
\u0|new_sdram_controller_0|oe~_Duplicate_9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "high")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \u0|new_sdram_controller_0|ALT_INV_always5~0_combout\,
	asdata => VCC,
	aload => \u0|rst_controller|alt_rst_sync_uq1|ALT_INV_altera_reset_synchronizer_int_chain_out~q\,
	sload => \u0|new_sdram_controller_0|ALT_INV_m_state.000010000~DUPLICATE_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|oe~_Duplicate_9_q\);

-- Location: DDIOOECELL_X30_Y0_N39
\u0|new_sdram_controller_0|oe~_Duplicate_10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "high")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \u0|new_sdram_controller_0|ALT_INV_always5~0_combout\,
	asdata => VCC,
	aload => \u0|rst_controller|alt_rst_sync_uq1|ALT_INV_altera_reset_synchronizer_int_chain_out~q\,
	sload => \u0|new_sdram_controller_0|ALT_INV_m_state.000010000~DUPLICATE_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|oe~_Duplicate_10_q\);

-- Location: DDIOOECELL_X18_Y0_N96
\u0|new_sdram_controller_0|oe~_Duplicate_11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "high")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \u0|new_sdram_controller_0|ALT_INV_always5~0_combout\,
	asdata => VCC,
	aload => \u0|rst_controller|alt_rst_sync_uq1|ALT_INV_altera_reset_synchronizer_int_chain_out~q\,
	sload => \u0|new_sdram_controller_0|ALT_INV_m_state.000010000~DUPLICATE_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|oe~_Duplicate_11_q\);

-- Location: DDIOOECELL_X32_Y0_N56
\u0|new_sdram_controller_0|oe~_Duplicate_12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "high")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \u0|new_sdram_controller_0|ALT_INV_always5~0_combout\,
	asdata => VCC,
	aload => \u0|rst_controller|alt_rst_sync_uq1|ALT_INV_altera_reset_synchronizer_int_chain_out~q\,
	sload => \u0|new_sdram_controller_0|ALT_INV_m_state.000010000~DUPLICATE_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|oe~_Duplicate_12_q\);

-- Location: DDIOOECELL_X32_Y0_N39
\u0|new_sdram_controller_0|oe~_Duplicate_13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "high")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \u0|new_sdram_controller_0|ALT_INV_always5~0_combout\,
	asdata => VCC,
	aload => \u0|rst_controller|alt_rst_sync_uq1|ALT_INV_altera_reset_synchronizer_int_chain_out~q\,
	sload => \u0|new_sdram_controller_0|ALT_INV_m_state.000010000~DUPLICATE_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|oe~_Duplicate_13_q\);

-- Location: DDIOOECELL_X26_Y0_N79
\u0|new_sdram_controller_0|oe~_Duplicate_14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "high")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \u0|new_sdram_controller_0|ALT_INV_always5~0_combout\,
	asdata => VCC,
	aload => \u0|rst_controller|alt_rst_sync_uq1|ALT_INV_altera_reset_synchronizer_int_chain_out~q\,
	sload => \u0|new_sdram_controller_0|ALT_INV_m_state.000010000~DUPLICATE_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|oe~_Duplicate_14_q\);

-- Location: DDIOOECELL_X24_Y0_N39
\u0|new_sdram_controller_0|oe~_Duplicate_15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "high")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \u0|new_sdram_controller_0|ALT_INV_always5~0_combout\,
	asdata => VCC,
	aload => \u0|rst_controller|alt_rst_sync_uq1|ALT_INV_altera_reset_synchronizer_int_chain_out~q\,
	sload => \u0|new_sdram_controller_0|ALT_INV_m_state.000010000~DUPLICATE_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|oe~_Duplicate_15_q\);

-- Location: MLABCELL_X28_Y69_N36
\u1|LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|LessThan0~1_combout\ = ( !\u1|Equal3~0_combout\ & ( \u1|LessThan0~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u1|ALT_INV_LessThan0~0_combout\,
	dataf => \u1|ALT_INV_Equal3~0_combout\,
	combout => \u1|LessThan0~1_combout\);

-- Location: FF_X27_Y12_N31
RAMWE1 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	asdata => \u0|new_sdram_controller_0|za_valid~q\,
	sload => VCC,
	ena => \BUFF_CTRL~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAMWE1~q\);

-- Location: IOIBUF_X24_Y0_N52
\DRAM_DQ[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DRAM_DQ(0),
	o => \DRAM_DQ[0]~input_o\);

-- Location: DDIOINCELL_X24_Y0_N65
\u0|new_sdram_controller_0|za_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \DRAM_DQ[0]~input_o\,
	clrn => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|za_data\(0));

-- Location: LABCELL_X27_Y12_N39
\RAMIN1[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAMIN1[0]~feeder_combout\ = ( \u0|new_sdram_controller_0|za_data\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u0|new_sdram_controller_0|ALT_INV_za_data\(0),
	combout => \RAMIN1[0]~feeder_combout\);

-- Location: FF_X27_Y12_N40
\RAMIN1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \RAMIN1[0]~feeder_combout\,
	ena => \BUFF_CTRL~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RAMIN1(0));

-- Location: LABCELL_X36_Y14_N0
\RAMADDR2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAMADDR2~2_combout\ = ( RAMADDR2(0) & ( \Add11~1_sumout\ & ( (\VGABEGIN~q\ & ((!\RAMADDR2~1_combout\) # ((!\RAMADDR2~0_combout\) # (\process_1~0_combout\)))) ) ) ) # ( !RAMADDR2(0) & ( \Add11~1_sumout\ & ( (\VGABEGIN~q\ & (!\process_1~0_combout\ & 
-- ((!\RAMADDR2~1_combout\) # (!\RAMADDR2~0_combout\)))) ) ) ) # ( RAMADDR2(0) & ( !\Add11~1_sumout\ & ( (\VGABEGIN~q\ & \process_1~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000101010101010100000000000101010001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_VGABEGIN~q\,
	datab => \ALT_INV_RAMADDR2~1_combout\,
	datac => \ALT_INV_RAMADDR2~0_combout\,
	datad => \ALT_INV_process_1~0_combout\,
	datae => ALT_INV_RAMADDR2(0),
	dataf => \ALT_INV_Add11~1_sumout\,
	combout => \RAMADDR2~2_combout\);

-- Location: LABCELL_X36_Y14_N21
\RAMADDR2~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAMADDR2~3_combout\ = ( RAMADDR2(1) & ( \Add11~5_sumout\ & ( (\VGABEGIN~q\ & ((!\RAMADDR2~1_combout\) # ((!\RAMADDR2~0_combout\) # (\process_1~0_combout\)))) ) ) ) # ( !RAMADDR2(1) & ( \Add11~5_sumout\ & ( (\VGABEGIN~q\ & (!\process_1~0_combout\ & 
-- ((!\RAMADDR2~1_combout\) # (!\RAMADDR2~0_combout\)))) ) ) ) # ( RAMADDR2(1) & ( !\Add11~5_sumout\ & ( (\VGABEGIN~q\ & \process_1~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010000010101010000010000000101010101000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_VGABEGIN~q\,
	datab => \ALT_INV_RAMADDR2~1_combout\,
	datac => \ALT_INV_process_1~0_combout\,
	datad => \ALT_INV_RAMADDR2~0_combout\,
	datae => ALT_INV_RAMADDR2(1),
	dataf => \ALT_INV_Add11~5_sumout\,
	combout => \RAMADDR2~3_combout\);

-- Location: LABCELL_X36_Y14_N42
\RAMADDR2~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAMADDR2~4_combout\ = ( RAMADDR2(2) & ( \Add11~9_sumout\ & ( (\VGABEGIN~q\ & ((!\RAMADDR2~1_combout\) # ((!\RAMADDR2~0_combout\) # (\process_1~0_combout\)))) ) ) ) # ( !RAMADDR2(2) & ( \Add11~9_sumout\ & ( (\VGABEGIN~q\ & (!\process_1~0_combout\ & 
-- ((!\RAMADDR2~1_combout\) # (!\RAMADDR2~0_combout\)))) ) ) ) # ( RAMADDR2(2) & ( !\Add11~9_sumout\ & ( (\VGABEGIN~q\ & \process_1~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000101010101010100000000000101010001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_VGABEGIN~q\,
	datab => \ALT_INV_RAMADDR2~1_combout\,
	datac => \ALT_INV_RAMADDR2~0_combout\,
	datad => \ALT_INV_process_1~0_combout\,
	datae => ALT_INV_RAMADDR2(2),
	dataf => \ALT_INV_Add11~9_sumout\,
	combout => \RAMADDR2~4_combout\);

-- Location: LABCELL_X36_Y14_N45
\RAMADDR2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAMADDR2~5_combout\ = ( RAMADDR2(3) & ( \Add11~13_sumout\ & ( (\VGABEGIN~q\ & ((!\RAMADDR2~1_combout\) # ((!\RAMADDR2~0_combout\) # (\process_1~0_combout\)))) ) ) ) # ( !RAMADDR2(3) & ( \Add11~13_sumout\ & ( (\VGABEGIN~q\ & (!\process_1~0_combout\ & 
-- ((!\RAMADDR2~1_combout\) # (!\RAMADDR2~0_combout\)))) ) ) ) # ( RAMADDR2(3) & ( !\Add11~13_sumout\ & ( (\VGABEGIN~q\ & \process_1~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010000010101010000010000000101010101000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_VGABEGIN~q\,
	datab => \ALT_INV_RAMADDR2~1_combout\,
	datac => \ALT_INV_process_1~0_combout\,
	datad => \ALT_INV_RAMADDR2~0_combout\,
	datae => ALT_INV_RAMADDR2(3),
	dataf => \ALT_INV_Add11~13_sumout\,
	combout => \RAMADDR2~5_combout\);

-- Location: LABCELL_X36_Y14_N3
\RAMADDR2~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAMADDR2~6_combout\ = ( RAMADDR2(4) & ( \Add11~17_sumout\ & ( (\VGABEGIN~q\ & ((!\RAMADDR2~1_combout\) # ((!\RAMADDR2~0_combout\) # (\process_1~0_combout\)))) ) ) ) # ( !RAMADDR2(4) & ( \Add11~17_sumout\ & ( (\VGABEGIN~q\ & (!\process_1~0_combout\ & 
-- ((!\RAMADDR2~1_combout\) # (!\RAMADDR2~0_combout\)))) ) ) ) # ( RAMADDR2(4) & ( !\Add11~17_sumout\ & ( (\VGABEGIN~q\ & \process_1~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010000010101010000010000000101010101000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_VGABEGIN~q\,
	datab => \ALT_INV_RAMADDR2~1_combout\,
	datac => \ALT_INV_process_1~0_combout\,
	datad => \ALT_INV_RAMADDR2~0_combout\,
	datae => ALT_INV_RAMADDR2(4),
	dataf => \ALT_INV_Add11~17_sumout\,
	combout => \RAMADDR2~6_combout\);

-- Location: LABCELL_X36_Y14_N18
\RAMADDR2~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAMADDR2~7_combout\ = ( RAMADDR2(5) & ( \Add11~21_sumout\ & ( (\VGABEGIN~q\ & ((!\RAMADDR2~1_combout\) # ((!\RAMADDR2~0_combout\) # (\process_1~0_combout\)))) ) ) ) # ( !RAMADDR2(5) & ( \Add11~21_sumout\ & ( (\VGABEGIN~q\ & (!\process_1~0_combout\ & 
-- ((!\RAMADDR2~1_combout\) # (!\RAMADDR2~0_combout\)))) ) ) ) # ( RAMADDR2(5) & ( !\Add11~21_sumout\ & ( (\VGABEGIN~q\ & \process_1~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000101010101010100000000000101010001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_VGABEGIN~q\,
	datab => \ALT_INV_RAMADDR2~1_combout\,
	datac => \ALT_INV_RAMADDR2~0_combout\,
	datad => \ALT_INV_process_1~0_combout\,
	datae => ALT_INV_RAMADDR2(5),
	dataf => \ALT_INV_Add11~21_sumout\,
	combout => \RAMADDR2~7_combout\);

-- Location: LABCELL_X36_Y14_N9
\RAMADDR2~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAMADDR2~8_combout\ = ( RAMADDR2(6) & ( \Add11~25_sumout\ & ( (\VGABEGIN~q\ & ((!\RAMADDR2~1_combout\) # ((!\RAMADDR2~0_combout\) # (\process_1~0_combout\)))) ) ) ) # ( !RAMADDR2(6) & ( \Add11~25_sumout\ & ( (\VGABEGIN~q\ & (!\process_1~0_combout\ & 
-- ((!\RAMADDR2~1_combout\) # (!\RAMADDR2~0_combout\)))) ) ) ) # ( RAMADDR2(6) & ( !\Add11~25_sumout\ & ( (\VGABEGIN~q\ & \process_1~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001010000010101010000010000000101010101000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_VGABEGIN~q\,
	datab => \ALT_INV_RAMADDR2~1_combout\,
	datac => \ALT_INV_process_1~0_combout\,
	datad => \ALT_INV_RAMADDR2~0_combout\,
	datae => ALT_INV_RAMADDR2(6),
	dataf => \ALT_INV_Add11~25_sumout\,
	combout => \RAMADDR2~8_combout\);

-- Location: LABCELL_X36_Y14_N33
\RAMADDR2~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAMADDR2~9_combout\ = ( \RAMADDR2~0_combout\ & ( RAMADDR2(7) & ( (\VGABEGIN~q\ & (((\Add11~29_sumout\ & !\RAMADDR2~1_combout\)) # (\process_1~0_combout\))) ) ) ) # ( !\RAMADDR2~0_combout\ & ( RAMADDR2(7) & ( (\VGABEGIN~q\ & ((\process_1~0_combout\) # 
-- (\Add11~29_sumout\))) ) ) ) # ( \RAMADDR2~0_combout\ & ( !RAMADDR2(7) & ( (\Add11~29_sumout\ & (!\RAMADDR2~1_combout\ & (!\process_1~0_combout\ & \VGABEGIN~q\))) ) ) ) # ( !\RAMADDR2~0_combout\ & ( !RAMADDR2(7) & ( (\Add11~29_sumout\ & 
-- (!\process_1~0_combout\ & \VGABEGIN~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000000100000000000000010111110000000001001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Add11~29_sumout\,
	datab => \ALT_INV_RAMADDR2~1_combout\,
	datac => \ALT_INV_process_1~0_combout\,
	datad => \ALT_INV_VGABEGIN~q\,
	datae => \ALT_INV_RAMADDR2~0_combout\,
	dataf => ALT_INV_RAMADDR2(7),
	combout => \RAMADDR2~9_combout\);

-- Location: LABCELL_X36_Y14_N6
\RAMADDR2~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAMADDR2~10_combout\ = ( RAMADDR2(8) & ( \Add11~33_sumout\ & ( (\VGABEGIN~q\ & ((!\RAMADDR2~1_combout\) # ((!\RAMADDR2~0_combout\) # (\process_1~0_combout\)))) ) ) ) # ( !RAMADDR2(8) & ( \Add11~33_sumout\ & ( (\VGABEGIN~q\ & (!\process_1~0_combout\ & 
-- ((!\RAMADDR2~1_combout\) # (!\RAMADDR2~0_combout\)))) ) ) ) # ( RAMADDR2(8) & ( !\Add11~33_sumout\ & ( (\VGABEGIN~q\ & \process_1~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000101010101010100000000000101010001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_VGABEGIN~q\,
	datab => \ALT_INV_RAMADDR2~1_combout\,
	datac => \ALT_INV_RAMADDR2~0_combout\,
	datad => \ALT_INV_process_1~0_combout\,
	datae => ALT_INV_RAMADDR2(8),
	dataf => \ALT_INV_Add11~33_sumout\,
	combout => \RAMADDR2~10_combout\);

-- Location: IOIBUF_X26_Y0_N92
\DRAM_DQ[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DRAM_DQ(1),
	o => \DRAM_DQ[1]~input_o\);

-- Location: DDIOINCELL_X26_Y0_N105
\u0|new_sdram_controller_0|za_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \DRAM_DQ[1]~input_o\,
	clrn => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|za_data\(1));

-- Location: MLABCELL_X25_Y12_N36
\RAMIN1[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAMIN1[1]~feeder_combout\ = ( \u0|new_sdram_controller_0|za_data\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u0|new_sdram_controller_0|ALT_INV_za_data\(1),
	combout => \RAMIN1[1]~feeder_combout\);

-- Location: FF_X25_Y12_N37
\RAMIN1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \RAMIN1[1]~feeder_combout\,
	ena => \BUFF_CTRL~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RAMIN1(1));

-- Location: IOIBUF_X28_Y0_N35
\DRAM_DQ[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DRAM_DQ(2),
	o => \DRAM_DQ[2]~input_o\);

-- Location: DDIOINCELL_X28_Y0_N48
\u0|new_sdram_controller_0|za_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \DRAM_DQ[2]~input_o\,
	clrn => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|za_data\(2));

-- Location: MLABCELL_X25_Y12_N30
\RAMIN1[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAMIN1[2]~feeder_combout\ = ( \u0|new_sdram_controller_0|za_data\(2) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u0|new_sdram_controller_0|ALT_INV_za_data\(2),
	combout => \RAMIN1[2]~feeder_combout\);

-- Location: FF_X25_Y12_N32
\RAMIN1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \RAMIN1[2]~feeder_combout\,
	ena => \BUFF_CTRL~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RAMIN1(2));

-- Location: IOIBUF_X28_Y0_N52
\DRAM_DQ[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DRAM_DQ(3),
	o => \DRAM_DQ[3]~input_o\);

-- Location: DDIOINCELL_X28_Y0_N65
\u0|new_sdram_controller_0|za_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \DRAM_DQ[3]~input_o\,
	clrn => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|za_data\(3));

-- Location: FF_X28_Y12_N5
\RAMIN1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	asdata => \u0|new_sdram_controller_0|za_data\(3),
	sload => VCC,
	ena => \BUFF_CTRL~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RAMIN1(3));

-- Location: IOIBUF_X30_Y0_N52
\DRAM_DQ[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DRAM_DQ(4),
	o => \DRAM_DQ[4]~input_o\);

-- Location: DDIOINCELL_X30_Y0_N65
\u0|new_sdram_controller_0|za_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \DRAM_DQ[4]~input_o\,
	clrn => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|za_data\(4));

-- Location: LABCELL_X31_Y10_N57
\RAMIN1[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAMIN1[4]~feeder_combout\ = ( \u0|new_sdram_controller_0|za_data\(4) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u0|new_sdram_controller_0|ALT_INV_za_data\(4),
	combout => \RAMIN1[4]~feeder_combout\);

-- Location: FF_X31_Y10_N58
\RAMIN1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \RAMIN1[4]~feeder_combout\,
	ena => \BUFF_CTRL~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RAMIN1(4));

-- Location: IOIBUF_X18_Y0_N75
\DRAM_DQ[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DRAM_DQ(5),
	o => \DRAM_DQ[5]~input_o\);

-- Location: DDIOINCELL_X18_Y0_N88
\u0|new_sdram_controller_0|za_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \DRAM_DQ[5]~input_o\,
	clrn => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|za_data\(5));

-- Location: MLABCELL_X25_Y12_N3
\RAMIN1[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAMIN1[5]~feeder_combout\ = ( \u0|new_sdram_controller_0|za_data\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u0|new_sdram_controller_0|ALT_INV_za_data\(5),
	combout => \RAMIN1[5]~feeder_combout\);

-- Location: FF_X25_Y12_N5
\RAMIN1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \RAMIN1[5]~feeder_combout\,
	ena => \BUFF_CTRL~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RAMIN1(5));

-- Location: IOIBUF_X34_Y0_N58
\DRAM_DQ[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DRAM_DQ(6),
	o => \DRAM_DQ[6]~input_o\);

-- Location: DDIOINCELL_X34_Y0_N71
\u0|new_sdram_controller_0|za_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \DRAM_DQ[6]~input_o\,
	clrn => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|za_data\(6));

-- Location: FF_X31_Y11_N58
\RAMIN1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	asdata => \u0|new_sdram_controller_0|za_data\(6),
	sload => VCC,
	ena => \BUFF_CTRL~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RAMIN1(6));

-- Location: IOIBUF_X34_Y0_N41
\DRAM_DQ[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DRAM_DQ(7),
	o => \DRAM_DQ[7]~input_o\);

-- Location: DDIOINCELL_X34_Y0_N54
\u0|new_sdram_controller_0|za_data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \DRAM_DQ[7]~input_o\,
	clrn => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|za_data\(7));

-- Location: MLABCELL_X34_Y11_N15
\RAMIN1[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAMIN1[7]~feeder_combout\ = ( \u0|new_sdram_controller_0|za_data\(7) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u0|new_sdram_controller_0|ALT_INV_za_data\(7),
	combout => \RAMIN1[7]~feeder_combout\);

-- Location: FF_X34_Y11_N16
\RAMIN1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \RAMIN1[7]~feeder_combout\,
	ena => \BUFF_CTRL~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => RAMIN1(7));

-- Location: M10K_X26_Y12_N0
\u3|ram_rtl_0|auto_generated|ram_block1a0\ : cyclonev_ram_block
-- pragma translate_off
GENERIC MAP (
	clk0_core_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "true_dual_port_ram_dual_clock:u3|altsyncram:ram_rtl_0|altsyncram_4gi1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 9,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 20,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 511,
	port_a_logical_ram_depth => 512,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_no_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 9,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock1",
	port_b_data_width => 20,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 511,
	port_b_logical_ram_depth => 512,
	port_b_logical_ram_width => 8,
	port_b_read_during_write_mode => "new_data_no_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M20K")
-- pragma translate_on
PORT MAP (
	portawe => \RAMWE1~q\,
	portbre => VCC,
	clk0 => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	clk1 => \u0|pll_0|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	ena0 => \RAMWE1~q\,
	portadatain => \u3|ram_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \u3|ram_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \u3|ram_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \u3|ram_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: MLABCELL_X34_Y13_N45
\GREEN[3]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \GREEN[3]~0_combout\ = ( \u1|ACTVID~q\ & ( \Equal2~2_combout\ & ( (!\Equal2~0_combout\) # ((!\Equal2~1_combout\) # (!\VGABEGIN~q\)) ) ) ) # ( !\u1|ACTVID~q\ & ( \Equal2~2_combout\ & ( !\VGABEGIN~q\ ) ) ) # ( \u1|ACTVID~q\ & ( !\Equal2~2_combout\ ) ) # ( 
-- !\u1|ACTVID~q\ & ( !\Equal2~2_combout\ & ( !\VGABEGIN~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111111111111111111111000000001111111111111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_Equal2~0_combout\,
	datac => \ALT_INV_Equal2~1_combout\,
	datad => \ALT_INV_VGABEGIN~q\,
	datae => \u1|ALT_INV_ACTVID~q\,
	dataf => \ALT_INV_Equal2~2_combout\,
	combout => \GREEN[3]~0_combout\);

-- Location: FF_X30_Y80_N41
\GREEN[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \u3|ram_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	sclr => \process_1~0_combout\,
	sload => VCC,
	ena => \GREEN[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => GREEN(0));

-- Location: LABCELL_X30_Y80_N39
\u1|B_OUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|B_OUT~0_combout\ = ( GREEN(0) & ( \u1|ACTVID~0_combout\ & ( (!\u1|Xpos\(10) & (((!\u1|Xpos\(8)) # (!\u1|Xpos\(9))) # (\u1|LessThan0~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001100110011000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_LessThan0~1_combout\,
	datab => \u1|ALT_INV_Xpos\(10),
	datac => \u1|ALT_INV_Xpos\(8),
	datad => \u1|ALT_INV_Xpos\(9),
	datae => ALT_INV_GREEN(0),
	dataf => \u1|ALT_INV_ACTVID~0_combout\,
	combout => \u1|B_OUT~0_combout\);

-- Location: FF_X30_Y80_N25
\u1|B_OUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \u1|B_OUT~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|B_OUT\(0));

-- Location: FF_X30_Y80_N34
\GREEN[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \u3|ram_rtl_0|auto_generated|ram_block1a1\,
	sclr => \process_1~0_combout\,
	sload => VCC,
	ena => \GREEN[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => GREEN(1));

-- Location: LABCELL_X30_Y80_N21
\u1|B_OUT~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|B_OUT~1_combout\ = ( GREEN(1) & ( \u1|ACTVID~0_combout\ & ( (!\u1|Xpos\(10) & ((!\u1|Xpos\(9)) # ((!\u1|Xpos\(8)) # (\u1|LessThan0~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001100100011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_Xpos\(9),
	datab => \u1|ALT_INV_Xpos\(10),
	datac => \u1|ALT_INV_Xpos\(8),
	datad => \u1|ALT_INV_LessThan0~1_combout\,
	datae => ALT_INV_GREEN(1),
	dataf => \u1|ALT_INV_ACTVID~0_combout\,
	combout => \u1|B_OUT~1_combout\);

-- Location: FF_X28_Y80_N49
\u1|B_OUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \u1|B_OUT~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|B_OUT\(1));

-- Location: FF_X30_Y80_N17
\GREEN[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \u3|ram_rtl_0|auto_generated|ram_block1a2\,
	sclr => \process_1~0_combout\,
	sload => VCC,
	ena => \GREEN[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => GREEN(2));

-- Location: LABCELL_X30_Y80_N15
\u1|B_OUT~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|B_OUT~2_combout\ = ( GREEN(2) & ( \u1|ACTVID~0_combout\ & ( (!\u1|Xpos\(10) & (((!\u1|Xpos\(8)) # (!\u1|Xpos\(9))) # (\u1|LessThan0~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001100110011000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_LessThan0~1_combout\,
	datab => \u1|ALT_INV_Xpos\(10),
	datac => \u1|ALT_INV_Xpos\(8),
	datad => \u1|ALT_INV_Xpos\(9),
	datae => ALT_INV_GREEN(2),
	dataf => \u1|ALT_INV_ACTVID~0_combout\,
	combout => \u1|B_OUT~2_combout\);

-- Location: LABCELL_X30_Y80_N9
\u1|B_OUT[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|B_OUT[2]~feeder_combout\ = ( \u1|B_OUT~2_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u1|ALT_INV_B_OUT~2_combout\,
	combout => \u1|B_OUT[2]~feeder_combout\);

-- Location: FF_X30_Y80_N10
\u1|B_OUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \u1|B_OUT[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|B_OUT\(2));

-- Location: FF_X30_Y80_N20
\GREEN[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \u3|ram_rtl_0|auto_generated|ram_block1a3\,
	sclr => \process_1~0_combout\,
	sload => VCC,
	ena => \GREEN[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => GREEN(3));

-- Location: LABCELL_X30_Y80_N18
\u1|B_OUT~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|B_OUT~3_combout\ = ( GREEN(3) & ( \u1|ACTVID~0_combout\ & ( (!\u1|Xpos\(10) & ((!\u1|Xpos\(9)) # ((!\u1|Xpos\(8)) # (\u1|LessThan0~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001100110010001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_Xpos\(9),
	datab => \u1|ALT_INV_Xpos\(10),
	datac => \u1|ALT_INV_LessThan0~1_combout\,
	datad => \u1|ALT_INV_Xpos\(8),
	datae => ALT_INV_GREEN(3),
	dataf => \u1|ALT_INV_ACTVID~0_combout\,
	combout => \u1|B_OUT~3_combout\);

-- Location: LABCELL_X29_Y80_N24
\u1|B_OUT[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|B_OUT[3]~feeder_combout\ = ( \u1|B_OUT~3_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u1|ALT_INV_B_OUT~3_combout\,
	combout => \u1|B_OUT[3]~feeder_combout\);

-- Location: FF_X29_Y80_N25
\u1|B_OUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \u1|B_OUT[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|B_OUT\(3));

-- Location: FF_X33_Y80_N40
\GREEN[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \u3|ram_rtl_0|auto_generated|ram_block1a4\,
	sclr => \process_1~0_combout\,
	sload => VCC,
	ena => \GREEN[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => GREEN(4));

-- Location: LABCELL_X30_Y80_N48
\u1|B_OUT~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|B_OUT~4_combout\ = ( \u1|Xpos\(9) & ( \u1|ACTVID~0_combout\ & ( (GREEN(4) & (!\u1|Xpos\(10) & ((!\u1|Xpos\(8)) # (\u1|LessThan0~1_combout\)))) ) ) ) # ( !\u1|Xpos\(9) & ( \u1|ACTVID~0_combout\ & ( (GREEN(4) & !\u1|Xpos\(10)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000000000000110100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_LessThan0~1_combout\,
	datab => \u1|ALT_INV_Xpos\(8),
	datac => ALT_INV_GREEN(4),
	datad => \u1|ALT_INV_Xpos\(10),
	datae => \u1|ALT_INV_Xpos\(9),
	dataf => \u1|ALT_INV_ACTVID~0_combout\,
	combout => \u1|B_OUT~4_combout\);

-- Location: FF_X29_Y80_N8
\u1|B_OUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \u1|B_OUT~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|B_OUT\(4));

-- Location: FF_X30_Y80_N38
\GREEN[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \u3|ram_rtl_0|auto_generated|ram_block1a5\,
	sclr => \process_1~0_combout\,
	sload => VCC,
	ena => \GREEN[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => GREEN(5));

-- Location: LABCELL_X30_Y80_N36
\u1|B_OUT~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|B_OUT~5_combout\ = ( GREEN(5) & ( \u1|ACTVID~0_combout\ & ( (!\u1|Xpos\(10) & (((!\u1|Xpos\(9)) # (!\u1|Xpos\(8))) # (\u1|LessThan0~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001100110011000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_LessThan0~1_combout\,
	datab => \u1|ALT_INV_Xpos\(10),
	datac => \u1|ALT_INV_Xpos\(9),
	datad => \u1|ALT_INV_Xpos\(8),
	datae => ALT_INV_GREEN(5),
	dataf => \u1|ALT_INV_ACTVID~0_combout\,
	combout => \u1|B_OUT~5_combout\);

-- Location: FF_X29_Y80_N37
\u1|B_OUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \u1|B_OUT~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|B_OUT\(5));

-- Location: FF_X30_Y80_N14
\GREEN[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \u3|ram_rtl_0|auto_generated|ram_block1a6\,
	sclr => \process_1~0_combout\,
	sload => VCC,
	ena => \GREEN[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => GREEN(6));

-- Location: LABCELL_X30_Y80_N12
\u1|B_OUT~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|B_OUT~6_combout\ = ( GREEN(6) & ( \u1|ACTVID~0_combout\ & ( (!\u1|Xpos\(10) & (((!\u1|Xpos\(9)) # (!\u1|Xpos\(8))) # (\u1|LessThan0~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001100110011000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_LessThan0~1_combout\,
	datab => \u1|ALT_INV_Xpos\(10),
	datac => \u1|ALT_INV_Xpos\(9),
	datad => \u1|ALT_INV_Xpos\(8),
	datae => ALT_INV_GREEN(6),
	dataf => \u1|ALT_INV_ACTVID~0_combout\,
	combout => \u1|B_OUT~6_combout\);

-- Location: LABCELL_X29_Y80_N18
\u1|B_OUT[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|B_OUT[6]~feeder_combout\ = ( \u1|B_OUT~6_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u1|ALT_INV_B_OUT~6_combout\,
	combout => \u1|B_OUT[6]~feeder_combout\);

-- Location: FF_X29_Y80_N19
\u1|B_OUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \u1|B_OUT[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|B_OUT\(6));

-- Location: FF_X30_Y80_N32
\BLUE[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \u3|ram_rtl_0|auto_generated|ram_block1a7\,
	sclr => \process_1~0_combout\,
	sload => VCC,
	ena => \GREEN[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => BLUE(7));

-- Location: LABCELL_X30_Y80_N30
\u1|B_OUT~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|B_OUT~7_combout\ = ( BLUE(7) & ( \u1|Xpos\(8) & ( (\u1|ACTVID~0_combout\ & (!\u1|Xpos\(10) & ((!\u1|Xpos\(9)) # (\u1|LessThan0~1_combout\)))) ) ) ) # ( BLUE(7) & ( !\u1|Xpos\(8) & ( (\u1|ACTVID~0_combout\ & !\u1|Xpos\(10)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010000000000000000000000000101000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_ACTVID~0_combout\,
	datab => \u1|ALT_INV_LessThan0~1_combout\,
	datac => \u1|ALT_INV_Xpos\(9),
	datad => \u1|ALT_INV_Xpos\(10),
	datae => ALT_INV_BLUE(7),
	dataf => \u1|ALT_INV_Xpos\(8),
	combout => \u1|B_OUT~7_combout\);

-- Location: LABCELL_X29_Y80_N0
\u1|B_OUT[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|B_OUT[7]~feeder_combout\ = ( \u1|B_OUT~7_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u1|ALT_INV_B_OUT~7_combout\,
	combout => \u1|B_OUT[7]~feeder_combout\);

-- Location: FF_X29_Y80_N1
\u1|B_OUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \u1|B_OUT[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|B_OUT\(7));

-- Location: LABCELL_X30_Y80_N27
\u1|G_OUT[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|G_OUT[0]~feeder_combout\ = ( \u1|B_OUT~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u1|ALT_INV_B_OUT~0_combout\,
	combout => \u1|G_OUT[0]~feeder_combout\);

-- Location: FF_X30_Y80_N28
\u1|G_OUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \u1|G_OUT[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|G_OUT\(0));

-- Location: LABCELL_X33_Y80_N57
\u1|G_OUT[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|G_OUT[1]~feeder_combout\ = ( \u1|B_OUT~1_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u1|ALT_INV_B_OUT~1_combout\,
	combout => \u1|G_OUT[1]~feeder_combout\);

-- Location: FF_X33_Y80_N58
\u1|G_OUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \u1|G_OUT[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|G_OUT\(1));

-- Location: FF_X30_Y80_N7
\u1|G_OUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \u1|B_OUT~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|G_OUT\(2));

-- Location: LABCELL_X29_Y80_N33
\u1|G_OUT[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|G_OUT[3]~feeder_combout\ = ( \u1|B_OUT~3_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u1|ALT_INV_B_OUT~3_combout\,
	combout => \u1|G_OUT[3]~feeder_combout\);

-- Location: FF_X29_Y80_N34
\u1|G_OUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \u1|G_OUT[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|G_OUT\(3));

-- Location: FF_X29_Y80_N52
\u1|G_OUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \u1|B_OUT~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|G_OUT\(4));

-- Location: FF_X29_Y80_N46
\u1|G_OUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \u1|B_OUT~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|G_OUT\(5));

-- Location: LABCELL_X29_Y80_N15
\u1|G_OUT[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|G_OUT[6]~feeder_combout\ = ( \u1|B_OUT~6_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u1|ALT_INV_B_OUT~6_combout\,
	combout => \u1|G_OUT[6]~feeder_combout\);

-- Location: FF_X29_Y80_N16
\u1|G_OUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \u1|G_OUT[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|G_OUT\(6));

-- Location: LABCELL_X29_Y80_N57
\u1|G_OUT[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|G_OUT[7]~feeder_combout\ = ( \u1|B_OUT~7_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u1|ALT_INV_B_OUT~7_combout\,
	combout => \u1|G_OUT[7]~feeder_combout\);

-- Location: FF_X29_Y80_N58
\u1|G_OUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \u1|G_OUT[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|G_OUT\(7));

-- Location: LABCELL_X30_Y80_N0
\u1|R_OUT[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|R_OUT[0]~feeder_combout\ = ( \u1|B_OUT~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u1|ALT_INV_B_OUT~0_combout\,
	combout => \u1|R_OUT[0]~feeder_combout\);

-- Location: FF_X30_Y80_N1
\u1|R_OUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \u1|R_OUT[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|R_OUT\(0));

-- Location: FF_X30_Y80_N4
\u1|R_OUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \u1|B_OUT~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|R_OUT\(1));

-- Location: LABCELL_X30_Y80_N42
\u1|R_OUT[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|R_OUT[2]~feeder_combout\ = ( \u1|B_OUT~2_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u1|ALT_INV_B_OUT~2_combout\,
	combout => \u1|R_OUT[2]~feeder_combout\);

-- Location: FF_X30_Y80_N43
\u1|R_OUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \u1|R_OUT[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|R_OUT\(2));

-- Location: LABCELL_X30_Y80_N45
\u1|R_OUT[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|R_OUT[3]~feeder_combout\ = ( \u1|B_OUT~3_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u1|ALT_INV_B_OUT~3_combout\,
	combout => \u1|R_OUT[3]~feeder_combout\);

-- Location: FF_X30_Y80_N46
\u1|R_OUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \u1|R_OUT[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|R_OUT\(3));

-- Location: FF_X30_Y80_N49
\u1|R_OUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \u1|B_OUT~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|R_OUT\(4));

-- Location: FF_X30_Y80_N52
\u1|R_OUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	asdata => \u1|B_OUT~5_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|R_OUT\(5));

-- Location: LABCELL_X30_Y80_N54
\u1|R_OUT[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|R_OUT[6]~feeder_combout\ = ( \u1|B_OUT~6_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u1|ALT_INV_B_OUT~6_combout\,
	combout => \u1|R_OUT[6]~feeder_combout\);

-- Location: FF_X30_Y80_N56
\u1|R_OUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \u1|R_OUT[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|R_OUT\(6));

-- Location: LABCELL_X30_Y80_N57
\u1|R_OUT[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|R_OUT[7]~feeder_combout\ = ( \u1|B_OUT~7_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \u1|ALT_INV_B_OUT~7_combout\,
	combout => \u1|R_OUT[7]~feeder_combout\);

-- Location: FF_X30_Y80_N58
\u1|R_OUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \u1|R_OUT[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|R_OUT\(7));

-- Location: LABCELL_X29_Y65_N36
\u1|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|process_0~0_combout\ = ( \u1|Xpos\(5) & ( (!\u1|Equal3~1_combout\) # ((!\u1|Xpos\(6) & ((!\u1|Xpos\(4)))) # (\u1|Xpos\(6) & (\u1|Equal3~0_combout\))) ) ) # ( !\u1|Xpos\(5) & ( (!\u1|Equal3~1_combout\) # (!\u1|Xpos\(6)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101011111010111110101111101011111011101010111111101110101011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_Equal3~1_combout\,
	datab => \u1|ALT_INV_Equal3~0_combout\,
	datac => \u1|ALT_INV_Xpos\(6),
	datad => \u1|ALT_INV_Xpos\(4),
	dataf => \u1|ALT_INV_Xpos\(5),
	combout => \u1|process_0~0_combout\);

-- Location: FF_X29_Y65_N37
\u1|VGAHS\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \u1|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|VGAHS~q\);

-- Location: FF_X27_Y13_N7
\u1|Ypos[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \u1|Add1~37_sumout\,
	sclr => \u1|Equal0~1_combout\,
	ena => \u1|Ypos[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|Ypos[2]~DUPLICATE_q\);

-- Location: MLABCELL_X25_Y13_N36
\u1|process_0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u1|process_0~1_combout\ = ( \u1|Ypos\(1) & ( \u1|Ypos\(0) & ( (!\u1|Ypos[3]~DUPLICATE_q\) # (((!\u1|Equal0~0_combout\) # (\u1|Ypos[2]~DUPLICATE_q\)) # (\u1|Ypos\(5))) ) ) ) # ( !\u1|Ypos\(1) & ( \u1|Ypos\(0) ) ) # ( \u1|Ypos\(1) & ( !\u1|Ypos\(0) & ( 
-- (!\u1|Ypos[3]~DUPLICATE_q\) # (((!\u1|Equal0~0_combout\) # (\u1|Ypos[2]~DUPLICATE_q\)) # (\u1|Ypos\(5))) ) ) ) # ( !\u1|Ypos\(1) & ( !\u1|Ypos\(0) & ( (!\u1|Ypos[3]~DUPLICATE_q\) # (((!\u1|Ypos[2]~DUPLICATE_q\) # (!\u1|Equal0~0_combout\)) # 
-- (\u1|Ypos\(5))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111011111111111011111111111111111111111111111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u1|ALT_INV_Ypos[3]~DUPLICATE_q\,
	datab => \u1|ALT_INV_Ypos\(5),
	datac => \u1|ALT_INV_Ypos[2]~DUPLICATE_q\,
	datad => \u1|ALT_INV_Equal0~0_combout\,
	datae => \u1|ALT_INV_Ypos\(1),
	dataf => \u1|ALT_INV_Ypos\(0),
	combout => \u1|process_0~1_combout\);

-- Location: FF_X25_Y13_N37
\u1|VGAVS\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[0]~CLKENA0_outclk\,
	d => \u1|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u1|VGAVS~q\);

-- Location: FF_X29_Y11_N23
\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	asdata => SDRAM_ADDR(0),
	sload => VCC,
	ena => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0\(18));

-- Location: FF_X30_Y11_N26
\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	asdata => SDRAM_ADDR(0),
	sload => VCC,
	ena => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1\(18));

-- Location: LABCELL_X29_Y11_N0
\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[18]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[18]~2_combout\ = (!\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_address~DUPLICATE_q\ & 
-- (\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0\(18))) # (\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_address~DUPLICATE_q\ & 
-- ((\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1\(18))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001110111010001000111011101000100011101110100010001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_entry_0\(18),
	datab => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_rd_address~DUPLICATE_q\,
	datad => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_entry_1\(18),
	combout => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[18]~2_combout\);

-- Location: FF_X29_Y11_N1
\u0|new_sdram_controller_0|active_addr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[18]~2_combout\,
	ena => \u0|new_sdram_controller_0|active_rnw~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|active_addr\(0));

-- Location: FF_X29_Y11_N14
\u0|new_sdram_controller_0|i_addr[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	asdata => \u0|new_sdram_controller_0|i_state.111~q\,
	clrn => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|i_addr\(12));

-- Location: LABCELL_X30_Y13_N42
\u0|new_sdram_controller_0|m_addr[6]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|m_addr[6]~1_combout\ = ( \u0|new_sdram_controller_0|f_select~combout\ & ( (!\u0|new_sdram_controller_0|m_addr~0_combout\) # (\u0|new_sdram_controller_0|m_state.000000010~q\) ) ) # ( !\u0|new_sdram_controller_0|f_select~combout\ 
-- & ( (\u0|new_sdram_controller_0|m_state.000000010~q\ & \u0|new_sdram_controller_0|m_addr~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000111111111111000011111111111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u0|new_sdram_controller_0|ALT_INV_m_state.000000010~q\,
	datad => \u0|new_sdram_controller_0|ALT_INV_m_addr~0_combout\,
	dataf => \u0|new_sdram_controller_0|ALT_INV_f_select~combout\,
	combout => \u0|new_sdram_controller_0|m_addr[6]~1_combout\);

-- Location: LABCELL_X29_Y11_N15
\u0|new_sdram_controller_0|Selector100~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|Selector100~0_combout\ = ( \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[18]~2_combout\ & ( \u0|new_sdram_controller_0|m_addr[6]~1_combout\ & ( 
-- (!\u0|new_sdram_controller_0|m_addr~0_combout\) # (\u0|new_sdram_controller_0|active_addr\(11)) ) ) ) # ( !\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[18]~2_combout\ & ( 
-- \u0|new_sdram_controller_0|m_addr[6]~1_combout\ & ( (\u0|new_sdram_controller_0|active_addr\(11) & \u0|new_sdram_controller_0|m_addr~0_combout\) ) ) ) # ( 
-- \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[18]~2_combout\ & ( !\u0|new_sdram_controller_0|m_addr[6]~1_combout\ & ( (!\u0|new_sdram_controller_0|m_addr~0_combout\ & (\u0|new_sdram_controller_0|active_addr\(0))) 
-- # (\u0|new_sdram_controller_0|m_addr~0_combout\ & ((!\u0|new_sdram_controller_0|i_addr\(12)))) ) ) ) # ( !\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[18]~2_combout\ & ( 
-- !\u0|new_sdram_controller_0|m_addr[6]~1_combout\ & ( (!\u0|new_sdram_controller_0|m_addr~0_combout\ & (\u0|new_sdram_controller_0|active_addr\(0))) # (\u0|new_sdram_controller_0|m_addr~0_combout\ & ((!\u0|new_sdram_controller_0|i_addr\(12)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101010000010111110101000000000011000000111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|new_sdram_controller_0|ALT_INV_active_addr\(0),
	datab => \u0|new_sdram_controller_0|ALT_INV_active_addr\(11),
	datac => \u0|new_sdram_controller_0|ALT_INV_m_addr~0_combout\,
	datad => \u0|new_sdram_controller_0|ALT_INV_i_addr\(12),
	datae => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_rd_data[18]~2_combout\,
	dataf => \u0|new_sdram_controller_0|ALT_INV_m_addr[6]~1_combout\,
	combout => \u0|new_sdram_controller_0|Selector100~0_combout\);

-- Location: LABCELL_X31_Y10_N39
\u0|new_sdram_controller_0|m_addr[6]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|m_addr[6]~2_combout\ = ( !\u0|new_sdram_controller_0|m_state.100000000~q\ & ( !\u0|new_sdram_controller_0|m_state.000000100~q\ & ( (!\u0|new_sdram_controller_0|m_state.010000000~q\ & 
-- (!\u0|new_sdram_controller_0|Selector31~0_combout\ & !\u0|new_sdram_controller_0|m_state.000100000~q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|new_sdram_controller_0|ALT_INV_m_state.010000000~q\,
	datab => \u0|new_sdram_controller_0|ALT_INV_Selector31~0_combout\,
	datac => \u0|new_sdram_controller_0|ALT_INV_m_state.000100000~q\,
	datae => \u0|new_sdram_controller_0|ALT_INV_m_state.100000000~q\,
	dataf => \u0|new_sdram_controller_0|ALT_INV_m_state.000000100~q\,
	combout => \u0|new_sdram_controller_0|m_addr[6]~2_combout\);

-- Location: DDIOOUTCELL_X40_Y0_N61
\u0|new_sdram_controller_0|m_addr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \u0|new_sdram_controller_0|Selector100~0_combout\,
	asdata => VCC,
	clrn => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	sload => \u0|new_sdram_controller_0|m_state.001000000~q\,
	ena => \u0|new_sdram_controller_0|m_addr[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|m_addr\(0));

-- Location: FF_X29_Y13_N20
\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	asdata => SDRAM_ADDR(1),
	sload => VCC,
	ena => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0\(19));

-- Location: FF_X29_Y13_N2
\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	asdata => SDRAM_ADDR(1),
	sload => VCC,
	ena => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1\(19));

-- Location: LABCELL_X29_Y13_N36
\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[19]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[19]~3_combout\ = ( \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_address~DUPLICATE_q\ & ( 
-- \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1\(19) ) ) # ( !\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_address~DUPLICATE_q\ & ( 
-- \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0\(19) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_entry_0\(19),
	datad => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_entry_1\(19),
	dataf => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_rd_address~DUPLICATE_q\,
	combout => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[19]~3_combout\);

-- Location: FF_X30_Y12_N17
\u0|new_sdram_controller_0|active_addr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	asdata => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[19]~3_combout\,
	sload => VCC,
	ena => \u0|new_sdram_controller_0|active_rnw~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|active_addr\(1));

-- Location: LABCELL_X30_Y12_N18
\u0|new_sdram_controller_0|Selector99~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|Selector99~0_combout\ = ( \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[19]~3_combout\ & ( \u0|new_sdram_controller_0|m_addr[6]~1_combout\ & ( 
-- (!\u0|new_sdram_controller_0|m_addr~0_combout\) # (\u0|new_sdram_controller_0|active_addr\(12)) ) ) ) # ( !\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[19]~3_combout\ & ( 
-- \u0|new_sdram_controller_0|m_addr[6]~1_combout\ & ( (\u0|new_sdram_controller_0|m_addr~0_combout\ & \u0|new_sdram_controller_0|active_addr\(12)) ) ) ) # ( 
-- \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[19]~3_combout\ & ( !\u0|new_sdram_controller_0|m_addr[6]~1_combout\ & ( (!\u0|new_sdram_controller_0|m_addr~0_combout\ & (\u0|new_sdram_controller_0|active_addr\(1))) 
-- # (\u0|new_sdram_controller_0|m_addr~0_combout\ & ((!\u0|new_sdram_controller_0|i_addr\(12)))) ) ) ) # ( !\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[19]~3_combout\ & ( 
-- !\u0|new_sdram_controller_0|m_addr[6]~1_combout\ & ( (!\u0|new_sdram_controller_0|m_addr~0_combout\ & (\u0|new_sdram_controller_0|active_addr\(1))) # (\u0|new_sdram_controller_0|m_addr~0_combout\ & ((!\u0|new_sdram_controller_0|i_addr\(12)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111001001110010011100100111001000000000010101011010101011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|new_sdram_controller_0|ALT_INV_m_addr~0_combout\,
	datab => \u0|new_sdram_controller_0|ALT_INV_active_addr\(1),
	datac => \u0|new_sdram_controller_0|ALT_INV_i_addr\(12),
	datad => \u0|new_sdram_controller_0|ALT_INV_active_addr\(12),
	datae => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_rd_data[19]~3_combout\,
	dataf => \u0|new_sdram_controller_0|ALT_INV_m_addr[6]~1_combout\,
	combout => \u0|new_sdram_controller_0|Selector99~0_combout\);

-- Location: DDIOOUTCELL_X30_Y0_N27
\u0|new_sdram_controller_0|m_addr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \u0|new_sdram_controller_0|Selector99~0_combout\,
	asdata => VCC,
	clrn => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	sload => \u0|new_sdram_controller_0|m_state.001000000~q\,
	ena => \u0|new_sdram_controller_0|m_addr[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|m_addr\(1));

-- Location: FF_X30_Y13_N40
\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	asdata => SDRAM_ADDR(2),
	sload => VCC,
	ena => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1\(20));

-- Location: FF_X29_Y11_N59
\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	asdata => SDRAM_ADDR(2),
	sload => VCC,
	ena => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0\(20));

-- Location: LABCELL_X29_Y11_N3
\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[20]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[20]~4_combout\ = ( \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0\(20) & ( 
-- (!\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_address~DUPLICATE_q\) # (\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1\(20)) ) ) # ( 
-- !\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0\(20) & ( (\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_address~DUPLICATE_q\ & 
-- \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1\(20)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110011000000000011001111001100111111111100110011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_rd_address~DUPLICATE_q\,
	datad => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_entry_1\(20),
	dataf => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_entry_0\(20),
	combout => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[20]~4_combout\);

-- Location: FF_X29_Y11_N4
\u0|new_sdram_controller_0|active_addr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[20]~4_combout\,
	ena => \u0|new_sdram_controller_0|active_rnw~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|active_addr\(2));

-- Location: FF_X30_Y12_N49
\u0|new_sdram_controller_0|active_addr[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[31]~19_combout\,
	ena => \u0|new_sdram_controller_0|active_rnw~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|active_addr\(13));

-- Location: LABCELL_X29_Y11_N57
\u0|new_sdram_controller_0|Selector98~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|Selector98~0_combout\ = ( \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[20]~4_combout\ & ( \u0|new_sdram_controller_0|m_addr[6]~1_combout\ & ( 
-- (!\u0|new_sdram_controller_0|m_addr~0_combout\) # (\u0|new_sdram_controller_0|active_addr\(13)) ) ) ) # ( !\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[20]~4_combout\ & ( 
-- \u0|new_sdram_controller_0|m_addr[6]~1_combout\ & ( (\u0|new_sdram_controller_0|active_addr\(13) & \u0|new_sdram_controller_0|m_addr~0_combout\) ) ) ) # ( 
-- \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[20]~4_combout\ & ( !\u0|new_sdram_controller_0|m_addr[6]~1_combout\ & ( (!\u0|new_sdram_controller_0|m_addr~0_combout\ & (\u0|new_sdram_controller_0|active_addr\(2))) 
-- # (\u0|new_sdram_controller_0|m_addr~0_combout\ & ((!\u0|new_sdram_controller_0|i_addr\(12)))) ) ) ) # ( !\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[20]~4_combout\ & ( 
-- !\u0|new_sdram_controller_0|m_addr[6]~1_combout\ & ( (!\u0|new_sdram_controller_0|m_addr~0_combout\ & (\u0|new_sdram_controller_0|active_addr\(2))) # (\u0|new_sdram_controller_0|m_addr~0_combout\ & ((!\u0|new_sdram_controller_0|i_addr\(12)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101010000010111110101000000000011000000111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|new_sdram_controller_0|ALT_INV_active_addr\(2),
	datab => \u0|new_sdram_controller_0|ALT_INV_active_addr\(13),
	datac => \u0|new_sdram_controller_0|ALT_INV_m_addr~0_combout\,
	datad => \u0|new_sdram_controller_0|ALT_INV_i_addr\(12),
	datae => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_rd_data[20]~4_combout\,
	dataf => \u0|new_sdram_controller_0|ALT_INV_m_addr[6]~1_combout\,
	combout => \u0|new_sdram_controller_0|Selector98~0_combout\);

-- Location: DDIOOUTCELL_X38_Y0_N10
\u0|new_sdram_controller_0|m_addr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \u0|new_sdram_controller_0|Selector98~0_combout\,
	asdata => VCC,
	clrn => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	sload => \u0|new_sdram_controller_0|m_state.001000000~q\,
	ena => \u0|new_sdram_controller_0|m_addr[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|m_addr\(2));

-- Location: FF_X30_Y11_N29
\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	asdata => SDRAM_ADDR(3),
	sload => VCC,
	ena => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1\(21));

-- Location: FF_X29_Y11_N10
\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	asdata => SDRAM_ADDR(3),
	sload => VCC,
	ena => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0\(21));

-- Location: LABCELL_X29_Y11_N24
\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[21]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[21]~5_combout\ = ( \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_address~DUPLICATE_q\ & ( 
-- \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1\(21) ) ) # ( !\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_address~DUPLICATE_q\ & ( 
-- \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0\(21) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_entry_1\(21),
	datad => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_entry_0\(21),
	dataf => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_rd_address~DUPLICATE_q\,
	combout => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[21]~5_combout\);

-- Location: FF_X29_Y11_N25
\u0|new_sdram_controller_0|active_addr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[21]~5_combout\,
	ena => \u0|new_sdram_controller_0|active_rnw~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|active_addr\(3));

-- Location: LABCELL_X29_Y11_N6
\u0|new_sdram_controller_0|Selector97~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|Selector97~0_combout\ = ( \u0|new_sdram_controller_0|active_addr\(14) & ( \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[21]~5_combout\ & ( ((!\u0|new_sdram_controller_0|m_addr~0_combout\ 
-- & ((\u0|new_sdram_controller_0|active_addr\(3)))) # (\u0|new_sdram_controller_0|m_addr~0_combout\ & (!\u0|new_sdram_controller_0|i_addr\(12)))) # (\u0|new_sdram_controller_0|m_addr[6]~1_combout\) ) ) ) # ( !\u0|new_sdram_controller_0|active_addr\(14) & ( 
-- \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[21]~5_combout\ & ( (!\u0|new_sdram_controller_0|m_addr[6]~1_combout\ & ((!\u0|new_sdram_controller_0|m_addr~0_combout\ & 
-- ((\u0|new_sdram_controller_0|active_addr\(3)))) # (\u0|new_sdram_controller_0|m_addr~0_combout\ & (!\u0|new_sdram_controller_0|i_addr\(12))))) # (\u0|new_sdram_controller_0|m_addr[6]~1_combout\ & (((!\u0|new_sdram_controller_0|m_addr~0_combout\)))) ) ) ) 
-- # ( \u0|new_sdram_controller_0|active_addr\(14) & ( !\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[21]~5_combout\ & ( (!\u0|new_sdram_controller_0|m_addr[6]~1_combout\ & 
-- ((!\u0|new_sdram_controller_0|m_addr~0_combout\ & ((\u0|new_sdram_controller_0|active_addr\(3)))) # (\u0|new_sdram_controller_0|m_addr~0_combout\ & (!\u0|new_sdram_controller_0|i_addr\(12))))) # (\u0|new_sdram_controller_0|m_addr[6]~1_combout\ & 
-- (((\u0|new_sdram_controller_0|m_addr~0_combout\)))) ) ) ) # ( !\u0|new_sdram_controller_0|active_addr\(14) & ( !\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[21]~5_combout\ & ( 
-- (!\u0|new_sdram_controller_0|m_addr[6]~1_combout\ & ((!\u0|new_sdram_controller_0|m_addr~0_combout\ & ((\u0|new_sdram_controller_0|active_addr\(3)))) # (\u0|new_sdram_controller_0|m_addr~0_combout\ & (!\u0|new_sdram_controller_0|i_addr\(12))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000010100000001100001010111100111111101000000011111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|new_sdram_controller_0|ALT_INV_i_addr\(12),
	datab => \u0|new_sdram_controller_0|ALT_INV_active_addr\(3),
	datac => \u0|new_sdram_controller_0|ALT_INV_m_addr[6]~1_combout\,
	datad => \u0|new_sdram_controller_0|ALT_INV_m_addr~0_combout\,
	datae => \u0|new_sdram_controller_0|ALT_INV_active_addr\(14),
	dataf => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_rd_data[21]~5_combout\,
	combout => \u0|new_sdram_controller_0|Selector97~0_combout\);

-- Location: DDIOOUTCELL_X24_Y0_N27
\u0|new_sdram_controller_0|m_addr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \u0|new_sdram_controller_0|Selector97~0_combout\,
	asdata => VCC,
	clrn => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	sload => \u0|new_sdram_controller_0|m_state.001000000~q\,
	ena => \u0|new_sdram_controller_0|m_addr[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|m_addr\(3));

-- Location: LABCELL_X30_Y11_N0
\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0[22]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0[22]~feeder_combout\ = SDRAM_ADDR(4)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_SDRAM_ADDR(4),
	combout => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0[22]~feeder_combout\);

-- Location: FF_X30_Y11_N1
\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0[22]~feeder_combout\,
	ena => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0\(22));

-- Location: LABCELL_X30_Y11_N6
\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1[22]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1[22]~feeder_combout\ = SDRAM_ADDR(4)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_SDRAM_ADDR(4),
	combout => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1[22]~feeder_combout\);

-- Location: FF_X30_Y11_N7
\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1[22]~feeder_combout\,
	ena => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1\(22));

-- Location: LABCELL_X29_Y12_N9
\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[22]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[22]~6_combout\ = (!\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_address~DUPLICATE_q\ & 
-- (\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0\(22))) # (\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_address~DUPLICATE_q\ & 
-- ((\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1\(22))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101001011111000010100101111100001010010111110000101001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_rd_address~DUPLICATE_q\,
	datac => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_entry_0\(22),
	datad => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_entry_1\(22),
	combout => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[22]~6_combout\);

-- Location: FF_X29_Y12_N10
\u0|new_sdram_controller_0|active_addr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[22]~6_combout\,
	ena => \u0|new_sdram_controller_0|active_rnw~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|active_addr\(4));

-- Location: LABCELL_X30_Y12_N6
\u0|new_sdram_controller_0|Selector96~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|Selector96~0_combout\ = ( \u0|new_sdram_controller_0|f_select~combout\ & ( (\u0|new_sdram_controller_0|m_addr~0_combout\ & \u0|new_sdram_controller_0|m_state.000000010~q\) ) ) # ( !\u0|new_sdram_controller_0|f_select~combout\ & 
-- ( (!\u0|new_sdram_controller_0|m_addr~0_combout\) # (\u0|new_sdram_controller_0|m_state.000000010~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011111111111100001111111100000000000011110000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u0|new_sdram_controller_0|ALT_INV_m_addr~0_combout\,
	datad => \u0|new_sdram_controller_0|ALT_INV_m_state.000000010~q\,
	dataf => \u0|new_sdram_controller_0|ALT_INV_f_select~combout\,
	combout => \u0|new_sdram_controller_0|Selector96~0_combout\);

-- Location: LABCELL_X29_Y12_N12
\u0|new_sdram_controller_0|Selector96~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|Selector96~1_combout\ = ( \u0|new_sdram_controller_0|Selector96~0_combout\ & ( \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[22]~6_combout\ & ( 
-- ((!\u0|new_sdram_controller_0|m_addr[6]~1_combout\ & ((\u0|new_sdram_controller_0|active_addr\(4)))) # (\u0|new_sdram_controller_0|m_addr[6]~1_combout\ & (\u0|new_sdram_controller_0|active_addr\(15)))) # (\u0|new_sdram_controller_0|m_state.001000000~q\) ) 
-- ) ) # ( !\u0|new_sdram_controller_0|Selector96~0_combout\ & ( \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[22]~6_combout\ ) ) # ( \u0|new_sdram_controller_0|Selector96~0_combout\ & ( 
-- !\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[22]~6_combout\ & ( ((!\u0|new_sdram_controller_0|m_addr[6]~1_combout\ & ((\u0|new_sdram_controller_0|active_addr\(4)))) # 
-- (\u0|new_sdram_controller_0|m_addr[6]~1_combout\ & (\u0|new_sdram_controller_0|active_addr\(15)))) # (\u0|new_sdram_controller_0|m_state.001000000~q\) ) ) ) # ( !\u0|new_sdram_controller_0|Selector96~0_combout\ & ( 
-- !\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[22]~6_combout\ & ( (!\u0|new_sdram_controller_0|m_addr[6]~1_combout\) # (\u0|new_sdram_controller_0|m_state.001000000~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111101010101010111110111011111111111111111110101111101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|new_sdram_controller_0|ALT_INV_m_state.001000000~q\,
	datab => \u0|new_sdram_controller_0|ALT_INV_active_addr\(15),
	datac => \u0|new_sdram_controller_0|ALT_INV_active_addr\(4),
	datad => \u0|new_sdram_controller_0|ALT_INV_m_addr[6]~1_combout\,
	datae => \u0|new_sdram_controller_0|ALT_INV_Selector96~0_combout\,
	dataf => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_rd_data[22]~6_combout\,
	combout => \u0|new_sdram_controller_0|Selector96~1_combout\);

-- Location: DDIOOUTCELL_X28_Y0_N10
\u0|new_sdram_controller_0|m_addr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \u0|new_sdram_controller_0|Selector96~1_combout\,
	clrn => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	ena => \u0|new_sdram_controller_0|m_addr[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|m_addr\(4));

-- Location: FF_X30_Y11_N5
\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	asdata => SDRAM_ADDR(5),
	sload => VCC,
	ena => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0\(23));

-- Location: FF_X30_Y12_N47
\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	asdata => SDRAM_ADDR(5),
	sload => VCC,
	ena => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1\(23));

-- Location: LABCELL_X29_Y12_N48
\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[23]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[23]~7_combout\ = ( \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1\(23) & ( 
-- (\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0\(23)) # (\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_address~DUPLICATE_q\) ) ) # ( 
-- !\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1\(23) & ( (!\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_address~DUPLICATE_q\ & 
-- \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0\(23)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_rd_address~DUPLICATE_q\,
	datac => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_entry_0\(23),
	dataf => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_entry_1\(23),
	combout => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[23]~7_combout\);

-- Location: FF_X29_Y12_N7
\u0|new_sdram_controller_0|active_addr[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	asdata => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[23]~7_combout\,
	sload => VCC,
	ena => \u0|new_sdram_controller_0|active_rnw~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|active_addr\(5));

-- Location: LABCELL_X29_Y12_N54
\u0|new_sdram_controller_0|Selector95~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|Selector95~0_combout\ = ( \u0|new_sdram_controller_0|Selector96~0_combout\ & ( \u0|new_sdram_controller_0|m_addr[6]~1_combout\ & ( (\u0|new_sdram_controller_0|active_addr\(16)) # (\u0|new_sdram_controller_0|m_state.001000000~q\) 
-- ) ) ) # ( !\u0|new_sdram_controller_0|Selector96~0_combout\ & ( \u0|new_sdram_controller_0|m_addr[6]~1_combout\ & ( (\u0|new_sdram_controller_0|m_state.001000000~q\) # 
-- (\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[23]~7_combout\) ) ) ) # ( \u0|new_sdram_controller_0|Selector96~0_combout\ & ( !\u0|new_sdram_controller_0|m_addr[6]~1_combout\ & ( 
-- (\u0|new_sdram_controller_0|active_addr\(5)) # (\u0|new_sdram_controller_0|m_state.001000000~q\) ) ) ) # ( !\u0|new_sdram_controller_0|Selector96~0_combout\ & ( !\u0|new_sdram_controller_0|m_addr[6]~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111001100111111111101110111011101110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_rd_data[23]~7_combout\,
	datab => \u0|new_sdram_controller_0|ALT_INV_m_state.001000000~q\,
	datac => \u0|new_sdram_controller_0|ALT_INV_active_addr\(16),
	datad => \u0|new_sdram_controller_0|ALT_INV_active_addr\(5),
	datae => \u0|new_sdram_controller_0|ALT_INV_Selector96~0_combout\,
	dataf => \u0|new_sdram_controller_0|ALT_INV_m_addr[6]~1_combout\,
	combout => \u0|new_sdram_controller_0|Selector95~0_combout\);

-- Location: DDIOOUTCELL_X28_Y0_N27
\u0|new_sdram_controller_0|m_addr[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \u0|new_sdram_controller_0|Selector95~0_combout\,
	clrn => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	ena => \u0|new_sdram_controller_0|m_addr[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|m_addr\(5));

-- Location: FF_X29_Y11_N53
\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	asdata => SDRAM_ADDR(6),
	sload => VCC,
	ena => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0\(24));

-- Location: LABCELL_X30_Y11_N9
\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1[24]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1[24]~feeder_combout\ = SDRAM_ADDR(6)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_SDRAM_ADDR(6),
	combout => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1[24]~feeder_combout\);

-- Location: FF_X30_Y11_N11
\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1[24]~feeder_combout\,
	ena => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1\(24));

-- Location: LABCELL_X29_Y11_N27
\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[24]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[24]~8_combout\ = (!\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_address~DUPLICATE_q\ & 
-- (\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0\(24))) # (\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_address~DUPLICATE_q\ & 
-- ((\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1\(24))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011101000111010001110100011101000111010001110100011101000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_entry_0\(24),
	datab => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_rd_address~DUPLICATE_q\,
	datac => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_entry_1\(24),
	combout => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[24]~8_combout\);

-- Location: FF_X29_Y11_N29
\u0|new_sdram_controller_0|active_addr[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[24]~8_combout\,
	ena => \u0|new_sdram_controller_0|active_rnw~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|active_addr\(6));

-- Location: LABCELL_X29_Y11_N48
\u0|new_sdram_controller_0|Selector94~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|Selector94~0_combout\ = ( \u0|new_sdram_controller_0|active_addr\(17) & ( \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[24]~8_combout\ & ( ((!\u0|new_sdram_controller_0|m_addr~0_combout\ 
-- & ((\u0|new_sdram_controller_0|active_addr\(6)))) # (\u0|new_sdram_controller_0|m_addr~0_combout\ & (!\u0|new_sdram_controller_0|i_addr\(12)))) # (\u0|new_sdram_controller_0|m_addr[6]~1_combout\) ) ) ) # ( !\u0|new_sdram_controller_0|active_addr\(17) & ( 
-- \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[24]~8_combout\ & ( (!\u0|new_sdram_controller_0|m_addr[6]~1_combout\ & ((!\u0|new_sdram_controller_0|m_addr~0_combout\ & 
-- ((\u0|new_sdram_controller_0|active_addr\(6)))) # (\u0|new_sdram_controller_0|m_addr~0_combout\ & (!\u0|new_sdram_controller_0|i_addr\(12))))) # (\u0|new_sdram_controller_0|m_addr[6]~1_combout\ & (((!\u0|new_sdram_controller_0|m_addr~0_combout\)))) ) ) ) 
-- # ( \u0|new_sdram_controller_0|active_addr\(17) & ( !\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[24]~8_combout\ & ( (!\u0|new_sdram_controller_0|m_addr[6]~1_combout\ & 
-- ((!\u0|new_sdram_controller_0|m_addr~0_combout\ & ((\u0|new_sdram_controller_0|active_addr\(6)))) # (\u0|new_sdram_controller_0|m_addr~0_combout\ & (!\u0|new_sdram_controller_0|i_addr\(12))))) # (\u0|new_sdram_controller_0|m_addr[6]~1_combout\ & 
-- (((\u0|new_sdram_controller_0|m_addr~0_combout\)))) ) ) ) # ( !\u0|new_sdram_controller_0|active_addr\(17) & ( !\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[24]~8_combout\ & ( 
-- (!\u0|new_sdram_controller_0|m_addr[6]~1_combout\ & ((!\u0|new_sdram_controller_0|m_addr~0_combout\ & ((\u0|new_sdram_controller_0|active_addr\(6)))) # (\u0|new_sdram_controller_0|m_addr~0_combout\ & (!\u0|new_sdram_controller_0|i_addr\(12))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000010100000001100001010111100111111101000000011111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|new_sdram_controller_0|ALT_INV_i_addr\(12),
	datab => \u0|new_sdram_controller_0|ALT_INV_active_addr\(6),
	datac => \u0|new_sdram_controller_0|ALT_INV_m_addr[6]~1_combout\,
	datad => \u0|new_sdram_controller_0|ALT_INV_m_addr~0_combout\,
	datae => \u0|new_sdram_controller_0|ALT_INV_active_addr\(17),
	dataf => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_rd_data[24]~8_combout\,
	combout => \u0|new_sdram_controller_0|Selector94~0_combout\);

-- Location: DDIOOUTCELL_X24_Y0_N10
\u0|new_sdram_controller_0|m_addr[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \u0|new_sdram_controller_0|Selector94~0_combout\,
	asdata => VCC,
	clrn => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	sload => \u0|new_sdram_controller_0|m_state.001000000~q\,
	ena => \u0|new_sdram_controller_0|m_addr[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|m_addr\(6));

-- Location: FF_X30_Y11_N23
\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	asdata => SDRAM_ADDR(7),
	sload => VCC,
	ena => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1\(25));

-- Location: FF_X30_Y11_N53
\SDRAM_ADDR[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \Add6~89_sumout\,
	sclr => \SDRAM_ADDR[24]~0_combout\,
	ena => \ALT_INV_SDRAM_ADDR[24]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SDRAM_ADDR[7]~DUPLICATE_q\);

-- Location: LABCELL_X30_Y11_N12
\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0[25]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0[25]~feeder_combout\ = \SDRAM_ADDR[7]~DUPLICATE_q\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_SDRAM_ADDR[7]~DUPLICATE_q\,
	combout => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0[25]~feeder_combout\);

-- Location: FF_X30_Y11_N14
\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0[25]~feeder_combout\,
	ena => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0\(25));

-- Location: LABCELL_X29_Y11_N42
\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[25]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[25]~9_combout\ = ( \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0\(25) & ( 
-- (!\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_address~DUPLICATE_q\) # (\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1\(25)) ) ) # ( 
-- !\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0\(25) & ( (\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_address~DUPLICATE_q\ & 
-- \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1\(25)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000110000001111001111110011111100111111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_rd_address~DUPLICATE_q\,
	datac => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_entry_1\(25),
	dataf => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_entry_0\(25),
	combout => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[25]~9_combout\);

-- Location: FF_X29_Y11_N43
\u0|new_sdram_controller_0|active_addr[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[25]~9_combout\,
	ena => \u0|new_sdram_controller_0|active_rnw~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|active_addr\(7));

-- Location: LABCELL_X29_Y11_N18
\u0|new_sdram_controller_0|Selector93~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|Selector93~0_combout\ = ( \u0|new_sdram_controller_0|i_addr\(12) & ( \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[25]~9_combout\ & ( (!\u0|new_sdram_controller_0|m_addr[6]~1_combout\ & 
-- (((\u0|new_sdram_controller_0|active_addr\(7) & !\u0|new_sdram_controller_0|m_addr~0_combout\)))) # (\u0|new_sdram_controller_0|m_addr[6]~1_combout\ & (((!\u0|new_sdram_controller_0|m_addr~0_combout\)) # (\u0|new_sdram_controller_0|active_addr\(18)))) ) ) 
-- ) # ( !\u0|new_sdram_controller_0|i_addr\(12) & ( \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[25]~9_combout\ & ( (!\u0|new_sdram_controller_0|m_addr[6]~1_combout\ & 
-- (((\u0|new_sdram_controller_0|m_addr~0_combout\) # (\u0|new_sdram_controller_0|active_addr\(7))))) # (\u0|new_sdram_controller_0|m_addr[6]~1_combout\ & (((!\u0|new_sdram_controller_0|m_addr~0_combout\)) # (\u0|new_sdram_controller_0|active_addr\(18)))) ) 
-- ) ) # ( \u0|new_sdram_controller_0|i_addr\(12) & ( !\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[25]~9_combout\ & ( (!\u0|new_sdram_controller_0|m_addr[6]~1_combout\ & 
-- (((\u0|new_sdram_controller_0|active_addr\(7) & !\u0|new_sdram_controller_0|m_addr~0_combout\)))) # (\u0|new_sdram_controller_0|m_addr[6]~1_combout\ & (\u0|new_sdram_controller_0|active_addr\(18) & ((\u0|new_sdram_controller_0|m_addr~0_combout\)))) ) ) ) 
-- # ( !\u0|new_sdram_controller_0|i_addr\(12) & ( !\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[25]~9_combout\ & ( (!\u0|new_sdram_controller_0|m_addr[6]~1_combout\ & 
-- (((\u0|new_sdram_controller_0|m_addr~0_combout\) # (\u0|new_sdram_controller_0|active_addr\(7))))) # (\u0|new_sdram_controller_0|m_addr[6]~1_combout\ & (\u0|new_sdram_controller_0|active_addr\(18) & ((\u0|new_sdram_controller_0|m_addr~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000011110101001100000000010100111111111101010011111100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|new_sdram_controller_0|ALT_INV_active_addr\(18),
	datab => \u0|new_sdram_controller_0|ALT_INV_active_addr\(7),
	datac => \u0|new_sdram_controller_0|ALT_INV_m_addr[6]~1_combout\,
	datad => \u0|new_sdram_controller_0|ALT_INV_m_addr~0_combout\,
	datae => \u0|new_sdram_controller_0|ALT_INV_i_addr\(12),
	dataf => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_rd_data[25]~9_combout\,
	combout => \u0|new_sdram_controller_0|Selector93~0_combout\);

-- Location: DDIOOUTCELL_X32_Y0_N27
\u0|new_sdram_controller_0|m_addr[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \u0|new_sdram_controller_0|Selector93~0_combout\,
	asdata => VCC,
	clrn => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	sload => \u0|new_sdram_controller_0|m_state.001000000~q\,
	ena => \u0|new_sdram_controller_0|m_addr[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|m_addr\(7));

-- Location: FF_X30_Y11_N16
\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	asdata => SDRAM_ADDR(8),
	sload => VCC,
	ena => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0\(26));

-- Location: LABCELL_X29_Y14_N24
\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1[26]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1[26]~feeder_combout\ = ( SDRAM_ADDR(8) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_SDRAM_ADDR(8),
	combout => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1[26]~feeder_combout\);

-- Location: FF_X29_Y14_N25
\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1[26]~feeder_combout\,
	ena => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1\(26));

-- Location: LABCELL_X29_Y11_N45
\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[26]~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[26]~10_combout\ = ( \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1\(26) & ( 
-- (\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0\(26)) # (\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_address~DUPLICATE_q\) ) ) # ( 
-- !\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1\(26) & ( (!\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_address~DUPLICATE_q\ & 
-- \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0\(26)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_rd_address~DUPLICATE_q\,
	datac => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_entry_0\(26),
	dataf => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_entry_1\(26),
	combout => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[26]~10_combout\);

-- Location: FF_X29_Y11_N46
\u0|new_sdram_controller_0|active_addr[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[26]~10_combout\,
	ena => \u0|new_sdram_controller_0|active_rnw~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|active_addr\(8));

-- Location: LABCELL_X29_Y11_N36
\u0|new_sdram_controller_0|Selector92~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|Selector92~0_combout\ = ( \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[26]~10_combout\ & ( \u0|new_sdram_controller_0|m_addr[6]~1_combout\ & ( 
-- (!\u0|new_sdram_controller_0|m_addr~0_combout\) # (\u0|new_sdram_controller_0|active_addr\(19)) ) ) ) # ( !\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[26]~10_combout\ & ( 
-- \u0|new_sdram_controller_0|m_addr[6]~1_combout\ & ( (\u0|new_sdram_controller_0|active_addr\(19) & \u0|new_sdram_controller_0|m_addr~0_combout\) ) ) ) # ( 
-- \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[26]~10_combout\ & ( !\u0|new_sdram_controller_0|m_addr[6]~1_combout\ & ( (!\u0|new_sdram_controller_0|m_addr~0_combout\ & 
-- ((\u0|new_sdram_controller_0|active_addr\(8)))) # (\u0|new_sdram_controller_0|m_addr~0_combout\ & (!\u0|new_sdram_controller_0|i_addr\(12))) ) ) ) # ( !\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[26]~10_combout\ 
-- & ( !\u0|new_sdram_controller_0|m_addr[6]~1_combout\ & ( (!\u0|new_sdram_controller_0|m_addr~0_combout\ & ((\u0|new_sdram_controller_0|active_addr\(8)))) # (\u0|new_sdram_controller_0|m_addr~0_combout\ & (!\u0|new_sdram_controller_0|i_addr\(12))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111110101010000011111010101000000000001100111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|new_sdram_controller_0|ALT_INV_i_addr\(12),
	datab => \u0|new_sdram_controller_0|ALT_INV_active_addr\(19),
	datac => \u0|new_sdram_controller_0|ALT_INV_active_addr\(8),
	datad => \u0|new_sdram_controller_0|ALT_INV_m_addr~0_combout\,
	datae => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_rd_data[26]~10_combout\,
	dataf => \u0|new_sdram_controller_0|ALT_INV_m_addr[6]~1_combout\,
	combout => \u0|new_sdram_controller_0|Selector92~0_combout\);

-- Location: DDIOOUTCELL_X38_Y0_N27
\u0|new_sdram_controller_0|m_addr[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \u0|new_sdram_controller_0|Selector92~0_combout\,
	asdata => VCC,
	clrn => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	sload => \u0|new_sdram_controller_0|m_state.001000000~q\,
	ena => \u0|new_sdram_controller_0|m_addr[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|m_addr\(8));

-- Location: FF_X31_Y12_N13
\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	asdata => SDRAM_ADDR(9),
	sload => VCC,
	ena => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0\(27));

-- Location: FF_X31_Y12_N59
\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	asdata => SDRAM_ADDR(9),
	sload => VCC,
	ena => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1[43]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1\(27));

-- Location: LABCELL_X31_Y12_N39
\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[27]~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[27]~11_combout\ = ( \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1\(27) & ( 
-- (\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_address~q\) # (\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0\(27)) ) ) # ( 
-- !\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_1\(27) & ( (\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|entry_0\(27) & 
-- !\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_address~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_entry_0\(27),
	datad => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_rd_address~q\,
	dataf => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_entry_1\(27),
	combout => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[27]~11_combout\);

-- Location: FF_X31_Y12_N40
\u0|new_sdram_controller_0|active_addr[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[27]~11_combout\,
	ena => \u0|new_sdram_controller_0|active_rnw~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|active_addr\(9));

-- Location: LABCELL_X31_Y12_N33
\u0|new_sdram_controller_0|Selector91~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|Selector91~0_combout\ = ( \u0|new_sdram_controller_0|m_addr[6]~1_combout\ & ( \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[27]~11_combout\ & ( 
-- (!\u0|new_sdram_controller_0|m_addr~0_combout\) # (\u0|new_sdram_controller_0|active_addr\(20)) ) ) ) # ( !\u0|new_sdram_controller_0|m_addr[6]~1_combout\ & ( 
-- \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[27]~11_combout\ & ( (!\u0|new_sdram_controller_0|m_addr~0_combout\ & (\u0|new_sdram_controller_0|active_addr\(9))) # (\u0|new_sdram_controller_0|m_addr~0_combout\ & 
-- ((!\u0|new_sdram_controller_0|i_addr\(12)))) ) ) ) # ( \u0|new_sdram_controller_0|m_addr[6]~1_combout\ & ( !\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[27]~11_combout\ & ( 
-- (\u0|new_sdram_controller_0|active_addr\(20) & \u0|new_sdram_controller_0|m_addr~0_combout\) ) ) ) # ( !\u0|new_sdram_controller_0|m_addr[6]~1_combout\ & ( 
-- !\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[27]~11_combout\ & ( (!\u0|new_sdram_controller_0|m_addr~0_combout\ & (\u0|new_sdram_controller_0|active_addr\(9))) # (\u0|new_sdram_controller_0|m_addr~0_combout\ & 
-- ((!\u0|new_sdram_controller_0|i_addr\(12)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111110000000000000101010100110011111100001111111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|new_sdram_controller_0|ALT_INV_active_addr\(20),
	datab => \u0|new_sdram_controller_0|ALT_INV_active_addr\(9),
	datac => \u0|new_sdram_controller_0|ALT_INV_i_addr\(12),
	datad => \u0|new_sdram_controller_0|ALT_INV_m_addr~0_combout\,
	datae => \u0|new_sdram_controller_0|ALT_INV_m_addr[6]~1_combout\,
	dataf => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_rd_data[27]~11_combout\,
	combout => \u0|new_sdram_controller_0|Selector91~0_combout\);

-- Location: DDIOOUTCELL_X26_Y0_N67
\u0|new_sdram_controller_0|m_addr[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \u0|new_sdram_controller_0|Selector91~0_combout\,
	asdata => VCC,
	clrn => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	sload => \u0|new_sdram_controller_0|m_state.001000000~q\,
	ena => \u0|new_sdram_controller_0|m_addr[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|m_addr\(9));

-- Location: LABCELL_X31_Y12_N45
\u0|new_sdram_controller_0|Selector90~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|Selector90~0_combout\ = ( \u0|new_sdram_controller_0|active_addr\(21) & ( ((\u0|new_sdram_controller_0|m_addr~0_combout\ & ((!\u0|new_sdram_controller_0|i_addr\(12)) # (\u0|new_sdram_controller_0|m_state.000000010~q\)))) # 
-- (\u0|new_sdram_controller_0|m_state.001000000~q\) ) ) # ( !\u0|new_sdram_controller_0|active_addr\(21) & ( ((!\u0|new_sdram_controller_0|i_addr\(12) & (!\u0|new_sdram_controller_0|m_state.000000010~q\ & \u0|new_sdram_controller_0|m_addr~0_combout\))) # 
-- (\u0|new_sdram_controller_0|m_state.001000000~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111110001111000011111000111100001111101111110000111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|new_sdram_controller_0|ALT_INV_i_addr\(12),
	datab => \u0|new_sdram_controller_0|ALT_INV_m_state.000000010~q\,
	datac => \u0|new_sdram_controller_0|ALT_INV_m_state.001000000~q\,
	datad => \u0|new_sdram_controller_0|ALT_INV_m_addr~0_combout\,
	dataf => \u0|new_sdram_controller_0|ALT_INV_active_addr\(21),
	combout => \u0|new_sdram_controller_0|Selector90~0_combout\);

-- Location: DDIOOUTCELL_X26_Y0_N50
\u0|new_sdram_controller_0|m_addr[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \u0|new_sdram_controller_0|Selector90~0_combout\,
	clrn => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	ena => \u0|new_sdram_controller_0|m_addr[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|m_addr\(10));

-- Location: LABCELL_X31_Y12_N6
\u0|new_sdram_controller_0|Selector89~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|Selector89~0_combout\ = ( \u0|new_sdram_controller_0|m_state.001000000~q\ ) # ( !\u0|new_sdram_controller_0|m_state.001000000~q\ & ( (\u0|new_sdram_controller_0|m_addr~0_combout\ & 
-- ((!\u0|new_sdram_controller_0|m_state.000000010~q\ & ((!\u0|new_sdram_controller_0|i_addr\(12)))) # (\u0|new_sdram_controller_0|m_state.000000010~q\ & (\u0|new_sdram_controller_0|active_addr\(22))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010100000001010001010000000111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|new_sdram_controller_0|ALT_INV_m_addr~0_combout\,
	datab => \u0|new_sdram_controller_0|ALT_INV_m_state.000000010~q\,
	datac => \u0|new_sdram_controller_0|ALT_INV_active_addr\(22),
	datad => \u0|new_sdram_controller_0|ALT_INV_i_addr\(12),
	dataf => \u0|new_sdram_controller_0|ALT_INV_m_state.001000000~q\,
	combout => \u0|new_sdram_controller_0|Selector89~0_combout\);

-- Location: DDIOOUTCELL_X30_Y0_N10
\u0|new_sdram_controller_0|m_addr[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \u0|new_sdram_controller_0|Selector89~0_combout\,
	clrn => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	ena => \u0|new_sdram_controller_0|m_addr[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|m_addr\(11));

-- Location: LABCELL_X31_Y12_N42
\u0|new_sdram_controller_0|Selector88~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|Selector88~0_combout\ = ( \u0|new_sdram_controller_0|m_state.001000000~q\ ) # ( !\u0|new_sdram_controller_0|m_state.001000000~q\ & ( (\u0|new_sdram_controller_0|m_addr~0_combout\ & 
-- ((!\u0|new_sdram_controller_0|m_state.000000010~q\ & (!\u0|new_sdram_controller_0|i_addr\(12))) # (\u0|new_sdram_controller_0|m_state.000000010~q\ & ((\u0|new_sdram_controller_0|active_addr[23]~DUPLICATE_q\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010001011000000001000101111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|new_sdram_controller_0|ALT_INV_i_addr\(12),
	datab => \u0|new_sdram_controller_0|ALT_INV_m_state.000000010~q\,
	datac => \u0|new_sdram_controller_0|ALT_INV_active_addr[23]~DUPLICATE_q\,
	datad => \u0|new_sdram_controller_0|ALT_INV_m_addr~0_combout\,
	dataf => \u0|new_sdram_controller_0|ALT_INV_m_state.001000000~q\,
	combout => \u0|new_sdram_controller_0|Selector88~0_combout\);

-- Location: DDIOOUTCELL_X40_Y0_N44
\u0|new_sdram_controller_0|m_addr[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \u0|new_sdram_controller_0|Selector88~0_combout\,
	clrn => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	ena => \u0|new_sdram_controller_0|m_addr[6]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|m_addr\(12));

-- Location: LABCELL_X30_Y12_N51
\u0|new_sdram_controller_0|Selector102~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|Selector102~0_combout\ = ( \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[28]~12_combout\ & ( ((\u0|new_sdram_controller_0|f_select~combout\ & 
-- !\u0|new_sdram_controller_0|m_state.000000010~q\)) # (\u0|new_sdram_controller_0|active_addr\(10)) ) ) # ( !\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[28]~12_combout\ & ( 
-- (\u0|new_sdram_controller_0|active_addr\(10) & ((!\u0|new_sdram_controller_0|f_select~combout\) # (\u0|new_sdram_controller_0|m_state.000000010~q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001111000010100000111101011111000011110101111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|new_sdram_controller_0|ALT_INV_f_select~combout\,
	datac => \u0|new_sdram_controller_0|ALT_INV_active_addr\(10),
	datad => \u0|new_sdram_controller_0|ALT_INV_m_state.000000010~q\,
	dataf => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_rd_data[28]~12_combout\,
	combout => \u0|new_sdram_controller_0|Selector102~0_combout\);

-- Location: LABCELL_X29_Y13_N42
\u0|new_sdram_controller_0|WideOr16~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|WideOr16~0_combout\ = ( \u0|new_sdram_controller_0|m_state.000000010~q\ ) # ( !\u0|new_sdram_controller_0|m_state.000000010~q\ & ( (\u0|new_sdram_controller_0|m_state.000010000~DUPLICATE_q\) # 
-- (\u0|new_sdram_controller_0|m_state.000001000~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000011111111111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \u0|new_sdram_controller_0|ALT_INV_m_state.000001000~q\,
	datad => \u0|new_sdram_controller_0|ALT_INV_m_state.000010000~DUPLICATE_q\,
	dataf => \u0|new_sdram_controller_0|ALT_INV_m_state.000000010~q\,
	combout => \u0|new_sdram_controller_0|WideOr16~0_combout\);

-- Location: DDIOOUTCELL_X22_Y0_N27
\u0|new_sdram_controller_0|m_bank[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \u0|new_sdram_controller_0|Selector102~0_combout\,
	clrn => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	ena => \u0|new_sdram_controller_0|WideOr16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|m_bank\(0));

-- Location: LABCELL_X30_Y12_N33
\u0|new_sdram_controller_0|Selector101~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|Selector101~0_combout\ = ( \u0|new_sdram_controller_0|f_select~combout\ & ( (!\u0|new_sdram_controller_0|m_state.000000010~q\ & 
-- (\u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|rd_data[42]~13_combout\)) # (\u0|new_sdram_controller_0|m_state.000000010~q\ & ((\u0|new_sdram_controller_0|active_addr\(24)))) ) ) # ( 
-- !\u0|new_sdram_controller_0|f_select~combout\ & ( \u0|new_sdram_controller_0|active_addr\(24) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111101010101000011110101010100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|new_sdram_controller_0|the_RAMSYS_new_sdram_controller_0_input_efifo_module|ALT_INV_rd_data[42]~13_combout\,
	datac => \u0|new_sdram_controller_0|ALT_INV_active_addr\(24),
	datad => \u0|new_sdram_controller_0|ALT_INV_m_state.000000010~q\,
	dataf => \u0|new_sdram_controller_0|ALT_INV_f_select~combout\,
	combout => \u0|new_sdram_controller_0|Selector101~0_combout\);

-- Location: DDIOOUTCELL_X38_Y0_N61
\u0|new_sdram_controller_0|m_bank[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \u0|new_sdram_controller_0|Selector101~0_combout\,
	clrn => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	ena => \u0|new_sdram_controller_0|WideOr16~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|m_bank\(1));

-- Location: DDIOOUTCELL_X18_Y0_N50
\u0|new_sdram_controller_0|m_cmd[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "high")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \u0|new_sdram_controller_0|ALT_INV_Selector22~0_combout\,
	asdata => VCC,
	aload => \u0|rst_controller|alt_rst_sync_uq1|ALT_INV_altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|m_cmd\(1));

-- Location: PLLOUTPUTCOUNTER_X0_Y21_N1
\u0|pll_0|altera_pll_i|general[2].gpll~PLL_OUTPUT_COUNTER\ : cyclonev_pll_output_counter
-- pragma translate_off
GENERIC MAP (
	c_cnt_coarse_dly => "0 ps",
	c_cnt_fine_dly => "0 ps",
	c_cnt_in_src => "ph_mux_clk",
	c_cnt_ph_mux_prst => 0,
	c_cnt_prst => 7,
	cnt_fpll_src => "fpll_0",
	dprio0_cnt_bypass_en => "false",
	dprio0_cnt_hi_div => 4,
	dprio0_cnt_lo_div => 3,
	dprio0_cnt_odd_div_even_duty_en => "true",
	duty_cycle => 50,
	output_clock_frequency => "141.428571 mhz",
	phase_shift => "6059 ps",
	fractional_pll_index => 0,
	output_counter_index => 7)
-- pragma translate_on
PORT MAP (
	nen0 => \u0|pll_0|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_CNTNEN\,
	shift0 => \u0|pll_0|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_SHIFT\,
	shiften => \u0|pll_0|altera_pll_i|general[0].gpll~PLL_RECONFIGSHIFTEN7\,
	tclk0 => \u0|pll_0|altera_pll_i|general[0].gpll~FRACTIONAL_PLL_O_TCLK\,
	up0 => \u0|pll_0|altera_pll_i|general[0].gpll~PLL_RECONFIG_O_UP\,
	vco0ph => \u0|pll_0|altera_pll_i|general[2].gpll~PLL_OUTPUT_COUNTER_VCO0PH_bus\,
	divclk => \u0|pll_0|altera_pll_i|outclk_wire\(2));

-- Location: CLKCTRL_G6
\u0|pll_0|altera_pll_i|outclk_wire[2]~CLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \u0|pll_0|altera_pll_i|outclk_wire\(2),
	outclk => \u0|pll_0|altera_pll_i|outclk_wire[2]~CLKENA0_outclk\);

-- Location: LABCELL_X29_Y13_N57
\u0|new_sdram_controller_0|Selector0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|Selector0~0_combout\ = ( \u0|new_sdram_controller_0|i_cmd\(3) & ( \u0|new_sdram_controller_0|i_state.000~DUPLICATE_q\ ) ) # ( !\u0|new_sdram_controller_0|i_cmd\(3) & ( (!\u0|new_sdram_controller_0|i_state.101~q\ & 
-- \u0|new_sdram_controller_0|i_state.000~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011110000111100001100000011000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \u0|new_sdram_controller_0|ALT_INV_i_state.101~q\,
	datac => \u0|new_sdram_controller_0|ALT_INV_i_state.000~DUPLICATE_q\,
	datae => \u0|new_sdram_controller_0|ALT_INV_i_cmd\(3),
	combout => \u0|new_sdram_controller_0|Selector0~0_combout\);

-- Location: FF_X29_Y13_N58
\u0|new_sdram_controller_0|i_cmd[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \u0|new_sdram_controller_0|Selector0~0_combout\,
	clrn => \u0|rst_controller|alt_rst_sync_uq1|altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|i_cmd\(3));

-- Location: LABCELL_X33_Y12_N36
\u0|new_sdram_controller_0|Selector20~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|Selector20~0_combout\ = ( \u0|new_sdram_controller_0|m_state.010000000~q\ & ( \u0|new_sdram_controller_0|refresh_request~DUPLICATE_q\ & ( (\u0|new_sdram_controller_0|m_state.000000100~q\ & 
-- !\u0|new_sdram_controller_0|m_next.010000000~q\) ) ) ) # ( !\u0|new_sdram_controller_0|m_state.010000000~q\ & ( \u0|new_sdram_controller_0|refresh_request~DUPLICATE_q\ & ( (!\u0|new_sdram_controller_0|m_state.000000100~q\ & 
-- (\u0|new_sdram_controller_0|m_state.000000001~q\ & (!\u0|new_sdram_controller_0|m_state.001000000~q\))) # (\u0|new_sdram_controller_0|m_state.000000100~q\ & (((!\u0|new_sdram_controller_0|m_next.010000000~q\)))) ) ) ) # ( 
-- \u0|new_sdram_controller_0|m_state.010000000~q\ & ( !\u0|new_sdram_controller_0|refresh_request~DUPLICATE_q\ & ( ((\u0|new_sdram_controller_0|m_state.000000100~q\ & !\u0|new_sdram_controller_0|m_next.010000000~q\)) # 
-- (\u0|new_sdram_controller_0|m_state.001000000~q\) ) ) ) # ( !\u0|new_sdram_controller_0|m_state.010000000~q\ & ( !\u0|new_sdram_controller_0|refresh_request~DUPLICATE_q\ & ( ((!\u0|new_sdram_controller_0|m_state.000000100~q\ & 
-- (\u0|new_sdram_controller_0|m_state.000000001~q\)) # (\u0|new_sdram_controller_0|m_state.000000100~q\ & ((!\u0|new_sdram_controller_0|m_next.010000000~q\)))) # (\u0|new_sdram_controller_0|m_state.001000000~q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111101001111001111110000111101110011010000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|new_sdram_controller_0|ALT_INV_m_state.000000001~q\,
	datab => \u0|new_sdram_controller_0|ALT_INV_m_state.000000100~q\,
	datac => \u0|new_sdram_controller_0|ALT_INV_m_state.001000000~q\,
	datad => \u0|new_sdram_controller_0|ALT_INV_m_next.010000000~q\,
	datae => \u0|new_sdram_controller_0|ALT_INV_m_state.010000000~q\,
	dataf => \u0|new_sdram_controller_0|ALT_INV_refresh_request~DUPLICATE_q\,
	combout => \u0|new_sdram_controller_0|Selector20~0_combout\);

-- Location: LABCELL_X29_Y13_N12
\u0|new_sdram_controller_0|Selector20~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \u0|new_sdram_controller_0|Selector20~1_combout\ = ( \u0|new_sdram_controller_0|init_done~DUPLICATE_q\ & ( \u0|new_sdram_controller_0|Selector20~0_combout\ & ( (!\u0|new_sdram_controller_0|active_cs_n~q\ & ((\u0|new_sdram_controller_0|refresh_request~q\) 
-- # (\u0|new_sdram_controller_0|m_state.000000001~q\))) ) ) ) # ( !\u0|new_sdram_controller_0|init_done~DUPLICATE_q\ & ( \u0|new_sdram_controller_0|Selector20~0_combout\ & ( (!\u0|new_sdram_controller_0|active_cs_n~q\ & 
-- ((\u0|new_sdram_controller_0|m_state.000000001~q\) # (\u0|new_sdram_controller_0|i_cmd\(3)))) ) ) ) # ( \u0|new_sdram_controller_0|init_done~DUPLICATE_q\ & ( !\u0|new_sdram_controller_0|Selector20~0_combout\ & ( 
-- (\u0|new_sdram_controller_0|refresh_request~q\) # (\u0|new_sdram_controller_0|m_state.000000001~q\) ) ) ) # ( !\u0|new_sdram_controller_0|init_done~DUPLICATE_q\ & ( !\u0|new_sdram_controller_0|Selector20~0_combout\ & ( 
-- (\u0|new_sdram_controller_0|m_state.000000001~q\) # (\u0|new_sdram_controller_0|i_cmd\(3)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110111001111110011111101110111000000000011111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \u0|new_sdram_controller_0|ALT_INV_i_cmd\(3),
	datab => \u0|new_sdram_controller_0|ALT_INV_m_state.000000001~q\,
	datac => \u0|new_sdram_controller_0|ALT_INV_refresh_request~q\,
	datad => \u0|new_sdram_controller_0|ALT_INV_active_cs_n~q\,
	datae => \u0|new_sdram_controller_0|ALT_INV_init_done~DUPLICATE_q\,
	dataf => \u0|new_sdram_controller_0|ALT_INV_Selector20~0_combout\,
	combout => \u0|new_sdram_controller_0|Selector20~1_combout\);

-- Location: DDIOOUTCELL_X18_Y0_N67
\u0|new_sdram_controller_0|m_cmd[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "high")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \u0|new_sdram_controller_0|ALT_INV_Selector20~1_combout\,
	asdata => VCC,
	aload => \u0|rst_controller|alt_rst_sync_uq1|ALT_INV_altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|m_cmd\(3));

-- Location: DDIOOUTCELL_X22_Y0_N10
\u0|new_sdram_controller_0|m_cmd[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "high")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \u0|new_sdram_controller_0|ALT_INV_Selector21~0_combout\,
	asdata => VCC,
	aload => \u0|rst_controller|alt_rst_sync_uq1|ALT_INV_altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|m_cmd\(2));

-- Location: DDIOOUTCELL_X20_Y0_N10
\u0|new_sdram_controller_0|m_cmd[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "high")
-- pragma translate_on
PORT MAP (
	clk => \u0|pll_0|altera_pll_i|outclk_wire[1]~CLKENA0_outclk\,
	d => \u0|new_sdram_controller_0|ALT_INV_Selector23~0_combout\,
	asdata => VCC,
	aload => \u0|rst_controller|alt_rst_sync_uq1|ALT_INV_altera_reset_synchronizer_int_chain_out~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \u0|new_sdram_controller_0|m_cmd\(0));

-- Location: IOIBUF_X36_Y0_N1
\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: IOIBUF_X36_Y0_N18
\KEY[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: IOIBUF_X40_Y0_N1
\KEY[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: IOIBUF_X40_Y0_N18
\KEY[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

-- Location: IOIBUF_X34_Y0_N75
\DRAM_DQ[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DRAM_DQ(8),
	o => \DRAM_DQ[8]~input_o\);

-- Location: IOIBUF_X34_Y0_N92
\DRAM_DQ[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DRAM_DQ(9),
	o => \DRAM_DQ[9]~input_o\);

-- Location: IOIBUF_X30_Y0_N35
\DRAM_DQ[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DRAM_DQ(10),
	o => \DRAM_DQ[10]~input_o\);

-- Location: IOIBUF_X18_Y0_N92
\DRAM_DQ[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DRAM_DQ(11),
	o => \DRAM_DQ[11]~input_o\);

-- Location: IOIBUF_X32_Y0_N52
\DRAM_DQ[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DRAM_DQ(12),
	o => \DRAM_DQ[12]~input_o\);

-- Location: IOIBUF_X32_Y0_N35
\DRAM_DQ[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DRAM_DQ(13),
	o => \DRAM_DQ[13]~input_o\);

-- Location: IOIBUF_X26_Y0_N75
\DRAM_DQ[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DRAM_DQ(14),
	o => \DRAM_DQ[14]~input_o\);

-- Location: IOIBUF_X24_Y0_N35
\DRAM_DQ[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => DRAM_DQ(15),
	o => \DRAM_DQ[15]~input_o\);

-- Location: LABCELL_X16_Y47_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;


pll_reconfig_inst_tasks : altera_pll_reconfig_tasks
-- pragma translate_off
GENERIC MAP (
		number_of_fplls => 1);
-- pragma translate_on
END structure;


