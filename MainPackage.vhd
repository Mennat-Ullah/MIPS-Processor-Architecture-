--	Package File Template
--
--	Purpose: This package defines supplemental types, subtypes, 
--		 constants, and functions 


library IEEE;
use IEEE.STD_LOGIC_1164.all;

package MainPackage is

-- ALU 32 component :
component ALU is
    Port ( data1 : in std_logic_vector(31 downto 0);
				data2 : in std_logic_vector(31 downto 0);
				aluop : in std_logic_vector(3 downto 0);
				cin : in std_logic;
				dataout: out std_logic_vector(31 downto 0) ;
				cflag: out std_logic;
				zflag: out std_logic;
				oflag: out std_logic
          );
end component ;

-- Register File component :
component RegisterFile is

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

end component;

-- Register Component to PC :
component reg IS
	GENERIC(n:NATURAL);
	PORT (
	I: IN  STD_LOGIC_VECTOR (n-1 DOWNTO 0);
	CLK, LOD, INC, CLR: IN STD_LOGIC;
	O: OUT  STD_LOGIC_VECTOR (n-1 DOWNTO 0));
END component;
 
-- Memory component :
component INSTRMEMORY is
	Generic(words : natural :=64;wordsize: natural :=32; addresssize: natural := 32);
  port(
    LoadIt: in Std_logic ;
	 DATA: out STD_LOGIC_VECTOR(wordsize-1 downto 0);
    ADDRESS: in STD_LOGIC_VECTOR(addresssize-1 downto 0);
    CLK: in STD_LOGIC
    );
end component;
end MainPackage;
