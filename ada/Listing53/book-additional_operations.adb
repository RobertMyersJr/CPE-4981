package body Book.Additional_Operations is

    function Get_Extended_Title return String is
    begin
        return "Book Title: " & Title;
    end Get_Extended_Title;

    function Get_Extended_Author return String is
    begin

        return "Book Author: Unknown";
    end Get_Extended_Author;

end Book.Additional_Operations;
