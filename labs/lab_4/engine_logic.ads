package ENGINE_LOGIC is
    procedure loop_delay_1 is
    begin
        --for i in 1..420 loop
        for i in 1..420 loop
            Counter := Counter + 1;
        end loop;
        Counter := 0;
    end loop_delay_1;

    Counter : Integer := 0; 
    -- Mark volatile so the loop doesn't get optimized out
    pragma Volatile (Counter);

    type engine_array is
        array (engine_array_index) of gpio_api.OUTPUT_NIBBLE;
    type engine_array_index is mod(12);
    type ENGINE_STATE is (STATE_NULL, STATE_1,STATE_2,STATE_3);
    function STATE_1_FUC() return ENGINE_LOGIC;
    function STATE_2_FUC() return ENGINE_LOGIC;
    function STATE_3_FUC() return ENGINE_LOGIC;
end ENGINE_LOGIC;
