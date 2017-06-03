library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std;


entity ledSaida is
        PORT (ledEntrada : IN BIT_VECTOR (2 downto 0);
               r : IN BIT_VECTOR (1 downto 0);
               bot : IN BIT_VECTOR (2 downto 0);
               ledSaida : OUT BIT_VECTOR (2 downto 0));
end ledSaida;


architecture behavior of ledSaida is
begin
  process (ledEntrada,r,bot)
  begin
	  if (bot = "100") then
		ledSaida <= bot;
	  elsif (bot = "010") then
		ledSaida <= bot;
	  elsif (bot = "001") then
		ledSaida <= bot;
	  elsif (r = "00") then
		ledSaida <= ledEntrada;
	  elsif (r = "01") then
		ledSaida <= (ledEntrada ror 1);
	  elsif (r = "10") then
		ledSaida <= (ledEntrada rol 1);
	  else
		ledSaida <= ledEntrada;
	  end if;
  end process;
  
end behavior;