with Ada.Text_IO; use Ada.Text_IO;

procedure Greet is
begin
    loop
        Put_Line("Please enter your name");
        declare
            Name: String := Get_line; -- Get user input
        begin
            exit when Name = "";
            Put_Line ("Hi " & Name & "!");
        end;
    end loop;
end Greet;
