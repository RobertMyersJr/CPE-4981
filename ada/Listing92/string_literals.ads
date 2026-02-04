package String_Literals is
    -- Those two declarations are equivalent
    A : String (1 .. 11) := "Hello World";
    B : String (1 .. 11) :=
        ('H', 'e', 'l', 'l', 'o', ' ',
        'W', 'o', 'r', 'l', 'd');
end String_Literals;
