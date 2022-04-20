----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/20/2022 11:14:54 AM
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
    Port ( BTNA : in STD_LOGIC;
           BTNB : in STD_LOGIC;
           BTNC : in STD_LOGIC;
           BTND : in STD_LOGIC;
           BTNE : in STD_LOGIC;
           CLK100HMZ : in STD_LOGIC;
           AUD_PWM : out STD_LOGIC);
end top;

architecture Behavioral of top is

begin


end Behavioral;
