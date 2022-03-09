----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/09/2022 11:48:07 AM
-- Design Name: 
-- Module Name: top - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
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
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity top is
    Port ( SW : in STD_LOGIC_VECTOR (3 downto 0);
           LED : out STD_LOGIC_VECTOR (7 downto 0);
           CA : out STD_LOGIC;
           CB : out STD_LOGIC;
           CC : out STD_LOGIC;
           CD : out STD_LOGIC;
           CE : out STD_LOGIC;
           CF : out STD_LOGIC;
           CG : out STD_LOGIC;
           AN : out STD_LOGIC_VECTOR (7 downto 0));
end top;

architecture Behavioral of top is

begin
-- Instance (copy) of hex_7seg entity
    hex2seg : entity work.hex_7seg
        port map(
            hex_i    => SW,
            seg_o(6) => CA,
            seg_o(5) => CB,
            seg_o(4) => CC,
            seg_o(3) => CD,
            seg_o(2) => CE,
            seg_o(1) => CF,           
            seg_o(0) => CG
        );
        
       AN <= b"1111_1110";
       
       LED(3 downto 0) <= SW;
       
      if (SW ="0000") then
      LED(4) <= "0"
      else
      if (SW mod 2) = 1 then
      LED(6) <= "0"
      else
      if (SW > "1001") = 0 then
      LED(5) <= "0"
      else
      if (SW = 1) then
      LED(7) <= "0"
      else
      if (SW = 2) then
      LED(7) <= "0"
      else
      if (SW = 4) then
      LED(7) <= "0"
      else
      if (SW = 8) then
      LED(7) <= "0"
      end if;
      
end Behavioral;
