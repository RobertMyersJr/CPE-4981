package Encapsulate is
    procedure Hello;

    private

    procedure Hello2;
    -- Not visible from external units
    -- But visible in child packages
end Encapsulate;

