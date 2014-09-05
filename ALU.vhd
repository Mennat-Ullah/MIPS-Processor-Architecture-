----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:50:13 04/03/2014 
-- Design Name: 
-- Module Name:    ALU - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use work.AllInAll.All;


-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ALU is
    Port ( data1 : in std_logic_vector(31 downto 0);
data2 : in std_logic_vector (31 downto 0);
aluop : in std_logic_vector (3 downto 0);
cin : in std_logic;
dataout: out std_logic_vector (31 downto 0) ;
cflag: out std_logic;
zflag: out std_logic;
oflag: out std_logic
);
end ALU;

architecture Behavioral of ALU is
signal tmp1: std_logic;
signal tmp2: std_logic;
signal tmp3: std_logic;
signal tmp4: std_logic;
signal tmp5: std_logic;
signal tmp6: std_logic;
signal tmp7: std_logic;
signal tmp8: std_logic;
signal tmp9: std_logic;
signal tmp10: std_logic;
signal tmp11: std_logic;
signal tmp12: std_logic;
signal tmp13: std_logic;
signal tmp14: std_logic;
signal tmp15: std_logic;
signal tmp16: std_logic;
signal tmp17: std_logic;
signal tmp18: std_logic;
signal tmp19: std_logic;
signal tmp20: std_logic;
signal tmp21: std_logic;
signal tmp22: std_logic;
signal tmp23: std_logic;
signal tmp24: std_logic;
signal tmp25: std_logic;
signal tmp26: std_logic;
signal tmp27: std_logic;
signal tmp28: std_logic;
signal tmp29: std_logic;
signal tmp30: std_logic;
signal tmp31: std_logic;

signal carry: std_logic;
signal result: std_logic_vector( 31 downto 0 );
signal set: std_logic_vector( 31 downto 0 );

begin

bit1 : ALU1 port map ( data1(0), data2(0), set( 31 ), cin,tmp1, aluop, set( 0 ), result( 0 ) );
bit2 : ALU1 port map ( data1(1), data2(1), '0', tmp1, tmp2, aluop, set( 1 ), result( 1 ) );
bit3 : ALU1 port map ( data1(2), data2(2), '0', tmp2, tmp3, aluop, set( 2 ), result( 2 ) );
bit4 : ALU1 port map ( data1(3), data2(3), '0', tmp3, tmp4, aluop, set( 3 ), result( 3 ) );
bit5 : ALU1 port map ( data1(4), data2(4), '0', tmp4, tmp5, aluop, set( 4 ), result( 4 ) );
bit6 : ALU1 port map ( data1(5), data2(5), '0', tmp5, tmp6, aluop, set( 5 ), result( 5 ) );
bit7 : ALU1 port map ( data1(6), data2(6), '0', tmp6, tmp7, aluop, set( 6 ), result( 6 ) );
bit8 : ALU1 port map ( data1(7), data2(7), '0', tmp7, tmp8, aluop, set( 7 ), result( 7 ) );
bit9 : ALU1 port map ( data1(8), data2(8), '0', tmp8, tmp9, aluop, set( 8 ), result( 8 ) );
bit10 : ALU1 port map ( data1(9), data2(9), '0', tmp9, tmp10, aluop, set( 9 ), result( 9 ) );
bit11 : ALU1 port map ( data1(10), data2(10), '0', tmp10, tmp11, aluop, set( 10 ), result( 10 ) );
bit12 : ALU1 port map ( data1(11), data2(11), '0', tmp11, tmp12, aluop, set( 11 ), result( 11 ) );
bit13 : ALU1 port map ( data1(12), data2(12), '0', tmp12, tmp13, aluop, set( 12 ), result( 12 ) );
bit14 : ALU1 port map ( data1(13), data2(13), '0', tmp13, tmp14, aluop, set( 13 ), result( 13 ) );
bit15 : ALU1 port map ( data1(14), data2(14), '0', tmp14, tmp15, aluop, set( 14 ), result( 14 ) );
bit16 : ALU1 port map ( data1(15), data2(15), '0', tmp15, tmp16, aluop, set( 15 ), result( 15 ) );
bit17 : ALU1 port map ( data1(16), data2(16), '0', tmp16, tmp17, aluop, set( 16 ), result( 16 ) );
bit18 : ALU1 port map ( data1(17), data2(17), '0', tmp17, tmp18, aluop, set( 17 ), result( 17 ) );
bit19 : ALU1 port map ( data1(18), data2(18), '0', tmp18, tmp19, aluop, set( 18 ), result( 18 ) );
bit20 : ALU1 port map ( data1(19), data2(19), '0', tmp19, tmp20, aluop, set( 19 ), result( 19 ) );
bit21 : ALU1 port map ( data1(20), data2(20), '0', tmp20, tmp21, aluop, set( 20 ), result( 20 ) );
bit22 : ALU1 port map ( data1(21), data2(21), '0', tmp21, tmp22, aluop, set( 21 ), result( 21 ) );
bit23 : ALU1 port map ( data1(22), data2(22), '0', tmp22, tmp23, aluop, set( 22 ), result( 22 ) );
bit24 : ALU1 port map ( data1(23), data2(23), '0', tmp23, tmp24, aluop, set( 23 ), result( 23 ) );
bit25 : ALU1 port map ( data1(24), data2(24), '0', tmp24, tmp25, aluop, set( 24 ), result( 24 ) );
bit26 : ALU1 port map ( data1(25), data2(25), '0', tmp25, tmp26, aluop, set( 25 ), result( 25 ) );
bit27 : ALU1 port map ( data1(26), data2(26), '0', tmp26, tmp27, aluop, set( 26 ), result( 26 ) );
bit28 : ALU1 port map ( data1(27), data2(27), '0', tmp27, tmp28, aluop, set( 27 ), result( 27 ) );
bit29 : ALU1 port map ( data1(28), data2(28), '0', tmp28, tmp29, aluop, set( 28 ), result( 28 ) );
bit30 : ALU1 port map ( data1(29), data2(29), '0', tmp29, tmp30, aluop, set( 29 ), result( 29 ) );
bit31 : ALU1 port map ( data1(30), data2(30), '0', tmp30, tmp31, aluop, set( 30 ), result( 30 ) );
bit32 : ALU1 port map ( data1(31), data2(31), '0', tmp31, carry, aluop, set( 31 ), result( 31 ) );



dataout <= result;
cflag <= carry;
oflag <= carry xor tmp31;
zflag <= '1' when result = "00000000000000000000000000000000" else
'0';
end Behavioral;

