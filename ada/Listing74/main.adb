procedure Main is
    type Social_Security_Number is new Integer
        range 0 .. 999_99_999;

    SSN : Social_Security_Number := 555_55_555;

    I : Integer;

    -- Warning but no error
    Invalid : Social_Security_Number := -1;
begin
    -- Error due to I being an I trying to be assigned to the Social_Security_Number type
    I := SSN;

    -- Same thing reversed
    SSN := I;

    -- Works with explicit conversion
    I := Integer(SSN);

    SSN := Social_Security_Number (I);

end Main;
