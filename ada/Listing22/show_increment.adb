with Ada.Text_IO; use Ada.Text_IO;
with Increment_By;
procedure Show_Increment is
    A,B,C : Integer;
begin
    C := Increment_By; -- Default parameters

    Put_Line("Using defaults for Increment_By is " & Integer'Image(C));

    A := 10;
    B := 3;
    C := Increment_By(A,B); -- Increment A by B (10 by 3)

    Put_Line ("Increment of "
    & Integer'Image (A)
    & " with "
    & Integer'Image (B)
    & " is "
    & Integer'Image (C));

    A := 20;
    B := 5;
    C := Increment_By(I => A,
                      Incr => B); -- Increment A by B (20 by 5)

    Put_Line ("Increment of "
    & Integer'Image (A)
    & " with "
    & Integer'Image (B)
    & " is "
    & Integer'Image (C));
end Show_Increment;
