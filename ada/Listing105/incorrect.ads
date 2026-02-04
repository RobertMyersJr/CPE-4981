package Incorrect is
    type Point is record
        X, Y : Integer := 0;
    end record;

    Origin : Point := (X => 0);
end Incorrect;

