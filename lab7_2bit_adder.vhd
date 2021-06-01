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

   COMPONENT fulladder     -- You may need to change the component name to match your full-adder entity
   Port ( A,B,Cin : in   STD_LOGIC;
          S, Cout : out  STD_LOGIC
   );
   END COMPONENT;
   
   
   
-- Add components/signals as necessary
   
   
-- Add aliases as necessary
   
   
BEGIN

   FA_0 : fulladder port map (  );
   FA_1 : fulladder port map (  );
   
   -- You may need some assignments in addition to the port maps above
   C <=   ;
   V <=   ;
   
   
END test;
          
