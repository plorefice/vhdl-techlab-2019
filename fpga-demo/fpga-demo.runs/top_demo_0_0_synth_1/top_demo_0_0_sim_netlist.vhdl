-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
-- Date        : Wed Sep 18 10:58:43 2019
-- Host        : hubble running 64-bit Ubuntu 18.04.3 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ top_demo_0_0_sim_netlist.vhdl
-- Design      : top_demo_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bcd_count_1 is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \cnt_reg[0]_0\ : out STD_LOGIC;
    \cnt_reg[1]_0\ : out STD_LOGIC;
    \cnt_reg[1]_1\ : out STD_LOGIC;
    \cnt_reg[1]_2\ : out STD_LOGIC;
    \cnt_reg[3]_0\ : out STD_LOGIC;
    \cnt_reg[1]_3\ : out STD_LOGIC;
    \cnt_reg[0]_1\ : out STD_LOGIC;
    pause : in STD_LOGIC;
    CLK : in STD_LOGIC;
    reset : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bcd_count_1;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bcd_count_1 is
  signal bcd : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[3]_i_2_n_0\ : STD_LOGIC;
  signal en : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cnt[0]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \cnt[1]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \cnt[2]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \cnt[3]_i_1__1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \cnt[3]_i_2\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \kw4_ks[0]_INST_0_i_3\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \kw4_ks[1]_INST_0_i_3\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \kw4_ks[2]_INST_0_i_3\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \kw4_ks[3]_INST_0_i_3\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \kw4_ks[4]_INST_0_i_3\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \kw4_ks[5]_INST_0_i_3\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \kw4_ks[6]_INST_0_i_3\ : label is "soft_lutpair2";
begin
\cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => bcd(0),
      O => \cnt[0]_i_1_n_0\
    );
\cnt[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4A5A"
    )
        port map (
      I0 => bcd(1),
      I1 => bcd(2),
      I2 => bcd(0),
      I3 => bcd(3),
      O => \cnt[1]_i_1_n_0\
    );
\cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => bcd(0),
      I1 => bcd(1),
      I2 => bcd(2),
      O => \cnt[2]_i_1_n_0\
    );
\cnt[3]_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000040"
    )
        port map (
      I0 => bcd(1),
      I1 => bcd(0),
      I2 => bcd(3),
      I3 => bcd(2),
      I4 => pause,
      O => E(0)
    );
\cnt[3]_i_1__2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pause,
      O => en
    );
\cnt[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"68F0"
    )
        port map (
      I0 => bcd(1),
      I1 => bcd(2),
      I2 => bcd(3),
      I3 => bcd(0),
      O => \cnt[3]_i_2_n_0\
    );
\cnt_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => en,
      CLR => reset,
      D => \cnt[0]_i_1_n_0\,
      Q => bcd(0)
    );
\cnt_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => en,
      CLR => reset,
      D => \cnt[1]_i_1_n_0\,
      Q => bcd(1)
    );
\cnt_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => en,
      CLR => reset,
      D => \cnt[2]_i_1_n_0\,
      Q => bcd(2)
    );
\cnt_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => en,
      CLR => reset,
      D => \cnt[3]_i_2_n_0\,
      Q => bcd(3)
    );
\kw4_ks[0]_INST_0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FC83"
    )
        port map (
      I0 => bcd(0),
      I1 => bcd(1),
      I2 => bcd(2),
      I3 => bcd(3),
      O => \cnt_reg[0]_0\
    );
\kw4_ks[1]_INST_0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EEB2"
    )
        port map (
      I0 => bcd(1),
      I1 => bcd(2),
      I2 => bcd(0),
      I3 => bcd(3),
      O => \cnt_reg[1]_2\
    );
\kw4_ks[2]_INST_0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FBF8"
    )
        port map (
      I0 => bcd(3),
      I1 => bcd(1),
      I2 => bcd(0),
      I3 => bcd(2),
      O => \cnt_reg[3]_0\
    );
\kw4_ks[3]_INST_0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E9E4"
    )
        port map (
      I0 => bcd(1),
      I1 => bcd(2),
      I2 => bcd(3),
      I3 => bcd(0),
      O => \cnt_reg[1]_3\
    );
\kw4_ks[4]_INST_0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F0C4"
    )
        port map (
      I0 => bcd(0),
      I1 => bcd(1),
      I2 => bcd(3),
      I3 => bcd(2),
      O => \cnt_reg[0]_1\
    );
\kw4_ks[5]_INST_0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F6A0"
    )
        port map (
      I0 => bcd(1),
      I1 => bcd(0),
      I2 => bcd(3),
      I3 => bcd(2),
      O => \cnt_reg[1]_1\
    );
\kw4_ks[6]_INST_0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E1E4"
    )
        port map (
      I0 => bcd(1),
      I1 => bcd(2),
      I2 => bcd(3),
      I3 => bcd(0),
      O => \cnt_reg[1]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bcd_count_1_0 is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \cnt_reg[3]_0\ : out STD_LOGIC;
    \cnt_reg[3]_1\ : out STD_LOGIC;
    \cnt_reg[3]_2\ : out STD_LOGIC;
    \cnt_reg[3]_3\ : out STD_LOGIC;
    \cnt_reg[3]_4\ : out STD_LOGIC;
    \cnt_reg[3]_5\ : out STD_LOGIC;
    \cnt_reg[3]_6\ : out STD_LOGIC;
    \cnt_reg[3]_7\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    CLK : in STD_LOGIC;
    reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bcd_count_1_0 : entity is "bcd_count_1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bcd_count_1_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bcd_count_1_0 is
  signal bcd : STD_LOGIC_VECTOR ( 7 downto 4 );
  signal \cnt[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \cnt[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \cnt[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \cnt[3]_i_2__0_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cnt[0]_i_1__0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \cnt[1]_i_1__0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \cnt[2]_i_1__0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \cnt[3]_i_1__0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \cnt[3]_i_2__0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \kw4_ks[0]_INST_0_i_4\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \kw4_ks[1]_INST_0_i_4\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \kw4_ks[2]_INST_0_i_4\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \kw4_ks[3]_INST_0_i_4\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \kw4_ks[4]_INST_0_i_4\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \kw4_ks[5]_INST_0_i_4\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \kw4_ks[6]_INST_0_i_4\ : label is "soft_lutpair10";
begin
\cnt[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => bcd(4),
      O => \cnt[0]_i_1__0_n_0\
    );
\cnt[1]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0BF0"
    )
        port map (
      I0 => bcd(6),
      I1 => bcd(7),
      I2 => bcd(5),
      I3 => bcd(4),
      O => \cnt[1]_i_1__0_n_0\
    );
\cnt[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => bcd(4),
      I1 => bcd(5),
      I2 => bcd(6),
      O => \cnt[2]_i_1__0_n_0\
    );
\cnt[3]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
        port map (
      I0 => bcd(5),
      I1 => bcd(6),
      I2 => \cnt_reg[3]_7\(0),
      I3 => bcd(4),
      I4 => bcd(7),
      O => E(0)
    );
\cnt[3]_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AA2"
    )
        port map (
      I0 => bcd(7),
      I1 => bcd(4),
      I2 => bcd(6),
      I3 => bcd(5),
      O => \cnt[3]_i_2__0_n_0\
    );
\cnt_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => \cnt_reg[3]_7\(0),
      CLR => reset,
      D => \cnt[0]_i_1__0_n_0\,
      Q => bcd(4)
    );
\cnt_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => \cnt_reg[3]_7\(0),
      CLR => reset,
      D => \cnt[1]_i_1__0_n_0\,
      Q => bcd(5)
    );
\cnt_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => \cnt_reg[3]_7\(0),
      CLR => reset,
      D => \cnt[2]_i_1__0_n_0\,
      Q => bcd(6)
    );
\cnt_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => \cnt_reg[3]_7\(0),
      CLR => reset,
      D => \cnt[3]_i_2__0_n_0\,
      Q => bcd(7)
    );
\kw4_ks[0]_INST_0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EAA5"
    )
        port map (
      I0 => bcd(7),
      I1 => bcd(4),
      I2 => bcd(5),
      I3 => bcd(6),
      O => \cnt_reg[3]_0\
    );
\kw4_ks[1]_INST_0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EADC"
    )
        port map (
      I0 => bcd(7),
      I1 => bcd(5),
      I2 => bcd(4),
      I3 => bcd(6),
      O => \cnt_reg[3]_3\
    );
\kw4_ks[2]_INST_0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FBF8"
    )
        port map (
      I0 => bcd(7),
      I1 => bcd(5),
      I2 => bcd(4),
      I3 => bcd(6),
      O => \cnt_reg[3]_6\
    );
\kw4_ks[3]_INST_0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EB98"
    )
        port map (
      I0 => bcd(7),
      I1 => bcd(5),
      I2 => bcd(4),
      I3 => bcd(6),
      O => \cnt_reg[3]_1\
    );
\kw4_ks[4]_INST_0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"ABA0"
    )
        port map (
      I0 => bcd(7),
      I1 => bcd(4),
      I2 => bcd(6),
      I3 => bcd(5),
      O => \cnt_reg[3]_4\
    );
\kw4_ks[5]_INST_0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B8E8"
    )
        port map (
      I0 => bcd(7),
      I1 => bcd(5),
      I2 => bcd(6),
      I3 => bcd(4),
      O => \cnt_reg[3]_2\
    );
\kw4_ks[6]_INST_0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA9C"
    )
        port map (
      I0 => bcd(7),
      I1 => bcd(6),
      I2 => bcd(4),
      I3 => bcd(5),
      O => \cnt_reg[3]_5\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bcd_count_1_1 is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    kw4_ks : out STD_LOGIC_VECTOR ( 6 downto 0 );
    \cnt_reg[3]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    kw4_ks_0_sp_1 : in STD_LOGIC;
    \kw4_ks[0]_0\ : in STD_LOGIC;
    kw4_ks_3_sp_1 : in STD_LOGIC;
    kw4_ks_5_sp_1 : in STD_LOGIC;
    \kw4_ks[3]_0\ : in STD_LOGIC;
    \kw4_ks[5]_0\ : in STD_LOGIC;
    kw4_ks_1_sp_1 : in STD_LOGIC;
    kw4_ks_2_sp_1 : in STD_LOGIC;
    kw4_ks_4_sp_1 : in STD_LOGIC;
    kw4_ks_6_sp_1 : in STD_LOGIC;
    \kw4_ks[1]_0\ : in STD_LOGIC;
    \kw4_ks[4]_0\ : in STD_LOGIC;
    \kw4_ks[6]_0\ : in STD_LOGIC;
    \kw4_ks[2]_0\ : in STD_LOGIC;
    CLK : in STD_LOGIC;
    reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bcd_count_1_1 : entity is "bcd_count_1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bcd_count_1_1;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bcd_count_1_1 is
  signal bcd : STD_LOGIC_VECTOR ( 11 downto 8 );
  signal \cnt[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \cnt[1]_i_1__1_n_0\ : STD_LOGIC;
  signal \cnt[2]_i_1__1_n_0\ : STD_LOGIC;
  signal \cnt[3]_i_2__1_n_0\ : STD_LOGIC;
  signal \kw4_ks[0]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \kw4_ks[1]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \kw4_ks[2]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \kw4_ks[3]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \kw4_ks[4]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \kw4_ks[5]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \kw4_ks[6]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal kw4_ks_0_sn_1 : STD_LOGIC;
  signal kw4_ks_1_sn_1 : STD_LOGIC;
  signal kw4_ks_2_sn_1 : STD_LOGIC;
  signal kw4_ks_3_sn_1 : STD_LOGIC;
  signal kw4_ks_4_sn_1 : STD_LOGIC;
  signal kw4_ks_5_sn_1 : STD_LOGIC;
  signal kw4_ks_6_sn_1 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cnt[1]_i_1__1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \cnt[2]_i_1__1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \cnt[3]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \cnt[3]_i_2__1\ : label is "soft_lutpair12";
begin
  kw4_ks_0_sn_1 <= kw4_ks_0_sp_1;
  kw4_ks_1_sn_1 <= kw4_ks_1_sp_1;
  kw4_ks_2_sn_1 <= kw4_ks_2_sp_1;
  kw4_ks_3_sn_1 <= kw4_ks_3_sp_1;
  kw4_ks_4_sn_1 <= kw4_ks_4_sp_1;
  kw4_ks_5_sn_1 <= kw4_ks_5_sp_1;
  kw4_ks_6_sn_1 <= kw4_ks_6_sp_1;
\cnt[0]_i_1__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => bcd(8),
      O => \cnt[0]_i_1__1_n_0\
    );
\cnt[1]_i_1__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0BF0"
    )
        port map (
      I0 => bcd(10),
      I1 => bcd(11),
      I2 => bcd(9),
      I3 => bcd(8),
      O => \cnt[1]_i_1__1_n_0\
    );
\cnt[2]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => bcd(8),
      I1 => bcd(9),
      I2 => bcd(10),
      O => \cnt[2]_i_1__1_n_0\
    );
\cnt[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
        port map (
      I0 => bcd(9),
      I1 => bcd(10),
      I2 => \cnt_reg[3]_0\(0),
      I3 => bcd(8),
      I4 => bcd(11),
      O => E(0)
    );
\cnt[3]_i_2__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AA2"
    )
        port map (
      I0 => bcd(11),
      I1 => bcd(8),
      I2 => bcd(10),
      I3 => bcd(9),
      O => \cnt[3]_i_2__1_n_0\
    );
\cnt_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => \cnt_reg[3]_0\(0),
      CLR => reset,
      D => \cnt[0]_i_1__1_n_0\,
      Q => bcd(8)
    );
\cnt_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => \cnt_reg[3]_0\(0),
      CLR => reset,
      D => \cnt[1]_i_1__1_n_0\,
      Q => bcd(9)
    );
\cnt_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => \cnt_reg[3]_0\(0),
      CLR => reset,
      D => \cnt[2]_i_1__1_n_0\,
      Q => bcd(10)
    );
\cnt_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => \cnt_reg[3]_0\(0),
      CLR => reset,
      D => \cnt[3]_i_2__1_n_0\,
      Q => bcd(11)
    );
\kw4_ks[0]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \kw4_ks[0]_INST_0_i_1_n_0\,
      I1 => kw4_ks_0_sn_1,
      O => kw4_ks(0),
      S => Q(0)
    );
\kw4_ks[0]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAA5FFFFEAA50000"
    )
        port map (
      I0 => bcd(11),
      I1 => bcd(8),
      I2 => bcd(9),
      I3 => bcd(10),
      I4 => Q(1),
      I5 => \kw4_ks[0]_0\,
      O => \kw4_ks[0]_INST_0_i_1_n_0\
    );
\kw4_ks[1]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \kw4_ks[1]_INST_0_i_1_n_0\,
      I1 => kw4_ks_1_sn_1,
      O => kw4_ks(1),
      S => Q(0)
    );
\kw4_ks[1]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EADCFFFFEADC0000"
    )
        port map (
      I0 => bcd(11),
      I1 => bcd(9),
      I2 => bcd(8),
      I3 => bcd(10),
      I4 => Q(1),
      I5 => \kw4_ks[1]_0\,
      O => \kw4_ks[1]_INST_0_i_1_n_0\
    );
\kw4_ks[2]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \kw4_ks[2]_INST_0_i_1_n_0\,
      I1 => kw4_ks_2_sn_1,
      O => kw4_ks(2),
      S => Q(0)
    );
\kw4_ks[2]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBF8FFFFFBF80000"
    )
        port map (
      I0 => bcd(11),
      I1 => bcd(9),
      I2 => bcd(8),
      I3 => bcd(10),
      I4 => Q(1),
      I5 => \kw4_ks[2]_0\,
      O => \kw4_ks[2]_INST_0_i_1_n_0\
    );
\kw4_ks[3]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \kw4_ks[3]_INST_0_i_1_n_0\,
      I1 => kw4_ks_3_sn_1,
      O => kw4_ks(3),
      S => Q(0)
    );
\kw4_ks[3]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EB98FFFFEB980000"
    )
        port map (
      I0 => bcd(11),
      I1 => bcd(9),
      I2 => bcd(8),
      I3 => bcd(10),
      I4 => Q(1),
      I5 => \kw4_ks[3]_0\,
      O => \kw4_ks[3]_INST_0_i_1_n_0\
    );
\kw4_ks[4]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \kw4_ks[4]_INST_0_i_1_n_0\,
      I1 => kw4_ks_4_sn_1,
      O => kw4_ks(4),
      S => Q(0)
    );
\kw4_ks[4]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ABA0FFFFABA00000"
    )
        port map (
      I0 => bcd(11),
      I1 => bcd(8),
      I2 => bcd(10),
      I3 => bcd(9),
      I4 => Q(1),
      I5 => \kw4_ks[4]_0\,
      O => \kw4_ks[4]_INST_0_i_1_n_0\
    );
\kw4_ks[5]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \kw4_ks[5]_INST_0_i_1_n_0\,
      I1 => kw4_ks_5_sn_1,
      O => kw4_ks(5),
      S => Q(0)
    );
\kw4_ks[5]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B8E8FFFFB8E80000"
    )
        port map (
      I0 => bcd(11),
      I1 => bcd(9),
      I2 => bcd(10),
      I3 => bcd(8),
      I4 => Q(1),
      I5 => \kw4_ks[5]_0\,
      O => \kw4_ks[5]_INST_0_i_1_n_0\
    );
\kw4_ks[6]_INST_0\: unisim.vcomponents.MUXF7
     port map (
      I0 => \kw4_ks[6]_INST_0_i_1_n_0\,
      I1 => kw4_ks_6_sn_1,
      O => kw4_ks(6),
      S => Q(0)
    );
\kw4_ks[6]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA9CFFFFAA9C0000"
    )
        port map (
      I0 => bcd(11),
      I1 => bcd(10),
      I2 => bcd(8),
      I3 => bcd(9),
      I4 => Q(1),
      I5 => \kw4_ks[6]_0\,
      O => \kw4_ks[6]_INST_0_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bcd_count_1_2 is
  port (
    \cnt_reg[3]_0\ : out STD_LOGIC;
    \cnt_reg[3]_1\ : out STD_LOGIC;
    \cnt_reg[3]_2\ : out STD_LOGIC;
    \cnt_reg[3]_3\ : out STD_LOGIC;
    \cnt_reg[3]_4\ : out STD_LOGIC;
    \cnt_reg[3]_5\ : out STD_LOGIC;
    \cnt_reg[3]_6\ : out STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    \kw4_ks[0]\ : in STD_LOGIC;
    \kw4_ks[3]\ : in STD_LOGIC;
    \kw4_ks[5]\ : in STD_LOGIC;
    \kw4_ks[1]\ : in STD_LOGIC;
    \kw4_ks[2]\ : in STD_LOGIC;
    \kw4_ks[4]\ : in STD_LOGIC;
    \kw4_ks[6]\ : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    CLK : in STD_LOGIC;
    reset : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bcd_count_1_2 : entity is "bcd_count_1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bcd_count_1_2;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bcd_count_1_2 is
  signal bcd : STD_LOGIC_VECTOR ( 15 downto 12 );
  signal p_0_in : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cnt[0]_i_1__2\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \cnt[1]_i_1__2\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \cnt[2]_i_1__2\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \cnt[3]_i_2__2\ : label is "soft_lutpair14";
begin
\cnt[0]_i_1__2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => bcd(12),
      O => p_0_in(0)
    );
\cnt[1]_i_1__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0FB0"
    )
        port map (
      I0 => bcd(14),
      I1 => bcd(15),
      I2 => bcd(12),
      I3 => bcd(13),
      O => p_0_in(1)
    );
\cnt[2]_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => bcd(14),
      I1 => bcd(12),
      I2 => bcd(13),
      O => p_0_in(2)
    );
\cnt[3]_i_2__2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AA2"
    )
        port map (
      I0 => bcd(15),
      I1 => bcd(12),
      I2 => bcd(13),
      I3 => bcd(14),
      O => p_0_in(3)
    );
\cnt_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => E(0),
      CLR => reset,
      D => p_0_in(0),
      Q => bcd(12)
    );
\cnt_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => E(0),
      CLR => reset,
      D => p_0_in(1),
      Q => bcd(13)
    );
\cnt_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => E(0),
      CLR => reset,
      D => p_0_in(2),
      Q => bcd(14)
    );
\cnt_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => CLK,
      CE => E(0),
      CLR => reset,
      D => p_0_in(3),
      Q => bcd(15)
    );
\kw4_ks[0]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EAA5FFFFEAA50000"
    )
        port map (
      I0 => bcd(15),
      I1 => bcd(12),
      I2 => bcd(14),
      I3 => bcd(13),
      I4 => Q(0),
      I5 => \kw4_ks[0]\,
      O => \cnt_reg[3]_0\
    );
\kw4_ks[1]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FB98FFFFFB980000"
    )
        port map (
      I0 => bcd(15),
      I1 => bcd(14),
      I2 => bcd(12),
      I3 => bcd(13),
      I4 => Q(0),
      I5 => \kw4_ks[1]\,
      O => \cnt_reg[3]_3\
    );
\kw4_ks[2]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFB8FFFFFFB80000"
    )
        port map (
      I0 => bcd(15),
      I1 => bcd(13),
      I2 => bcd(14),
      I3 => bcd(12),
      I4 => Q(0),
      I5 => \kw4_ks[2]\,
      O => \cnt_reg[3]_4\
    );
\kw4_ks[3]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EA9CFFFFEA9C0000"
    )
        port map (
      I0 => bcd(15),
      I1 => bcd(14),
      I2 => bcd(12),
      I3 => bcd(13),
      I4 => Q(0),
      I5 => \kw4_ks[3]\,
      O => \cnt_reg[3]_1\
    );
\kw4_ks[4]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAB0FFFFAAB00000"
    )
        port map (
      I0 => bcd(15),
      I1 => bcd(12),
      I2 => bcd(13),
      I3 => bcd(14),
      I4 => Q(0),
      I5 => \kw4_ks[4]\,
      O => \cnt_reg[3]_5\
    );
\kw4_ks[5]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BE88FFFFBE880000"
    )
        port map (
      I0 => bcd(15),
      I1 => bcd(13),
      I2 => bcd(12),
      I3 => bcd(14),
      I4 => Q(0),
      I5 => \kw4_ks[5]\,
      O => \cnt_reg[3]_2\
    );
\kw4_ks[6]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA9CFFFFAA9C0000"
    )
        port map (
      I0 => bcd(15),
      I1 => bcd(14),
      I2 => bcd(12),
      I3 => bcd(13),
      I4 => Q(0),
      I5 => \kw4_ks[6]\,
      O => \cnt_reg[3]_6\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clk_div is
  port (
    CLK : out STD_LOGIC;
    clk_1khz : in STD_LOGIC;
    reset : in STD_LOGIC;
    pause : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clk_div;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clk_div is
  signal \^clk\ : STD_LOGIC;
  signal clk_int_i_1_n_0 : STD_LOGIC;
  signal counter : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \counter[31]_i_10_n_0\ : STD_LOGIC;
  signal \counter[31]_i_11_n_0\ : STD_LOGIC;
  signal \counter[31]_i_3_n_0\ : STD_LOGIC;
  signal \counter[31]_i_4_n_0\ : STD_LOGIC;
  signal \counter[31]_i_5_n_0\ : STD_LOGIC;
  signal \counter[31]_i_6_n_0\ : STD_LOGIC;
  signal \counter[31]_i_8_n_0\ : STD_LOGIC;
  signal \counter[31]_i_9_n_0\ : STD_LOGIC;
  signal counter_0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \counter_reg[12]_i_2_n_0\ : STD_LOGIC;
  signal \counter_reg[12]_i_2_n_1\ : STD_LOGIC;
  signal \counter_reg[12]_i_2_n_2\ : STD_LOGIC;
  signal \counter_reg[12]_i_2_n_3\ : STD_LOGIC;
  signal \counter_reg[16]_i_2_n_0\ : STD_LOGIC;
  signal \counter_reg[16]_i_2_n_1\ : STD_LOGIC;
  signal \counter_reg[16]_i_2_n_2\ : STD_LOGIC;
  signal \counter_reg[16]_i_2_n_3\ : STD_LOGIC;
  signal \counter_reg[20]_i_2_n_0\ : STD_LOGIC;
  signal \counter_reg[20]_i_2_n_1\ : STD_LOGIC;
  signal \counter_reg[20]_i_2_n_2\ : STD_LOGIC;
  signal \counter_reg[20]_i_2_n_3\ : STD_LOGIC;
  signal \counter_reg[24]_i_2_n_0\ : STD_LOGIC;
  signal \counter_reg[24]_i_2_n_1\ : STD_LOGIC;
  signal \counter_reg[24]_i_2_n_2\ : STD_LOGIC;
  signal \counter_reg[24]_i_2_n_3\ : STD_LOGIC;
  signal \counter_reg[28]_i_2_n_0\ : STD_LOGIC;
  signal \counter_reg[28]_i_2_n_1\ : STD_LOGIC;
  signal \counter_reg[28]_i_2_n_2\ : STD_LOGIC;
  signal \counter_reg[28]_i_2_n_3\ : STD_LOGIC;
  signal \counter_reg[31]_i_7_n_2\ : STD_LOGIC;
  signal \counter_reg[31]_i_7_n_3\ : STD_LOGIC;
  signal \counter_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \counter_reg[4]_i_2_n_1\ : STD_LOGIC;
  signal \counter_reg[4]_i_2_n_2\ : STD_LOGIC;
  signal \counter_reg[4]_i_2_n_3\ : STD_LOGIC;
  signal \counter_reg[8]_i_2_n_0\ : STD_LOGIC;
  signal \counter_reg[8]_i_2_n_1\ : STD_LOGIC;
  signal \counter_reg[8]_i_2_n_2\ : STD_LOGIC;
  signal \counter_reg[8]_i_2_n_3\ : STD_LOGIC;
  signal data0 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal sync : STD_LOGIC;
  signal \NLW_counter_reg[31]_i_7_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_counter_reg[31]_i_7_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
begin
  CLK <= \^clk\;
clk_int_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0001"
    )
        port map (
      I0 => \counter[31]_i_3_n_0\,
      I1 => \counter[31]_i_4_n_0\,
      I2 => \counter[31]_i_5_n_0\,
      I3 => \counter[31]_i_6_n_0\,
      I4 => \^clk\,
      O => clk_int_i_1_n_0
    );
clk_int_reg: unisim.vcomponents.FDPE
     port map (
      C => clk_1khz,
      CE => '1',
      D => clk_int_i_1_n_0,
      PRE => sync,
      Q => \^clk\
    );
\counter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter(0),
      O => counter_0(0)
    );
\counter[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \counter[31]_i_3_n_0\,
      I1 => \counter[31]_i_4_n_0\,
      I2 => \counter[31]_i_5_n_0\,
      I3 => \counter[31]_i_6_n_0\,
      I4 => data0(10),
      O => counter_0(10)
    );
\counter[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \counter[31]_i_3_n_0\,
      I1 => \counter[31]_i_4_n_0\,
      I2 => \counter[31]_i_5_n_0\,
      I3 => \counter[31]_i_6_n_0\,
      I4 => data0(11),
      O => counter_0(11)
    );
\counter[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \counter[31]_i_3_n_0\,
      I1 => \counter[31]_i_4_n_0\,
      I2 => \counter[31]_i_5_n_0\,
      I3 => \counter[31]_i_6_n_0\,
      I4 => data0(12),
      O => counter_0(12)
    );
\counter[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \counter[31]_i_3_n_0\,
      I1 => \counter[31]_i_4_n_0\,
      I2 => \counter[31]_i_5_n_0\,
      I3 => \counter[31]_i_6_n_0\,
      I4 => data0(13),
      O => counter_0(13)
    );
\counter[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \counter[31]_i_3_n_0\,
      I1 => \counter[31]_i_4_n_0\,
      I2 => \counter[31]_i_5_n_0\,
      I3 => \counter[31]_i_6_n_0\,
      I4 => data0(14),
      O => counter_0(14)
    );
\counter[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \counter[31]_i_3_n_0\,
      I1 => \counter[31]_i_4_n_0\,
      I2 => \counter[31]_i_5_n_0\,
      I3 => \counter[31]_i_6_n_0\,
      I4 => data0(15),
      O => counter_0(15)
    );
\counter[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \counter[31]_i_3_n_0\,
      I1 => \counter[31]_i_4_n_0\,
      I2 => \counter[31]_i_5_n_0\,
      I3 => \counter[31]_i_6_n_0\,
      I4 => data0(16),
      O => counter_0(16)
    );
\counter[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \counter[31]_i_3_n_0\,
      I1 => \counter[31]_i_4_n_0\,
      I2 => \counter[31]_i_5_n_0\,
      I3 => \counter[31]_i_6_n_0\,
      I4 => data0(17),
      O => counter_0(17)
    );
\counter[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \counter[31]_i_3_n_0\,
      I1 => \counter[31]_i_4_n_0\,
      I2 => \counter[31]_i_5_n_0\,
      I3 => \counter[31]_i_6_n_0\,
      I4 => data0(18),
      O => counter_0(18)
    );
\counter[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \counter[31]_i_3_n_0\,
      I1 => \counter[31]_i_4_n_0\,
      I2 => \counter[31]_i_5_n_0\,
      I3 => \counter[31]_i_6_n_0\,
      I4 => data0(19),
      O => counter_0(19)
    );
\counter[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \counter[31]_i_3_n_0\,
      I1 => \counter[31]_i_4_n_0\,
      I2 => \counter[31]_i_5_n_0\,
      I3 => \counter[31]_i_6_n_0\,
      I4 => data0(1),
      O => counter_0(1)
    );
\counter[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \counter[31]_i_3_n_0\,
      I1 => \counter[31]_i_4_n_0\,
      I2 => \counter[31]_i_5_n_0\,
      I3 => \counter[31]_i_6_n_0\,
      I4 => data0(20),
      O => counter_0(20)
    );
\counter[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \counter[31]_i_3_n_0\,
      I1 => \counter[31]_i_4_n_0\,
      I2 => \counter[31]_i_5_n_0\,
      I3 => \counter[31]_i_6_n_0\,
      I4 => data0(21),
      O => counter_0(21)
    );
\counter[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \counter[31]_i_3_n_0\,
      I1 => \counter[31]_i_4_n_0\,
      I2 => \counter[31]_i_5_n_0\,
      I3 => \counter[31]_i_6_n_0\,
      I4 => data0(22),
      O => counter_0(22)
    );
\counter[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \counter[31]_i_3_n_0\,
      I1 => \counter[31]_i_4_n_0\,
      I2 => \counter[31]_i_5_n_0\,
      I3 => \counter[31]_i_6_n_0\,
      I4 => data0(23),
      O => counter_0(23)
    );
\counter[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \counter[31]_i_3_n_0\,
      I1 => \counter[31]_i_4_n_0\,
      I2 => \counter[31]_i_5_n_0\,
      I3 => \counter[31]_i_6_n_0\,
      I4 => data0(24),
      O => counter_0(24)
    );
\counter[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \counter[31]_i_3_n_0\,
      I1 => \counter[31]_i_4_n_0\,
      I2 => \counter[31]_i_5_n_0\,
      I3 => \counter[31]_i_6_n_0\,
      I4 => data0(25),
      O => counter_0(25)
    );
\counter[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \counter[31]_i_3_n_0\,
      I1 => \counter[31]_i_4_n_0\,
      I2 => \counter[31]_i_5_n_0\,
      I3 => \counter[31]_i_6_n_0\,
      I4 => data0(26),
      O => counter_0(26)
    );
\counter[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \counter[31]_i_3_n_0\,
      I1 => \counter[31]_i_4_n_0\,
      I2 => \counter[31]_i_5_n_0\,
      I3 => \counter[31]_i_6_n_0\,
      I4 => data0(27),
      O => counter_0(27)
    );
\counter[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \counter[31]_i_3_n_0\,
      I1 => \counter[31]_i_4_n_0\,
      I2 => \counter[31]_i_5_n_0\,
      I3 => \counter[31]_i_6_n_0\,
      I4 => data0(28),
      O => counter_0(28)
    );
\counter[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \counter[31]_i_3_n_0\,
      I1 => \counter[31]_i_4_n_0\,
      I2 => \counter[31]_i_5_n_0\,
      I3 => \counter[31]_i_6_n_0\,
      I4 => data0(29),
      O => counter_0(29)
    );
\counter[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \counter[31]_i_3_n_0\,
      I1 => \counter[31]_i_4_n_0\,
      I2 => \counter[31]_i_5_n_0\,
      I3 => \counter[31]_i_6_n_0\,
      I4 => data0(2),
      O => counter_0(2)
    );
\counter[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \counter[31]_i_3_n_0\,
      I1 => \counter[31]_i_4_n_0\,
      I2 => \counter[31]_i_5_n_0\,
      I3 => \counter[31]_i_6_n_0\,
      I4 => data0(30),
      O => counter_0(30)
    );
\counter[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \counter[31]_i_3_n_0\,
      I1 => \counter[31]_i_4_n_0\,
      I2 => \counter[31]_i_5_n_0\,
      I3 => \counter[31]_i_6_n_0\,
      I4 => data0(31),
      O => counter_0(31)
    );
\counter[31]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => counter(5),
      I1 => counter(4),
      I2 => counter(7),
      I3 => counter(6),
      O => \counter[31]_i_10_n_0\
    );
\counter[31]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => counter(13),
      I1 => counter(12),
      I2 => counter(15),
      I3 => counter(14),
      O => \counter[31]_i_11_n_0\
    );
\counter[31]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => reset,
      I1 => pause,
      O => sync
    );
\counter[31]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => counter(18),
      I1 => counter(19),
      I2 => counter(16),
      I3 => counter(17),
      I4 => \counter[31]_i_8_n_0\,
      O => \counter[31]_i_3_n_0\
    );
\counter[31]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => counter(26),
      I1 => counter(27),
      I2 => counter(24),
      I3 => counter(25),
      I4 => \counter[31]_i_9_n_0\,
      O => \counter[31]_i_4_n_0\
    );
\counter[31]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFEFFF"
    )
        port map (
      I0 => counter(2),
      I1 => counter(3),
      I2 => counter(0),
      I3 => counter(1),
      I4 => \counter[31]_i_10_n_0\,
      O => \counter[31]_i_5_n_0\
    );
\counter[31]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFEFF"
    )
        port map (
      I0 => counter(10),
      I1 => counter(11),
      I2 => counter(9),
      I3 => counter(8),
      I4 => \counter[31]_i_11_n_0\,
      O => \counter[31]_i_6_n_0\
    );
\counter[31]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => counter(21),
      I1 => counter(20),
      I2 => counter(23),
      I3 => counter(22),
      O => \counter[31]_i_8_n_0\
    );
\counter[31]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => counter(29),
      I1 => counter(28),
      I2 => counter(31),
      I3 => counter(30),
      O => \counter[31]_i_9_n_0\
    );
\counter[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \counter[31]_i_3_n_0\,
      I1 => \counter[31]_i_4_n_0\,
      I2 => \counter[31]_i_5_n_0\,
      I3 => \counter[31]_i_6_n_0\,
      I4 => data0(3),
      O => counter_0(3)
    );
\counter[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \counter[31]_i_3_n_0\,
      I1 => \counter[31]_i_4_n_0\,
      I2 => \counter[31]_i_5_n_0\,
      I3 => \counter[31]_i_6_n_0\,
      I4 => data0(4),
      O => counter_0(4)
    );
\counter[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \counter[31]_i_3_n_0\,
      I1 => \counter[31]_i_4_n_0\,
      I2 => \counter[31]_i_5_n_0\,
      I3 => \counter[31]_i_6_n_0\,
      I4 => data0(5),
      O => counter_0(5)
    );
\counter[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \counter[31]_i_3_n_0\,
      I1 => \counter[31]_i_4_n_0\,
      I2 => \counter[31]_i_5_n_0\,
      I3 => \counter[31]_i_6_n_0\,
      I4 => data0(6),
      O => counter_0(6)
    );
\counter[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \counter[31]_i_3_n_0\,
      I1 => \counter[31]_i_4_n_0\,
      I2 => \counter[31]_i_5_n_0\,
      I3 => \counter[31]_i_6_n_0\,
      I4 => data0(7),
      O => counter_0(7)
    );
\counter[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \counter[31]_i_3_n_0\,
      I1 => \counter[31]_i_4_n_0\,
      I2 => \counter[31]_i_5_n_0\,
      I3 => \counter[31]_i_6_n_0\,
      I4 => data0(8),
      O => counter_0(8)
    );
\counter[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => \counter[31]_i_3_n_0\,
      I1 => \counter[31]_i_4_n_0\,
      I2 => \counter[31]_i_5_n_0\,
      I3 => \counter[31]_i_6_n_0\,
      I4 => data0(9),
      O => counter_0(9)
    );
\counter_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_1khz,
      CE => '1',
      CLR => sync,
      D => counter_0(0),
      Q => counter(0)
    );
\counter_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_1khz,
      CE => '1',
      CLR => sync,
      D => counter_0(10),
      Q => counter(10)
    );
\counter_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_1khz,
      CE => '1',
      CLR => sync,
      D => counter_0(11),
      Q => counter(11)
    );
\counter_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_1khz,
      CE => '1',
      CLR => sync,
      D => counter_0(12),
      Q => counter(12)
    );
\counter_reg[12]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[8]_i_2_n_0\,
      CO(3) => \counter_reg[12]_i_2_n_0\,
      CO(2) => \counter_reg[12]_i_2_n_1\,
      CO(1) => \counter_reg[12]_i_2_n_2\,
      CO(0) => \counter_reg[12]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(12 downto 9),
      S(3 downto 0) => counter(12 downto 9)
    );
\counter_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_1khz,
      CE => '1',
      CLR => sync,
      D => counter_0(13),
      Q => counter(13)
    );
\counter_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_1khz,
      CE => '1',
      CLR => sync,
      D => counter_0(14),
      Q => counter(14)
    );
\counter_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_1khz,
      CE => '1',
      CLR => sync,
      D => counter_0(15),
      Q => counter(15)
    );
\counter_reg[16]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_1khz,
      CE => '1',
      CLR => sync,
      D => counter_0(16),
      Q => counter(16)
    );
\counter_reg[16]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[12]_i_2_n_0\,
      CO(3) => \counter_reg[16]_i_2_n_0\,
      CO(2) => \counter_reg[16]_i_2_n_1\,
      CO(1) => \counter_reg[16]_i_2_n_2\,
      CO(0) => \counter_reg[16]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(16 downto 13),
      S(3 downto 0) => counter(16 downto 13)
    );
\counter_reg[17]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_1khz,
      CE => '1',
      CLR => sync,
      D => counter_0(17),
      Q => counter(17)
    );
\counter_reg[18]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_1khz,
      CE => '1',
      CLR => sync,
      D => counter_0(18),
      Q => counter(18)
    );
\counter_reg[19]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_1khz,
      CE => '1',
      CLR => sync,
      D => counter_0(19),
      Q => counter(19)
    );
\counter_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_1khz,
      CE => '1',
      CLR => sync,
      D => counter_0(1),
      Q => counter(1)
    );
\counter_reg[20]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_1khz,
      CE => '1',
      CLR => sync,
      D => counter_0(20),
      Q => counter(20)
    );
\counter_reg[20]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[16]_i_2_n_0\,
      CO(3) => \counter_reg[20]_i_2_n_0\,
      CO(2) => \counter_reg[20]_i_2_n_1\,
      CO(1) => \counter_reg[20]_i_2_n_2\,
      CO(0) => \counter_reg[20]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(20 downto 17),
      S(3 downto 0) => counter(20 downto 17)
    );
\counter_reg[21]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_1khz,
      CE => '1',
      CLR => sync,
      D => counter_0(21),
      Q => counter(21)
    );
\counter_reg[22]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_1khz,
      CE => '1',
      CLR => sync,
      D => counter_0(22),
      Q => counter(22)
    );
\counter_reg[23]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_1khz,
      CE => '1',
      CLR => sync,
      D => counter_0(23),
      Q => counter(23)
    );
\counter_reg[24]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_1khz,
      CE => '1',
      CLR => sync,
      D => counter_0(24),
      Q => counter(24)
    );
\counter_reg[24]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[20]_i_2_n_0\,
      CO(3) => \counter_reg[24]_i_2_n_0\,
      CO(2) => \counter_reg[24]_i_2_n_1\,
      CO(1) => \counter_reg[24]_i_2_n_2\,
      CO(0) => \counter_reg[24]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(24 downto 21),
      S(3 downto 0) => counter(24 downto 21)
    );
\counter_reg[25]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_1khz,
      CE => '1',
      CLR => sync,
      D => counter_0(25),
      Q => counter(25)
    );
\counter_reg[26]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_1khz,
      CE => '1',
      CLR => sync,
      D => counter_0(26),
      Q => counter(26)
    );
\counter_reg[27]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_1khz,
      CE => '1',
      CLR => sync,
      D => counter_0(27),
      Q => counter(27)
    );
\counter_reg[28]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_1khz,
      CE => '1',
      CLR => sync,
      D => counter_0(28),
      Q => counter(28)
    );
\counter_reg[28]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[24]_i_2_n_0\,
      CO(3) => \counter_reg[28]_i_2_n_0\,
      CO(2) => \counter_reg[28]_i_2_n_1\,
      CO(1) => \counter_reg[28]_i_2_n_2\,
      CO(0) => \counter_reg[28]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(28 downto 25),
      S(3 downto 0) => counter(28 downto 25)
    );
\counter_reg[29]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_1khz,
      CE => '1',
      CLR => sync,
      D => counter_0(29),
      Q => counter(29)
    );
\counter_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_1khz,
      CE => '1',
      CLR => sync,
      D => counter_0(2),
      Q => counter(2)
    );
\counter_reg[30]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_1khz,
      CE => '1',
      CLR => sync,
      D => counter_0(30),
      Q => counter(30)
    );
\counter_reg[31]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_1khz,
      CE => '1',
      CLR => sync,
      D => counter_0(31),
      Q => counter(31)
    );
\counter_reg[31]_i_7\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[28]_i_2_n_0\,
      CO(3 downto 2) => \NLW_counter_reg[31]_i_7_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \counter_reg[31]_i_7_n_2\,
      CO(0) => \counter_reg[31]_i_7_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_counter_reg[31]_i_7_O_UNCONNECTED\(3),
      O(2 downto 0) => data0(31 downto 29),
      S(3) => '0',
      S(2 downto 0) => counter(31 downto 29)
    );
\counter_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_1khz,
      CE => '1',
      CLR => sync,
      D => counter_0(3),
      Q => counter(3)
    );
\counter_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_1khz,
      CE => '1',
      CLR => sync,
      D => counter_0(4),
      Q => counter(4)
    );
\counter_reg[4]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \counter_reg[4]_i_2_n_0\,
      CO(2) => \counter_reg[4]_i_2_n_1\,
      CO(1) => \counter_reg[4]_i_2_n_2\,
      CO(0) => \counter_reg[4]_i_2_n_3\,
      CYINIT => counter(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(4 downto 1),
      S(3 downto 0) => counter(4 downto 1)
    );
\counter_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_1khz,
      CE => '1',
      CLR => sync,
      D => counter_0(5),
      Q => counter(5)
    );
\counter_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_1khz,
      CE => '1',
      CLR => sync,
      D => counter_0(6),
      Q => counter(6)
    );
\counter_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_1khz,
      CE => '1',
      CLR => sync,
      D => counter_0(7),
      Q => counter(7)
    );
\counter_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_1khz,
      CE => '1',
      CLR => sync,
      D => counter_0(8),
      Q => counter(8)
    );
\counter_reg[8]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[4]_i_2_n_0\,
      CO(3) => \counter_reg[8]_i_2_n_0\,
      CO(2) => \counter_reg[8]_i_2_n_1\,
      CO(1) => \counter_reg[8]_i_2_n_2\,
      CO(0) => \counter_reg[8]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(8 downto 5),
      S(3 downto 0) => counter(8 downto 5)
    );
\counter_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk_1khz,
      CE => '1',
      CLR => sync,
      D => counter_0(9),
      Q => counter(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_kw4_281_drv is
  port (
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    kw4_as : out STD_LOGIC_VECTOR ( 3 downto 0 );
    reset : in STD_LOGIC;
    clk_1khz : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_kw4_281_drv;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_kw4_281_drv is
  signal \^q\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \active[0]_i_1_n_0\ : STD_LOGIC;
  signal \active[1]_i_1_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \active[0]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \active[1]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \kw4_as[0]_INST_0\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \kw4_as[1]_INST_0\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \kw4_as[2]_INST_0\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \kw4_as[3]_INST_0\ : label is "soft_lutpair16";
begin
  Q(1 downto 0) <= \^q\(1 downto 0);
\active[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^q\(0),
      O => \active[0]_i_1_n_0\
    );
\active[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \^q\(0),
      I1 => \^q\(1),
      O => \active[1]_i_1_n_0\
    );
\active_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk_1khz,
      CE => '1',
      CLR => reset,
      D => \active[0]_i_1_n_0\,
      Q => \^q\(0)
    );
\active_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_1khz,
      CE => '1',
      CLR => reset,
      D => \active[1]_i_1_n_0\,
      Q => \^q\(1)
    );
\kw4_as[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \^q\(1),
      I1 => reset,
      I2 => \^q\(0),
      O => kw4_as(0)
    );
\kw4_as[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => \^q\(1),
      I1 => reset,
      I2 => \^q\(0),
      O => kw4_as(1)
    );
\kw4_as[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => reset,
      I1 => \^q\(1),
      I2 => \^q\(0),
      O => kw4_as(2)
    );
\kw4_as[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => reset,
      I1 => \^q\(1),
      I2 => \^q\(0),
      O => kw4_as(3)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bcd_count_4 is
  port (
    kw4_ks : out STD_LOGIC_VECTOR ( 6 downto 0 );
    pause : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    CLK : in STD_LOGIC;
    reset : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bcd_count_4;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bcd_count_4 is
  signal cnt0_n_1 : STD_LOGIC;
  signal cnt0_n_2 : STD_LOGIC;
  signal cnt0_n_3 : STD_LOGIC;
  signal cnt0_n_4 : STD_LOGIC;
  signal cnt0_n_5 : STD_LOGIC;
  signal cnt0_n_6 : STD_LOGIC;
  signal cnt0_n_7 : STD_LOGIC;
  signal cnt1_n_1 : STD_LOGIC;
  signal cnt1_n_2 : STD_LOGIC;
  signal cnt1_n_3 : STD_LOGIC;
  signal cnt1_n_4 : STD_LOGIC;
  signal cnt1_n_5 : STD_LOGIC;
  signal cnt1_n_6 : STD_LOGIC;
  signal cnt1_n_7 : STD_LOGIC;
  signal cnt3_n_0 : STD_LOGIC;
  signal cnt3_n_1 : STD_LOGIC;
  signal cnt3_n_2 : STD_LOGIC;
  signal cnt3_n_3 : STD_LOGIC;
  signal cnt3_n_4 : STD_LOGIC;
  signal cnt3_n_5 : STD_LOGIC;
  signal cnt3_n_6 : STD_LOGIC;
  signal en3 : STD_LOGIC;
  signal p_0_in_0 : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
begin
cnt0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bcd_count_1
     port map (
      CLK => CLK,
      E(0) => p_0_in_0,
      \cnt_reg[0]_0\ => cnt0_n_1,
      \cnt_reg[0]_1\ => cnt0_n_7,
      \cnt_reg[1]_0\ => cnt0_n_2,
      \cnt_reg[1]_1\ => cnt0_n_3,
      \cnt_reg[1]_2\ => cnt0_n_4,
      \cnt_reg[1]_3\ => cnt0_n_6,
      \cnt_reg[3]_0\ => cnt0_n_5,
      pause => pause,
      reset => reset
    );
cnt1: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bcd_count_1_0
     port map (
      CLK => CLK,
      E(0) => p_1_in,
      \cnt_reg[3]_0\ => cnt1_n_1,
      \cnt_reg[3]_1\ => cnt1_n_2,
      \cnt_reg[3]_2\ => cnt1_n_3,
      \cnt_reg[3]_3\ => cnt1_n_4,
      \cnt_reg[3]_4\ => cnt1_n_5,
      \cnt_reg[3]_5\ => cnt1_n_6,
      \cnt_reg[3]_6\ => cnt1_n_7,
      \cnt_reg[3]_7\(0) => p_0_in_0,
      reset => reset
    );
cnt2: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bcd_count_1_1
     port map (
      CLK => CLK,
      E(0) => en3,
      Q(1 downto 0) => Q(1 downto 0),
      \cnt_reg[3]_0\(0) => p_1_in,
      kw4_ks(6 downto 0) => kw4_ks(6 downto 0),
      \kw4_ks[0]_0\ => cnt0_n_1,
      \kw4_ks[1]_0\ => cnt0_n_4,
      \kw4_ks[2]_0\ => cnt0_n_5,
      \kw4_ks[3]_0\ => cnt0_n_6,
      \kw4_ks[4]_0\ => cnt0_n_7,
      \kw4_ks[5]_0\ => cnt0_n_3,
      \kw4_ks[6]_0\ => cnt0_n_2,
      kw4_ks_0_sp_1 => cnt3_n_0,
      kw4_ks_1_sp_1 => cnt3_n_3,
      kw4_ks_2_sp_1 => cnt3_n_4,
      kw4_ks_3_sp_1 => cnt3_n_1,
      kw4_ks_4_sp_1 => cnt3_n_5,
      kw4_ks_5_sp_1 => cnt3_n_2,
      kw4_ks_6_sp_1 => cnt3_n_6,
      reset => reset
    );
cnt3: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bcd_count_1_2
     port map (
      CLK => CLK,
      E(0) => en3,
      Q(0) => Q(1),
      \cnt_reg[3]_0\ => cnt3_n_0,
      \cnt_reg[3]_1\ => cnt3_n_1,
      \cnt_reg[3]_2\ => cnt3_n_2,
      \cnt_reg[3]_3\ => cnt3_n_3,
      \cnt_reg[3]_4\ => cnt3_n_4,
      \cnt_reg[3]_5\ => cnt3_n_5,
      \cnt_reg[3]_6\ => cnt3_n_6,
      \kw4_ks[0]\ => cnt1_n_1,
      \kw4_ks[1]\ => cnt1_n_4,
      \kw4_ks[2]\ => cnt1_n_7,
      \kw4_ks[3]\ => cnt1_n_2,
      \kw4_ks[4]\ => cnt1_n_5,
      \kw4_ks[5]\ => cnt1_n_3,
      \kw4_ks[6]\ => cnt1_n_6,
      reset => reset
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_demo is
  port (
    kw4_ks : out STD_LOGIC_VECTOR ( 6 downto 0 );
    kw4_as : out STD_LOGIC_VECTOR ( 3 downto 0 );
    clk_1khz : in STD_LOGIC;
    reset : in STD_LOGIC;
    pause : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_demo;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_demo is
  signal active : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal clk_int : STD_LOGIC;
begin
bcd_count_4_0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bcd_count_4
     port map (
      CLK => clk_int,
      Q(1 downto 0) => active(1 downto 0),
      kw4_ks(6 downto 0) => kw4_ks(6 downto 0),
      pause => pause,
      reset => reset
    );
clk_1hz_gen: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clk_div
     port map (
      CLK => clk_int,
      clk_1khz => clk_1khz,
      pause => pause,
      reset => reset
    );
kw4_281_drv_0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_kw4_281_drv
     port map (
      Q(1 downto 0) => active(1 downto 0),
      clk_1khz => clk_1khz,
      kw4_as(3 downto 0) => kw4_as(3 downto 0),
      reset => reset
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    clk_1khz : in STD_LOGIC;
    reset : in STD_LOGIC;
    pause : in STD_LOGIC;
    kw4_as : out STD_LOGIC_VECTOR ( 3 downto 0 );
    kw4_ks : out STD_LOGIC_VECTOR ( 6 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "top_demo_0_0,demo,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "demo,Vivado 2019.1";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute x_interface_info : string;
  attribute x_interface_info of reset : signal is "xilinx.com:signal:reset:1.0 reset RST";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of reset : signal is "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_demo
     port map (
      clk_1khz => clk_1khz,
      kw4_as(3 downto 0) => kw4_as(3 downto 0),
      kw4_ks(6 downto 0) => kw4_ks(6 downto 0),
      pause => pause,
      reset => reset
    );
end STRUCTURE;
