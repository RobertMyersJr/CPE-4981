with Ada.Text_IO; use ADa.Text_IO;

procedure Greet is
    type Days is (Monday, Tuesday, Wednesday,
        Thursday, Friday,
        Saturday, Sunday);

    type Weekend_Days is new
        Days range Saturday .. Sunday;
        -- New type, where only Saturday and Sunday
        -- are valid literals.
begin
    null;
end Greet;
