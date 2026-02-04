package Variant_Record is
    -- Forward declaration of Expr
    type Expr;

    -- Access to a Expr
    type Expr_Access is access Expr;

    type Expr_Kind_Type is (Bin_Op_Plus,
        Bin_Op_Minus,
        Num);
    -- A regular enumeration type

    type Expr (Kind : Expr_Kind_Type) is record
        -- ^ The discriminant is an
        -- enumeration value
        case Kind is
            when Bin_Op_Plus | Bin_Op_Minus =>
                Left, Right : Expr_Access;
            when Num =>
                Val : Integer;
        end case;
        -- Variant part. Only one, at the end of
        -- the record definition, but can be
        -- nested
    end record;
end Variant_Record;
