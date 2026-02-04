package Decimal_Fixed_Point_Type_Error is

    type Decimal_Error_1 is
        delta 2.0 ** (-1) digits 3;
        -- ^^^^^^^^^^^
        -- ERROR: not power of ten

    type Decimal_Error_2 is
        delta 0.125 digits 3;
        -- ^^^^^
        -- ERROR: not power of ten

end Decimal_Fixed_Point_Type_Error;
