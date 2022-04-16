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
        
        sound_o : out std_logic;
        snd1_i  : int std_logic;
        snd2_i  : int std_logic;
        snd3_i  : int std_logic;
        snd4_i  : int std_logic;
        snd5_i  : int std_logic;
    );
end entity sound_gen;

------------------------------------------------------------
-- Architecture declaration for traffic light controller
------------------------------------------------------------
architecture Behavioral of sound_gen is
    
    signal s_en : std_logic;
    signal s_snd : std_logic;

    constant c_ZERO       : unsigned(1 downto 0) := b"0_0";
    constant c_ONE        : unsigned(1 downto 0) := b"0_1";
    
    begin

    --------------------------------------------------------
    -- Instance (copy) of clock_enable entity generates 
    -- an enable pulse every 250 ms (4 Hz). Remember that 
    -- the frequency of the clock signal is 100 MHz.
        
    clk_en0 : entity work.clock_enable
        generic map(
            g_MAX => 100000 -- test and finish here!!
        )
        port map(
            clk   => clk,
            reset => reset,
            ce_o  => s_en
        );

    
    p_sound_gen : process(clk)
    begin
        if rising_edge(clk) then
            if (reset = '1') then   -- Synchronous reset
                s_snd <= c_ZERO;   -- Set initial state
                

            elsif (s_en = '1') then
                -- Every 250 ms, CASE checks the value of the s_state 
                -- variable and changes to the next state according 
                -- to the delay value.
               
                
            end if; -- Synchronous reset
        end if; -- Rising edge
    end process p_sound_gen;

    --------------------------------------------------------
    -- p_output_fsm:
    -- The combinatorial process is sensitive to state
    -- changes and sets the output signals accordingly.
    -- This is an example of a Moore state machine and
    -- therefore the output is set based on the active state.
    --------------------------------------------------------
    p_output_fsm : process(s_state)
    begin
        case s_state is
            when STOP1 =>
                south_o <= c_RED;
                west_o  <= c_RED;
            when WEST_GO =>
                south_o <= c_RED;
                west_o  <= c_GREEN;
            when WEST_WAIT =>
                south_o <= c_RED;
                west_o  <= c_YELLOW;
            when STOP2 =>
                south_o <= c_RED;
                west_o  <= c_RED;
            when SOUTH_GO =>
                south_o <= c_GREEN;
                west_o  <= c_RED;
            when SOUTH_WAIT =>
                south_o <= c_YELLOW;
                west_o  <= c_RED;    

            when others =>
                south_o <= c_RED;
                west_o  <= c_RED;
        end case;
    end process p_output_fsm;

end architecture Behavioral;
