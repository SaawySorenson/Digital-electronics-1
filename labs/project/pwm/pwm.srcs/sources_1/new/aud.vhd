------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

------------------------------------------------------------
-- Entity declaration for sounds generation
------------------------------------------------------------
entity sound_gen is    

    port(
        clk     : in  std_logic;
        reset   : in  std_logic;
              
        sounde_o : out std_logic;      
        sound_o : out std_logic;
        snd1_i  : in std_logic;
        snd2_i  : in std_logic;
        snd3_i  : in std_logic;
        snd4_i  : in std_logic;
        snd5_i  : in std_logic
    );
end entity sound_gen;


------------------------------------------------------------
-- Architecture declaration for traffic light controller
------------------------------------------------------------
architecture Behavioral of sound_gen is
    
    
    
    signal s_en : std_logic;
    signal s_snd : std_logic;
    signal duty_cycle : integer;
    signal duty_cnt : integer;

   --constant c_ZERO       : std_logic  := '0';
   --constant c_ONE        : std_logic  := '1';
          
    
    begin

    --------------------------------------------------------
    -- Instance (copy) of clock_enable entity generates 
    -- an enable pulse every 250 ms (4 Hz). Remember that 
    -- the frequency of the clock signal is 100 MHz.
        
    clk_en0 : entity work.clock_enable
        generic map(
            g_MAX => 800 
        )
        port map(
            clk   => clk,
            reset => reset,
            ce_o  => s_en
        );

    
    PWM_PROC : process(clk)
begin
  if rising_edge(clk) then
    if reset  = '1' then 
     sound_o <= '0';
     sounde_o <= '0';    
    end if;
    
        if(snd1_i  = '1') then
            sounde_o <= '1';
            duty_cycle <= 50;
        
        if(s_en = '1') then    
                if(duty_cnt >= duty_cycle ) then
                    sound_o <= '0';
                        if(duty_cnt >= 100) then
                            duty_cnt <= 0;
                        else
                            duty_cnt  <= duty_cnt  + 1;
                        end if;
                else
                    sound_o <= '1';      
                    duty_cnt <= duty_cnt + 1;          
                end if;
        end if;
        elsif(snd2_i  = '1') then
            sounde_o <= '1';
            duty_cycle <= 75;
        
        if(s_en = '1') then    
                if(duty_cnt >= duty_cycle ) then
                    sound_o <= '0';
                        if(duty_cnt >= 100) then
                            duty_cnt <= 0;
                        else
                            duty_cnt  <= duty_cnt  + 1;
                        end if;
                else
                    sound_o <= '1';      
                    duty_cnt <= duty_cnt + 1;          
                end if;
              end if;      
        elsif(snd3_i  = '1') then
            sounde_o <= '1';
            duty_cycle <= 25;
        
        if(s_en = '1') then    
                if(duty_cnt >= duty_cycle ) then
                    sound_o <= '0';
                        if(duty_cnt >= 100) then
                            duty_cnt <= 0;
                        else
                            duty_cnt  <= duty_cnt  + 1;
                        end if;
                else
                    sound_o <= '1';      
                    duty_cnt <= duty_cnt + 1;          
                end if;
              end if;      
        elsif(snd4_i  = '1') then
            sounde_o <= '1';
            duty_cycle <= 10;
        
        if(s_en = '1') then    
                if(duty_cnt >= duty_cycle ) then
                    sound_o <= '0';
                        if(duty_cnt >= 100) then
                            duty_cnt <= 0;
                        else
                            duty_cnt  <= duty_cnt  + 1;
                        end if;
                else
                    sound_o <= '1';      
                    duty_cnt <= duty_cnt + 1;          
                end if;            
        end if;
        elsif(snd5_i  = '1') then
            sounde_o <= '1';
            duty_cycle <= 90;
        
        if(s_en = '1') then    
                if(duty_cnt >= duty_cycle ) then
                    sound_o <= '0';
                        if(duty_cnt >= 100) then
                            duty_cnt <= 0;
                        else
                            duty_cnt  <= duty_cnt  + 1;
                        end if;
                else
                    sound_o <= '1';      
                    duty_cnt <= duty_cnt + 1;          
                end if;            
              end if;        
        end if;
    end if;
   
end process;

   

end architecture Behavioral;
