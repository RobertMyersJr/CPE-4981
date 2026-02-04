with Dates; use Dates;

package Access_Types is
    type Date_Acc is access Date;

    D : Date_Acc :=
        new Date'(30, November, 2011);

    Today : Date := D.all;
    -- ^ Access value dereference
    J : Integer := D.Day;
    -- ^ Implicit dereference
    -- for record and array
    -- components
    -- Equivalent to D.all.day
end Access_Types;

