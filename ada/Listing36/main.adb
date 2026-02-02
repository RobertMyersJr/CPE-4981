with Ada.Text_IO; use Ada.Text_IO;
with Week;

procedure Main is
    use Week;
    -- Make every entity of the Week
    -- Package directly visible in the procedure
begin
    Put_Line ("First day of the week is " & Mon);
end Main;
