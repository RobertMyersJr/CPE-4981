function Quadruple (I : Integer)
    return Integer is 
    function Double (I : Integer)
        return Integer is
    begin
        return I * 2;
    end Double;

    Res : Integer;
begin
    -- Double (Double (I));
    -- This will error as we aren't using the return value.

    Res := Double (Double(I));

    return Res;
end Quadruple;
