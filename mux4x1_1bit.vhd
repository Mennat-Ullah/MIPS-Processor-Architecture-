----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:50:03 04/07/2014 
-- Design Name: 
-- Module Name:    mux4x1_1bit - Behavioral 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity mux4x1_1bit is
 Port ( I0 : in  STD_LOGIC;
           I1 : in  STD_LOGIC;
           I2 : in  STD_LOGIC;
           I3 : in  STD_LOGIC;
           S : in  STD_LOGIC_Vector (1 downto 0) ;
           O : out STD_LOGIC );
end mux4x1_1bit;

architecture Behavioral of mux4x1_1bit is

begin
O <= 	I0 when S = "00" else
			I1 when S = "01" else 
			I2 when S = "10" else 
			I3 when S = "11";

end Behavioral;

