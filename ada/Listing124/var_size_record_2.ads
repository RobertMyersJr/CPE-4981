package Var_Size_Record_2 is
    type Items_Array is
        array (Positive range <>) of Integer;

        type Growable_Stack (Max_Len : Natural) is
        record
            -- ^ Discriminant. Cannot be
            -- modified once
            -- initialized.
            Items : Items_Array (1 .. Max_Len);
            Len : Natural := 0;
        end record;
    -- Growable_Stack is an indefinite type
    -- (like an array)
end Var_Size_Record_2;

