--	Package File Template
--
--	Purpose: This package defines supplemental types, subtypes, 
--		 constants, and functions 


library IEEE;
use IEEE.STD_LOGIC_1164.all;

package AllInAll is
-- ALU 32
----------
--Multiplexors
component MUX1 is
    Port ( I0 : in  STD_LOGIC;
           I1 : in  STD_LOGIC;
           S : in  STD_LOGIC;
			  O : out  STD_LOGIC);
end component;

component mux4x1_1bit is
 Port ( I0 : in  STD_LOGIC;
           I1 : in  STD_LOGIC;
           I2 : in  STD_LOGIC;
           I3 : in  STD_LOGIC;
           S : in  STD_LOGIC_Vector (1 downto 0) ;
           O : out STD_LOGIC );
end component;

component mux2x1 is
GENERIC(n:NATURAL := 32);
    Port ( I0 : in  STD_LOGIC_vector( n-1 downto 0 );
           I1 : in  STD_LOGIC_vector( n-1 downto 0 );
           S : in  STD_LOGIC;
           O : out  STD_LOGIC_vector( n-1 downto 0 ));
end component;

--fullAdder
component FullAdder is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           Carry : in  STD_LOGIC;
			  OCarry : out std_logic;
           O : out  STD_LOGIC);
end component;

--Alus
component ALU1 is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
			  Less : in STD_LOGIC;
           CarryIn : in std_logic;
           CarryOut : out  STD_LOGIC;
			  S : in std_logic_vector ( 3 downto 0 );
			  set : out STD_LOGIC;
           Result : out  STD_LOGIC);
end component;

----------------------------
-- Rigester File component 
--------------------------
-- register component 
COMPONENT   reg IS
	GENERIC(n:NATURAL := 32);
	PORT (
	I: IN  STD_LOGIC_VECTOR (n-1 DOWNTO 0);
	CLK, LOD, INC, CLR: IN STD_LOGIC;
	O: OUT  STD_LOGIC_VECTOR (n-1 DOWNTO 0));
END COMPONENT ;

COMPONENT reg32_1 IS
GENERIC(n:NATURAL := 32);
	PORT (
	I: IN  STD_LOGIC_VECTOR (31 DOWNTO 0);
	CLK, LOD, INC, CLR: IN STD_LOGIC;
	O: OUT  STD_LOGIC_VECTOR (31 DOWNTO 0));
END COMPONENT;

-- 32*5 Decoder component
COMPONENT  Decoder32 is
    Port ( I : in  STD_LOGIC_VECTOR (4 downto 0);
           O : out  STD_LOGIC_VECTOR (31 downto 0);
           E : in  STD_LOGIC);
end COMPONENT ;

-- 32*1 Multiplexer 

COMPONENT MUX32 is
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
end COMPONENT ;

----------------------------------------------------------------

-- MainModule component
-----------------------

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

component DATAMEMORY is
  Generic(words : natural :=64;wordsize: natural :=32; addresssize: natural := 32);
  port ( LoadIt: in STD_LOGIC;
  			INPUT     : in STD_LOGIC_VECTOR (wordsize-1 downto 0);
			OUTPUT    : out STD_LOGIC_VECTOR (wordsize-1 downto 0);
         MEM_READ : in STD_LOGIC;
			MEM_WRITE : in STD_LOGIC;
			ADDRESS   : in STD_LOGIC_VECTOR (addresssize-1 downto 0);
			CLK       : in STD_LOGIC
			);

end component;

--memOp
component alu_control_block is
    Port ( func : in  STD_LOGIC_VECTOR( 5 downto 0 );
	        aluop : in std_logic_vector( 1 downto 0 );
           operation : out  STD_LOGIC_VECTOR( 3 downto 0 ));
end component;

--control unit
component MainCU is
	PORT (
	Func: IN  STD_LOGIC_VECTOR  (5 DOWNTO 0);	
	RegDst:   OUT  STD_LOGIC;
	ALUSrc:   OUT  STD_LOGIC;
	MemToReg: OUT  STD_LOGIC;
	RegWrite: OUT  STD_LOGIC;
	MemRead:  OUT  STD_LOGIC;
	MemWrite: OUT  STD_LOGIC;
	Beq: OUT  STD_LOGIC;
	Bne: OUT  STD_LOGIC;
	Jump: OUT  STD_LOGIC;
	ALUOp:   OUT  STD_LOGIC_vector (1 downto 0));
	
end component;

component sign_extend is
    Port ( I : in  STD_LOGIC_vector( 31 downto 0 );
           O : out  STD_LOGIC_vector( 31 downto 0 ));
end component;


END AllInAll;
