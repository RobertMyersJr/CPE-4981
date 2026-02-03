with Ada.Text_IO; use Ada.Text_IO;

procedure Greet is
    type My_Int is range 0 .. 1000;

    type My_Index is range 1 .. 5;
    type Your_Index is range 1 .. 5;

    type My_Int_Array is
        array (My_Index) of My_Int;

        Tab : My_Int_Array := (2, 3, 5, 7, 11);
begin
    for I in Your_Index loop
        Put (My_Int'Image (Tab (I)));
        -- ^ Compile time error
    end loop;
    New_Line;
end Greet;

