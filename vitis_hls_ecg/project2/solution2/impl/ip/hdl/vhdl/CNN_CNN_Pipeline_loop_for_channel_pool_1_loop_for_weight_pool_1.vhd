-- ==============================================================
-- Generated by Vitis HLS v2023.2
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- ==============================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity CNN_CNN_Pipeline_loop_for_channel_pool_1_loop_for_weight_pool_1 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    OutConv3_address0 : OUT STD_LOGIC_VECTOR (10 downto 0);
    OutConv3_ce0 : OUT STD_LOGIC;
    OutConv3_q0 : IN STD_LOGIC_VECTOR (15 downto 0);
    OutConv3_address1 : OUT STD_LOGIC_VECTOR (10 downto 0);
    OutConv3_ce1 : OUT STD_LOGIC;
    OutConv3_q1 : IN STD_LOGIC_VECTOR (15 downto 0);
    OutPool1_address0 : OUT STD_LOGIC_VECTOR (9 downto 0);
    OutPool1_ce0 : OUT STD_LOGIC;
    OutPool1_we0 : OUT STD_LOGIC;
    OutPool1_d0 : OUT STD_LOGIC_VECTOR (15 downto 0) );
end;


architecture behav of CNN_CNN_Pipeline_loop_for_channel_pool_1_loop_for_weight_pool_1 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv7_0 : STD_LOGIC_VECTOR (6 downto 0) := "0000000";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv4_0 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    constant ap_const_lv10_0 : STD_LOGIC_VECTOR (9 downto 0) := "0000000000";
    constant ap_const_lv10_280 : STD_LOGIC_VECTOR (9 downto 0) := "1010000000";
    constant ap_const_lv10_1 : STD_LOGIC_VECTOR (9 downto 0) := "0000000001";
    constant ap_const_lv7_50 : STD_LOGIC_VECTOR (6 downto 0) := "1010000";
    constant ap_const_lv4_1 : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    constant ap_const_lv7_1 : STD_LOGIC_VECTOR (6 downto 0) := "0000001";
    constant ap_const_lv5_0 : STD_LOGIC_VECTOR (4 downto 0) := "00000";
    constant ap_const_lv11_1 : STD_LOGIC_VECTOR (10 downto 0) := "00000000001";
    constant ap_const_lv16_F600 : STD_LOGIC_VECTOR (15 downto 0) := "1111011000000000";
    constant ap_const_lv6_0 : STD_LOGIC_VECTOR (5 downto 0) := "000000";

attribute shreg_extract : string;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (0 downto 0) := "1";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC;
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter2 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter3 : STD_LOGIC := '0';
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal icmp_ln30_fu_128_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_condition_exit_pp0_iter0_stage0 : STD_LOGIC;
    signal ap_loop_exit_ready : STD_LOGIC;
    signal ap_ready_int : STD_LOGIC;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal select_ln30_fu_152_p3 : STD_LOGIC_VECTOR (6 downto 0);
    signal select_ln30_reg_362 : STD_LOGIC_VECTOR (6 downto 0);
    signal select_ln30_reg_362_pp0_iter1_reg : STD_LOGIC_VECTOR (6 downto 0);
    signal select_ln30_reg_362_pp0_iter2_reg : STD_LOGIC_VECTOR (6 downto 0);
    signal empty_fu_174_p1 : STD_LOGIC_VECTOR (2 downto 0);
    signal empty_reg_368 : STD_LOGIC_VECTOR (2 downto 0);
    signal empty_reg_368_pp0_iter1_reg : STD_LOGIC_VECTOR (2 downto 0);
    signal empty_reg_368_pp0_iter2_reg : STD_LOGIC_VECTOR (2 downto 0);
    signal max_fu_272_p3 : STD_LOGIC_VECTOR (15 downto 0);
    signal max_reg_386 : STD_LOGIC_VECTOR (15 downto 0);
    signal pool_value_3_reg_392 : STD_LOGIC_VECTOR (15 downto 0);
    signal zext_ln38_fu_244_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal zext_ln38_1_fu_261_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln42_fu_332_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal y_fu_60 : STD_LOGIC_VECTOR (6 downto 0) := "0000000";
    signal add_ln43_fu_178_p2 : STD_LOGIC_VECTOR (6 downto 0);
    signal ap_loop_init : STD_LOGIC;
    signal ap_sig_allocacmp_y_load : STD_LOGIC_VECTOR (6 downto 0);
    signal z_fu_64 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    signal select_ln30_1_fu_166_p3 : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_sig_allocacmp_z_load : STD_LOGIC_VECTOR (3 downto 0);
    signal indvar_flatten55_fu_68 : STD_LOGIC_VECTOR (9 downto 0) := "0000000000";
    signal add_ln30_fu_134_p2 : STD_LOGIC_VECTOR (9 downto 0);
    signal ap_sig_allocacmp_indvar_flatten55_load : STD_LOGIC_VECTOR (9 downto 0);
    signal icmp_ln33_fu_146_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal add_ln30_1_fu_160_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal p_shl_fu_199_p3 : STD_LOGIC_VECTOR (9 downto 0);
    signal p_shl5_fu_210_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal p_shl27_cast_fu_206_p1 : STD_LOGIC_VECTOR (10 downto 0);
    signal p_shl28_cast_fu_217_p1 : STD_LOGIC_VECTOR (10 downto 0);
    signal tmp_s_fu_227_p3 : STD_LOGIC_VECTOR (7 downto 0);
    signal zext_ln37_fu_234_p1 : STD_LOGIC_VECTOR (10 downto 0);
    signal empty_154_fu_221_p2 : STD_LOGIC_VECTOR (10 downto 0);
    signal add_ln37_fu_238_p2 : STD_LOGIC_VECTOR (10 downto 0);
    signal or_ln37_fu_249_p2 : STD_LOGIC_VECTOR (10 downto 0);
    signal add_ln37_1_fu_255_p2 : STD_LOGIC_VECTOR (10 downto 0);
    signal icmp_ln39_fu_266_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_shl6_fu_280_p3 : STD_LOGIC_VECTOR (8 downto 0);
    signal p_shl7_fu_291_p3 : STD_LOGIC_VECTOR (6 downto 0);
    signal icmp_ln39_1_fu_305_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal zext_ln33_fu_298_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal zext_ln33_1_fu_302_p1 : STD_LOGIC_VECTOR (7 downto 0);
    signal add_ln41_fu_316_p2 : STD_LOGIC_VECTOR (7 downto 0);
    signal zext_ln41_fu_322_p1 : STD_LOGIC_VECTOR (9 downto 0);
    signal p_shl25_cast_fu_287_p1 : STD_LOGIC_VECTOR (9 downto 0);
    signal add_ln41_1_fu_326_p2 : STD_LOGIC_VECTOR (9 downto 0);
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_continue_int : STD_LOGIC;
    signal ap_done_int : STD_LOGIC;
    signal ap_loop_exit_ready_pp0_iter1_reg : STD_LOGIC;
    signal ap_loop_exit_ready_pp0_iter2_reg : STD_LOGIC;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_enable_pp0 : STD_LOGIC;
    signal ap_start_int : STD_LOGIC;
    signal ap_ce_reg : STD_LOGIC;

    component CNN_flow_control_loop_pipe_sequential_init IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_start_int : OUT STD_LOGIC;
        ap_loop_init : OUT STD_LOGIC;
        ap_ready_int : IN STD_LOGIC;
        ap_loop_exit_ready : IN STD_LOGIC;
        ap_loop_exit_done : IN STD_LOGIC;
        ap_continue_int : OUT STD_LOGIC;
        ap_done_int : IN STD_LOGIC );
    end component;



begin
    flow_control_loop_pipe_sequential_init_U : component CNN_flow_control_loop_pipe_sequential_init
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => ap_start,
        ap_ready => ap_ready,
        ap_done => ap_done,
        ap_start_int => ap_start_int,
        ap_loop_init => ap_loop_init,
        ap_ready_int => ap_ready_int,
        ap_loop_exit_ready => ap_condition_exit_pp0_iter0_stage0,
        ap_loop_exit_done => ap_done_int,
        ap_continue_int => ap_continue_int,
        ap_done_int => ap_done_int);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    ap_done_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_done_reg <= ap_const_logic_0;
            else
                if ((ap_continue_int = ap_const_logic_1)) then 
                    ap_done_reg <= ap_const_logic_0;
                elsif (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_loop_exit_ready_pp0_iter2_reg = ap_const_logic_1))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter1_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_condition_exit_pp0_iter0_stage0)) then 
                    ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
                elsif (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                    ap_enable_reg_pp0_iter1 <= ap_start_int;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter2_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter2 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter3_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter3 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
                end if; 
            end if;
        end if;
    end process;


    indvar_flatten55_fu_68_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if (((icmp_ln30_fu_128_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1))) then 
                    indvar_flatten55_fu_68 <= add_ln30_fu_134_p2;
                elsif ((ap_loop_init = ap_const_logic_1)) then 
                    indvar_flatten55_fu_68 <= ap_const_lv10_0;
                end if;
            end if; 
        end if;
    end process;

    y_fu_60_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if (((icmp_ln30_fu_128_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1))) then 
                    y_fu_60 <= add_ln43_fu_178_p2;
                elsif ((ap_loop_init = ap_const_logic_1)) then 
                    y_fu_60 <= ap_const_lv7_0;
                end if;
            end if; 
        end if;
    end process;

    z_fu_64_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if (((icmp_ln30_fu_128_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1))) then 
                    z_fu_64 <= select_ln30_1_fu_166_p3;
                elsif ((ap_loop_init = ap_const_logic_1)) then 
                    z_fu_64 <= ap_const_lv4_0;
                end if;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
                ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
                empty_reg_368 <= empty_fu_174_p1;
                empty_reg_368_pp0_iter1_reg <= empty_reg_368;
                select_ln30_reg_362 <= select_ln30_fu_152_p3;
                select_ln30_reg_362_pp0_iter1_reg <= select_ln30_reg_362;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_boolean_0 = ap_block_pp0_stage0_11001)) then
                empty_reg_368_pp0_iter2_reg <= empty_reg_368_pp0_iter1_reg;
                max_reg_386 <= max_fu_272_p3;
                select_ln30_reg_362_pp0_iter2_reg <= select_ln30_reg_362_pp0_iter1_reg;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1))) then
                pool_value_3_reg_392 <= OutConv3_q0;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_CS_fsm)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_pp0_stage0 => 
                ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
            when others =>  
                ap_NS_fsm <= "X";
        end case;
    end process;
    OutConv3_address0 <= zext_ln38_1_fu_261_p1(11 - 1 downto 0);
    OutConv3_address1 <= zext_ln38_fu_244_p1(11 - 1 downto 0);

    OutConv3_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            OutConv3_ce0 <= ap_const_logic_1;
        else 
            OutConv3_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    OutConv3_ce1_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            OutConv3_ce1 <= ap_const_logic_1;
        else 
            OutConv3_ce1 <= ap_const_logic_0;
        end if; 
    end process;

    OutPool1_address0 <= zext_ln42_fu_332_p1(10 - 1 downto 0);

    OutPool1_ce0_assign_proc : process(ap_enable_reg_pp0_iter3, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter3 = ap_const_logic_1))) then 
            OutPool1_ce0 <= ap_const_logic_1;
        else 
            OutPool1_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    OutPool1_d0 <= 
        pool_value_3_reg_392 when (icmp_ln39_1_fu_305_p2(0) = '1') else 
        max_reg_386;

    OutPool1_we0_assign_proc : process(ap_enable_reg_pp0_iter3, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter3 = ap_const_logic_1))) then 
            OutPool1_we0 <= ap_const_logic_1;
        else 
            OutPool1_we0 <= ap_const_logic_0;
        end if; 
    end process;

    add_ln30_1_fu_160_p2 <= std_logic_vector(unsigned(ap_sig_allocacmp_z_load) + unsigned(ap_const_lv4_1));
    add_ln30_fu_134_p2 <= std_logic_vector(unsigned(ap_sig_allocacmp_indvar_flatten55_load) + unsigned(ap_const_lv10_1));
    add_ln37_1_fu_255_p2 <= std_logic_vector(unsigned(zext_ln37_fu_234_p1) + unsigned(or_ln37_fu_249_p2));
    add_ln37_fu_238_p2 <= std_logic_vector(unsigned(zext_ln37_fu_234_p1) + unsigned(empty_154_fu_221_p2));
    add_ln41_1_fu_326_p2 <= std_logic_vector(unsigned(zext_ln41_fu_322_p1) + unsigned(p_shl25_cast_fu_287_p1));
    add_ln41_fu_316_p2 <= std_logic_vector(unsigned(zext_ln33_fu_298_p1) + unsigned(zext_ln33_1_fu_302_p1));
    add_ln43_fu_178_p2 <= std_logic_vector(unsigned(select_ln30_fu_152_p3) + unsigned(ap_const_lv7_1));
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(0);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_11001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_subdone <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_condition_exit_pp0_iter0_stage0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_subdone, icmp_ln30_fu_128_p2)
    begin
        if (((icmp_ln30_fu_128_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_condition_exit_pp0_iter0_stage0 <= ap_const_logic_1;
        else 
            ap_condition_exit_pp0_iter0_stage0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_int_assign_proc : process(ap_block_pp0_stage0_subdone, ap_done_reg, ap_loop_exit_ready_pp0_iter2_reg)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_loop_exit_ready_pp0_iter2_reg = ap_const_logic_1))) then 
            ap_done_int <= ap_const_logic_1;
        else 
            ap_done_int <= ap_done_reg;
        end if; 
    end process;

    ap_enable_pp0 <= (ap_idle_pp0 xor ap_const_logic_1);
    ap_enable_reg_pp0_iter0 <= ap_start_int;

    ap_idle_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_idle_pp0, ap_start_int)
    begin
        if (((ap_idle_pp0 = ap_const_logic_1) and (ap_start_int = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter2, ap_enable_reg_pp0_iter3)
    begin
        if (((ap_enable_reg_pp0_iter3 = ap_const_logic_0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_0))) then 
            ap_idle_pp0 <= ap_const_logic_1;
        else 
            ap_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;

    ap_loop_exit_ready <= ap_condition_exit_pp0_iter0_stage0;

    ap_ready_int_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_subdone)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_ready_int <= ap_const_logic_1;
        else 
            ap_ready_int <= ap_const_logic_0;
        end if; 
    end process;


    ap_sig_allocacmp_indvar_flatten55_load_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0, ap_loop_init, indvar_flatten55_fu_68)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_loop_init = ap_const_logic_1))) then 
            ap_sig_allocacmp_indvar_flatten55_load <= ap_const_lv10_0;
        else 
            ap_sig_allocacmp_indvar_flatten55_load <= indvar_flatten55_fu_68;
        end if; 
    end process;


    ap_sig_allocacmp_y_load_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0, y_fu_60, ap_loop_init)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_loop_init = ap_const_logic_1))) then 
            ap_sig_allocacmp_y_load <= ap_const_lv7_0;
        else 
            ap_sig_allocacmp_y_load <= y_fu_60;
        end if; 
    end process;


    ap_sig_allocacmp_z_load_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0, ap_loop_init, z_fu_64)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_loop_init = ap_const_logic_1))) then 
            ap_sig_allocacmp_z_load <= ap_const_lv4_0;
        else 
            ap_sig_allocacmp_z_load <= z_fu_64;
        end if; 
    end process;

    empty_154_fu_221_p2 <= std_logic_vector(unsigned(p_shl27_cast_fu_206_p1) + unsigned(p_shl28_cast_fu_217_p1));
    empty_fu_174_p1 <= select_ln30_1_fu_166_p3(3 - 1 downto 0);
    icmp_ln30_fu_128_p2 <= "1" when (ap_sig_allocacmp_indvar_flatten55_load = ap_const_lv10_280) else "0";
    icmp_ln33_fu_146_p2 <= "1" when (ap_sig_allocacmp_y_load = ap_const_lv7_50) else "0";
    icmp_ln39_1_fu_305_p2 <= "1" when (signed(pool_value_3_reg_392) > signed(max_reg_386)) else "0";
    icmp_ln39_fu_266_p2 <= "1" when (signed(OutConv3_q1) > signed(ap_const_lv16_F600)) else "0";
    max_fu_272_p3 <= 
        OutConv3_q1 when (icmp_ln39_fu_266_p2(0) = '1') else 
        ap_const_lv16_F600;
    or_ln37_fu_249_p2 <= (empty_154_fu_221_p2 or ap_const_lv11_1);
    p_shl25_cast_fu_287_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(p_shl6_fu_280_p3),10));
    p_shl27_cast_fu_206_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(p_shl_fu_199_p3),11));
    p_shl28_cast_fu_217_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(p_shl5_fu_210_p3),11));
    p_shl5_fu_210_p3 <= (empty_reg_368 & ap_const_lv5_0);
    p_shl6_fu_280_p3 <= (empty_reg_368_pp0_iter2_reg & ap_const_lv6_0);
    p_shl7_fu_291_p3 <= (empty_reg_368_pp0_iter2_reg & ap_const_lv4_0);
    p_shl_fu_199_p3 <= (empty_reg_368 & ap_const_lv7_0);
    select_ln30_1_fu_166_p3 <= 
        add_ln30_1_fu_160_p2 when (icmp_ln33_fu_146_p2(0) = '1') else 
        ap_sig_allocacmp_z_load;
    select_ln30_fu_152_p3 <= 
        ap_const_lv7_0 when (icmp_ln33_fu_146_p2(0) = '1') else 
        ap_sig_allocacmp_y_load;
    tmp_s_fu_227_p3 <= (select_ln30_reg_362 & ap_const_lv1_0);
    zext_ln33_1_fu_302_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(select_ln30_reg_362_pp0_iter2_reg),8));
    zext_ln33_fu_298_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(p_shl7_fu_291_p3),8));
    zext_ln37_fu_234_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_s_fu_227_p3),11));
    zext_ln38_1_fu_261_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln37_1_fu_255_p2),64));
    zext_ln38_fu_244_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln37_fu_238_p2),64));
    zext_ln41_fu_322_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln41_fu_316_p2),10));
    zext_ln42_fu_332_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln41_1_fu_326_p2),64));
end behav;
