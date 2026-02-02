with Ada.Text_IO; use Ada.Text_IO;

procedure Greet is
    type Days is (Monday, Tuesday, Wednesday,
        Thursday, Friday,
        Saturday, Sunday);

    subtype Weekend_Days is
    Days range Saturday .. Sunday;

    Day : Days := Saturday;
    Weekend : Weekend_Days;
begin
    Weekend := Day;
    Weekend := Monday;
end Greet;

