library ieee;
use ieee.std_logic_1164.all;

entity t_ff_rst is 
     port(
        rst   : in  std_logic;
        t     : in  std_logic;
        clk   : in  std_logic;
        q     : out std_logic;
        q_bar : out std_logic
    );
end entity t_ff_rst;

architecture Behavioral of t_ff_rst is
begin
    --------------------------------------------------------
    
    --------------------------------------------------------
    p_t_ff_rst : process(clk)
    begin
        if rising_edge(clk) then  -- Synchronous process
           if(rst = '1') then
            q <= '0';
            q_bar <= '1';                    
           elsif (t = '0') then
            q <= '1';
            q_bar <= '1';        
          
           elsif (t = '1') then
            q <= '1';
            q_bar <= '0';
           end if;           
                
        elsif falling_edge(clk) then  -- Synchronous process
           if (t = '0') then
            q <= '0';
            q_bar <= '0';
             
            elsif (t = '1') then
            q <= '0';
            q_bar <= '1';
           end if;           
        end if;
        
    end process p_t_ff_rst;
    
end architecture Behavioral;