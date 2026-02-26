with gpio_api;
package body ENGINE_LOGIC is
    -- TODO USE THE INITIAL STATES THEN MOVE TO ARRAYS
    engine_state_inital: gpio_api.OUTPUT_NIBBLE := 2#0001#;
    arr_1: engine_array := (
        2#0010#, 
        2#0100#, 
        2#1000#, 
        2#0001#, 
        2#0010#, 
        2#0100#, 
        2#1000#, 
        2#0001#, 
        2#0010#, 
        2#0100#, 
        2#1000#,
        2#0001#
        );
    arr_2: engine_array := (
        2#0011#, 
        2#0110#, 
        2#1100#,
        2#1001#,
        2#0011#, 
        2#0110#, 
        2#1100#,
        2#1001#,
        2#0011#, 
        2#0110#, 
        2#1100#,
        2#1001#
        );
    arr_3: engine_array := (
        2#0011#, 
        2#0111#, 
        2#1110#,
        2#1101#,
        2#1011#,
        2#0111#,
        2#1110#,
        2#1101#,
        2#1011#,
        2#0111#,
        2#1110#,
        2#1101#
        );

    function get_engine_start(port : gpio_api.GPIO_PORT) return ENGINE_STATE is
        idr_value: gpio_api.Word;
        engine_bits: Natural;
        mask: gpio_api.Word := 2#11# * (2**8);
    begin
        idr_value := gpio_api.read_port(gpio_api.GPIOB) and mask;
        engine_bits := Natural(idr_value / (2**Natural(8)));

        case engine_bits is
            when 1 => return STATE_1;
            when 2 => return STATE_2;
            when 3 => return STATE_3;
            when others => return STATE_NULL;
        end case;
    end get_engine_start;

    function STATE_1_FUC() return ENGINE_LOGIC is
        engine_state: ENGINE_STATE;
        engine_index: engine_array_index := 0;
        output : gpio_api.OUTPUT_NIBBLE;
    begin
        gpio_api.set_nibble(test_port, sub_port, output);
        loop_delay_1;
        loop
            output := arr_1(engine_index);
            gpio_api.set_nibble(test_port, sub_port, output);
            loop_delay_1;
            engine_state := get_engine_start;
            engine_index := engine_index + 1;
            if engine_state /= STATE_1 then
                return engine_state;
            end if;
        end loop;

    end STATE_1_FUC;
    function STATE_2_FUC() return ENGINE_LOGIC;
    function STATE_3_FUC() return ENGINE_LOGIC;
end ENGINE_LOGIC
