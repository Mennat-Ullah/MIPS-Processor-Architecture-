----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:17:27 04/14/2014 
-- Design Name: 
-- Module Name:    MainModule - Behavioral 
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
use work.AllInAll.All;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity MainModule is
    Port ( 
			 START: IN STD_LOGIC;
			 CLK: IN STD_LOGIC;
			 RegFileOut1: OUT STD_LOGIC_VECTOR(31 downto 0);
			 RegFileOut2: OUT STD_LOGIC_VECTOR(31 downto 0);
			 ALUOut: OUT STD_LOGIC_VECTOR(31 downto 0);
			 PCOut: OUT STD_LOGIC_VECTOR(31 downto 0);
          DataMemOut: OUT STD_LOGIC_VECTOR(31 downto 0)
			 --P: OUT STD_LOGIC_VECTOR(31 downto 0)
        );
end MainModule;

architecture Behavioral of MainModule is

SIGNAL ISA: STD_LOGIC_VECTOR(31 downto 0); 
SIGNAL add: STD_LOGIC_VECTOR(31 downto 0);
SIGNAL mem_count: STD_LOGIC_VECTOR(31 downto 0);

SIGNAL data1: STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL data2: STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL wdata: STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL write_ene: std_logic ;

SIGNAL aluop : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL Cflag: std_logic;
SIGNAL Zflag: std_logic;
SIGNAL Oflag: std_logic;

SIGNAL C: std_logic;
SIGNAL Z: std_logic;
SIGNAL O: std_logic;
SIGNAL C1: std_logic;
SIGNAL Z1: std_logic;
SIGNAL O1: std_logic;

signal RegDst: STD_LOGIC;
signal ALUSrc: STD_LOGIC;
signal MemToReg: STD_LOGIC;
signal RegWrite: STD_LOGIC;
signal MemRead: STD_LOGIC;
signal MemWrite: STD_LOGIC;
signal Beq: STD_LOGIC;
signal Bne: STD_LOGIC;
signal Branch: STD_LOGIC;
signal Jump: STD_LOGIC;
signal ALU_Op: STD_LOGIC_vector (1 downto 0);
signal signExtend: STD_LOGIC_vector (31 downto 0);
signal signExtend_shifted: STD_LOGIC_vector (31 downto 0);
signal alu_data2: STD_LOGIC_vector (31 downto 0);
signal aludata: STD_LOGIC_vector (31 downto 0);
signal regData: STD_LOGIC_vector (31 downto 0);
signal write_reg : STD_LOGIC_vector (4 downto 0);
signal four : STD_LOGIC_vector (31 downto 0) := "00000000000000000000000000000100";
signal PC_out : STD_LOGIC_vector (31 downto 0);
signal PC_branch : STD_LOGIC_vector (31 downto 0);
signal PC_jump : STD_LOGIC_vector (31 downto 0);
signal PC_final : STD_LOGIC_vector (31 downto 0);
signal PC_signESLL : STD_LOGIC_vector (31 downto 0);
begin
four <= "00000000000000000000000000000100"; --pc inc by 4 
PC : reg PORT MAP ( PC_final , CLK ,  START , '0' , not START , mem_count);--pc_final :output of any op will be made jump, brsnc1h
PC_alu : ALU port map ( mem_count, four, "0010", '0',PC_out , C, Z, O ); -- pc_out = mem_count + 4 

PC_alu2 : ALU port map ( PC_out, signExtend_shifted, "0010", '0',PC_signESLL , C1, Z1, O1 );


PCMux_1 : mux2x1 generic map(32) port map( PC_out, PC_signESLL, Branch, PC_branch );
PC_jump <= PC_out( 31 downto 28 ) & ISA( 25 downto 0 ) & "00";
PCMux_2 : mux2x1 generic map(32) port map( PC_branch, PC_jump, Jump, PC_final );


mem :  INSTRMEMORY  PORT MAP (not START , ISA , mem_count , CLK);	

--Func: IN  STD_LOGIC_VECTOR  (5 DOWNTO 0);	
--	RegDst:   OUT  STD_LOGIC;
--	ALUSrc:   OUT  STD_LOGIC;
--	MemToReg: OUT  STD_LOGIC;
--	RegWrite: OUT  STD_LOGIC;
--	MemRead:  OUT  STD_LOGIC;
--	MemWrite: OUT  STD_LOGIC;
--	Beq: OUT  STD_LOGIC;
--	Bne: OUT  STD_LOGIC;
--	Jump: OUT  STD_LOGIC;
--	ALUOp:   OUT  STD_LOGIC_vector (1 downto 0));
	
controlUnit : MainCU port map ( ISA( 31 downto 26 ), 
                               RegDst,ALUSrc, MemToReg, RegWrite, MemRead, MemWrite, Beq, Bne, Jump, ALU_Op );
alu_cb : alu_control_block port map ( ISA( 5 downto 0 ), ALU_Op, aluop );

regMux : mux2x1 generic map(5) port map( 	ISA (20 downto 16), ISA(15 downto 11), RegDst, write_reg );
RF : RegisterFile PORT MAP ( ISA( 25 downto 21 ) , ISA (20 downto 16) , write_reg, RegWrite , CLK , regData , data1 , data2 );

signE : sign_extend port map ( ISA, signExtend);
signExtend_shifted <= signExtend( 29 downto 0 ) & "00"; 

aluMux : mux2x1 generic map(32) port map( data2, signExtend, ALUSrc, alu_data2 );
ALU32 : ALU port map ( data1, alu_data2, aluop, aluop(2),aludata , Cflag, Zflag, Oflag );

         --LoadIt: in STD_LOGIC;
  			--INPUT     : in STD_LOGIC_VECTOR (wordsize-1 downto 0);
			--OUTPUT    : out STD_LOGIC_VECTOR (wordsize-1 downto 0);
         --MEM_READ : in STD_LOGIC;
			--MEM_WRITE : in STD_LOGIC;
			--ADDRESS   : in STD_LOGIC_VECTOR (addresssize-1 downto 0);
			--CLK       : in STD_LOGIC
dataMem : DATAMEMORY port map ( not START, data2, wdata, MemRead, MemWrite, aludata, CLK ); -- ISA mem
writeMux : mux2x1 generic map(32) port map( aludata, wdata, MemToReg, regData );-- regData out Mux input RegFile .

Branch <= ( (Zflag and Beq ) or ( not(Zflag) and Bne ) );

-- Outputs
RegFileOut1 <= data1;
RegFileOut2 <= data2;
ALUOut <= aludata ;
DataMemOut <= wdata;
PCOut <= mem_count;

end Behavioral;

