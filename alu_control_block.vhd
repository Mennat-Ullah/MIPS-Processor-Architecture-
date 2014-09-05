----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:56:10 04/17/2014 
-- Design Name: 
-- Module Name:    memOp_aluOp - Behavioral 
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

entity alu_control_block is
    Port ( func : in  STD_LOGIC_VECTOR( 5 downto 0 );
	 aluop : in std_logic_vector( 1 downto 0 );
           operation : out  STD_LOGIC_VECTOR( 3 downto 0 ));
end alu_control_block;

architecture Behavioral of alu_control_block is
signal tmp0 : std_logic;
signal tmp1 : std_logic;
begin

tmp0 <= ( func( 0 ) xor func( 1 ) ) and ( func( 2 ) xor func( 3 ) );
operation( 0 ) <= tmp0 and aluop( 1 );

operation( 1 ) <= ( not aluop( 1 ) ) or ( not func( 2 ) );

tmp1 <= func( 1 ) and aluop( 1 );
operation( 2 ) <= tmp1 or aluop( 0 );

operation( 3 ) <= (func( 0 ) and func( 1 ) ) and aluop( 1 );


end Behavioral;

