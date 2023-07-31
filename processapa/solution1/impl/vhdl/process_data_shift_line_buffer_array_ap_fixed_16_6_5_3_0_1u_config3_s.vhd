-- ==============================================================
-- Generated by Vitis HLS v2023.1
-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- ==============================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity process_data_shift_line_buffer_array_ap_fixed_16_6_5_3_0_1u_config3_s is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    in_elem_0_0_0_0_0_val : IN STD_LOGIC_VECTOR (15 downto 0);
    void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_36_i : IN STD_LOGIC_VECTOR (15 downto 0);
    void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_36_o : OUT STD_LOGIC_VECTOR (15 downto 0);
    void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_36_o_ap_vld : OUT STD_LOGIC;
    void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_33_i : IN STD_LOGIC_VECTOR (15 downto 0);
    void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_33_o : OUT STD_LOGIC_VECTOR (15 downto 0);
    void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_33_o_ap_vld : OUT STD_LOGIC;
    void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_30_i : IN STD_LOGIC_VECTOR (15 downto 0);
    void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_30_o : OUT STD_LOGIC_VECTOR (15 downto 0);
    void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_30_o_ap_vld : OUT STD_LOGIC;
    void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_35_i : IN STD_LOGIC_VECTOR (15 downto 0);
    void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_35_o : OUT STD_LOGIC_VECTOR (15 downto 0);
    void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_35_o_ap_vld : OUT STD_LOGIC;
    void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_32_i : IN STD_LOGIC_VECTOR (15 downto 0);
    void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_32_o : OUT STD_LOGIC_VECTOR (15 downto 0);
    void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_32_o_ap_vld : OUT STD_LOGIC;
    void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_38_i : IN STD_LOGIC_VECTOR (15 downto 0);
    void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_38_o : OUT STD_LOGIC_VECTOR (15 downto 0);
    void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_38_o_ap_vld : OUT STD_LOGIC;
    void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_37 : OUT STD_LOGIC_VECTOR (15 downto 0);
    void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_37_ap_vld : OUT STD_LOGIC;
    void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_34 : OUT STD_LOGIC_VECTOR (15 downto 0);
    void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_34_ap_vld : OUT STD_LOGIC;
    void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_31 : OUT STD_LOGIC_VECTOR (15 downto 0);
    void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_31_ap_vld : OUT STD_LOGIC );
end;


architecture behav of process_data_shift_line_buffer_array_ap_fixed_16_6_5_3_0_1u_config3_s is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv7_7F : STD_LOGIC_VECTOR (6 downto 0) := "1111111";
    constant ap_const_boolean_1 : BOOLEAN := true;

attribute shreg_extract : string;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (0 downto 0) := "1";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal void_conv_2d_buffer_cl_stream_stream_weight_t_bias_t_line_buffer_1_ce0 : STD_LOGIC;
    signal void_conv_2d_buffer_cl_stream_stream_weight_t_bias_t_line_buffer_1_we0 : STD_LOGIC;
    signal void_conv_2d_buffer_cl_stream_stream_weight_t_bias_t_line_buffer_1_q0 : STD_LOGIC_VECTOR (15 downto 0);
    signal void_conv_2d_buffer_cl_stream_stream_weight_t_bias_t_line_buffer_ce0 : STD_LOGIC;
    signal void_conv_2d_buffer_cl_stream_stream_weight_t_bias_t_line_buffer_we0 : STD_LOGIC;
    signal void_conv_2d_buffer_cl_stream_stream_weight_t_bias_t_line_buffer_q0 : STD_LOGIC_VECTOR (15 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_ST_fsm_state1_blk : STD_LOGIC;
    signal ap_ce_reg : STD_LOGIC;

    component process_data_shift_line_buffer_array_ap_fixed_16_6_5_3_0_1u_config3_s_void_conv_2d_buffer_bkb IS
    generic (
        DataWidth : INTEGER;
        AddressRange : INTEGER;
        AddressWidth : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR (6 downto 0);
        ce0 : IN STD_LOGIC;
        we0 : IN STD_LOGIC;
        d0 : IN STD_LOGIC_VECTOR (15 downto 0);
        q0 : OUT STD_LOGIC_VECTOR (15 downto 0) );
    end component;



begin
    void_conv_2d_buffer_cl_stream_stream_weight_t_bias_t_line_buffer_1_U : component process_data_shift_line_buffer_array_ap_fixed_16_6_5_3_0_1u_config3_s_void_conv_2d_buffer_bkb
    generic map (
        DataWidth => 16,
        AddressRange => 128,
        AddressWidth => 7)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        address0 => ap_const_lv7_7F,
        ce0 => void_conv_2d_buffer_cl_stream_stream_weight_t_bias_t_line_buffer_1_ce0,
        we0 => void_conv_2d_buffer_cl_stream_stream_weight_t_bias_t_line_buffer_1_we0,
        d0 => in_elem_0_0_0_0_0_val,
        q0 => void_conv_2d_buffer_cl_stream_stream_weight_t_bias_t_line_buffer_1_q0);

    void_conv_2d_buffer_cl_stream_stream_weight_t_bias_t_line_buffer_U : component process_data_shift_line_buffer_array_ap_fixed_16_6_5_3_0_1u_config3_s_void_conv_2d_buffer_bkb
    generic map (
        DataWidth => 16,
        AddressRange => 128,
        AddressWidth => 7)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        address0 => ap_const_lv7_7F,
        ce0 => void_conv_2d_buffer_cl_stream_stream_weight_t_bias_t_line_buffer_ce0,
        we0 => void_conv_2d_buffer_cl_stream_stream_weight_t_bias_t_line_buffer_we0,
        d0 => void_conv_2d_buffer_cl_stream_stream_weight_t_bias_t_line_buffer_1_q0,
        q0 => void_conv_2d_buffer_cl_stream_stream_weight_t_bias_t_line_buffer_q0);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    ap_NS_fsm_assign_proc : process (ap_start, ap_CS_fsm, ap_CS_fsm_state1)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                ap_NS_fsm <= ap_ST_fsm_state1;
            when others =>  
                ap_NS_fsm <= "X";
        end case;
    end process;
    ap_CS_fsm_state1 <= ap_CS_fsm(0);

    ap_ST_fsm_state1_blk_assign_proc : process(ap_start)
    begin
        if ((ap_start = ap_const_logic_0)) then 
            ap_ST_fsm_state1_blk <= ap_const_logic_1;
        else 
            ap_ST_fsm_state1_blk <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if ((((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1)) or ((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1)))) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_ready_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;


    void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_30_o_assign_proc : process(ap_CS_fsm_state1, void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_30_i, void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_38_i)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state1)) then 
            void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_30_o <= void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_38_i;
        else 
            void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_30_o <= void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_30_i;
        end if; 
    end process;


    void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_30_o_ap_vld_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_30_o_ap_vld <= ap_const_logic_1;
        else 
            void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_30_o_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_31 <= void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_30_i;

    void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_31_ap_vld_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_31_ap_vld <= ap_const_logic_1;
        else 
            void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_31_ap_vld <= ap_const_logic_0;
        end if; 
    end process;


    void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_32_o_assign_proc : process(ap_CS_fsm_state1, void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_32_i, void_conv_2d_buffer_cl_stream_stream_weight_t_bias_t_line_buffer_1_q0)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state1)) then 
            void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_32_o <= void_conv_2d_buffer_cl_stream_stream_weight_t_bias_t_line_buffer_1_q0;
        else 
            void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_32_o <= void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_32_i;
        end if; 
    end process;


    void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_32_o_ap_vld_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_32_o_ap_vld <= ap_const_logic_1;
        else 
            void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_32_o_ap_vld <= ap_const_logic_0;
        end if; 
    end process;


    void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_33_o_assign_proc : process(ap_CS_fsm_state1, void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_33_i, void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_32_i)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state1)) then 
            void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_33_o <= void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_32_i;
        else 
            void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_33_o <= void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_33_i;
        end if; 
    end process;


    void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_33_o_ap_vld_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_33_o_ap_vld <= ap_const_logic_1;
        else 
            void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_33_o_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_34 <= void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_33_i;

    void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_34_ap_vld_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_34_ap_vld <= ap_const_logic_1;
        else 
            void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_34_ap_vld <= ap_const_logic_0;
        end if; 
    end process;


    void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_35_o_assign_proc : process(ap_CS_fsm_state1, void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_35_i, void_conv_2d_buffer_cl_stream_stream_weight_t_bias_t_line_buffer_q0)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state1)) then 
            void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_35_o <= void_conv_2d_buffer_cl_stream_stream_weight_t_bias_t_line_buffer_q0;
        else 
            void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_35_o <= void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_35_i;
        end if; 
    end process;


    void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_35_o_ap_vld_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_35_o_ap_vld <= ap_const_logic_1;
        else 
            void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_35_o_ap_vld <= ap_const_logic_0;
        end if; 
    end process;


    void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_36_o_assign_proc : process(ap_CS_fsm_state1, void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_36_i, void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_35_i)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state1)) then 
            void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_36_o <= void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_35_i;
        else 
            void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_36_o <= void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_36_i;
        end if; 
    end process;


    void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_36_o_ap_vld_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_36_o_ap_vld <= ap_const_logic_1;
        else 
            void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_36_o_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_37 <= void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_36_i;

    void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_37_ap_vld_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_37_ap_vld <= ap_const_logic_1;
        else 
            void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_37_ap_vld <= ap_const_logic_0;
        end if; 
    end process;


    void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_38_o_assign_proc : process(ap_CS_fsm_state1, in_elem_0_0_0_0_0_val, void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_38_i)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state1)) then 
            void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_38_o <= in_elem_0_0_0_0_0_val;
        else 
            void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_38_o <= void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_38_i;
        end if; 
    end process;


    void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_38_o_ap_vld_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_38_o_ap_vld <= ap_const_logic_1;
        else 
            void_compute_output_buffer_2d_array_const_ap_shift_reg_n_chan_stream_weig_38_o_ap_vld <= ap_const_logic_0;
        end if; 
    end process;


    void_conv_2d_buffer_cl_stream_stream_weight_t_bias_t_line_buffer_1_ce0_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            void_conv_2d_buffer_cl_stream_stream_weight_t_bias_t_line_buffer_1_ce0 <= ap_const_logic_1;
        else 
            void_conv_2d_buffer_cl_stream_stream_weight_t_bias_t_line_buffer_1_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    void_conv_2d_buffer_cl_stream_stream_weight_t_bias_t_line_buffer_1_we0_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            void_conv_2d_buffer_cl_stream_stream_weight_t_bias_t_line_buffer_1_we0 <= ap_const_logic_1;
        else 
            void_conv_2d_buffer_cl_stream_stream_weight_t_bias_t_line_buffer_1_we0 <= ap_const_logic_0;
        end if; 
    end process;


    void_conv_2d_buffer_cl_stream_stream_weight_t_bias_t_line_buffer_ce0_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            void_conv_2d_buffer_cl_stream_stream_weight_t_bias_t_line_buffer_ce0 <= ap_const_logic_1;
        else 
            void_conv_2d_buffer_cl_stream_stream_weight_t_bias_t_line_buffer_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    void_conv_2d_buffer_cl_stream_stream_weight_t_bias_t_line_buffer_we0_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_start = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            void_conv_2d_buffer_cl_stream_stream_weight_t_bias_t_line_buffer_we0 <= ap_const_logic_1;
        else 
            void_conv_2d_buffer_cl_stream_stream_weight_t_bias_t_line_buffer_we0 <= ap_const_logic_0;
        end if; 
    end process;

end behav;