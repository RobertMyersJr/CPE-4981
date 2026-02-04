with Ada.Text_IO; use Ada.Text_IO;

procedure Decimal_Fixed_Point_Types is
    type Decimal is
        delta 10.0 ** (0) digits 3;
begin
    Put_Line ("The minimum value of Decimal is "
    & Decimal'First'Image);
    Put_Line ("The maximum value of Decimal is "
    & Decimal'Last'Image);
end Decimal_Fixed_Point_Types;

