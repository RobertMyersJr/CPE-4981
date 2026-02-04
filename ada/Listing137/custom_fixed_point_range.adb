with Ada.Text_IO; use Ada.Text_IO;
with Ada.Numerics; use Ada.Numerics;

procedure Custom_Fixed_Point_Range is
    type T_Inv_Trig is
        delta 0.0005
        range -Pi / 2.0 .. Pi / 2.0;
begin
    Put_Line ("Delta value of T_Inv_Trig: "
    & T_Inv_Trig'Image
        (T_Inv_Trig'Delta));
    Put_Line ("Minimum value of T_Inv_Trig: "
    & T_Inv_Trig'Image
        (T_Inv_Trig'First));
    Put_Line ("Maximum value of T_Inv_Trig: "
    & T_Inv_Trig'Image
        (T_Inv_Trig'Last));
end Custom_Fixed_Point_Range;

