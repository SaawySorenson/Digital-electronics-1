library ieee;
use ieee.std_logic_1164.all;
-------------------------------------
entity d_ff_rst is
    port(
        rst   : in  std_logic;
        d     : in  std_logic;
        q     : out std_logic;
        q_bar : out std_logic;
        clk   : in  std_logic
    );
end entity d_ff_rst;
-------------------------------------
architecture Behavioral of d_ff_rst is
begin
   p_d_ff_rst : process(clk)
    begin
        if rising_edge(clk) then  -- Synchronous process

           if (rst = '1') then 
              q     <= '0';
              q_bar <= '1';
           else 
              q     <= d;
              q_bar <= not d;
           end if;
        end if;
    end process p_d_ff_rst;
end architecture Behavioral;
