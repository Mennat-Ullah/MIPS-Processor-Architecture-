library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_SIGNED.all;
use IEEE.STD_LOGIC_ARITH.all;

use IEEE.std_logic_textio.all;
library STD;
use STD.textio.all;

entity INSTRMEMORY is
	Generic(words : natural :=64;wordsize: natural :=32; addresssize: natural := 32);
  port(
    LoadIt: in Std_logic ;
	 DATA: out STD_LOGIC_VECTOR(wordsize-1 downto 0);
    ADDRESS: in STD_LOGIC_VECTOR(addresssize-1 downto 0);
    CLK: in STD_LOGIC
    );
end INSTRMEMORY;


architecture BEHAVIORAL of INSTRMEMORY is
	signal ADDRover4: STD_LOGIC_VECTOR(addresssize-2 -1 downto 0);		                                    
begin

ROM_PROCESS: process(CLK, ADDRESS) is
                                    type MEM is array(0 to words-1) of STD_LOGIC_VECTOR(wordsize-1 downto 0);
                                    variable MEMORY: MEM := (others => X"00000000");
                                    variable IADR: INTEGER;
    												
begin

    if LoadIt = '1' then
--------------------------
--Project1 NOR test
--------------------------
		MEMORY(0) := "00000000000000001100000000100111" ; --nor	$t8, $zero, $zero	t8 = -1
		MEMORY(1) := "00000011000000000110100000100111" ; --nor	$t5, $$t8, $zero	t5 = 0
		MEMORY(2) := "00000001101110000101000000100000" ;  --   add	$t2, $t5, $t8	test 
		MEMORY(3) := "00000001010010100101000000100000" ;  --   add	$t2, $t2, $t2	t2 = -2
		MEMORY(4) := "00000001010000000101000000100111" ; --nor	$t2, $$t2, $zero	t2 = 1
		MEMORY(5) := "00000001010010100101000000100000" ;  --   add	$t2, $t2, $t2	test
		
	end if;

    if FALLING_EDGE(CLK) then
      IADR:= CONV_INTEGER(ADDRover4);
      DATA <= MEMORY(IADR);
    end if;
  end process;
  
  ADDRover4 <= ADDRESS(31 downto 2) ;
	
end BEHAVIORAL;


