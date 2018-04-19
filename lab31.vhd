library ieee;
use ieee.std_logic_1164.all;
 
entity and_gate is
  port (
    input_1    : in  std_logic;
    input_2    : in  std_logic;
    input_3    : in  std_logic;
	
    and_result : out std_logic;
	and_result2 : out std_logic;
	and_result3 : out std_logic
    );
end and_gate;
 
architecture rtl of and_gate is
  signal and_gate : std_logic;
  signal and_gate2 : std_logic;

begin 
  case ((input_1 and ( not input_2)) or ((not input_1) and ( not input_3))) is 
  when '1' => and_result3 <= '1';
  when '0' => and_result3 <='0';
  end case;
 
  begin 
  if and_result = '1' then and_result2 = '1';
  elsif and_result = '0' then and_result2= '0';
  end if;


end process;