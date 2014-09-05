----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:36:21 04/03/2014 
-- Design Name: 
-- Module Name:    MUX3 - Behavioral 
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

entity MUX1 is
    Port ( I0 : in  STD_LOGIC;
           I1 : in  STD_LOGIC;
           S : in  STD_LOGIC;
			  O : out  STD_LOGIC);
end MUX1;

architecture Behavioral of MUX1 is

begin
O <= I0 when S = '0' else
I1 when S = '1';

end Behavioral;

