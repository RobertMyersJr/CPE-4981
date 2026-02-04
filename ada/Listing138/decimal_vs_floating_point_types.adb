with Ada.Text_IO; use Ada.Text_IO;

procedure Decimal_Vs_Floating_Point_Types is
    type Decimal is
        delta 10.0 ** (-2) digits 9;

        type Float_32 is
            digits 6
            range -9999999.99 .. 9999999.99;

            D : Decimal := 0.01;
            F : Float_32 := 0.01;
begin
    Put_Line ("D = " &
    D'Image);
    Put_Line ("F = " &
    F'Image);

    D := D / 2.0;
    -- ^^^^^^^
    -- Value becomes zero.

    F := F / 2.0;
    -- ^^^^^^^
    -- Exponent is used to
    -- represent smaller
    -- value.

    Put_Line ("D = " &
    D'Image);
    Put_Line ("F = " &
    F'Image);
end Decimal_Vs_Floating_Point_Types;
