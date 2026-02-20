package program is
    procedure loop_delay;
    procedure Run;
    Counter : Integer := 0; 
    -- Mark volatile so the loop doesn't get optimized out
    pragma Volatile (Counter);

    pragma export (C, Run, "run");

    --  There is going to be a procedure called Unwind_Stub and everytime "__aeabi_unwind_cpp_pr0"
    --  appears run Unwind_Stub
    procedure Unwind_Stub;
    pragma export (C, Unwind_Stub, "__aeabi_unwind_cpp_pr0");
end program;
