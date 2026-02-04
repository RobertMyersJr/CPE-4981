with Dates; use Dates;

package Access_Types is
    type String_Acc is access String;
    -- ^
    -- Access to unconstrained array type
    Msg : String_Acc;
    -- ^ Default value is null

    Buffer : String_Acc :=
        new String (1 .. 10);
    -- ^ Constraint required
end Access_Types;

