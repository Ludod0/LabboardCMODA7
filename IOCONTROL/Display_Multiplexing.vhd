----------------------------------------------------------------------------------
-- Company: Bingus 
-- Engineer: J'ai pas le droit de dire que je suis un ingenieur malheureusement
-- 
-- Create Date: 11/14/2026 04:34:02 PM
-- Design Name: 
-- Module Name: Display_Multiplexing - Behavioral
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
-- LabBoard V1 hardware correction:
-- DIGI_2 and DIGI_3 are swapped in the PCB routing.
-- Software mapping compensates for this inversion.
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Display_Multiplexing is
    Port ( NUM_1 : in STD_LOGIC_VECTOR (3 downto 0);
           NUM_2 : in STD_LOGIC_VECTOR (3 downto 0);
           NUM_3 : in STD_LOGIC_VECTOR (3 downto 0);
           NUM_4 : in STD_LOGIC_VECTOR (3 downto 0);
           SEG_A : out STD_LOGIC;
           SEG_B : out STD_LOGIC;
           SEG_C : out STD_LOGIC;
           SEG_D : out STD_LOGIC;
           SEG_E : out STD_LOGIC;
           SEG_F : out STD_LOGIC;
           SEG_G : out STD_LOGIC;
           DIGI_1 : out STD_LOGIC;
           DIGI_2 : out STD_LOGIC;
           DIGI_3 : out STD_LOGIC;
           DIGI_4 : out STD_LOGIC;
           sysclck : in std_logic);
end Display_Multiplexing;

architecture Behavioral of Display_Multiplexing is 
signal A, B, C, D : STD_LOGIC_VECTOR(3 downto 0);
signal Y : STD_LOGIC_VECTOR(3 downto 0);
signal SEL : unsigned(1 downto 0);
signal compteur : unsigned(2 downto 0) := "000";
signal SELA : STD_LOGIC_VECTOR (2 downto 0);
signal YA : std_logic;
signal YB : std_logic;
signal YC : std_logic;
signal YD : std_logic;
signal YE : std_logic;
signal YF : std_logic;
signal YG : std_logic;
signal SELB: STD_LOGIC_VECTOR(2 downto 0);
signal SELC :  STD_LOGIC_VECTOR(2 downto 0);
signal SELD : std_logic_vector(2 downto 0);
signal SELE : std_logic_vector(2 downto 0);
signal SELF : std_logic_vector(2 downto 0);
signal SELG : std_logic_vector(2 downto 0);
signal digit_sel : std_logic_vector(3 downto 0);
signal diviseur : integer range 0 to 11999 := 0; 
begin
with SEL select
    Y <= A when "00",
         B when "01",
         C when "10",
         D when "11",
         A when others;
A <= NUM_1;
B <= NUM_2;
C <= NUM_3;
D <= NUM_4;
SEL <= compteur(2 downto 1);
SELA <= Y(3 downto 1);
SELB <= Y(3 downto 1);
SELC <= Y(3 downto 1);
SELD <= Y(3 downto 1);
SELE <= Y(3 downto 1);
SELF <= Y(3 downto 1);
SELG <= Y(3 downto 1);
process(sysclck)
begin
    if rising_edge(sysclck) then

        if diviseur = 11999 then
            diviseur <= 0;
            compteur <= compteur + 1;
        else
            diviseur <= diviseur + 1;
        end if;
    
    end if;
end process;
with SELA select
    YA <= NOT Y(0) when "000",
          '1' when "001",
          Y(0) when "010",
          '1' when "011",
          '1' when "100",
          NOT Y(0) when "101",
          NOT Y(0) when "110",
          '1' when "111",
          '0' when others;
with SELB select
    YB <= '1' when "000",
          '1' when "001",
          NOT Y(0) when "010",
          Y(0) when "011",
          '1' when "100",
          NOT Y(0) when "101",
          Y(0) when "110",
          '0' when "111",
          '0' when others;
with SELC select
    YC <= '1' when "000",
          Y(0) when "001",
          '1' when "010",
          '1' when "011",
          '1' when "100",
          '1' when "101",
          Y(0) when "110",
          '0' when "111",
          '0' when others;
with SELD select
    YD <= NOT Y(0) when "000",
          '1' when "001",
          Y(0) when "010",
          NOT Y(0) when "011",
          NOT Y(0) when "100",
          Y(0) when "101",
          '1' when "110",
          NOT Y(0) when "111",
          '0' when others;
with SELE select
    YE <=  NOT Y(0) when "000",
           NOT Y(0) when "001",
           '0' when "010",
           NOT Y(0) when "011",
           NOT Y(0) when "100",
           '1' when "101",
           '1' when "110",
           '1' when "111",
           '0' when others;
with SELF select
    YF <= NOT Y(0) when "000",
          '0' when "001",
          '1' when "010",
          NOT Y(0) when "011",
          '1' when "100",
          '1' when "101",
          NOT Y(0) when "110",
          '1' when "111",
          '0' when others;
with SELG select
    YG <= '0' when "000",
          '1' when "001",
          '1' when "010",
          NOT Y(0) when "011",
          '1' when "100",
          '1' when "101",
          Y(0) when "110",
          '1' when "111",
          '0' when others;
SEG_A <= YA;
SEG_B <= YB;
SEG_C <= YC;
SEG_D <= YD;
SEG_E <= YE;
SEG_F <= YF;
SEG_G <= YG;
with compteur select
    digit_sel <= "1111" when "000",
                 "1110" when "001",
                 "1111" when "010",
                 "1101" when "011",
                 "1111" when "100",
                 "1011" when "101",
                 "1111" when "110",
                 "0111" when "111",
                 "1111" when others;
                

DIGI_1 <= digit_sel(0);
DIGI_2 <= digit_sel(2);
DIGI_3 <= digit_sel(1);
DIGI_4 <= digit_sel(3);
end Behavioral;
