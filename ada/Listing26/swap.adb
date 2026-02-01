procedure Swap (A, B:Integer) is
    Tmp: Integer;
begin
    Tmp := A;

    -- A is in "in" mode meaning the parameter can't be changed
    A := B;

    -- B is in "in" mode meaning the parameter can't be changed
    B := Tmp;
end;
