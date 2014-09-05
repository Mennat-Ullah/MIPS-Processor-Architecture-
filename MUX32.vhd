----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:38:45 03/10/2010 
-- Design Name: 
-- Module Name:    MUXb - Behavioral 
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity MUX32 is
	generic (n: natural := 32);
    Port ( I0 : in  STD_LOGIC_VECTOR (n-1 downto 0);
				I1 : in  STD_LOGIC_VECTOR (n-1 downto 0);
				I2 : in  STD_LOGIC_VECTOR (n-1 downto 0);
				I3 : in  STD_LOGIC_VECTOR (n-1 downto 0);
				I4 : in  STD_LOGIC_VECTOR (n-1 downto 0);
				I5 : in  STD_LOGIC_VECTOR (n-1 downto 0);
				I6 : in  STD_LOGIC_VECTOR (n-1 downto 0);
				I7 : in  STD_LOGIC_VECTOR (n-1 downto 0);
				I8 : in  STD_LOGIC_VECTOR (n-1 downto 0);
				I9 : in  STD_LOGIC_VECTOR (n-1 downto 0);
				I10 : in  STD_LOGIC_VECTOR (n-1 downto 0);
				I11 : in  STD_LOGIC_VECTOR (n-1 downto 0);
				I12 : in  STD_LOGIC_VECTOR (n-1 downto 0);
				I13 : in  STD_LOGIC_VECTOR (n-1 downto 0);
				I14 : in  STD_LOGIC_VECTOR (n-1 downto 0);
				I15 : in  STD_LOGIC_VECTOR (n-1 downto 0);
				I16 : in  STD_LOGIC_VECTOR (n-1 downto 0);
				I17 : in  STD_LOGIC_VECTOR (n-1 downto 0);
				I18 : in  STD_LOGIC_VECTOR (n-1 downto 0);
				I19 : in  STD_LOGIC_VECTOR (n-1 downto 0);
				I20 : in  STD_LOGIC_VECTOR (n-1 downto 0);
				I21 : in  STD_LOGIC_VECTOR (n-1 downto 0);
				I22 : in  STD_LOGIC_VECTOR (n-1 downto 0);
				I23 : in  STD_LOGIC_VECTOR (n-1 downto 0);
				I24 : in  STD_LOGIC_VECTOR (n-1 downto 0);
				I25 : in  STD_LOGIC_VECTOR (n-1 downto 0);
				I26 : in  STD_LOGIC_VECTOR (n-1 downto 0);
				I27 : in  STD_LOGIC_VECTOR (n-1 downto 0);
				I28 : in  STD_LOGIC_VECTOR (n-1 downto 0);
				I29 : in  STD_LOGIC_VECTOR (n-1 downto 0);
				I30 : in  STD_LOGIC_VECTOR (n-1 downto 0);
				I31 : in  STD_LOGIC_VECTOR (n-1 downto 0);
           S : in  STD_LOGIC_Vector (4 downto 0) ;
           O : out STD_LOGIC_VECTOR (n-1 downto 0));
end MUX32;

architecture Behavioral of MUX32 is

begin

	O <= I0 WHEN S= "00000" ELSE
	I1 WHEN S= "00001" ELSE
	I2 WHEN S= "00010" ELSE
	I3 WHEN S= "00011" ELSE
	I4 WHEN S= "00100" ELSE
	I5 WHEN S= "00101" ELSE
	I6 WHEN S= "00110" ELSE
	I7 WHEN S= "00111" ELSE
	I8 WHEN S= "01000" ELSE
	I9 WHEN S= "01001" ELSE
	I10 WHEN S= "01010" ELSE
	I11 WHEN S= "01011" ELSE
	I12 WHEN S= "01100" ELSE
	I13 WHEN S= "01101" ELSE
	I14 WHEN S= "01110" ELSE
	I15 WHEN S= "01111" ELSE
	I16 WHEN S= "10000" ELSE
	I17 WHEN S= "10001" ELSE
	I18 WHEN S= "10010" ELSE
	I19 WHEN S= "10011" ELSE
	I20 WHEN S= "10100" ELSE
	I21 WHEN S= "10101" ELSE
	I22 WHEN S= "10110" ELSE
	I23 WHEN S= "10111" ELSE
	I24 WHEN S= "11000" ELSE
	I25 WHEN S= "11001" ELSE
	I26 WHEN S= "11010" ELSE
	I27 WHEN S= "11011" ELSE
	I28 WHEN S= "11100" ELSE
	I29 WHEN S= "11101" ELSE
	I30 WHEN S= "11110" ELSE
	I31 WHEN S= "11111" ;

end Behavioral;

