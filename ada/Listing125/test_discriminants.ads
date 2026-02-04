package Test_Discriminants is
    type Point (X, Y : Natural) is record
        null;
    end record;

    P : Point;
    -- ERROR: Point is indefinite, so you
    -- need to specify the discriminants
    -- or give a default value

    P2 : Point (1, 2);
    P3 : Point := (1, 2);
    -- Those two declarations are equivalent.

end Test_Discriminants;

