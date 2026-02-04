with Runtime_Length; use Runtime_Length;

package Var_Size_Record is
    Max_Len : constant Natural :=
        Compute_Max_Len;
        -- ^ Not known at compile time

    type Items_Array is
        array (Positive range <>) of Integer;

        type Growable_Stack is record
            Items : Items_Array (1 .. Max_Len);
            Len : Natural;
    end record;
    -- Growable_Stack is a definite type, but
    -- size is not known at compile time.

    G : Growable_Stack;
end Var_Size_Record;
