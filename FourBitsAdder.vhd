LIBRARY ieee;
USE ieee.std_logic_1164.all;


--  Entity Declaration

ENTITY FourBitsAdder IS
-- {{ALTERA_IO_BEGIN}} DO NOT REMOVE THIS LINE!
PORT
(
A0 : IN STD_LOGIC;
A1 : IN STD_LOGIC;
A2 : IN STD_LOGIC;
A3 : IN STD_LOGIC;
B0 : IN STD_LOGIC;
B1 : IN STD_LOGIC;
B2 : IN STD_LOGIC;
B3 : IN STD_LOGIC;
S0 : OUT STD_LOGIC;
S1 : OUT STD_LOGIC;
S2 : OUT STD_LOGIC;
S3 : OUT STD_LOGIC
);
-- {{ALTERA_IO_END}} DO NOT REMOVE THIS LINE!

END FourBitsAdder;


--  Architecture Body

ARCHITECTURE FourBitsAdder_architecture OF FourBitsAdder IS

SIGNAL Si1, Si2, Si3 : STD_LOGIC;

COMPONENT HalfAdder IS
	PORT
	(
		A : IN STD_LOGIC;
		B : IN STD_LOGIC;
		S : OUT STD_LOGIC;
		C : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT FullAdder IS
	PORT
	(
		A : IN STD_LOGIC;
		B : IN STD_LOGIC;
		Cin : IN STD_LOGIC;
		S : OUT STD_LOGIC;
		Cout : OUT STD_LOGIC
	);
END COMPONENT;

BEGIN

HA1 : HalfAdder
PORT MAP (
	A => A0,
	B => B0,
	S => S0,
	C => Si1
);

FA1 : FullAdder
PORT MAP (
	A => A1,
	B => B1,
	Cin => Si1,
	S => S1,
	Cout => Si2
);

FA2 : FullAdder
PORT MAP (
	A => A2,
	B => B2,
	Cin => Si2,
	S => S2,
	Cout => Si3
);

FA3 : FullAdder
PORT MAP (
	A => A3,
	B => B3,
	Cin => Si3,
	S => S3
);

END FourBitsAdder_architecture;
