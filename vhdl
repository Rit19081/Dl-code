library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity obj is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           C : in STD_LOGIC;
           D : in STD_LOGIC;
           P : out STD_LOGIC;
           Q : out STD_LOGIC;
           R : out STD_LOGIC;
           S : out STD_LOGIC);
end obj;

architecture Behavioral of obj is

begin
P <= A;
Q <= A XOR B;
R <= B XOR C;
S <= C XOR D;

end Behavioral;







library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity obj_tb is
--  Port ( );
end obj_tb;

architecture Behavioral of obj_tb is
component obj is
 Port ( A : in STD_LOGIC;
          B : in STD_LOGIC;
          C : in STD_LOGIC;
          D : in STD_LOGIC;
          P : out STD_LOGIC;
          Q : out STD_LOGIC;
          R : out STD_LOGIC;
          S : out STD_LOGIC);
          end component;
          signal a,b,c,d,p,q,r,s : STD_LOGIC;
   


begin
uut: obj port map(a=>a,b=>b,c=>c,d=>d,p=>p,q=>q,r=>r,s=>s);
stimulus : process

begin
a<='0';b<='0';c<='0';d<='0';wait for 10ns;
a<='0';b<='0';c<='0';d<='1';wait for 10ns;
a<='0';b<='0';c<='1';d<='0';wait for 10ns;
a<='0';b<='0';c<='1';d<='1';wait for 10ns;
a<='0';b<='0';c<='0';d<='0';wait for 10ns;
a<='0';b<='1';c<='0';d<='1';wait for 10ns;
a<='0';b<='1';c<='1';d<='0';wait for 10ns;
a<='0';b<='1';c<='1';d<='1';wait for 10ns;
a<='1';b<='1';c<='0';d<='0';wait for 10ns;
a<='1';b<='0';c<='0';d<='1';wait for 10ns;
a<='1';b<='0';c<='1';d<='0';wait for 10ns;
a<='1';b<='0';c<='1';d<='1';wait for 10ns;
a<='1';b<='0';c<='0';d<='0';wait for 10ns;
a<='1';b<='1';c<='0';d<='1';wait for 10ns;
a<='1';b<='1';c<='1';d<='0';wait for 10ns;
a<='1';b<='1';c<='1';d<='1';wait for 10ns;

wait;
end process;
end Behavioral;
