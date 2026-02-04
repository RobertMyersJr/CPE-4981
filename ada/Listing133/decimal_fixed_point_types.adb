with Ada.Text_IO; use Ada.Text_IO;

procedure Decimal_Fixed_Point_Types is
    type Decimal is
        delta 10.0 ** (0) digits 3;

        D : Decimal := 0.1;
        -- ^^^
        -- ERROR: value cannot be represented
        -- by Decimal type.
begin
    Put_Line (D'Image);
end Decimal_Fixed_Point_Types;
