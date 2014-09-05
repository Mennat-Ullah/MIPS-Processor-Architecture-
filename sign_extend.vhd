----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:02:50 05/03/2014 
-- Design Name: 
-- Module Name:    sign_extend - sign_extend 
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

entity sign_extend is
    Port ( I : in  STD_LOGIC_vector( 31 downto 0 );
           O : out  STD_LOGIC_vector( 31 downto 0 ));
end sign_extend;

architecture sign_extend of sign_extend is
begin

O <= "0000000000000000" & I( 15 downto 0 ) when I(15) = '0' else
 "1111111111111111" & I( 15 downto 0 ) when I(15) = '1';
end sign_extend;

