package Test_Discriminants is
    type Point (X, Y : Natural := 0) is record
        null;
    end record;

    P : Point;
    -- We can now simply declare a "Point"
    -- without further ado. In this case,
    -- we're using the default values (0)
    -- for X and Y.

    P2 : Point (1, 2);
    P3 : Point := (1, 2);
    -- We can still specify discriminants.

end Test_Discriminants;

