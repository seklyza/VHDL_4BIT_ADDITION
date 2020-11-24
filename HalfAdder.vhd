LIBRARY ieee;
USE ieee.std_logic_1164.all;


--  Entity Declaration

ENTITY HalfAdder IS
-- {{ALTERA_IO_BEGIN}} DO NOT REMOVE THIS LINE!
PORT
(
A : IN STD_LOGIC;
B : IN STD_LOGIC;
S : OUT STD_LOGIC;
C : OUT STD_LOGIC
);
-- {{ALTERA_IO_END}} DO NOT REMOVE THIS LINE!

END HalfAdder;


--  Architecture Body

ARCHITECTURE HalfAdder_architecture OF HalfAdder IS


BEGIN

S <= A XOR B;
C <= A AND B;

END HalfAdder_architecture;
