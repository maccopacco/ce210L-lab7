----------------------------------------------------------------------------------
-- Company:        Kettering University
-- Engineer:       David Foster
-- 
-- Create Date:    9/1/20
-- Design Name:    
-- Module Name:    2-bit adder
-- Project Name:   
-- Target Devices: DE10-Lite Development board
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 1.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY lab7_2bit_adder IS
   Port ( A,B : in   STD_LOGIC_VECTOR(1 downto 0);
          Cin : in   STD_LOGIC;
          S   : out  STD_LOGIC_VECTOR(1 downto 0);
          C,V : out  STD_LOGIC -- unsigned overflow and signed overflow, respectively
   );
END lab7_2bit_adder;

ARCHITECTURE test OF lab7_2bit_adder IS

   COMPONENT fulladdermux      -- You may need to change the component name to match your full-adder entity
   Port ( A,B,Cin : in   STD_LOGIC;
          S, Cout : out  STD_LOGIC
   );
   END COMPONENT;
	
	COMPONENT xor_2
	 Port ( a : in   STD_LOGIC;
           b : in   STD_LOGIC;
           y : out  STD_LOGIC);
	END COMPONENT;
   
   
   SIGNAL FA_0_S_0  : STD_LOGIC;
	SIGNAL FA_0_COUT : STD_LOGIC;
	SIGNAL FA_1_S_1  : STD_LOGIC;
	SIGNAL FA_1_COUT : STD_LOGIC;
	SIGNAL V_OUT     : STD_LOGIC;
   
   
BEGIN

   FA_0 : fulladdermux port map (A(0), B(0), '0', FA_0_S_0, FA_0_COUT);
   FA_1 : fulladdermux port map (A(1), B(1), FA_0_COUT, FA_1_S_1, FA_1_COUT);
	XOR0 : xor_2 		  port map (FA_0_COUT, FA_1_COUT, V_OUT);
   
   -- You may need some assignments in addition to the port maps above
	S <= FA_1_S_1 & FA_0_S_0;
   C <= FA_1_COUT;
   V <= V_OUT;
   
   
END test;
          
