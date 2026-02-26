with gpio_api;
package program is
    procedure Run;
    pragma Export (C, Run, "run");

    --  There is going to be a procedure called Unwind_Stub and everytime "__aeabi_unwind_cpp_pr0"
    --  appears run Unwind_Stub
    procedure Unwind_Stub_0;
    pragma export (C, Unwind_Stub_0, "__aeabi_unwind_cpp_pr0");
    procedure Unwind_Stub_1;
    pragma export (C, Unwind_Stub_1, "__aeabi_unwind_cpp_pr1");
end program;
