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

entity ALU1 is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
			  Less : in STD_LOGIC;
			  CarryIn : in std_logic;
           CarryOut : out  STD_LOGIC;
			  S : in std_logic_vector ( 3 downto 0 );
			  set : out STD_LOGIC;
           Result : out  STD_LOGIC);
end ALU1;

architecture ALU1 of ALU1 is
signal tmp1: std_logic;
signal tmp2: std_logic;
signal tmp3: std_logic;
signal tmpB : std_logic;
signal tmpA : std_logic;

begin

Bchosen : MUX1 port map ( B, not B, S(2), tmpB );
Achosen : MUX1 port map ( A, not A, S(3), tmpA );
tmp1 <= tmpA and tmpB;
tmp2 <= tmpA or tmpB;
adder : FullAdder port map ( tmpA, tmpB, CarryIn, CarryOut, tmp3 );
muxes : mux4x1_1bit port map ( tmp1, tmp2, tmp3, Less, S( 1 downto 0 ), Result );
set <= tmp3;

end ALU1;

