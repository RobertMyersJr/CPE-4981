with Ada.Text_IO; use Ada.Text_IO;

procedure Decimal_Fixed_Point_Types is
    type Decimal is
        delta 10.0 ** (-1) digits 3;

        -- Alternatively:
        -- type Decimal is
        -- delta 0.1 digits 3;
begin
    Put_Line
        ("The decimal precision of Decimal is "
        & Decimal'Delta'Image);
end Decimal_Fixed_Point_Types;

