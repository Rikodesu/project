-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
-- Date        : Thu Jun 27 10:57:24 2024
-- Host        : DESKTOP-FFIISC0 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ bd_0_hls_inst_0_stub.vhdl
-- Design      : bd_0_hls_inst_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xck26-sfvc784-2LV-c
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    InModel_ce0 : out STD_LOGIC;
    OutModel_ap_vld : out STD_LOGIC;
    Weights_ce0 : out STD_LOGIC;
    Weights_ce1 : out STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst : in STD_LOGIC;
    ap_start : in STD_LOGIC;
    ap_done : out STD_LOGIC;
    ap_idle : out STD_LOGIC;
    ap_ready : out STD_LOGIC;
    InModel_address0 : out STD_LOGIC_VECTOR ( 8 downto 0 );
    InModel_q0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    OutModel : out STD_LOGIC_VECTOR ( 15 downto 0 );
    Weights_address0 : out STD_LOGIC_VECTOR ( 13 downto 0 );
    Weights_q0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Weights_address1 : out STD_LOGIC_VECTOR ( 13 downto 0 );
    Weights_q1 : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "InModel_ce0,OutModel_ap_vld,Weights_ce0,Weights_ce1,ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,InModel_address0[8:0],InModel_q0[15:0],OutModel[15:0],Weights_address0[13:0],Weights_q0[15:0],Weights_address1[13:0],Weights_q1[15:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "CNN,Vivado 2023.1";
begin
end;
