with Ada.Text_IO;

procedure Main is
    procedure Say (Something : String)
        renames Ada.Text_IO.Put_Line;
    begin
        Say ("Hello");
end Main;
