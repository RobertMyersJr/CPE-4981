with Ada.Text_IO; use Ada.Text_IO;

with My_Types; use My_Types;
with My_Types.Ops; use My_Types.Ops;

procedure Main is
    E : Priv_Rec;
begin
    Put_Line ("Presenting information:");

    -- The following code would trigger a
    -- compilation error here:
    --
    -- Put_Line ("Priv_Rec.Number: "
    -- & Integer'Image (E.Number));

    Display (E);
end Main;
