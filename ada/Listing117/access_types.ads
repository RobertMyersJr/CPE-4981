with Dates; use Dates;

package Access_Types is
    type Date_Acc is access Date;

    D : Date_Acc := new Date;
    -- ^ Allocate a new Date record
end Access_Types;

