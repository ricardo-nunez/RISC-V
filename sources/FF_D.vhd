----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 15.12.2019 22:53:28
-- Design Name: 
-- Module Name: FF_D - Behavioral
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

entity FF_D is
    Port ( 
          CLK : in  STD_LOGIC;
          RST : in  STD_LOGIC;
          EN :  in  STD_LOGIC;
          D :   in  STD_LOGIC;
          Q :   out STD_LOGIC
          );
end FF_D;

architecture Behavioral of FF_D is

begin
    process (CLK, EN, RST)
    begin
RESET: 
        if (RST = '1') then 
            Q <= '0';
        elsif (CLK'event and CLK = '1') then
            if (EN = '1') then
                Q <= D;
            end if;
        end if;       
    end process;

end Behavioral;
