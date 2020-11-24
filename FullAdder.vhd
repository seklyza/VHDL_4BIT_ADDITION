LIBRARY ieee;
USE ieee.std_logic_1164.all;


--  Entity Declaration

ENTITY FullAdder IS
-- {{ALTERA_IO_BEGIN}} DO NOT REMOVE THIS LINE!
PORT
(
A : IN STD_LOGIC;
B : IN STD_LOGIC;
Cin : IN STD_LOGIC;
S : OUT STD_LOGIC;
Cout : OUT STD_LOGIC
);
-- {{ALTERA_IO_END}} DO NOT REMOVE THIS LINE!

END FullAdder;


--  Architecture Body

ARCHITECTURE FullAdder_architecture OF FullAdder IS

SIGNAL S1, S2, S3 : STD_LOGIC;

COMPONENT HalfAdder IS
	PORT
	(
		A : IN STD_LOGIC;
		B : IN STD_LOGIC;
		S : OUT STD_LOGIC;
		C : OUT STD_LOGIC
	);
END COMPONENT;

BEGIN

U1 : HalfAdder
PORT MAP (
	A => A,
	B => B,
	S => S2,
	C => S1
);

U2 : HalfAdder
PORT MAP (
	A => S2,
	B => Cin,
	S => S,
	C => S3
);

Cout <= S1 OR S3;

END FullAdder_architecture;
