with Variant_Record; use Variant_Record;

procedure Main is
    E : Expr := (Num, 12);
begin
    E.Left := new Expr'(Num, 15);
    -- Will compile but fail at runtime
end Main;

