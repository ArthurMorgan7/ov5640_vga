-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Full Version"

-- DATE "03/27/2023 12:25:49"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ov5640_top IS
    PORT (
	sys_clk : IN std_logic;
	sys_rst_n : IN std_logic;
	sys_init_done : IN std_logic;
	ov5640_pclk : IN std_logic;
	ov5640_href : IN std_logic;
	ov5640_vsync : IN std_logic;
	ov5640_data : IN std_logic_vector(7 DOWNTO 0);
	cfg_done : OUT std_logic;
	sccb_scl : OUT std_logic;
	sccb_sda : OUT std_logic;
	ov5640_wr_en : OUT std_logic;
	ov5640_data_out : OUT std_logic_vector(15 DOWNTO 0)
	);
END ov5640_top;

-- Design Ports Information
-- cfg_done	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sccb_scl	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sccb_sda	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ov5640_wr_en	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ov5640_data_out[0]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ov5640_data_out[1]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ov5640_data_out[2]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ov5640_data_out[3]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ov5640_data_out[4]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ov5640_data_out[5]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ov5640_data_out[6]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ov5640_data_out[7]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ov5640_data_out[8]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ov5640_data_out[9]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ov5640_data_out[10]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ov5640_data_out[11]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ov5640_data_out[12]	=>  Location: PIN_K13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ov5640_data_out[13]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ov5640_data_out[14]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ov5640_data_out[15]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sys_rst_n	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ov5640_pclk	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sys_init_done	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ov5640_vsync	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ov5640_data[0]	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ov5640_href	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ov5640_data[1]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ov5640_data[2]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ov5640_data[3]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ov5640_data[4]	=>  Location: PIN_L11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ov5640_data[5]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ov5640_data[6]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ov5640_data[7]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sys_clk	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ov5640_top IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_sys_clk : std_logic;
SIGNAL ww_sys_rst_n : std_logic;
SIGNAL ww_sys_init_done : std_logic;
SIGNAL ww_ov5640_pclk : std_logic;
SIGNAL ww_ov5640_href : std_logic;
SIGNAL ww_ov5640_vsync : std_logic;
SIGNAL ww_ov5640_data : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_cfg_done : std_logic;
SIGNAL ww_sccb_scl : std_logic;
SIGNAL ww_sccb_sda : std_logic;
SIGNAL ww_ov5640_wr_en : std_logic;
SIGNAL ww_ov5640_data_out : std_logic_vector(15 DOWNTO 0);
SIGNAL \sys_rst_n~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \sys_clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ov5640_pclk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \i2c_ctrl_inst|i2c_clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \comb~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \sccb_sda~output_o\ : std_logic;
SIGNAL \cfg_done~output_o\ : std_logic;
SIGNAL \sccb_scl~output_o\ : std_logic;
SIGNAL \ov5640_wr_en~output_o\ : std_logic;
SIGNAL \ov5640_data_out[0]~output_o\ : std_logic;
SIGNAL \ov5640_data_out[1]~output_o\ : std_logic;
SIGNAL \ov5640_data_out[2]~output_o\ : std_logic;
SIGNAL \ov5640_data_out[3]~output_o\ : std_logic;
SIGNAL \ov5640_data_out[4]~output_o\ : std_logic;
SIGNAL \ov5640_data_out[5]~output_o\ : std_logic;
SIGNAL \ov5640_data_out[6]~output_o\ : std_logic;
SIGNAL \ov5640_data_out[7]~output_o\ : std_logic;
SIGNAL \ov5640_data_out[8]~output_o\ : std_logic;
SIGNAL \ov5640_data_out[9]~output_o\ : std_logic;
SIGNAL \ov5640_data_out[10]~output_o\ : std_logic;
SIGNAL \ov5640_data_out[11]~output_o\ : std_logic;
SIGNAL \ov5640_data_out[12]~output_o\ : std_logic;
SIGNAL \ov5640_data_out[13]~output_o\ : std_logic;
SIGNAL \ov5640_data_out[14]~output_o\ : std_logic;
SIGNAL \ov5640_data_out[15]~output_o\ : std_logic;
SIGNAL \sys_clk~input_o\ : std_logic;
SIGNAL \sys_clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \i2c_ctrl_inst|Add0~0_combout\ : std_logic;
SIGNAL \i2c_ctrl_inst|cnt_clk~2_combout\ : std_logic;
SIGNAL \sys_rst_n~input_o\ : std_logic;
SIGNAL \sys_rst_n~inputclkctrl_outclk\ : std_logic;
SIGNAL \i2c_ctrl_inst|Add0~1\ : std_logic;
SIGNAL \i2c_ctrl_inst|Add0~2_combout\ : std_logic;
SIGNAL \i2c_ctrl_inst|Add0~3\ : std_logic;
SIGNAL \i2c_ctrl_inst|Add0~4_combout\ : std_logic;
SIGNAL \i2c_ctrl_inst|Add0~5\ : std_logic;
SIGNAL \i2c_ctrl_inst|Add0~6_combout\ : std_logic;
SIGNAL \i2c_ctrl_inst|cnt_clk~1_combout\ : std_logic;
SIGNAL \i2c_ctrl_inst|Equal0~1_combout\ : std_logic;
SIGNAL \i2c_ctrl_inst|Add0~7\ : std_logic;
SIGNAL \i2c_ctrl_inst|Add0~8_combout\ : std_logic;
SIGNAL \i2c_ctrl_inst|cnt_clk~0_combout\ : std_logic;
SIGNAL \i2c_ctrl_inst|Add0~9\ : std_logic;
SIGNAL \i2c_ctrl_inst|Add0~10_combout\ : std_logic;
SIGNAL \i2c_ctrl_inst|Add0~11\ : std_logic;
SIGNAL \i2c_ctrl_inst|Add0~12_combout\ : std_logic;
SIGNAL \i2c_ctrl_inst|Add0~13\ : std_logic;
SIGNAL \i2c_ctrl_inst|Add0~14_combout\ : std_logic;
SIGNAL \i2c_ctrl_inst|Equal0~0_combout\ : std_logic;
SIGNAL \i2c_ctrl_inst|i2c_clk~0_combout\ : std_logic;
SIGNAL \i2c_ctrl_inst|i2c_clk~feeder_combout\ : std_logic;
SIGNAL \i2c_ctrl_inst|i2c_clk~q\ : std_logic;
SIGNAL \i2c_ctrl_inst|i2c_clk~clkctrl_outclk\ : std_logic;
SIGNAL \ov5640_cfg_inst|cnt_wait[7]~27\ : std_logic;
SIGNAL \ov5640_cfg_inst|cnt_wait[8]~28_combout\ : std_logic;
SIGNAL \ov5640_cfg_inst|cnt_wait[8]~29\ : std_logic;
SIGNAL \ov5640_cfg_inst|cnt_wait[9]~31_combout\ : std_logic;
SIGNAL \ov5640_cfg_inst|cnt_wait[9]~32\ : std_logic;
SIGNAL \ov5640_cfg_inst|cnt_wait[10]~33_combout\ : std_logic;
SIGNAL \ov5640_cfg_inst|cnt_wait[10]~34\ : std_logic;
SIGNAL \ov5640_cfg_inst|cnt_wait[11]~35_combout\ : std_logic;
SIGNAL \ov5640_cfg_inst|cnt_wait[11]~36\ : std_logic;
SIGNAL \ov5640_cfg_inst|cnt_wait[12]~37_combout\ : std_logic;
SIGNAL \ov5640_cfg_inst|cnt_wait[12]~38\ : std_logic;
SIGNAL \ov5640_cfg_inst|cnt_wait[13]~39_combout\ : std_logic;
SIGNAL \ov5640_cfg_inst|cnt_wait[13]~40\ : std_logic;
SIGNAL \ov5640_cfg_inst|cnt_wait[14]~41_combout\ : std_logic;
SIGNAL \ov5640_cfg_inst|Equal0~5_combout\ : std_logic;
SIGNAL \ov5640_cfg_inst|Equal0~1_combout\ : std_logic;
SIGNAL \ov5640_cfg_inst|LessThan0~0_combout\ : std_logic;
SIGNAL \ov5640_cfg_inst|cnt_wait[0]~30_combout\ : std_logic;
SIGNAL \ov5640_cfg_inst|cnt_wait[1]~14_combout\ : std_logic;
SIGNAL \ov5640_cfg_inst|cnt_wait[1]~15\ : std_logic;
SIGNAL \ov5640_cfg_inst|cnt_wait[2]~16_combout\ : std_logic;
SIGNAL \ov5640_cfg_inst|cnt_wait[2]~17\ : std_logic;
SIGNAL \ov5640_cfg_inst|cnt_wait[3]~18_combout\ : std_logic;
SIGNAL \ov5640_cfg_inst|cnt_wait[3]~19\ : std_logic;
SIGNAL \ov5640_cfg_inst|cnt_wait[4]~20_combout\ : std_logic;
SIGNAL \ov5640_cfg_inst|cnt_wait[4]~21\ : std_logic;
SIGNAL \ov5640_cfg_inst|cnt_wait[5]~22_combout\ : std_logic;
SIGNAL \ov5640_cfg_inst|cnt_wait[5]~23\ : std_logic;
SIGNAL \ov5640_cfg_inst|cnt_wait[6]~24_combout\ : std_logic;
SIGNAL \ov5640_cfg_inst|cnt_wait[6]~25\ : std_logic;
SIGNAL \ov5640_cfg_inst|cnt_wait[7]~26_combout\ : std_logic;
SIGNAL \ov5640_cfg_inst|Equal0~0_combout\ : std_logic;
SIGNAL \ov5640_cfg_inst|Equal0~2_combout\ : std_logic;
SIGNAL \ov5640_cfg_inst|Equal0~3_combout\ : std_logic;
SIGNAL \ov5640_cfg_inst|Equal0~4_combout\ : std_logic;
SIGNAL \ov5640_cfg_inst|cfg_start~q\ : std_logic;
SIGNAL \i2c_ctrl_inst|Selector3~0_combout\ : std_logic;
SIGNAL \i2c_ctrl_inst|state.IDLE~q\ : std_logic;
SIGNAL \i2c_ctrl_inst|cnt_i2c_clk_en~0_combout\ : std_logic;
SIGNAL \i2c_ctrl_inst|cnt_i2c_clk_en~q\ : std_logic;
SIGNAL \i2c_ctrl_inst|cnt_i2c_clk[0]~1_combout\ : std_logic;
SIGNAL \i2c_ctrl_inst|cnt_i2c_clk[1]~0_combout\ : std_logic;
SIGNAL \i2c_ctrl_inst|Equal1~0_combout\ : std_logic;
SIGNAL \i2c_ctrl_inst|Selector4~0_combout\ : std_logic;
SIGNAL \i2c_ctrl_inst|state.START_1~q\ : std_logic;
SIGNAL \i2c_ctrl_inst|cnt_bit[0]~6_combout\ : std_logic;
SIGNAL \i2c_ctrl_inst|cnt_bit[0]~2_combout\ : std_logic;
SIGNAL \i2c_ctrl_inst|cnt_bit[0]~5_combout\ : std_logic;
SIGNAL \i2c_ctrl_inst|cnt_bit[1]~4_combout\ : std_logic;
SIGNAL \i2c_ctrl_inst|Add2~0_combout\ : std_logic;
SIGNAL \i2c_ctrl_inst|cnt_bit[2]~3_combout\ : std_logic;
SIGNAL \i2c_ctrl_inst|Equal5~0_combout\ : std_logic;
SIGNAL \i2c_ctrl_inst|Selector5~0_combout\ : std_logic;
SIGNAL \i2c_ctrl_inst|state.SEND_D_ADDR~q\ : std_logic;
SIGNAL \i2c_ctrl_inst|Selector6~0_combout\ : std_logic;
SIGNAL \i2c_ctrl_inst|state.ACK_1~q\ : std_logic;
SIGNAL \i2c_ctrl_inst|Selector1~0_combout\ : std_logic;
SIGNAL \i2c_ctrl_inst|Selector1~1_combout\ : std_logic;
SIGNAL \i2c_ctrl_inst|Selector1~2_combout\ : std_logic;
SIGNAL \i2c_ctrl_inst|Selector21~0_combout\ : std_logic;
SIGNAL \ov5640_pclk~input_o\ : std_logic;
SIGNAL \ov5640_pclk~inputclkctrl_outclk\ : std_logic;
SIGNAL \ov5640_data_inst|cnt_pic[1]~2_combout\ : std_logic;
SIGNAL \sys_init_done~input_o\ : std_logic;
SIGNAL \comb~0_combout\ : std_logic;
SIGNAL \comb~0clkctrl_outclk\ : std_logic;
SIGNAL \ov5640_data_inst|cnt_pic[3]~0_combout\ : std_logic;
SIGNAL \ov5640_data_inst|cnt_pic[2]~1_combout\ : std_logic;
SIGNAL \ov5640_data_inst|cnt_pic[0]~3_combout\ : std_logic;
SIGNAL \ov5640_vsync~input_o\ : std_logic;
SIGNAL \ov5640_data_inst|ov5640_vsync_dly~q\ : std_logic;
SIGNAL \ov5640_data_inst|always4~0_combout\ : std_logic;
SIGNAL \ov5640_data_inst|pic_valid~0_combout\ : std_logic;
SIGNAL \ov5640_data_inst|pic_valid~q\ : std_logic;
SIGNAL \ov5640_href~input_o\ : std_logic;
SIGNAL \ov5640_data_inst|data_out_reg[0]~0_combout\ : std_logic;
SIGNAL \ov5640_data_inst|data_flag~q\ : std_logic;
SIGNAL \ov5640_data_inst|data_flag_dly1~q\ : std_logic;
SIGNAL \ov5640_data_inst|ov5640_wr_en~0_combout\ : std_logic;
SIGNAL \ov5640_data[0]~input_o\ : std_logic;
SIGNAL \ov5640_data_inst|ov5640_data_out[0]~0_combout\ : std_logic;
SIGNAL \ov5640_data[1]~input_o\ : std_logic;
SIGNAL \ov5640_data_inst|ov5640_data_out[1]~1_combout\ : std_logic;
SIGNAL \ov5640_data[2]~input_o\ : std_logic;
SIGNAL \ov5640_data_inst|ov5640_data_out[2]~2_combout\ : std_logic;
SIGNAL \ov5640_data[3]~input_o\ : std_logic;
SIGNAL \ov5640_data_inst|ov5640_data_out[3]~3_combout\ : std_logic;
SIGNAL \ov5640_data[4]~input_o\ : std_logic;
SIGNAL \ov5640_data_inst|ov5640_data_out[4]~4_combout\ : std_logic;
SIGNAL \ov5640_data[5]~input_o\ : std_logic;
SIGNAL \ov5640_data_inst|ov5640_data_out[5]~5_combout\ : std_logic;
SIGNAL \ov5640_data[6]~input_o\ : std_logic;
SIGNAL \ov5640_data_inst|ov5640_data_out[6]~6_combout\ : std_logic;
SIGNAL \ov5640_data[7]~input_o\ : std_logic;
SIGNAL \ov5640_data_inst|ov5640_data_out[7]~7_combout\ : std_logic;
SIGNAL \ov5640_data_inst|pic_data_reg~0_combout\ : std_logic;
SIGNAL \ov5640_data_inst|ov5640_data_out[8]~8_combout\ : std_logic;
SIGNAL \ov5640_data_inst|pic_data_reg~1_combout\ : std_logic;
SIGNAL \ov5640_data_inst|ov5640_data_out[9]~9_combout\ : std_logic;
SIGNAL \ov5640_data_inst|pic_data_reg~2_combout\ : std_logic;
SIGNAL \ov5640_data_inst|ov5640_data_out[10]~10_combout\ : std_logic;
SIGNAL \ov5640_data_inst|pic_data_reg~3_combout\ : std_logic;
SIGNAL \ov5640_data_inst|ov5640_data_out[11]~11_combout\ : std_logic;
SIGNAL \ov5640_data_inst|pic_data_reg~4_combout\ : std_logic;
SIGNAL \ov5640_data_inst|ov5640_data_out[12]~12_combout\ : std_logic;
SIGNAL \ov5640_data_inst|pic_data_reg~5_combout\ : std_logic;
SIGNAL \ov5640_data_inst|ov5640_data_out[13]~13_combout\ : std_logic;
SIGNAL \ov5640_data_inst|pic_data_reg~6_combout\ : std_logic;
SIGNAL \ov5640_data_inst|ov5640_data_out[14]~14_combout\ : std_logic;
SIGNAL \ov5640_data_inst|pic_data_reg~7_combout\ : std_logic;
SIGNAL \ov5640_data_inst|ov5640_data_out[15]~15_combout\ : std_logic;
SIGNAL \i2c_ctrl_inst|cnt_i2c_clk\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \i2c_ctrl_inst|cnt_clk\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \i2c_ctrl_inst|cnt_bit\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \ov5640_cfg_inst|cnt_wait\ : std_logic_vector(14 DOWNTO 0);
SIGNAL \ov5640_data_inst|pic_data_reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ov5640_data_inst|data_out_reg\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \ov5640_data_inst|cnt_pic\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_comb~0clkctrl_outclk\ : std_logic;
SIGNAL \i2c_ctrl_inst|ALT_INV_i2c_clk~clkctrl_outclk\ : std_logic;
SIGNAL \i2c_ctrl_inst|ALT_INV_state.ACK_1~q\ : std_logic;

BEGIN

ww_sys_clk <= sys_clk;
ww_sys_rst_n <= sys_rst_n;
ww_sys_init_done <= sys_init_done;
ww_ov5640_pclk <= ov5640_pclk;
ww_ov5640_href <= ov5640_href;
ww_ov5640_vsync <= ov5640_vsync;
ww_ov5640_data <= ov5640_data;
cfg_done <= ww_cfg_done;
sccb_scl <= ww_sccb_scl;
sccb_sda <= ww_sccb_sda;
ov5640_wr_en <= ww_ov5640_wr_en;
ov5640_data_out <= ww_ov5640_data_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\sys_rst_n~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \sys_rst_n~input_o\);

\sys_clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \sys_clk~input_o\);

\ov5640_pclk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \ov5640_pclk~input_o\);

\i2c_ctrl_inst|i2c_clk~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \i2c_ctrl_inst|i2c_clk~q\);

\comb~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \comb~0_combout\);
\ALT_INV_comb~0clkctrl_outclk\ <= NOT \comb~0clkctrl_outclk\;
\i2c_ctrl_inst|ALT_INV_i2c_clk~clkctrl_outclk\ <= NOT \i2c_ctrl_inst|i2c_clk~clkctrl_outclk\;
\i2c_ctrl_inst|ALT_INV_state.ACK_1~q\ <= NOT \i2c_ctrl_inst|state.ACK_1~q\;

-- Location: IOOBUF_X8_Y0_N9
\sccb_sda~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2c_ctrl_inst|Selector1~2_combout\,
	oe => \i2c_ctrl_inst|ALT_INV_state.ACK_1~q\,
	devoe => ww_devoe,
	o => \sccb_sda~output_o\);

-- Location: IOOBUF_X12_Y0_N2
\cfg_done~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \cfg_done~output_o\);

-- Location: IOOBUF_X8_Y0_N2
\sccb_scl~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \i2c_ctrl_inst|Selector21~0_combout\,
	devoe => ww_devoe,
	o => \sccb_scl~output_o\);

-- Location: IOOBUF_X33_Y25_N2
\ov5640_wr_en~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ov5640_data_inst|ov5640_wr_en~0_combout\,
	devoe => ww_devoe,
	o => \ov5640_wr_en~output_o\);

-- Location: IOOBUF_X29_Y31_N9
\ov5640_data_out[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ov5640_data_inst|ov5640_data_out[0]~0_combout\,
	devoe => ww_devoe,
	o => \ov5640_data_out[0]~output_o\);

-- Location: IOOBUF_X26_Y31_N2
\ov5640_data_out[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ov5640_data_inst|ov5640_data_out[1]~1_combout\,
	devoe => ww_devoe,
	o => \ov5640_data_out[1]~output_o\);

-- Location: IOOBUF_X26_Y31_N9
\ov5640_data_out[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ov5640_data_inst|ov5640_data_out[2]~2_combout\,
	devoe => ww_devoe,
	o => \ov5640_data_out[2]~output_o\);

-- Location: IOOBUF_X24_Y31_N2
\ov5640_data_out[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ov5640_data_inst|ov5640_data_out[3]~3_combout\,
	devoe => ww_devoe,
	o => \ov5640_data_out[3]~output_o\);

-- Location: IOOBUF_X29_Y31_N2
\ov5640_data_out[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ov5640_data_inst|ov5640_data_out[4]~4_combout\,
	devoe => ww_devoe,
	o => \ov5640_data_out[4]~output_o\);

-- Location: IOOBUF_X33_Y25_N9
\ov5640_data_out[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ov5640_data_inst|ov5640_data_out[5]~5_combout\,
	devoe => ww_devoe,
	o => \ov5640_data_out[5]~output_o\);

-- Location: IOOBUF_X33_Y14_N9
\ov5640_data_out[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ov5640_data_inst|ov5640_data_out[6]~6_combout\,
	devoe => ww_devoe,
	o => \ov5640_data_out[6]~output_o\);

-- Location: IOOBUF_X20_Y31_N9
\ov5640_data_out[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ov5640_data_inst|ov5640_data_out[7]~7_combout\,
	devoe => ww_devoe,
	o => \ov5640_data_out[7]~output_o\);

-- Location: IOOBUF_X20_Y31_N2
\ov5640_data_out[8]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ov5640_data_inst|ov5640_data_out[8]~8_combout\,
	devoe => ww_devoe,
	o => \ov5640_data_out[8]~output_o\);

-- Location: IOOBUF_X33_Y24_N2
\ov5640_data_out[9]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ov5640_data_inst|ov5640_data_out[9]~9_combout\,
	devoe => ww_devoe,
	o => \ov5640_data_out[9]~output_o\);

-- Location: IOOBUF_X33_Y15_N9
\ov5640_data_out[10]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ov5640_data_inst|ov5640_data_out[10]~10_combout\,
	devoe => ww_devoe,
	o => \ov5640_data_out[10]~output_o\);

-- Location: IOOBUF_X22_Y31_N2
\ov5640_data_out[11]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ov5640_data_inst|ov5640_data_out[11]~11_combout\,
	devoe => ww_devoe,
	o => \ov5640_data_out[11]~output_o\);

-- Location: IOOBUF_X33_Y15_N2
\ov5640_data_out[12]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ov5640_data_inst|ov5640_data_out[12]~12_combout\,
	devoe => ww_devoe,
	o => \ov5640_data_out[12]~output_o\);

-- Location: IOOBUF_X14_Y31_N2
\ov5640_data_out[13]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ov5640_data_inst|ov5640_data_out[13]~13_combout\,
	devoe => ww_devoe,
	o => \ov5640_data_out[13]~output_o\);

-- Location: IOOBUF_X24_Y31_N9
\ov5640_data_out[14]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ov5640_data_inst|ov5640_data_out[14]~14_combout\,
	devoe => ww_devoe,
	o => \ov5640_data_out[14]~output_o\);

-- Location: IOOBUF_X22_Y31_N9
\ov5640_data_out[15]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ov5640_data_inst|ov5640_data_out[15]~15_combout\,
	devoe => ww_devoe,
	o => \ov5640_data_out[15]~output_o\);

-- Location: IOIBUF_X16_Y0_N22
\sys_clk~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sys_clk,
	o => \sys_clk~input_o\);

-- Location: CLKCTRL_G19
\sys_clk~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \sys_clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \sys_clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X1_Y15_N0
\i2c_ctrl_inst|Add0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \i2c_ctrl_inst|Add0~0_combout\ = \i2c_ctrl_inst|cnt_clk\(0) $ (VCC)
-- \i2c_ctrl_inst|Add0~1\ = CARRY(\i2c_ctrl_inst|cnt_clk\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i2c_ctrl_inst|cnt_clk\(0),
	datad => VCC,
	combout => \i2c_ctrl_inst|Add0~0_combout\,
	cout => \i2c_ctrl_inst|Add0~1\);

-- Location: LCCOMB_X1_Y15_N24
\i2c_ctrl_inst|cnt_clk~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \i2c_ctrl_inst|cnt_clk~2_combout\ = (\i2c_ctrl_inst|Add0~0_combout\ & ((!\i2c_ctrl_inst|Equal0~1_combout\) # (!\i2c_ctrl_inst|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_ctrl_inst|Equal0~0_combout\,
	datab => \i2c_ctrl_inst|Equal0~1_combout\,
	datac => \i2c_ctrl_inst|Add0~0_combout\,
	combout => \i2c_ctrl_inst|cnt_clk~2_combout\);

-- Location: IOIBUF_X16_Y0_N1
\sys_rst_n~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sys_rst_n,
	o => \sys_rst_n~input_o\);

-- Location: CLKCTRL_G18
\sys_rst_n~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \sys_rst_n~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \sys_rst_n~inputclkctrl_outclk\);

-- Location: FF_X1_Y15_N25
\i2c_ctrl_inst|cnt_clk[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \i2c_ctrl_inst|cnt_clk~2_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_ctrl_inst|cnt_clk\(0));

-- Location: LCCOMB_X1_Y15_N2
\i2c_ctrl_inst|Add0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \i2c_ctrl_inst|Add0~2_combout\ = (\i2c_ctrl_inst|cnt_clk\(1) & (!\i2c_ctrl_inst|Add0~1\)) # (!\i2c_ctrl_inst|cnt_clk\(1) & ((\i2c_ctrl_inst|Add0~1\) # (GND)))
-- \i2c_ctrl_inst|Add0~3\ = CARRY((!\i2c_ctrl_inst|Add0~1\) # (!\i2c_ctrl_inst|cnt_clk\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i2c_ctrl_inst|cnt_clk\(1),
	datad => VCC,
	cin => \i2c_ctrl_inst|Add0~1\,
	combout => \i2c_ctrl_inst|Add0~2_combout\,
	cout => \i2c_ctrl_inst|Add0~3\);

-- Location: FF_X1_Y15_N3
\i2c_ctrl_inst|cnt_clk[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \i2c_ctrl_inst|Add0~2_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_ctrl_inst|cnt_clk\(1));

-- Location: LCCOMB_X1_Y15_N4
\i2c_ctrl_inst|Add0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \i2c_ctrl_inst|Add0~4_combout\ = (\i2c_ctrl_inst|cnt_clk\(2) & (\i2c_ctrl_inst|Add0~3\ $ (GND))) # (!\i2c_ctrl_inst|cnt_clk\(2) & (!\i2c_ctrl_inst|Add0~3\ & VCC))
-- \i2c_ctrl_inst|Add0~5\ = CARRY((\i2c_ctrl_inst|cnt_clk\(2) & !\i2c_ctrl_inst|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i2c_ctrl_inst|cnt_clk\(2),
	datad => VCC,
	cin => \i2c_ctrl_inst|Add0~3\,
	combout => \i2c_ctrl_inst|Add0~4_combout\,
	cout => \i2c_ctrl_inst|Add0~5\);

-- Location: FF_X1_Y15_N5
\i2c_ctrl_inst|cnt_clk[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \i2c_ctrl_inst|Add0~4_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_ctrl_inst|cnt_clk\(2));

-- Location: LCCOMB_X1_Y15_N6
\i2c_ctrl_inst|Add0~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \i2c_ctrl_inst|Add0~6_combout\ = (\i2c_ctrl_inst|cnt_clk\(3) & (!\i2c_ctrl_inst|Add0~5\)) # (!\i2c_ctrl_inst|cnt_clk\(3) & ((\i2c_ctrl_inst|Add0~5\) # (GND)))
-- \i2c_ctrl_inst|Add0~7\ = CARRY((!\i2c_ctrl_inst|Add0~5\) # (!\i2c_ctrl_inst|cnt_clk\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_ctrl_inst|cnt_clk\(3),
	datad => VCC,
	cin => \i2c_ctrl_inst|Add0~5\,
	combout => \i2c_ctrl_inst|Add0~6_combout\,
	cout => \i2c_ctrl_inst|Add0~7\);

-- Location: LCCOMB_X1_Y15_N30
\i2c_ctrl_inst|cnt_clk~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \i2c_ctrl_inst|cnt_clk~1_combout\ = (\i2c_ctrl_inst|Add0~6_combout\ & ((!\i2c_ctrl_inst|Equal0~1_combout\) # (!\i2c_ctrl_inst|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_ctrl_inst|Equal0~0_combout\,
	datac => \i2c_ctrl_inst|Equal0~1_combout\,
	datad => \i2c_ctrl_inst|Add0~6_combout\,
	combout => \i2c_ctrl_inst|cnt_clk~1_combout\);

-- Location: FF_X1_Y15_N31
\i2c_ctrl_inst|cnt_clk[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \i2c_ctrl_inst|cnt_clk~1_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_ctrl_inst|cnt_clk\(3));

-- Location: LCCOMB_X1_Y15_N20
\i2c_ctrl_inst|Equal0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \i2c_ctrl_inst|Equal0~1_combout\ = (\i2c_ctrl_inst|cnt_clk\(3) & (!\i2c_ctrl_inst|cnt_clk\(1) & (!\i2c_ctrl_inst|cnt_clk\(2) & !\i2c_ctrl_inst|cnt_clk\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_ctrl_inst|cnt_clk\(3),
	datab => \i2c_ctrl_inst|cnt_clk\(1),
	datac => \i2c_ctrl_inst|cnt_clk\(2),
	datad => \i2c_ctrl_inst|cnt_clk\(0),
	combout => \i2c_ctrl_inst|Equal0~1_combout\);

-- Location: LCCOMB_X1_Y15_N8
\i2c_ctrl_inst|Add0~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \i2c_ctrl_inst|Add0~8_combout\ = (\i2c_ctrl_inst|cnt_clk\(4) & (\i2c_ctrl_inst|Add0~7\ $ (GND))) # (!\i2c_ctrl_inst|cnt_clk\(4) & (!\i2c_ctrl_inst|Add0~7\ & VCC))
-- \i2c_ctrl_inst|Add0~9\ = CARRY((\i2c_ctrl_inst|cnt_clk\(4) & !\i2c_ctrl_inst|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i2c_ctrl_inst|cnt_clk\(4),
	datad => VCC,
	cin => \i2c_ctrl_inst|Add0~7\,
	combout => \i2c_ctrl_inst|Add0~8_combout\,
	cout => \i2c_ctrl_inst|Add0~9\);

-- Location: LCCOMB_X1_Y15_N28
\i2c_ctrl_inst|cnt_clk~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \i2c_ctrl_inst|cnt_clk~0_combout\ = (\i2c_ctrl_inst|Add0~8_combout\ & ((!\i2c_ctrl_inst|Equal0~1_combout\) # (!\i2c_ctrl_inst|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_ctrl_inst|Equal0~0_combout\,
	datab => \i2c_ctrl_inst|Equal0~1_combout\,
	datac => \i2c_ctrl_inst|Add0~8_combout\,
	combout => \i2c_ctrl_inst|cnt_clk~0_combout\);

-- Location: FF_X1_Y15_N29
\i2c_ctrl_inst|cnt_clk[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \i2c_ctrl_inst|cnt_clk~0_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_ctrl_inst|cnt_clk\(4));

-- Location: LCCOMB_X1_Y15_N10
\i2c_ctrl_inst|Add0~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \i2c_ctrl_inst|Add0~10_combout\ = (\i2c_ctrl_inst|cnt_clk\(5) & (!\i2c_ctrl_inst|Add0~9\)) # (!\i2c_ctrl_inst|cnt_clk\(5) & ((\i2c_ctrl_inst|Add0~9\) # (GND)))
-- \i2c_ctrl_inst|Add0~11\ = CARRY((!\i2c_ctrl_inst|Add0~9\) # (!\i2c_ctrl_inst|cnt_clk\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_ctrl_inst|cnt_clk\(5),
	datad => VCC,
	cin => \i2c_ctrl_inst|Add0~9\,
	combout => \i2c_ctrl_inst|Add0~10_combout\,
	cout => \i2c_ctrl_inst|Add0~11\);

-- Location: FF_X1_Y15_N11
\i2c_ctrl_inst|cnt_clk[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \i2c_ctrl_inst|Add0~10_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_ctrl_inst|cnt_clk\(5));

-- Location: LCCOMB_X1_Y15_N12
\i2c_ctrl_inst|Add0~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \i2c_ctrl_inst|Add0~12_combout\ = (\i2c_ctrl_inst|cnt_clk\(6) & (\i2c_ctrl_inst|Add0~11\ $ (GND))) # (!\i2c_ctrl_inst|cnt_clk\(6) & (!\i2c_ctrl_inst|Add0~11\ & VCC))
-- \i2c_ctrl_inst|Add0~13\ = CARRY((\i2c_ctrl_inst|cnt_clk\(6) & !\i2c_ctrl_inst|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_ctrl_inst|cnt_clk\(6),
	datad => VCC,
	cin => \i2c_ctrl_inst|Add0~11\,
	combout => \i2c_ctrl_inst|Add0~12_combout\,
	cout => \i2c_ctrl_inst|Add0~13\);

-- Location: FF_X1_Y15_N13
\i2c_ctrl_inst|cnt_clk[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \i2c_ctrl_inst|Add0~12_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_ctrl_inst|cnt_clk\(6));

-- Location: LCCOMB_X1_Y15_N14
\i2c_ctrl_inst|Add0~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \i2c_ctrl_inst|Add0~14_combout\ = \i2c_ctrl_inst|cnt_clk\(7) $ (\i2c_ctrl_inst|Add0~13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \i2c_ctrl_inst|cnt_clk\(7),
	cin => \i2c_ctrl_inst|Add0~13\,
	combout => \i2c_ctrl_inst|Add0~14_combout\);

-- Location: FF_X1_Y15_N15
\i2c_ctrl_inst|cnt_clk[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \i2c_ctrl_inst|Add0~14_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_ctrl_inst|cnt_clk\(7));

-- Location: LCCOMB_X1_Y15_N22
\i2c_ctrl_inst|Equal0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \i2c_ctrl_inst|Equal0~0_combout\ = (!\i2c_ctrl_inst|cnt_clk\(6) & (\i2c_ctrl_inst|cnt_clk\(4) & (!\i2c_ctrl_inst|cnt_clk\(7) & !\i2c_ctrl_inst|cnt_clk\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_ctrl_inst|cnt_clk\(6),
	datab => \i2c_ctrl_inst|cnt_clk\(4),
	datac => \i2c_ctrl_inst|cnt_clk\(7),
	datad => \i2c_ctrl_inst|cnt_clk\(5),
	combout => \i2c_ctrl_inst|Equal0~0_combout\);

-- Location: LCCOMB_X1_Y15_N18
\i2c_ctrl_inst|i2c_clk~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \i2c_ctrl_inst|i2c_clk~0_combout\ = \i2c_ctrl_inst|i2c_clk~q\ $ (((\i2c_ctrl_inst|Equal0~0_combout\ & \i2c_ctrl_inst|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_ctrl_inst|i2c_clk~q\,
	datac => \i2c_ctrl_inst|Equal0~0_combout\,
	datad => \i2c_ctrl_inst|Equal0~1_combout\,
	combout => \i2c_ctrl_inst|i2c_clk~0_combout\);

-- Location: LCCOMB_X1_Y15_N26
\i2c_ctrl_inst|i2c_clk~feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \i2c_ctrl_inst|i2c_clk~feeder_combout\ = \i2c_ctrl_inst|i2c_clk~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_ctrl_inst|i2c_clk~0_combout\,
	combout => \i2c_ctrl_inst|i2c_clk~feeder_combout\);

-- Location: FF_X1_Y15_N27
\i2c_ctrl_inst|i2c_clk\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sys_clk~inputclkctrl_outclk\,
	d => \i2c_ctrl_inst|i2c_clk~feeder_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_ctrl_inst|i2c_clk~q\);

-- Location: CLKCTRL_G1
\i2c_ctrl_inst|i2c_clk~clkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \i2c_ctrl_inst|i2c_clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \i2c_ctrl_inst|i2c_clk~clkctrl_outclk\);

-- Location: LCCOMB_X5_Y11_N14
\ov5640_cfg_inst|cnt_wait[7]~26\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ov5640_cfg_inst|cnt_wait[7]~26_combout\ = (\ov5640_cfg_inst|cnt_wait\(7) & (\ov5640_cfg_inst|cnt_wait[6]~25\ $ (GND))) # (!\ov5640_cfg_inst|cnt_wait\(7) & (!\ov5640_cfg_inst|cnt_wait[6]~25\ & VCC))
-- \ov5640_cfg_inst|cnt_wait[7]~27\ = CARRY((\ov5640_cfg_inst|cnt_wait\(7) & !\ov5640_cfg_inst|cnt_wait[6]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ov5640_cfg_inst|cnt_wait\(7),
	datad => VCC,
	cin => \ov5640_cfg_inst|cnt_wait[6]~25\,
	combout => \ov5640_cfg_inst|cnt_wait[7]~26_combout\,
	cout => \ov5640_cfg_inst|cnt_wait[7]~27\);

-- Location: LCCOMB_X5_Y11_N16
\ov5640_cfg_inst|cnt_wait[8]~28\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ov5640_cfg_inst|cnt_wait[8]~28_combout\ = (\ov5640_cfg_inst|cnt_wait\(8) & (!\ov5640_cfg_inst|cnt_wait[7]~27\)) # (!\ov5640_cfg_inst|cnt_wait\(8) & ((\ov5640_cfg_inst|cnt_wait[7]~27\) # (GND)))
-- \ov5640_cfg_inst|cnt_wait[8]~29\ = CARRY((!\ov5640_cfg_inst|cnt_wait[7]~27\) # (!\ov5640_cfg_inst|cnt_wait\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ov5640_cfg_inst|cnt_wait\(8),
	datad => VCC,
	cin => \ov5640_cfg_inst|cnt_wait[7]~27\,
	combout => \ov5640_cfg_inst|cnt_wait[8]~28_combout\,
	cout => \ov5640_cfg_inst|cnt_wait[8]~29\);

-- Location: FF_X5_Y11_N17
\ov5640_cfg_inst|cnt_wait[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2c_ctrl_inst|ALT_INV_i2c_clk~clkctrl_outclk\,
	d => \ov5640_cfg_inst|cnt_wait[8]~28_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	ena => \ov5640_cfg_inst|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ov5640_cfg_inst|cnt_wait\(8));

-- Location: LCCOMB_X5_Y11_N18
\ov5640_cfg_inst|cnt_wait[9]~31\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ov5640_cfg_inst|cnt_wait[9]~31_combout\ = (\ov5640_cfg_inst|cnt_wait\(9) & (\ov5640_cfg_inst|cnt_wait[8]~29\ $ (GND))) # (!\ov5640_cfg_inst|cnt_wait\(9) & (!\ov5640_cfg_inst|cnt_wait[8]~29\ & VCC))
-- \ov5640_cfg_inst|cnt_wait[9]~32\ = CARRY((\ov5640_cfg_inst|cnt_wait\(9) & !\ov5640_cfg_inst|cnt_wait[8]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ov5640_cfg_inst|cnt_wait\(9),
	datad => VCC,
	cin => \ov5640_cfg_inst|cnt_wait[8]~29\,
	combout => \ov5640_cfg_inst|cnt_wait[9]~31_combout\,
	cout => \ov5640_cfg_inst|cnt_wait[9]~32\);

-- Location: FF_X5_Y11_N19
\ov5640_cfg_inst|cnt_wait[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2c_ctrl_inst|ALT_INV_i2c_clk~clkctrl_outclk\,
	d => \ov5640_cfg_inst|cnt_wait[9]~31_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	ena => \ov5640_cfg_inst|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ov5640_cfg_inst|cnt_wait\(9));

-- Location: LCCOMB_X5_Y11_N20
\ov5640_cfg_inst|cnt_wait[10]~33\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ov5640_cfg_inst|cnt_wait[10]~33_combout\ = (\ov5640_cfg_inst|cnt_wait\(10) & (!\ov5640_cfg_inst|cnt_wait[9]~32\)) # (!\ov5640_cfg_inst|cnt_wait\(10) & ((\ov5640_cfg_inst|cnt_wait[9]~32\) # (GND)))
-- \ov5640_cfg_inst|cnt_wait[10]~34\ = CARRY((!\ov5640_cfg_inst|cnt_wait[9]~32\) # (!\ov5640_cfg_inst|cnt_wait\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ov5640_cfg_inst|cnt_wait\(10),
	datad => VCC,
	cin => \ov5640_cfg_inst|cnt_wait[9]~32\,
	combout => \ov5640_cfg_inst|cnt_wait[10]~33_combout\,
	cout => \ov5640_cfg_inst|cnt_wait[10]~34\);

-- Location: FF_X5_Y11_N21
\ov5640_cfg_inst|cnt_wait[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2c_ctrl_inst|ALT_INV_i2c_clk~clkctrl_outclk\,
	d => \ov5640_cfg_inst|cnt_wait[10]~33_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	ena => \ov5640_cfg_inst|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ov5640_cfg_inst|cnt_wait\(10));

-- Location: LCCOMB_X5_Y11_N22
\ov5640_cfg_inst|cnt_wait[11]~35\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ov5640_cfg_inst|cnt_wait[11]~35_combout\ = (\ov5640_cfg_inst|cnt_wait\(11) & (\ov5640_cfg_inst|cnt_wait[10]~34\ $ (GND))) # (!\ov5640_cfg_inst|cnt_wait\(11) & (!\ov5640_cfg_inst|cnt_wait[10]~34\ & VCC))
-- \ov5640_cfg_inst|cnt_wait[11]~36\ = CARRY((\ov5640_cfg_inst|cnt_wait\(11) & !\ov5640_cfg_inst|cnt_wait[10]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ov5640_cfg_inst|cnt_wait\(11),
	datad => VCC,
	cin => \ov5640_cfg_inst|cnt_wait[10]~34\,
	combout => \ov5640_cfg_inst|cnt_wait[11]~35_combout\,
	cout => \ov5640_cfg_inst|cnt_wait[11]~36\);

-- Location: FF_X5_Y11_N23
\ov5640_cfg_inst|cnt_wait[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2c_ctrl_inst|ALT_INV_i2c_clk~clkctrl_outclk\,
	d => \ov5640_cfg_inst|cnt_wait[11]~35_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	ena => \ov5640_cfg_inst|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ov5640_cfg_inst|cnt_wait\(11));

-- Location: LCCOMB_X5_Y11_N24
\ov5640_cfg_inst|cnt_wait[12]~37\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ov5640_cfg_inst|cnt_wait[12]~37_combout\ = (\ov5640_cfg_inst|cnt_wait\(12) & (!\ov5640_cfg_inst|cnt_wait[11]~36\)) # (!\ov5640_cfg_inst|cnt_wait\(12) & ((\ov5640_cfg_inst|cnt_wait[11]~36\) # (GND)))
-- \ov5640_cfg_inst|cnt_wait[12]~38\ = CARRY((!\ov5640_cfg_inst|cnt_wait[11]~36\) # (!\ov5640_cfg_inst|cnt_wait\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ov5640_cfg_inst|cnt_wait\(12),
	datad => VCC,
	cin => \ov5640_cfg_inst|cnt_wait[11]~36\,
	combout => \ov5640_cfg_inst|cnt_wait[12]~37_combout\,
	cout => \ov5640_cfg_inst|cnt_wait[12]~38\);

-- Location: FF_X5_Y11_N25
\ov5640_cfg_inst|cnt_wait[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2c_ctrl_inst|ALT_INV_i2c_clk~clkctrl_outclk\,
	d => \ov5640_cfg_inst|cnt_wait[12]~37_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	ena => \ov5640_cfg_inst|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ov5640_cfg_inst|cnt_wait\(12));

-- Location: LCCOMB_X5_Y11_N26
\ov5640_cfg_inst|cnt_wait[13]~39\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ov5640_cfg_inst|cnt_wait[13]~39_combout\ = (\ov5640_cfg_inst|cnt_wait\(13) & (\ov5640_cfg_inst|cnt_wait[12]~38\ $ (GND))) # (!\ov5640_cfg_inst|cnt_wait\(13) & (!\ov5640_cfg_inst|cnt_wait[12]~38\ & VCC))
-- \ov5640_cfg_inst|cnt_wait[13]~40\ = CARRY((\ov5640_cfg_inst|cnt_wait\(13) & !\ov5640_cfg_inst|cnt_wait[12]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ov5640_cfg_inst|cnt_wait\(13),
	datad => VCC,
	cin => \ov5640_cfg_inst|cnt_wait[12]~38\,
	combout => \ov5640_cfg_inst|cnt_wait[13]~39_combout\,
	cout => \ov5640_cfg_inst|cnt_wait[13]~40\);

-- Location: FF_X5_Y11_N27
\ov5640_cfg_inst|cnt_wait[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2c_ctrl_inst|ALT_INV_i2c_clk~clkctrl_outclk\,
	d => \ov5640_cfg_inst|cnt_wait[13]~39_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	ena => \ov5640_cfg_inst|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ov5640_cfg_inst|cnt_wait\(13));

-- Location: LCCOMB_X5_Y11_N28
\ov5640_cfg_inst|cnt_wait[14]~41\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ov5640_cfg_inst|cnt_wait[14]~41_combout\ = \ov5640_cfg_inst|cnt_wait[13]~40\ $ (\ov5640_cfg_inst|cnt_wait\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \ov5640_cfg_inst|cnt_wait\(14),
	cin => \ov5640_cfg_inst|cnt_wait[13]~40\,
	combout => \ov5640_cfg_inst|cnt_wait[14]~41_combout\);

-- Location: FF_X5_Y11_N29
\ov5640_cfg_inst|cnt_wait[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2c_ctrl_inst|ALT_INV_i2c_clk~clkctrl_outclk\,
	d => \ov5640_cfg_inst|cnt_wait[14]~41_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	ena => \ov5640_cfg_inst|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ov5640_cfg_inst|cnt_wait\(14));

-- Location: LCCOMB_X5_Y11_N0
\ov5640_cfg_inst|Equal0~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ov5640_cfg_inst|Equal0~5_combout\ = (!\ov5640_cfg_inst|cnt_wait\(13) & !\ov5640_cfg_inst|cnt_wait\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ov5640_cfg_inst|cnt_wait\(13),
	datad => \ov5640_cfg_inst|cnt_wait\(12),
	combout => \ov5640_cfg_inst|Equal0~5_combout\);

-- Location: LCCOMB_X6_Y11_N10
\ov5640_cfg_inst|Equal0~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ov5640_cfg_inst|Equal0~1_combout\ = (\ov5640_cfg_inst|cnt_wait\(10) & (\ov5640_cfg_inst|cnt_wait\(9) & \ov5640_cfg_inst|cnt_wait\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ov5640_cfg_inst|cnt_wait\(10),
	datac => \ov5640_cfg_inst|cnt_wait\(9),
	datad => \ov5640_cfg_inst|cnt_wait\(11),
	combout => \ov5640_cfg_inst|Equal0~1_combout\);

-- Location: LCCOMB_X5_Y11_N30
\ov5640_cfg_inst|LessThan0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ov5640_cfg_inst|LessThan0~0_combout\ = ((\ov5640_cfg_inst|Equal0~5_combout\ & ((\ov5640_cfg_inst|Equal0~0_combout\) # (!\ov5640_cfg_inst|Equal0~1_combout\)))) # (!\ov5640_cfg_inst|cnt_wait\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ov5640_cfg_inst|cnt_wait\(14),
	datab => \ov5640_cfg_inst|Equal0~5_combout\,
	datac => \ov5640_cfg_inst|Equal0~1_combout\,
	datad => \ov5640_cfg_inst|Equal0~0_combout\,
	combout => \ov5640_cfg_inst|LessThan0~0_combout\);

-- Location: LCCOMB_X6_Y11_N4
\ov5640_cfg_inst|cnt_wait[0]~30\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ov5640_cfg_inst|cnt_wait[0]~30_combout\ = \ov5640_cfg_inst|cnt_wait\(0) $ (\ov5640_cfg_inst|LessThan0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ov5640_cfg_inst|cnt_wait\(0),
	datad => \ov5640_cfg_inst|LessThan0~0_combout\,
	combout => \ov5640_cfg_inst|cnt_wait[0]~30_combout\);

-- Location: FF_X6_Y11_N5
\ov5640_cfg_inst|cnt_wait[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2c_ctrl_inst|ALT_INV_i2c_clk~clkctrl_outclk\,
	d => \ov5640_cfg_inst|cnt_wait[0]~30_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ov5640_cfg_inst|cnt_wait\(0));

-- Location: LCCOMB_X5_Y11_N2
\ov5640_cfg_inst|cnt_wait[1]~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ov5640_cfg_inst|cnt_wait[1]~14_combout\ = (\ov5640_cfg_inst|cnt_wait\(0) & (\ov5640_cfg_inst|cnt_wait\(1) $ (VCC))) # (!\ov5640_cfg_inst|cnt_wait\(0) & (\ov5640_cfg_inst|cnt_wait\(1) & VCC))
-- \ov5640_cfg_inst|cnt_wait[1]~15\ = CARRY((\ov5640_cfg_inst|cnt_wait\(0) & \ov5640_cfg_inst|cnt_wait\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ov5640_cfg_inst|cnt_wait\(0),
	datab => \ov5640_cfg_inst|cnt_wait\(1),
	datad => VCC,
	combout => \ov5640_cfg_inst|cnt_wait[1]~14_combout\,
	cout => \ov5640_cfg_inst|cnt_wait[1]~15\);

-- Location: FF_X5_Y11_N3
\ov5640_cfg_inst|cnt_wait[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2c_ctrl_inst|ALT_INV_i2c_clk~clkctrl_outclk\,
	d => \ov5640_cfg_inst|cnt_wait[1]~14_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	ena => \ov5640_cfg_inst|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ov5640_cfg_inst|cnt_wait\(1));

-- Location: LCCOMB_X5_Y11_N4
\ov5640_cfg_inst|cnt_wait[2]~16\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ov5640_cfg_inst|cnt_wait[2]~16_combout\ = (\ov5640_cfg_inst|cnt_wait\(2) & (!\ov5640_cfg_inst|cnt_wait[1]~15\)) # (!\ov5640_cfg_inst|cnt_wait\(2) & ((\ov5640_cfg_inst|cnt_wait[1]~15\) # (GND)))
-- \ov5640_cfg_inst|cnt_wait[2]~17\ = CARRY((!\ov5640_cfg_inst|cnt_wait[1]~15\) # (!\ov5640_cfg_inst|cnt_wait\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ov5640_cfg_inst|cnt_wait\(2),
	datad => VCC,
	cin => \ov5640_cfg_inst|cnt_wait[1]~15\,
	combout => \ov5640_cfg_inst|cnt_wait[2]~16_combout\,
	cout => \ov5640_cfg_inst|cnt_wait[2]~17\);

-- Location: FF_X5_Y11_N5
\ov5640_cfg_inst|cnt_wait[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2c_ctrl_inst|ALT_INV_i2c_clk~clkctrl_outclk\,
	d => \ov5640_cfg_inst|cnt_wait[2]~16_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	ena => \ov5640_cfg_inst|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ov5640_cfg_inst|cnt_wait\(2));

-- Location: LCCOMB_X5_Y11_N6
\ov5640_cfg_inst|cnt_wait[3]~18\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ov5640_cfg_inst|cnt_wait[3]~18_combout\ = (\ov5640_cfg_inst|cnt_wait\(3) & (\ov5640_cfg_inst|cnt_wait[2]~17\ $ (GND))) # (!\ov5640_cfg_inst|cnt_wait\(3) & (!\ov5640_cfg_inst|cnt_wait[2]~17\ & VCC))
-- \ov5640_cfg_inst|cnt_wait[3]~19\ = CARRY((\ov5640_cfg_inst|cnt_wait\(3) & !\ov5640_cfg_inst|cnt_wait[2]~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ov5640_cfg_inst|cnt_wait\(3),
	datad => VCC,
	cin => \ov5640_cfg_inst|cnt_wait[2]~17\,
	combout => \ov5640_cfg_inst|cnt_wait[3]~18_combout\,
	cout => \ov5640_cfg_inst|cnt_wait[3]~19\);

-- Location: FF_X5_Y11_N7
\ov5640_cfg_inst|cnt_wait[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2c_ctrl_inst|ALT_INV_i2c_clk~clkctrl_outclk\,
	d => \ov5640_cfg_inst|cnt_wait[3]~18_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	ena => \ov5640_cfg_inst|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ov5640_cfg_inst|cnt_wait\(3));

-- Location: LCCOMB_X5_Y11_N8
\ov5640_cfg_inst|cnt_wait[4]~20\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ov5640_cfg_inst|cnt_wait[4]~20_combout\ = (\ov5640_cfg_inst|cnt_wait\(4) & (!\ov5640_cfg_inst|cnt_wait[3]~19\)) # (!\ov5640_cfg_inst|cnt_wait\(4) & ((\ov5640_cfg_inst|cnt_wait[3]~19\) # (GND)))
-- \ov5640_cfg_inst|cnt_wait[4]~21\ = CARRY((!\ov5640_cfg_inst|cnt_wait[3]~19\) # (!\ov5640_cfg_inst|cnt_wait\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \ov5640_cfg_inst|cnt_wait\(4),
	datad => VCC,
	cin => \ov5640_cfg_inst|cnt_wait[3]~19\,
	combout => \ov5640_cfg_inst|cnt_wait[4]~20_combout\,
	cout => \ov5640_cfg_inst|cnt_wait[4]~21\);

-- Location: FF_X5_Y11_N9
\ov5640_cfg_inst|cnt_wait[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2c_ctrl_inst|ALT_INV_i2c_clk~clkctrl_outclk\,
	d => \ov5640_cfg_inst|cnt_wait[4]~20_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	ena => \ov5640_cfg_inst|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ov5640_cfg_inst|cnt_wait\(4));

-- Location: LCCOMB_X5_Y11_N10
\ov5640_cfg_inst|cnt_wait[5]~22\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ov5640_cfg_inst|cnt_wait[5]~22_combout\ = (\ov5640_cfg_inst|cnt_wait\(5) & (\ov5640_cfg_inst|cnt_wait[4]~21\ $ (GND))) # (!\ov5640_cfg_inst|cnt_wait\(5) & (!\ov5640_cfg_inst|cnt_wait[4]~21\ & VCC))
-- \ov5640_cfg_inst|cnt_wait[5]~23\ = CARRY((\ov5640_cfg_inst|cnt_wait\(5) & !\ov5640_cfg_inst|cnt_wait[4]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ov5640_cfg_inst|cnt_wait\(5),
	datad => VCC,
	cin => \ov5640_cfg_inst|cnt_wait[4]~21\,
	combout => \ov5640_cfg_inst|cnt_wait[5]~22_combout\,
	cout => \ov5640_cfg_inst|cnt_wait[5]~23\);

-- Location: FF_X5_Y11_N11
\ov5640_cfg_inst|cnt_wait[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2c_ctrl_inst|ALT_INV_i2c_clk~clkctrl_outclk\,
	d => \ov5640_cfg_inst|cnt_wait[5]~22_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	ena => \ov5640_cfg_inst|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ov5640_cfg_inst|cnt_wait\(5));

-- Location: LCCOMB_X5_Y11_N12
\ov5640_cfg_inst|cnt_wait[6]~24\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ov5640_cfg_inst|cnt_wait[6]~24_combout\ = (\ov5640_cfg_inst|cnt_wait\(6) & (!\ov5640_cfg_inst|cnt_wait[5]~23\)) # (!\ov5640_cfg_inst|cnt_wait\(6) & ((\ov5640_cfg_inst|cnt_wait[5]~23\) # (GND)))
-- \ov5640_cfg_inst|cnt_wait[6]~25\ = CARRY((!\ov5640_cfg_inst|cnt_wait[5]~23\) # (!\ov5640_cfg_inst|cnt_wait\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \ov5640_cfg_inst|cnt_wait\(6),
	datad => VCC,
	cin => \ov5640_cfg_inst|cnt_wait[5]~23\,
	combout => \ov5640_cfg_inst|cnt_wait[6]~24_combout\,
	cout => \ov5640_cfg_inst|cnt_wait[6]~25\);

-- Location: FF_X5_Y11_N13
\ov5640_cfg_inst|cnt_wait[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2c_ctrl_inst|ALT_INV_i2c_clk~clkctrl_outclk\,
	d => \ov5640_cfg_inst|cnt_wait[6]~24_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	ena => \ov5640_cfg_inst|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ov5640_cfg_inst|cnt_wait\(6));

-- Location: FF_X5_Y11_N15
\ov5640_cfg_inst|cnt_wait[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2c_ctrl_inst|ALT_INV_i2c_clk~clkctrl_outclk\,
	d => \ov5640_cfg_inst|cnt_wait[7]~26_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	ena => \ov5640_cfg_inst|LessThan0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ov5640_cfg_inst|cnt_wait\(7));

-- Location: LCCOMB_X6_Y11_N6
\ov5640_cfg_inst|Equal0~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ov5640_cfg_inst|Equal0~0_combout\ = (!\ov5640_cfg_inst|cnt_wait\(7) & (!\ov5640_cfg_inst|cnt_wait\(5) & (!\ov5640_cfg_inst|cnt_wait\(8) & !\ov5640_cfg_inst|cnt_wait\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ov5640_cfg_inst|cnt_wait\(7),
	datab => \ov5640_cfg_inst|cnt_wait\(5),
	datac => \ov5640_cfg_inst|cnt_wait\(8),
	datad => \ov5640_cfg_inst|cnt_wait\(6),
	combout => \ov5640_cfg_inst|Equal0~0_combout\);

-- Location: LCCOMB_X6_Y11_N12
\ov5640_cfg_inst|Equal0~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ov5640_cfg_inst|Equal0~2_combout\ = (\ov5640_cfg_inst|cnt_wait\(1) & (\ov5640_cfg_inst|cnt_wait\(2) & (!\ov5640_cfg_inst|cnt_wait\(13) & !\ov5640_cfg_inst|cnt_wait\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ov5640_cfg_inst|cnt_wait\(1),
	datab => \ov5640_cfg_inst|cnt_wait\(2),
	datac => \ov5640_cfg_inst|cnt_wait\(13),
	datad => \ov5640_cfg_inst|cnt_wait\(12),
	combout => \ov5640_cfg_inst|Equal0~2_combout\);

-- Location: LCCOMB_X6_Y11_N18
\ov5640_cfg_inst|Equal0~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ov5640_cfg_inst|Equal0~3_combout\ = (\ov5640_cfg_inst|cnt_wait\(4) & (\ov5640_cfg_inst|cnt_wait\(14) & (\ov5640_cfg_inst|cnt_wait\(3) & \ov5640_cfg_inst|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ov5640_cfg_inst|cnt_wait\(4),
	datab => \ov5640_cfg_inst|cnt_wait\(14),
	datac => \ov5640_cfg_inst|cnt_wait\(3),
	datad => \ov5640_cfg_inst|Equal0~2_combout\,
	combout => \ov5640_cfg_inst|Equal0~3_combout\);

-- Location: LCCOMB_X6_Y11_N20
\ov5640_cfg_inst|Equal0~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ov5640_cfg_inst|Equal0~4_combout\ = (\ov5640_cfg_inst|Equal0~0_combout\ & (\ov5640_cfg_inst|Equal0~1_combout\ & (\ov5640_cfg_inst|cnt_wait\(0) & \ov5640_cfg_inst|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ov5640_cfg_inst|Equal0~0_combout\,
	datab => \ov5640_cfg_inst|Equal0~1_combout\,
	datac => \ov5640_cfg_inst|cnt_wait\(0),
	datad => \ov5640_cfg_inst|Equal0~3_combout\,
	combout => \ov5640_cfg_inst|Equal0~4_combout\);

-- Location: FF_X6_Y11_N21
\ov5640_cfg_inst|cfg_start\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2c_ctrl_inst|ALT_INV_i2c_clk~clkctrl_outclk\,
	d => \ov5640_cfg_inst|Equal0~4_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ov5640_cfg_inst|cfg_start~q\);

-- Location: LCCOMB_X8_Y1_N6
\i2c_ctrl_inst|Selector3~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \i2c_ctrl_inst|Selector3~0_combout\ = (\i2c_ctrl_inst|state.IDLE~q\) # (\ov5640_cfg_inst|cfg_start~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i2c_ctrl_inst|state.IDLE~q\,
	datad => \ov5640_cfg_inst|cfg_start~q\,
	combout => \i2c_ctrl_inst|Selector3~0_combout\);

-- Location: FF_X8_Y1_N7
\i2c_ctrl_inst|state.IDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2c_ctrl_inst|ALT_INV_i2c_clk~clkctrl_outclk\,
	d => \i2c_ctrl_inst|Selector3~0_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_ctrl_inst|state.IDLE~q\);

-- Location: LCCOMB_X8_Y1_N24
\i2c_ctrl_inst|cnt_i2c_clk_en~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \i2c_ctrl_inst|cnt_i2c_clk_en~0_combout\ = (\i2c_ctrl_inst|cnt_i2c_clk_en~q\) # (\ov5640_cfg_inst|cfg_start~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i2c_ctrl_inst|cnt_i2c_clk_en~q\,
	datad => \ov5640_cfg_inst|cfg_start~q\,
	combout => \i2c_ctrl_inst|cnt_i2c_clk_en~0_combout\);

-- Location: FF_X8_Y1_N25
\i2c_ctrl_inst|cnt_i2c_clk_en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2c_ctrl_inst|ALT_INV_i2c_clk~clkctrl_outclk\,
	d => \i2c_ctrl_inst|cnt_i2c_clk_en~0_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_ctrl_inst|cnt_i2c_clk_en~q\);

-- Location: LCCOMB_X9_Y1_N2
\i2c_ctrl_inst|cnt_i2c_clk[0]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \i2c_ctrl_inst|cnt_i2c_clk[0]~1_combout\ = \i2c_ctrl_inst|cnt_i2c_clk\(0) $ (\i2c_ctrl_inst|cnt_i2c_clk_en~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \i2c_ctrl_inst|cnt_i2c_clk\(0),
	datad => \i2c_ctrl_inst|cnt_i2c_clk_en~q\,
	combout => \i2c_ctrl_inst|cnt_i2c_clk[0]~1_combout\);

-- Location: FF_X9_Y1_N3
\i2c_ctrl_inst|cnt_i2c_clk[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2c_ctrl_inst|ALT_INV_i2c_clk~clkctrl_outclk\,
	d => \i2c_ctrl_inst|cnt_i2c_clk[0]~1_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_ctrl_inst|cnt_i2c_clk\(0));

-- Location: LCCOMB_X9_Y1_N28
\i2c_ctrl_inst|cnt_i2c_clk[1]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \i2c_ctrl_inst|cnt_i2c_clk[1]~0_combout\ = \i2c_ctrl_inst|cnt_i2c_clk\(1) $ (((\i2c_ctrl_inst|cnt_i2c_clk\(0) & \i2c_ctrl_inst|cnt_i2c_clk_en~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i2c_ctrl_inst|cnt_i2c_clk\(0),
	datac => \i2c_ctrl_inst|cnt_i2c_clk\(1),
	datad => \i2c_ctrl_inst|cnt_i2c_clk_en~q\,
	combout => \i2c_ctrl_inst|cnt_i2c_clk[1]~0_combout\);

-- Location: FF_X9_Y1_N29
\i2c_ctrl_inst|cnt_i2c_clk[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2c_ctrl_inst|ALT_INV_i2c_clk~clkctrl_outclk\,
	d => \i2c_ctrl_inst|cnt_i2c_clk[1]~0_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_ctrl_inst|cnt_i2c_clk\(1));

-- Location: LCCOMB_X9_Y1_N18
\i2c_ctrl_inst|Equal1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \i2c_ctrl_inst|Equal1~0_combout\ = (\i2c_ctrl_inst|cnt_i2c_clk\(1) & \i2c_ctrl_inst|cnt_i2c_clk\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i2c_ctrl_inst|cnt_i2c_clk\(1),
	datad => \i2c_ctrl_inst|cnt_i2c_clk\(0),
	combout => \i2c_ctrl_inst|Equal1~0_combout\);

-- Location: LCCOMB_X8_Y1_N16
\i2c_ctrl_inst|Selector4~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \i2c_ctrl_inst|Selector4~0_combout\ = (\i2c_ctrl_inst|state.IDLE~q\ & (!\i2c_ctrl_inst|Equal1~0_combout\ & (\i2c_ctrl_inst|state.START_1~q\))) # (!\i2c_ctrl_inst|state.IDLE~q\ & ((\ov5640_cfg_inst|cfg_start~q\) # ((!\i2c_ctrl_inst|Equal1~0_combout\ & 
-- \i2c_ctrl_inst|state.START_1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_ctrl_inst|state.IDLE~q\,
	datab => \i2c_ctrl_inst|Equal1~0_combout\,
	datac => \i2c_ctrl_inst|state.START_1~q\,
	datad => \ov5640_cfg_inst|cfg_start~q\,
	combout => \i2c_ctrl_inst|Selector4~0_combout\);

-- Location: FF_X8_Y1_N17
\i2c_ctrl_inst|state.START_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2c_ctrl_inst|ALT_INV_i2c_clk~clkctrl_outclk\,
	d => \i2c_ctrl_inst|Selector4~0_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_ctrl_inst|state.START_1~q\);

-- Location: LCCOMB_X9_Y1_N22
\i2c_ctrl_inst|cnt_bit[0]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \i2c_ctrl_inst|cnt_bit[0]~6_combout\ = (\i2c_ctrl_inst|state.SEND_D_ADDR~q\ & (((!\i2c_ctrl_inst|cnt_i2c_clk\(0)) # (!\i2c_ctrl_inst|Equal5~0_combout\)) # (!\i2c_ctrl_inst|cnt_i2c_clk\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_ctrl_inst|state.SEND_D_ADDR~q\,
	datab => \i2c_ctrl_inst|cnt_i2c_clk\(1),
	datac => \i2c_ctrl_inst|Equal5~0_combout\,
	datad => \i2c_ctrl_inst|cnt_i2c_clk\(0),
	combout => \i2c_ctrl_inst|cnt_bit[0]~6_combout\);

-- Location: LCCOMB_X9_Y1_N24
\i2c_ctrl_inst|cnt_bit[0]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \i2c_ctrl_inst|cnt_bit[0]~2_combout\ = (\i2c_ctrl_inst|state.SEND_D_ADDR~q\ & (((!\i2c_ctrl_inst|state.IDLE~q\ & !\i2c_ctrl_inst|Equal5~0_combout\)) # (!\i2c_ctrl_inst|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_ctrl_inst|state.SEND_D_ADDR~q\,
	datab => \i2c_ctrl_inst|state.IDLE~q\,
	datac => \i2c_ctrl_inst|Equal5~0_combout\,
	datad => \i2c_ctrl_inst|Equal1~0_combout\,
	combout => \i2c_ctrl_inst|cnt_bit[0]~2_combout\);

-- Location: LCCOMB_X9_Y1_N16
\i2c_ctrl_inst|cnt_bit[0]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \i2c_ctrl_inst|cnt_bit[0]~5_combout\ = (\i2c_ctrl_inst|cnt_bit\(0) & ((\i2c_ctrl_inst|cnt_bit[0]~2_combout\))) # (!\i2c_ctrl_inst|cnt_bit\(0) & (\i2c_ctrl_inst|cnt_bit[0]~6_combout\ & !\i2c_ctrl_inst|cnt_bit[0]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_ctrl_inst|cnt_bit[0]~6_combout\,
	datac => \i2c_ctrl_inst|cnt_bit\(0),
	datad => \i2c_ctrl_inst|cnt_bit[0]~2_combout\,
	combout => \i2c_ctrl_inst|cnt_bit[0]~5_combout\);

-- Location: FF_X9_Y1_N17
\i2c_ctrl_inst|cnt_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2c_ctrl_inst|ALT_INV_i2c_clk~clkctrl_outclk\,
	d => \i2c_ctrl_inst|cnt_bit[0]~5_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_ctrl_inst|cnt_bit\(0));

-- Location: LCCOMB_X9_Y1_N26
\i2c_ctrl_inst|cnt_bit[1]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \i2c_ctrl_inst|cnt_bit[1]~4_combout\ = (\i2c_ctrl_inst|cnt_bit[0]~2_combout\ & (((\i2c_ctrl_inst|cnt_bit\(1))))) # (!\i2c_ctrl_inst|cnt_bit[0]~2_combout\ & (\i2c_ctrl_inst|state.SEND_D_ADDR~q\ & (\i2c_ctrl_inst|cnt_bit\(0) $ 
-- (\i2c_ctrl_inst|cnt_bit\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_ctrl_inst|state.SEND_D_ADDR~q\,
	datab => \i2c_ctrl_inst|cnt_bit\(0),
	datac => \i2c_ctrl_inst|cnt_bit\(1),
	datad => \i2c_ctrl_inst|cnt_bit[0]~2_combout\,
	combout => \i2c_ctrl_inst|cnt_bit[1]~4_combout\);

-- Location: FF_X9_Y1_N27
\i2c_ctrl_inst|cnt_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2c_ctrl_inst|ALT_INV_i2c_clk~clkctrl_outclk\,
	d => \i2c_ctrl_inst|cnt_bit[1]~4_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_ctrl_inst|cnt_bit\(1));

-- Location: LCCOMB_X9_Y1_N10
\i2c_ctrl_inst|Add2~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \i2c_ctrl_inst|Add2~0_combout\ = \i2c_ctrl_inst|cnt_bit\(2) $ (((\i2c_ctrl_inst|cnt_bit\(1) & \i2c_ctrl_inst|cnt_bit\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i2c_ctrl_inst|cnt_bit\(2),
	datac => \i2c_ctrl_inst|cnt_bit\(1),
	datad => \i2c_ctrl_inst|cnt_bit\(0),
	combout => \i2c_ctrl_inst|Add2~0_combout\);

-- Location: LCCOMB_X9_Y1_N20
\i2c_ctrl_inst|cnt_bit[2]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \i2c_ctrl_inst|cnt_bit[2]~3_combout\ = (\i2c_ctrl_inst|cnt_bit[0]~2_combout\ & (((\i2c_ctrl_inst|cnt_bit\(2))))) # (!\i2c_ctrl_inst|cnt_bit[0]~2_combout\ & (\i2c_ctrl_inst|cnt_bit[0]~6_combout\ & ((\i2c_ctrl_inst|Add2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_ctrl_inst|cnt_bit[0]~6_combout\,
	datab => \i2c_ctrl_inst|cnt_bit[0]~2_combout\,
	datac => \i2c_ctrl_inst|cnt_bit\(2),
	datad => \i2c_ctrl_inst|Add2~0_combout\,
	combout => \i2c_ctrl_inst|cnt_bit[2]~3_combout\);

-- Location: FF_X9_Y1_N21
\i2c_ctrl_inst|cnt_bit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2c_ctrl_inst|ALT_INV_i2c_clk~clkctrl_outclk\,
	d => \i2c_ctrl_inst|cnt_bit[2]~3_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_ctrl_inst|cnt_bit\(2));

-- Location: LCCOMB_X9_Y1_N8
\i2c_ctrl_inst|Equal5~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \i2c_ctrl_inst|Equal5~0_combout\ = (\i2c_ctrl_inst|cnt_bit\(2) & (\i2c_ctrl_inst|cnt_bit\(1) & \i2c_ctrl_inst|cnt_bit\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i2c_ctrl_inst|cnt_bit\(2),
	datac => \i2c_ctrl_inst|cnt_bit\(1),
	datad => \i2c_ctrl_inst|cnt_bit\(0),
	combout => \i2c_ctrl_inst|Equal5~0_combout\);

-- Location: LCCOMB_X9_Y1_N30
\i2c_ctrl_inst|Selector5~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \i2c_ctrl_inst|Selector5~0_combout\ = (\i2c_ctrl_inst|Equal1~0_combout\ & ((\i2c_ctrl_inst|state.START_1~q\) # ((!\i2c_ctrl_inst|Equal5~0_combout\ & \i2c_ctrl_inst|state.SEND_D_ADDR~q\)))) # (!\i2c_ctrl_inst|Equal1~0_combout\ & 
-- (((\i2c_ctrl_inst|state.SEND_D_ADDR~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_ctrl_inst|state.START_1~q\,
	datab => \i2c_ctrl_inst|Equal5~0_combout\,
	datac => \i2c_ctrl_inst|state.SEND_D_ADDR~q\,
	datad => \i2c_ctrl_inst|Equal1~0_combout\,
	combout => \i2c_ctrl_inst|Selector5~0_combout\);

-- Location: FF_X9_Y1_N31
\i2c_ctrl_inst|state.SEND_D_ADDR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2c_ctrl_inst|ALT_INV_i2c_clk~clkctrl_outclk\,
	d => \i2c_ctrl_inst|Selector5~0_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_ctrl_inst|state.SEND_D_ADDR~q\);

-- Location: LCCOMB_X9_Y1_N4
\i2c_ctrl_inst|Selector6~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \i2c_ctrl_inst|Selector6~0_combout\ = (\i2c_ctrl_inst|state.ACK_1~q\) # ((\i2c_ctrl_inst|state.SEND_D_ADDR~q\ & (\i2c_ctrl_inst|Equal5~0_combout\ & \i2c_ctrl_inst|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_ctrl_inst|state.SEND_D_ADDR~q\,
	datab => \i2c_ctrl_inst|Equal5~0_combout\,
	datac => \i2c_ctrl_inst|state.ACK_1~q\,
	datad => \i2c_ctrl_inst|Equal1~0_combout\,
	combout => \i2c_ctrl_inst|Selector6~0_combout\);

-- Location: FF_X9_Y1_N5
\i2c_ctrl_inst|state.ACK_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \i2c_ctrl_inst|ALT_INV_i2c_clk~clkctrl_outclk\,
	d => \i2c_ctrl_inst|Selector6~0_combout\,
	clrn => \sys_rst_n~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \i2c_ctrl_inst|state.ACK_1~q\);

-- Location: LCCOMB_X9_Y1_N14
\i2c_ctrl_inst|Selector1~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \i2c_ctrl_inst|Selector1~0_combout\ = (\i2c_ctrl_inst|state.SEND_D_ADDR~q\ & ((\i2c_ctrl_inst|cnt_bit\(2) & (\i2c_ctrl_inst|cnt_bit\(1) & !\i2c_ctrl_inst|cnt_bit\(0))) # (!\i2c_ctrl_inst|cnt_bit\(2) & (!\i2c_ctrl_inst|cnt_bit\(1) & 
-- \i2c_ctrl_inst|cnt_bit\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_ctrl_inst|state.SEND_D_ADDR~q\,
	datab => \i2c_ctrl_inst|cnt_bit\(2),
	datac => \i2c_ctrl_inst|cnt_bit\(1),
	datad => \i2c_ctrl_inst|cnt_bit\(0),
	combout => \i2c_ctrl_inst|Selector1~0_combout\);

-- Location: LCCOMB_X9_Y1_N0
\i2c_ctrl_inst|Selector1~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \i2c_ctrl_inst|Selector1~1_combout\ = ((\i2c_ctrl_inst|state.START_1~q\ & (!\i2c_ctrl_inst|cnt_i2c_clk\(1) & !\i2c_ctrl_inst|cnt_i2c_clk\(0)))) # (!\i2c_ctrl_inst|state.IDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_ctrl_inst|state.START_1~q\,
	datab => \i2c_ctrl_inst|cnt_i2c_clk\(1),
	datac => \i2c_ctrl_inst|state.IDLE~q\,
	datad => \i2c_ctrl_inst|cnt_i2c_clk\(0),
	combout => \i2c_ctrl_inst|Selector1~1_combout\);

-- Location: LCCOMB_X9_Y1_N6
\i2c_ctrl_inst|Selector1~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \i2c_ctrl_inst|Selector1~2_combout\ = (\i2c_ctrl_inst|state.ACK_1~q\) # ((\i2c_ctrl_inst|Selector1~0_combout\) # (\i2c_ctrl_inst|Selector1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \i2c_ctrl_inst|state.ACK_1~q\,
	datac => \i2c_ctrl_inst|Selector1~0_combout\,
	datad => \i2c_ctrl_inst|Selector1~1_combout\,
	combout => \i2c_ctrl_inst|Selector1~2_combout\);

-- Location: LCCOMB_X9_Y1_N12
\i2c_ctrl_inst|Selector21~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \i2c_ctrl_inst|Selector21~0_combout\ = (\i2c_ctrl_inst|state.START_1~q\ & (((!\i2c_ctrl_inst|cnt_i2c_clk\(0))) # (!\i2c_ctrl_inst|cnt_i2c_clk\(1)))) # (!\i2c_ctrl_inst|state.START_1~q\ & ((\i2c_ctrl_inst|cnt_i2c_clk\(1) $ (\i2c_ctrl_inst|cnt_i2c_clk\(0))) 
-- # (!\i2c_ctrl_inst|state.IDLE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \i2c_ctrl_inst|state.START_1~q\,
	datab => \i2c_ctrl_inst|cnt_i2c_clk\(1),
	datac => \i2c_ctrl_inst|state.IDLE~q\,
	datad => \i2c_ctrl_inst|cnt_i2c_clk\(0),
	combout => \i2c_ctrl_inst|Selector21~0_combout\);

-- Location: IOIBUF_X16_Y0_N15
\ov5640_pclk~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ov5640_pclk,
	o => \ov5640_pclk~input_o\);

-- Location: CLKCTRL_G17
\ov5640_pclk~inputclkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \ov5640_pclk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \ov5640_pclk~inputclkctrl_outclk\);

-- Location: LCCOMB_X31_Y28_N28
\ov5640_data_inst|cnt_pic[1]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ov5640_data_inst|cnt_pic[1]~2_combout\ = (\ov5640_data_inst|cnt_pic\(3) & ((\ov5640_data_inst|cnt_pic\(1)) # ((!\ov5640_data_inst|cnt_pic\(2) & \ov5640_data_inst|cnt_pic\(0))))) # (!\ov5640_data_inst|cnt_pic\(3) & ((\ov5640_data_inst|cnt_pic\(1) $ 
-- (\ov5640_data_inst|cnt_pic\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ov5640_data_inst|cnt_pic\(2),
	datab => \ov5640_data_inst|cnt_pic\(3),
	datac => \ov5640_data_inst|cnt_pic\(1),
	datad => \ov5640_data_inst|cnt_pic\(0),
	combout => \ov5640_data_inst|cnt_pic[1]~2_combout\);

-- Location: IOIBUF_X16_Y0_N8
\sys_init_done~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sys_init_done,
	o => \sys_init_done~input_o\);

-- Location: LCCOMB_X16_Y1_N24
\comb~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \comb~0_combout\ = (!\sys_init_done~input_o\) # (!\sys_rst_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sys_rst_n~input_o\,
	datad => \sys_init_done~input_o\,
	combout => \comb~0_combout\);

-- Location: CLKCTRL_G16
\comb~0clkctrl\ : cycloneiv_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \comb~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \comb~0clkctrl_outclk\);

-- Location: FF_X31_Y28_N29
\ov5640_data_inst|cnt_pic[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ov5640_pclk~inputclkctrl_outclk\,
	d => \ov5640_data_inst|cnt_pic[1]~2_combout\,
	clrn => \ALT_INV_comb~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ov5640_data_inst|cnt_pic\(1));

-- Location: LCCOMB_X31_Y28_N2
\ov5640_data_inst|cnt_pic[3]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ov5640_data_inst|cnt_pic[3]~0_combout\ = (\ov5640_data_inst|cnt_pic\(3)) # ((\ov5640_data_inst|cnt_pic\(2) & (\ov5640_data_inst|cnt_pic\(1) & \ov5640_data_inst|cnt_pic\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ov5640_data_inst|cnt_pic\(2),
	datab => \ov5640_data_inst|cnt_pic\(1),
	datac => \ov5640_data_inst|cnt_pic\(3),
	datad => \ov5640_data_inst|cnt_pic\(0),
	combout => \ov5640_data_inst|cnt_pic[3]~0_combout\);

-- Location: FF_X31_Y28_N3
\ov5640_data_inst|cnt_pic[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ov5640_pclk~inputclkctrl_outclk\,
	d => \ov5640_data_inst|cnt_pic[3]~0_combout\,
	clrn => \ALT_INV_comb~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ov5640_data_inst|cnt_pic\(3));

-- Location: LCCOMB_X31_Y28_N18
\ov5640_data_inst|cnt_pic[2]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ov5640_data_inst|cnt_pic[2]~1_combout\ = \ov5640_data_inst|cnt_pic\(2) $ (((\ov5640_data_inst|cnt_pic\(0) & (!\ov5640_data_inst|cnt_pic\(3) & \ov5640_data_inst|cnt_pic\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ov5640_data_inst|cnt_pic\(0),
	datab => \ov5640_data_inst|cnt_pic\(3),
	datac => \ov5640_data_inst|cnt_pic\(2),
	datad => \ov5640_data_inst|cnt_pic\(1),
	combout => \ov5640_data_inst|cnt_pic[2]~1_combout\);

-- Location: FF_X31_Y28_N19
\ov5640_data_inst|cnt_pic[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ov5640_pclk~inputclkctrl_outclk\,
	d => \ov5640_data_inst|cnt_pic[2]~1_combout\,
	clrn => \ALT_INV_comb~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ov5640_data_inst|cnt_pic\(2));

-- Location: LCCOMB_X31_Y28_N6
\ov5640_data_inst|cnt_pic[0]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ov5640_data_inst|cnt_pic[0]~3_combout\ = \ov5640_data_inst|cnt_pic\(0) $ ((((!\ov5640_data_inst|cnt_pic\(2) & !\ov5640_data_inst|cnt_pic\(1))) # (!\ov5640_data_inst|cnt_pic\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ov5640_data_inst|cnt_pic\(2),
	datab => \ov5640_data_inst|cnt_pic\(3),
	datac => \ov5640_data_inst|cnt_pic\(0),
	datad => \ov5640_data_inst|cnt_pic\(1),
	combout => \ov5640_data_inst|cnt_pic[0]~3_combout\);

-- Location: FF_X31_Y28_N7
\ov5640_data_inst|cnt_pic[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ov5640_pclk~inputclkctrl_outclk\,
	d => \ov5640_data_inst|cnt_pic[0]~3_combout\,
	clrn => \ALT_INV_comb~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ov5640_data_inst|cnt_pic\(0));

-- Location: IOIBUF_X31_Y31_N8
\ov5640_vsync~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ov5640_vsync,
	o => \ov5640_vsync~input_o\);

-- Location: FF_X31_Y28_N17
\ov5640_data_inst|ov5640_vsync_dly\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ov5640_pclk~inputclkctrl_outclk\,
	asdata => \ov5640_vsync~input_o\,
	clrn => \ALT_INV_comb~0clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ov5640_data_inst|ov5640_vsync_dly~q\);

-- Location: LCCOMB_X31_Y28_N16
\ov5640_data_inst|always4~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ov5640_data_inst|always4~0_combout\ = (\ov5640_vsync~input_o\ & (\ov5640_data_inst|cnt_pic\(3) & (!\ov5640_data_inst|ov5640_vsync_dly~q\ & !\ov5640_data_inst|cnt_pic\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ov5640_vsync~input_o\,
	datab => \ov5640_data_inst|cnt_pic\(3),
	datac => \ov5640_data_inst|ov5640_vsync_dly~q\,
	datad => \ov5640_data_inst|cnt_pic\(2),
	combout => \ov5640_data_inst|always4~0_combout\);

-- Location: LCCOMB_X31_Y28_N26
\ov5640_data_inst|pic_valid~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ov5640_data_inst|pic_valid~0_combout\ = (\ov5640_data_inst|pic_valid~q\) # ((!\ov5640_data_inst|cnt_pic\(0) & (\ov5640_data_inst|cnt_pic\(1) & \ov5640_data_inst|always4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ov5640_data_inst|cnt_pic\(0),
	datab => \ov5640_data_inst|cnt_pic\(1),
	datac => \ov5640_data_inst|pic_valid~q\,
	datad => \ov5640_data_inst|always4~0_combout\,
	combout => \ov5640_data_inst|pic_valid~0_combout\);

-- Location: FF_X31_Y28_N27
\ov5640_data_inst|pic_valid\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ov5640_pclk~inputclkctrl_outclk\,
	d => \ov5640_data_inst|pic_valid~0_combout\,
	clrn => \ALT_INV_comb~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ov5640_data_inst|pic_valid~q\);

-- Location: IOIBUF_X33_Y27_N1
\ov5640_href~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ov5640_href,
	o => \ov5640_href~input_o\);

-- Location: LCCOMB_X30_Y28_N4
\ov5640_data_inst|data_out_reg[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ov5640_data_inst|data_out_reg[0]~0_combout\ = (\ov5640_href~input_o\ & !\ov5640_data_inst|data_flag~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ov5640_href~input_o\,
	datad => \ov5640_data_inst|data_flag~q\,
	combout => \ov5640_data_inst|data_out_reg[0]~0_combout\);

-- Location: FF_X30_Y28_N19
\ov5640_data_inst|data_flag\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ov5640_pclk~inputclkctrl_outclk\,
	asdata => \ov5640_data_inst|data_out_reg[0]~0_combout\,
	clrn => \ALT_INV_comb~0clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ov5640_data_inst|data_flag~q\);

-- Location: FF_X31_Y28_N25
\ov5640_data_inst|data_flag_dly1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ov5640_pclk~inputclkctrl_outclk\,
	asdata => \ov5640_data_inst|data_flag~q\,
	clrn => \ALT_INV_comb~0clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ov5640_data_inst|data_flag_dly1~q\);

-- Location: LCCOMB_X31_Y28_N24
\ov5640_data_inst|ov5640_wr_en~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ov5640_data_inst|ov5640_wr_en~0_combout\ = (\ov5640_data_inst|pic_valid~q\ & \ov5640_data_inst|data_flag_dly1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ov5640_data_inst|pic_valid~q\,
	datac => \ov5640_data_inst|data_flag_dly1~q\,
	combout => \ov5640_data_inst|ov5640_wr_en~0_combout\);

-- Location: IOIBUF_X33_Y22_N8
\ov5640_data[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ov5640_data(0),
	o => \ov5640_data[0]~input_o\);

-- Location: FF_X30_Y28_N5
\ov5640_data_inst|data_out_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ov5640_pclk~inputclkctrl_outclk\,
	asdata => \ov5640_data[0]~input_o\,
	clrn => \ALT_INV_comb~0clkctrl_outclk\,
	sload => VCC,
	ena => \ov5640_data_inst|data_out_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ov5640_data_inst|data_out_reg\(0));

-- Location: LCCOMB_X30_Y28_N18
\ov5640_data_inst|ov5640_data_out[0]~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ov5640_data_inst|ov5640_data_out[0]~0_combout\ = (\ov5640_data_inst|data_out_reg\(0) & \ov5640_data_inst|pic_valid~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ov5640_data_inst|data_out_reg\(0),
	datad => \ov5640_data_inst|pic_valid~q\,
	combout => \ov5640_data_inst|ov5640_data_out[0]~0_combout\);

-- Location: IOIBUF_X33_Y27_N8
\ov5640_data[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ov5640_data(1),
	o => \ov5640_data[1]~input_o\);

-- Location: FF_X30_Y28_N1
\ov5640_data_inst|data_out_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ov5640_pclk~inputclkctrl_outclk\,
	asdata => \ov5640_data[1]~input_o\,
	clrn => \ALT_INV_comb~0clkctrl_outclk\,
	sload => VCC,
	ena => \ov5640_data_inst|data_out_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ov5640_data_inst|data_out_reg\(1));

-- Location: LCCOMB_X30_Y28_N0
\ov5640_data_inst|ov5640_data_out[1]~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ov5640_data_inst|ov5640_data_out[1]~1_combout\ = (\ov5640_data_inst|data_out_reg\(1) & \ov5640_data_inst|pic_valid~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ov5640_data_inst|data_out_reg\(1),
	datad => \ov5640_data_inst|pic_valid~q\,
	combout => \ov5640_data_inst|ov5640_data_out[1]~1_combout\);

-- Location: IOIBUF_X33_Y22_N1
\ov5640_data[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ov5640_data(2),
	o => \ov5640_data[2]~input_o\);

-- Location: FF_X30_Y28_N27
\ov5640_data_inst|data_out_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ov5640_pclk~inputclkctrl_outclk\,
	asdata => \ov5640_data[2]~input_o\,
	clrn => \ALT_INV_comb~0clkctrl_outclk\,
	sload => VCC,
	ena => \ov5640_data_inst|data_out_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ov5640_data_inst|data_out_reg\(2));

-- Location: LCCOMB_X30_Y28_N26
\ov5640_data_inst|ov5640_data_out[2]~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ov5640_data_inst|ov5640_data_out[2]~2_combout\ = (\ov5640_data_inst|data_out_reg\(2) & \ov5640_data_inst|pic_valid~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ov5640_data_inst|data_out_reg\(2),
	datad => \ov5640_data_inst|pic_valid~q\,
	combout => \ov5640_data_inst|ov5640_data_out[2]~2_combout\);

-- Location: IOIBUF_X33_Y28_N1
\ov5640_data[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ov5640_data(3),
	o => \ov5640_data[3]~input_o\);

-- Location: FF_X30_Y28_N29
\ov5640_data_inst|data_out_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ov5640_pclk~inputclkctrl_outclk\,
	asdata => \ov5640_data[3]~input_o\,
	clrn => \ALT_INV_comb~0clkctrl_outclk\,
	sload => VCC,
	ena => \ov5640_data_inst|data_out_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ov5640_data_inst|data_out_reg\(3));

-- Location: LCCOMB_X30_Y28_N28
\ov5640_data_inst|ov5640_data_out[3]~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ov5640_data_inst|ov5640_data_out[3]~3_combout\ = (\ov5640_data_inst|data_out_reg\(3) & \ov5640_data_inst|pic_valid~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ov5640_data_inst|data_out_reg\(3),
	datad => \ov5640_data_inst|pic_valid~q\,
	combout => \ov5640_data_inst|ov5640_data_out[3]~3_combout\);

-- Location: IOIBUF_X31_Y0_N1
\ov5640_data[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ov5640_data(4),
	o => \ov5640_data[4]~input_o\);

-- Location: FF_X30_Y28_N31
\ov5640_data_inst|data_out_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ov5640_pclk~inputclkctrl_outclk\,
	asdata => \ov5640_data[4]~input_o\,
	clrn => \ALT_INV_comb~0clkctrl_outclk\,
	sload => VCC,
	ena => \ov5640_data_inst|data_out_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ov5640_data_inst|data_out_reg\(4));

-- Location: LCCOMB_X30_Y28_N30
\ov5640_data_inst|ov5640_data_out[4]~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ov5640_data_inst|ov5640_data_out[4]~4_combout\ = (\ov5640_data_inst|data_out_reg\(4) & \ov5640_data_inst|pic_valid~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ov5640_data_inst|data_out_reg\(4),
	datad => \ov5640_data_inst|pic_valid~q\,
	combout => \ov5640_data_inst|ov5640_data_out[4]~4_combout\);

-- Location: IOIBUF_X31_Y31_N1
\ov5640_data[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ov5640_data(5),
	o => \ov5640_data[5]~input_o\);

-- Location: FF_X31_Y28_N5
\ov5640_data_inst|data_out_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ov5640_pclk~inputclkctrl_outclk\,
	asdata => \ov5640_data[5]~input_o\,
	clrn => \ALT_INV_comb~0clkctrl_outclk\,
	sload => VCC,
	ena => \ov5640_data_inst|data_out_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ov5640_data_inst|data_out_reg\(5));

-- Location: LCCOMB_X31_Y28_N4
\ov5640_data_inst|ov5640_data_out[5]~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ov5640_data_inst|ov5640_data_out[5]~5_combout\ = (\ov5640_data_inst|pic_valid~q\ & \ov5640_data_inst|data_out_reg\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ov5640_data_inst|pic_valid~q\,
	datac => \ov5640_data_inst|data_out_reg\(5),
	combout => \ov5640_data_inst|ov5640_data_out[5]~5_combout\);

-- Location: IOIBUF_X33_Y28_N8
\ov5640_data[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ov5640_data(6),
	o => \ov5640_data[6]~input_o\);

-- Location: FF_X30_Y28_N21
\ov5640_data_inst|data_out_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ov5640_pclk~inputclkctrl_outclk\,
	asdata => \ov5640_data[6]~input_o\,
	clrn => \ALT_INV_comb~0clkctrl_outclk\,
	sload => VCC,
	ena => \ov5640_data_inst|data_out_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ov5640_data_inst|data_out_reg\(6));

-- Location: LCCOMB_X30_Y28_N20
\ov5640_data_inst|ov5640_data_out[6]~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ov5640_data_inst|ov5640_data_out[6]~6_combout\ = (\ov5640_data_inst|data_out_reg\(6) & \ov5640_data_inst|pic_valid~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ov5640_data_inst|data_out_reg\(6),
	datad => \ov5640_data_inst|pic_valid~q\,
	combout => \ov5640_data_inst|ov5640_data_out[6]~6_combout\);

-- Location: IOIBUF_X33_Y24_N8
\ov5640_data[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ov5640_data(7),
	o => \ov5640_data[7]~input_o\);

-- Location: FF_X30_Y28_N11
\ov5640_data_inst|data_out_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ov5640_pclk~inputclkctrl_outclk\,
	asdata => \ov5640_data[7]~input_o\,
	clrn => \ALT_INV_comb~0clkctrl_outclk\,
	sload => VCC,
	ena => \ov5640_data_inst|data_out_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ov5640_data_inst|data_out_reg\(7));

-- Location: LCCOMB_X30_Y28_N10
\ov5640_data_inst|ov5640_data_out[7]~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ov5640_data_inst|ov5640_data_out[7]~7_combout\ = (\ov5640_data_inst|data_out_reg\(7) & \ov5640_data_inst|pic_valid~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ov5640_data_inst|data_out_reg\(7),
	datad => \ov5640_data_inst|pic_valid~q\,
	combout => \ov5640_data_inst|ov5640_data_out[7]~7_combout\);

-- Location: LCCOMB_X31_Y28_N12
\ov5640_data_inst|pic_data_reg~0\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ov5640_data_inst|pic_data_reg~0_combout\ = (\ov5640_href~input_o\ & \ov5640_data[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ov5640_href~input_o\,
	datac => \ov5640_data[0]~input_o\,
	combout => \ov5640_data_inst|pic_data_reg~0_combout\);

-- Location: FF_X31_Y28_N13
\ov5640_data_inst|pic_data_reg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ov5640_pclk~inputclkctrl_outclk\,
	d => \ov5640_data_inst|pic_data_reg~0_combout\,
	clrn => \ALT_INV_comb~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ov5640_data_inst|pic_data_reg\(0));

-- Location: FF_X30_Y28_N25
\ov5640_data_inst|data_out_reg[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ov5640_pclk~inputclkctrl_outclk\,
	asdata => \ov5640_data_inst|pic_data_reg\(0),
	clrn => \ALT_INV_comb~0clkctrl_outclk\,
	sload => VCC,
	ena => \ov5640_data_inst|data_out_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ov5640_data_inst|data_out_reg\(8));

-- Location: LCCOMB_X30_Y28_N24
\ov5640_data_inst|ov5640_data_out[8]~8\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ov5640_data_inst|ov5640_data_out[8]~8_combout\ = (\ov5640_data_inst|data_out_reg\(8) & \ov5640_data_inst|pic_valid~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ov5640_data_inst|data_out_reg\(8),
	datad => \ov5640_data_inst|pic_valid~q\,
	combout => \ov5640_data_inst|ov5640_data_out[8]~8_combout\);

-- Location: LCCOMB_X31_Y28_N30
\ov5640_data_inst|pic_data_reg~1\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ov5640_data_inst|pic_data_reg~1_combout\ = (\ov5640_data[1]~input_o\ & \ov5640_href~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ov5640_data[1]~input_o\,
	datac => \ov5640_href~input_o\,
	combout => \ov5640_data_inst|pic_data_reg~1_combout\);

-- Location: FF_X31_Y28_N31
\ov5640_data_inst|pic_data_reg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ov5640_pclk~inputclkctrl_outclk\,
	d => \ov5640_data_inst|pic_data_reg~1_combout\,
	clrn => \ALT_INV_comb~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ov5640_data_inst|pic_data_reg\(1));

-- Location: FF_X30_Y28_N23
\ov5640_data_inst|data_out_reg[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ov5640_pclk~inputclkctrl_outclk\,
	asdata => \ov5640_data_inst|pic_data_reg\(1),
	clrn => \ALT_INV_comb~0clkctrl_outclk\,
	sload => VCC,
	ena => \ov5640_data_inst|data_out_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ov5640_data_inst|data_out_reg\(9));

-- Location: LCCOMB_X30_Y28_N22
\ov5640_data_inst|ov5640_data_out[9]~9\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ov5640_data_inst|ov5640_data_out[9]~9_combout\ = (\ov5640_data_inst|data_out_reg\(9) & \ov5640_data_inst|pic_valid~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ov5640_data_inst|data_out_reg\(9),
	datad => \ov5640_data_inst|pic_valid~q\,
	combout => \ov5640_data_inst|ov5640_data_out[9]~9_combout\);

-- Location: LCCOMB_X31_Y28_N0
\ov5640_data_inst|pic_data_reg~2\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ov5640_data_inst|pic_data_reg~2_combout\ = (\ov5640_data[2]~input_o\ & \ov5640_href~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ov5640_data[2]~input_o\,
	datac => \ov5640_href~input_o\,
	combout => \ov5640_data_inst|pic_data_reg~2_combout\);

-- Location: FF_X31_Y28_N1
\ov5640_data_inst|pic_data_reg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ov5640_pclk~inputclkctrl_outclk\,
	d => \ov5640_data_inst|pic_data_reg~2_combout\,
	clrn => \ALT_INV_comb~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ov5640_data_inst|pic_data_reg\(2));

-- Location: FF_X30_Y28_N9
\ov5640_data_inst|data_out_reg[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ov5640_pclk~inputclkctrl_outclk\,
	asdata => \ov5640_data_inst|pic_data_reg\(2),
	clrn => \ALT_INV_comb~0clkctrl_outclk\,
	sload => VCC,
	ena => \ov5640_data_inst|data_out_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ov5640_data_inst|data_out_reg\(10));

-- Location: LCCOMB_X30_Y28_N8
\ov5640_data_inst|ov5640_data_out[10]~10\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ov5640_data_inst|ov5640_data_out[10]~10_combout\ = (\ov5640_data_inst|data_out_reg\(10) & \ov5640_data_inst|pic_valid~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ov5640_data_inst|data_out_reg\(10),
	datad => \ov5640_data_inst|pic_valid~q\,
	combout => \ov5640_data_inst|ov5640_data_out[10]~10_combout\);

-- Location: LCCOMB_X31_Y28_N14
\ov5640_data_inst|pic_data_reg~3\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ov5640_data_inst|pic_data_reg~3_combout\ = (\ov5640_href~input_o\ & \ov5640_data[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ov5640_href~input_o\,
	datad => \ov5640_data[3]~input_o\,
	combout => \ov5640_data_inst|pic_data_reg~3_combout\);

-- Location: FF_X31_Y28_N15
\ov5640_data_inst|pic_data_reg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ov5640_pclk~inputclkctrl_outclk\,
	d => \ov5640_data_inst|pic_data_reg~3_combout\,
	clrn => \ALT_INV_comb~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ov5640_data_inst|pic_data_reg\(3));

-- Location: FF_X30_Y28_N7
\ov5640_data_inst|data_out_reg[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ov5640_pclk~inputclkctrl_outclk\,
	asdata => \ov5640_data_inst|pic_data_reg\(3),
	clrn => \ALT_INV_comb~0clkctrl_outclk\,
	sload => VCC,
	ena => \ov5640_data_inst|data_out_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ov5640_data_inst|data_out_reg\(11));

-- Location: LCCOMB_X30_Y28_N6
\ov5640_data_inst|ov5640_data_out[11]~11\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ov5640_data_inst|ov5640_data_out[11]~11_combout\ = (\ov5640_data_inst|data_out_reg\(11) & \ov5640_data_inst|pic_valid~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ov5640_data_inst|data_out_reg\(11),
	datad => \ov5640_data_inst|pic_valid~q\,
	combout => \ov5640_data_inst|ov5640_data_out[11]~11_combout\);

-- Location: LCCOMB_X31_Y28_N20
\ov5640_data_inst|pic_data_reg~4\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ov5640_data_inst|pic_data_reg~4_combout\ = (\ov5640_data[4]~input_o\ & \ov5640_href~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ov5640_data[4]~input_o\,
	datac => \ov5640_href~input_o\,
	combout => \ov5640_data_inst|pic_data_reg~4_combout\);

-- Location: FF_X31_Y28_N21
\ov5640_data_inst|pic_data_reg[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ov5640_pclk~inputclkctrl_outclk\,
	d => \ov5640_data_inst|pic_data_reg~4_combout\,
	clrn => \ALT_INV_comb~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ov5640_data_inst|pic_data_reg\(4));

-- Location: FF_X30_Y28_N13
\ov5640_data_inst|data_out_reg[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ov5640_pclk~inputclkctrl_outclk\,
	asdata => \ov5640_data_inst|pic_data_reg\(4),
	clrn => \ALT_INV_comb~0clkctrl_outclk\,
	sload => VCC,
	ena => \ov5640_data_inst|data_out_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ov5640_data_inst|data_out_reg\(12));

-- Location: LCCOMB_X30_Y28_N12
\ov5640_data_inst|ov5640_data_out[12]~12\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ov5640_data_inst|ov5640_data_out[12]~12_combout\ = (\ov5640_data_inst|data_out_reg\(12) & \ov5640_data_inst|pic_valid~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ov5640_data_inst|data_out_reg\(12),
	datad => \ov5640_data_inst|pic_valid~q\,
	combout => \ov5640_data_inst|ov5640_data_out[12]~12_combout\);

-- Location: LCCOMB_X31_Y28_N10
\ov5640_data_inst|pic_data_reg~5\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ov5640_data_inst|pic_data_reg~5_combout\ = (\ov5640_href~input_o\ & \ov5640_data[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ov5640_href~input_o\,
	datac => \ov5640_data[5]~input_o\,
	combout => \ov5640_data_inst|pic_data_reg~5_combout\);

-- Location: FF_X31_Y28_N11
\ov5640_data_inst|pic_data_reg[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ov5640_pclk~inputclkctrl_outclk\,
	d => \ov5640_data_inst|pic_data_reg~5_combout\,
	clrn => \ALT_INV_comb~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ov5640_data_inst|pic_data_reg\(5));

-- Location: FF_X30_Y28_N15
\ov5640_data_inst|data_out_reg[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ov5640_pclk~inputclkctrl_outclk\,
	asdata => \ov5640_data_inst|pic_data_reg\(5),
	clrn => \ALT_INV_comb~0clkctrl_outclk\,
	sload => VCC,
	ena => \ov5640_data_inst|data_out_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ov5640_data_inst|data_out_reg\(13));

-- Location: LCCOMB_X30_Y28_N14
\ov5640_data_inst|ov5640_data_out[13]~13\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ov5640_data_inst|ov5640_data_out[13]~13_combout\ = (\ov5640_data_inst|data_out_reg\(13) & \ov5640_data_inst|pic_valid~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ov5640_data_inst|data_out_reg\(13),
	datad => \ov5640_data_inst|pic_valid~q\,
	combout => \ov5640_data_inst|ov5640_data_out[13]~13_combout\);

-- Location: LCCOMB_X31_Y28_N8
\ov5640_data_inst|pic_data_reg~6\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ov5640_data_inst|pic_data_reg~6_combout\ = (\ov5640_data[6]~input_o\ & \ov5640_href~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ov5640_data[6]~input_o\,
	datac => \ov5640_href~input_o\,
	combout => \ov5640_data_inst|pic_data_reg~6_combout\);

-- Location: FF_X31_Y28_N9
\ov5640_data_inst|pic_data_reg[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ov5640_pclk~inputclkctrl_outclk\,
	d => \ov5640_data_inst|pic_data_reg~6_combout\,
	clrn => \ALT_INV_comb~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ov5640_data_inst|pic_data_reg\(6));

-- Location: FF_X30_Y28_N17
\ov5640_data_inst|data_out_reg[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ov5640_pclk~inputclkctrl_outclk\,
	asdata => \ov5640_data_inst|pic_data_reg\(6),
	clrn => \ALT_INV_comb~0clkctrl_outclk\,
	sload => VCC,
	ena => \ov5640_data_inst|data_out_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ov5640_data_inst|data_out_reg\(14));

-- Location: LCCOMB_X30_Y28_N16
\ov5640_data_inst|ov5640_data_out[14]~14\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ov5640_data_inst|ov5640_data_out[14]~14_combout\ = (\ov5640_data_inst|data_out_reg\(14) & \ov5640_data_inst|pic_valid~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ov5640_data_inst|data_out_reg\(14),
	datad => \ov5640_data_inst|pic_valid~q\,
	combout => \ov5640_data_inst|ov5640_data_out[14]~14_combout\);

-- Location: LCCOMB_X31_Y28_N22
\ov5640_data_inst|pic_data_reg~7\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ov5640_data_inst|pic_data_reg~7_combout\ = (\ov5640_href~input_o\ & \ov5640_data[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ov5640_href~input_o\,
	datac => \ov5640_data[7]~input_o\,
	combout => \ov5640_data_inst|pic_data_reg~7_combout\);

-- Location: FF_X31_Y28_N23
\ov5640_data_inst|pic_data_reg[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ov5640_pclk~inputclkctrl_outclk\,
	d => \ov5640_data_inst|pic_data_reg~7_combout\,
	clrn => \ALT_INV_comb~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ov5640_data_inst|pic_data_reg\(7));

-- Location: FF_X30_Y28_N3
\ov5640_data_inst|data_out_reg[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ov5640_pclk~inputclkctrl_outclk\,
	asdata => \ov5640_data_inst|pic_data_reg\(7),
	clrn => \ALT_INV_comb~0clkctrl_outclk\,
	sload => VCC,
	ena => \ov5640_data_inst|data_out_reg[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ov5640_data_inst|data_out_reg\(15));

-- Location: LCCOMB_X30_Y28_N2
\ov5640_data_inst|ov5640_data_out[15]~15\ : cycloneiv_lcell_comb
-- Equation(s):
-- \ov5640_data_inst|ov5640_data_out[15]~15_combout\ = (\ov5640_data_inst|data_out_reg\(15) & \ov5640_data_inst|pic_valid~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \ov5640_data_inst|data_out_reg\(15),
	datad => \ov5640_data_inst|pic_valid~q\,
	combout => \ov5640_data_inst|ov5640_data_out[15]~15_combout\);

ww_cfg_done <= \cfg_done~output_o\;

ww_sccb_scl <= \sccb_scl~output_o\;

ww_sccb_sda <= \sccb_sda~output_o\;

ww_ov5640_wr_en <= \ov5640_wr_en~output_o\;

ww_ov5640_data_out(0) <= \ov5640_data_out[0]~output_o\;

ww_ov5640_data_out(1) <= \ov5640_data_out[1]~output_o\;

ww_ov5640_data_out(2) <= \ov5640_data_out[2]~output_o\;

ww_ov5640_data_out(3) <= \ov5640_data_out[3]~output_o\;

ww_ov5640_data_out(4) <= \ov5640_data_out[4]~output_o\;

ww_ov5640_data_out(5) <= \ov5640_data_out[5]~output_o\;

ww_ov5640_data_out(6) <= \ov5640_data_out[6]~output_o\;

ww_ov5640_data_out(7) <= \ov5640_data_out[7]~output_o\;

ww_ov5640_data_out(8) <= \ov5640_data_out[8]~output_o\;

ww_ov5640_data_out(9) <= \ov5640_data_out[9]~output_o\;

ww_ov5640_data_out(10) <= \ov5640_data_out[10]~output_o\;

ww_ov5640_data_out(11) <= \ov5640_data_out[11]~output_o\;

ww_ov5640_data_out(12) <= \ov5640_data_out[12]~output_o\;

ww_ov5640_data_out(13) <= \ov5640_data_out[13]~output_o\;

ww_ov5640_data_out(14) <= \ov5640_data_out[14]~output_o\;

ww_ov5640_data_out(15) <= \ov5640_data_out[15]~output_o\;
END structure;


