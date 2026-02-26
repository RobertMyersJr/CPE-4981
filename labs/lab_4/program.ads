with gpio_api;
package program is
    type engine_array_index is mod(12);

    type ENGINE_STATE is (STATE_NULL, STATE_1,STATE_2,STATE_3);

    type engine_array is
        array (engine_array_index) of gpio_api.OUTPUT_NIBBLE;

    procedure loop_delay_1;

    procedure Run;
    Counter : Integer := 0; 
    -- Mark volatile so the loop doesn't get optimized out
    pragma Volatile (Counter);

    pragma Export (C, Run, "run");

    --  There is going to be a procedure called Unwind_Stub and everytime "__aeabi_unwind_cpp_pr0"
    --  appears run Unwind_Stub
    procedure Unwind_Stub_0;
    pragma export (C, Unwind_Stub_0, "__aeabi_unwind_cpp_pr0");
    procedure Unwind_Stub_1;
    pragma export (C, Unwind_Stub_1, "__aeabi_unwind_cpp_pr1");
end program;
