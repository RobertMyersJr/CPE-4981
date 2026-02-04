with Dates; use Dates;

package Access_Types is
    -- Declare an access type
    type Date_Acc is access Date;
    -- ^ "Designated type"
    -- ^ Date_Acc values
    -- point to Date
    -- objects

    D : Date_Acc := null;
    -- ^ Literal for
    -- "access to nothing"
    -- ^ Access to date
end Access_Types;
