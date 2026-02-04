with Ada.Text_IO; use Ada.Text_IO;

procedure Character_Example is
    type My_Char is ('a', 'b', 'c');
    -- Our custom character type, an
    -- enumeration type with 3 valid values.

    C : Character;
    -- ^ Built-in character type
    -- (it's an enumeration type)

    M : My_Char;
begin
    C := '?';
    -- ^ Character literal
    -- (enumeration literal)

    M := 'a';

    C := 65;
    -- ^ Invalid: 65 is not a
    -- Character value

    C := Character'Val (65);
    -- Assign the character at
    -- position 65 in the
    -- enumeration (which is 'A')

    M := C;
    -- ^ Invalid: C is of type Character,
    -- and M is a My_Char

    M := 'd';
    -- ^ Invalid: 'd' is not a valid
    -- literal for type My_Char
end Character_Example;
