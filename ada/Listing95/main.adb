with Ada.Text_IO; use Ada.Text_IO;

procedure Main is
    type Integer_Array is
        array (Natural range <>) of Integer;

        My_Array : constant Integer_Array :=
            (1, 2, 3, 4);
        -- ^^^^^^^^^^^^^^^^^^^^^
        -- Bounds are automatically
        -- computed from
        -- initialization value
begin
    null;
end Main;

