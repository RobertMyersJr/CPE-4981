procedure Mutually_Recursive_Subprograms is 
    -- Forward declaration A here so B knows it exists
    procedure Compute_A (V : Natural);

    procedure Compute_B (V : Natural) is
    begin
        if V > 5 then
            -- Call Compute A
            Compute_A (V - 1);
        end if;
    end Compute_B;

    -- Define A's implementation here
    procedure Compute_A (V : Natural) is
    begin
        if V > 2 then
            Compute_B (V - 1);
        end if;
    end Compute_A;

begin
    Compute_A(15);
end Mutually_Recursive_Subprograms;
