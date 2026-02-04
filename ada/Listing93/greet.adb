with Ada.Text_IO; use Ada.Text_IO;

procedure Greet is
    Message : String (1 .. 11) := "dlroW olleH";
    -- ^ Pre-defined array type.
    -- Component type is Character
begin
    for I in reverse Message'Range loop
        -- ^ Iterate in reverse order
        Put (Message (I));
    end loop;
    New_Line;
end Greet;
