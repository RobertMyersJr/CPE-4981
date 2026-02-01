with Ada.Text_IO; use Ada.Text_IO;
procedure Greet_5b is 
    -- Variable declaration can only be done before begin
    I : Integer := 1;
begin
    loop
        Put_Line("Hello, World!"
                  &  Integer'Image (I));

        -- Exit statement if this is true leave loop
        exit when I = 5;

        I := I + 1;

    end loop;
end Greet_5b;
