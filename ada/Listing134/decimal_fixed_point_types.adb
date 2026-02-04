with Ada.Text_IO; use Ada.Text_IO;

procedure Decimal_Fixed_Point_Types is
    type Float_999 is
        digits 3
        range -999.0 .. 999.0;
begin
    Put_Line ("The minimum value of Float_999 is "
    & Float_999'First'Image);
    Put_Line ("The maximum value of Float_999 is "
    & Float_999'Last'Image);
end Decimal_Fixed_Point_Types;

