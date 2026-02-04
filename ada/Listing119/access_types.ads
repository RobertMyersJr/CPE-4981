with Dates; use Dates;

package Access_Types is
    type Date_Acc is access Date;
    type String_Acc is access String;

    D : Date_Acc :=
        new Date'(30, November, 2011);
    Msg : String_Acc := new String'("Hello");
end Access_Types;

