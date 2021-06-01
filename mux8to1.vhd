----------------------------------------------------------------------------------
-- Company:        Kettering University
-- Engineer:       David Foster
-- 
-- Create Date:    11/19/19
-- Design Name:    
-- Module Name:    8 to 1 mux - Behavioral 
-- Project Name:   CE-210 gate 
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity mux8to1 is
    Port ( d : in   STD_LOGIC_VECTOR(7 downto 0);
           s : in   STD_LOGIC_VECTOR(2 downto 0);
           y : out  STD_LOGIC);
end mux8to1;

architecture Behavioral of mux8to1 is

begin
   process(d,s)
   begin
      case s is
      when "000" => y <= d(0);
      when "001" => y <= d(1);
      when "010" => y <= d(2);
      when "011" => y <= d(3);
      when "100" => y <= d(4);
      when "101" => y <= d(5);
      when "110" => y <= d(6);
      when "111" => y <= d(7);
      when others => y <= 'Z';
   end case;
  end process; 
end Behavioral;

