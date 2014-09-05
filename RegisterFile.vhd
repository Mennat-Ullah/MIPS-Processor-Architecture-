----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:24:25 04/07/2014 
-- Design Name: 
-- Module Name:    RegisterFile - Behavioral 
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
use IEEE.STD_LOGIC_UNSIGNED.All;
use work.AllInAll.All;


-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity RegisterFile is
generic (n:NATURAL :=32);
	port (
			read_sel1 : in std_logic_vector(4 downto 0);
			read_sel2 : in std_logic_vector(4 downto 0);
			write_sel : in std_logic_vector(4 downto 0);
			write_ena : in std_logic;
			clk: in std_logic;
			write_data: in std_logic_vector(31 downto 0) ;
			data1: out std_logic_vector(31 downto 0); 
			data2: out std_logic_vector(31 downto 0)
	      );

end RegisterFile;

architecture Behavioral of RegisterFile is

SIGNAL Tmp0: STD_LOGIC_VECTOR (n-1 DOWNTO 0);
SIGNAL Tmp1: STD_LOGIC_VECTOR (n-1 DOWNTO 0);
SIGNAL Tmp2: STD_LOGIC_VECTOR (n-1 DOWNTO 0);
SIGNAL Tmp3: STD_LOGIC_VECTOR (n-1 DOWNTO 0);
SIGNAL Tmp4: STD_LOGIC_VECTOR (n-1 DOWNTO 0);
SIGNAL Tmp5: STD_LOGIC_VECTOR (n-1 DOWNTO 0);
SIGNAL Tmp6: STD_LOGIC_VECTOR (n-1 DOWNTO 0);
SIGNAL Tmp7: STD_LOGIC_VECTOR (n-1 DOWNTO 0);
SIGNAL Tmp8: STD_LOGIC_VECTOR (n-1 DOWNTO 0);
SIGNAL Tmp9: STD_LOGIC_VECTOR (n-1 DOWNTO 0);
SIGNAL Tmp10: STD_LOGIC_VECTOR (n-1 DOWNTO 0);
SIGNAL Tmp11: STD_LOGIC_VECTOR (n-1 DOWNTO 0);
SIGNAL Tmp12: STD_LOGIC_VECTOR (n-1 DOWNTO 0);
SIGNAL Tmp13: STD_LOGIC_VECTOR (n-1 DOWNTO 0);
SIGNAL Tmp14: STD_LOGIC_VECTOR (n-1 DOWNTO 0);
SIGNAL Tmp15: STD_LOGIC_VECTOR (n-1 DOWNTO 0);
SIGNAL Tmp16: STD_LOGIC_VECTOR (n-1 DOWNTO 0);
SIGNAL Tmp17: STD_LOGIC_VECTOR (n-1 DOWNTO 0);
SIGNAL Tmp18: STD_LOGIC_VECTOR (n-1 DOWNTO 0);
SIGNAL Tmp19: STD_LOGIC_VECTOR (n-1 DOWNTO 0);
SIGNAL Tmp20: STD_LOGIC_VECTOR (n-1 DOWNTO 0);
SIGNAL Tmp21: STD_LOGIC_VECTOR (n-1 DOWNTO 0);
SIGNAL Tmp22: STD_LOGIC_VECTOR (n-1 DOWNTO 0);
SIGNAL Tmp23: STD_LOGIC_VECTOR (n-1 DOWNTO 0);
SIGNAL Tmp24: STD_LOGIC_VECTOR (n-1 DOWNTO 0);
SIGNAL Tmp25: STD_LOGIC_VECTOR (n-1 DOWNTO 0);
SIGNAL Tmp26: STD_LOGIC_VECTOR (n-1 DOWNTO 0);
SIGNAL Tmp27: STD_LOGIC_VECTOR (n-1 DOWNTO 0);
SIGNAL Tmp28: STD_LOGIC_VECTOR (n-1 DOWNTO 0);
SIGNAL Tmp29: STD_LOGIC_VECTOR (n-1 DOWNTO 0);
SIGNAL Tmp30: STD_LOGIC_VECTOR (n-1 DOWNTO 0);
SIGNAL Tmp31: STD_LOGIC_VECTOR (n-1 DOWNTO 0);
SIGNAL Oo :    STD_LOGIC_VECTOR (31 downto 0);
begin

Dec : Decoder32 PORT MAP (write_sel , Oo ,write_ena );

Mux1 : MUX32 PORT MAP(Tmp0 , Tmp1 , Tmp2 , Tmp3 , Tmp4 , Tmp5 , Tmp6 , Tmp7 , Tmp8 , Tmp9 , Tmp10 , Tmp11 , Tmp12 , Tmp13 , Tmp14 , Tmp15 , Tmp16 , Tmp17 , Tmp18
 , Tmp19 , Tmp20 , Tmp21 , Tmp22 , Tmp23 , Tmp24 , Tmp25 , Tmp26 , Tmp27 , Tmp28
 , Tmp29 , Tmp30 , Tmp31 ,read_sel1 , data1) ;

Mux2 : MUX32 PORT MAP(Tmp0 , Tmp1 , Tmp2 , Tmp3 , Tmp4 , Tmp5 , Tmp6 , Tmp7 , Tmp8 , Tmp9 , Tmp10 , Tmp11 , Tmp12 , Tmp13 , Tmp14 , Tmp15 , Tmp16 , Tmp17 , Tmp18
 , Tmp19 , Tmp20 , Tmp21 , Tmp22 , Tmp23 , Tmp24 , Tmp25 , Tmp26 , Tmp27 , Tmp28
 , Tmp29 , Tmp30 , Tmp31 ,read_sel2 , data2 ) ; 


zero : reg GENERIC MAP (32) PORT MAP (write_data ,clk, Oo(0) ,'0' , '0' ,Tmp0);
at : reg GENERIC MAP (32) PORT MAP (write_data ,clk, Oo(1) ,'0' , '0' ,Tmp1);
v0 : reg GENERIC MAP (32) PORT MAP (write_data ,clk, Oo(2) ,'0' , '0' ,Tmp2);
v1 : reg GENERIC MAP (32) PORT MAP (write_data ,clk, Oo(3) ,'0' , '0' ,Tmp3);
a0 : reg GENERIC MAP (32) PORT MAP (write_data ,clk, Oo(4) ,'0' , '0' ,Tmp4);
a1 : reg GENERIC MAP (32) PORT MAP (write_data ,clk, Oo(5) ,'0' , '0' ,Tmp5);
a2 : reg GENERIC MAP (32) PORT MAP (write_data ,clk, Oo(6) ,'0' , '0' ,Tmp6);
a3 : reg GENERIC MAP (32) PORT MAP (write_data ,clk, Oo(7) ,'0' , '0' ,Tmp7);
t0 : reg GENERIC MAP (32) PORT MAP (write_data ,clk, Oo(8) ,'0' , '0' ,Tmp8);
t1 : reg GENERIC MAP (32) PORT MAP (write_data ,clk, Oo(9) ,'0' , '0' ,Tmp9);
t2 : reg GENERIC MAP (32) PORT MAP (write_data ,clk, Oo(10) ,'0' , '0' ,Tmp10);
t3 : reg GENERIC MAP (32) PORT MAP (write_data ,clk, Oo(11) ,'0' , '0' ,Tmp11);
t4 : reg GENERIC MAP (32) PORT MAP (write_data ,clk, Oo(12) ,'0' , '0' ,Tmp12);
t5 : reg GENERIC MAP (32) PORT MAP (write_data ,clk, Oo(13) ,'0' , '0' ,Tmp13);
t6 : reg GENERIC MAP (32) PORT MAP (write_data ,clk, Oo(14) ,'0' , '0' ,Tmp14);
t7 : reg GENERIC MAP (32) PORT MAP (write_data ,clk, Oo(15) ,'0' , '0' ,Tmp15);
s0 : reg GENERIC MAP (32) PORT MAP (write_data ,clk, Oo(16) ,'0' , '0' ,Tmp16);
s1 : reg GENERIC MAP (32) PORT MAP (write_data ,clk, Oo(17) ,'0' , '0' ,Tmp17);
s2 : reg GENERIC MAP (32) PORT MAP (write_data ,clk, Oo(18) ,'0' , '0' ,Tmp18);
s3 : reg GENERIC MAP (32) PORT MAP (write_data ,clk, Oo(19) ,'0' , '0' ,Tmp19);
s4 : reg GENERIC MAP (32) PORT MAP (write_data ,clk, Oo(20) ,'0' , '0' ,Tmp20);
s5 : reg GENERIC MAP (32) PORT MAP (write_data ,clk, Oo(21) ,'0' , '0' ,Tmp21);
s6 : reg GENERIC MAP (32) PORT MAP (write_data ,clk, Oo(22) ,'0' , '0' ,Tmp22);
s7 : reg GENERIC MAP (32) PORT MAP (write_data ,clk, Oo(23) ,'0' , '0' ,Tmp23);
t8 : reg GENERIC MAP (32) PORT MAP (write_data ,clk, Oo(24) ,'0' , '0' ,Tmp24);
t9 : reg GENERIC MAP (32) PORT MAP (write_data ,clk, Oo(25) ,'0' , '0' ,Tmp25);
k0 : reg GENERIC MAP (32) PORT MAP (write_data ,clk, Oo(26) ,'0' , '0' ,Tmp26);
k1 : reg GENERIC MAP (32) PORT MAP (write_data ,clk, Oo(27) ,'0' , '0' ,Tmp27);
gp : reg GENERIC MAP (32) PORT MAP (write_data ,clk, Oo(28) ,'0' , '0' ,Tmp28);
sp : reg GENERIC MAP (32) PORT MAP (write_data ,clk, Oo(29) ,'0' , '0' ,Tmp29);
fp : reg GENERIC MAP (32) PORT MAP (write_data ,clk, Oo(30) ,'0' , '0' ,Tmp30);
ra : reg GENERIC MAP (32) PORT MAP (write_data ,clk, Oo(31) ,'0' , '0' ,Tmp31);

end Behavioral;

