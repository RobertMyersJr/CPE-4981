with Ada.Text_IO; use Ada.Text_IO;
with Pkg; use Pkg;

procedure Main is
    S : String := Convert (123_145_299);
    -- ^ Invalid, which convert
    -- should we call?

    S2 : String := Convert (SSID'(123_145_299));
    -- ^ We specify that the
    -- type of the
    -- expression is SSID.

    -- We could also have declared a temporary

    I : SSID := 123_145_299;

    S3 : String := Convert (I);
begin
    Put_Line (S);
end Main;

