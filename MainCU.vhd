----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:58:22 04/15/2013 
-- Design Name: 
-- Module Name:    MainCU - Behavioral 
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

entity MainCU is
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
	
end MainCU;

architecture Behavioral of MainCU is

signal  R_type : std_logic ; 
signal LW: std_logic ; 
signal SW :std_logic ; 
signal branch :std_logic ;   
signal ALUOp1:   STD_LOGIC;
signal ALUOp0:   STD_LOGIC;
begin

	R_type <=  ( not(func(5) )  AND    ( not func(4) ) AND ( not func(3) ) AND  ( not func(2) )    AND  ( not func(1) ) AND  not(func(0)) )  ;
	lw<=  ( func(5) AND  (not (func(4)) )  AND ( not func(3) )  AND (not (func(2)) )  AND (func(1)) AND (func(0))) ;
	Sw<=  ( func(5) AND  (not (func(4)) )   AND (func(3) ) AND (not (func(2)) )  AND (func(1)) AND (func(0))) ;
	branch    <=  ( not(func(5) )  AND    ( not func(4) )  AND ( not func(3) ) AND  (func(2))    AND  ( not func(1) ) )  ;
	Jump <= ( not(func(5) )  AND    ( not func(4) ) AND ( not func(3) ) AND  ( not func(2) )    AND  func(1) AND  ( not func(0)) )  ;
	
	RegDst <= R_type ; 
	ALUSrc<= lw OR SW ; 
	MemToReg <= LW ; 
	RegWrite<= R_type OR LW ; 
	
	MemRead <= LW ; 
	MemWrite<= SW ; 
	
	Beq<= branch and not( func(0) ) ; 
	Bne<= branch and func(0) ;
	
	ALUOp1<= R_type ; 
	ALUOp0<= branch;
   aluop<= ALUOp1 & ALUOp0;
	
end Behavioral;
