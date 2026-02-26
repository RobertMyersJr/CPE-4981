with gpio_api; use gpio_api;
package body program is

    engine_state_0_inital: gpio_api.OUTPUT_NIBBLE := 2#0001#;

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


    procedure loop_delay_1 is
    begin
        --for i in 1..420 loop
        for i in 1..420 loop
            Counter := Counter + 1;
        end loop;
        Counter := 0;
    end loop_delay_1;

    -- Local variables
    test_pin: gpio_api.GPIO_PIN := 5;
    test_port: gpio_api.GPIO_PORT := gpio_api.GPIOB;

    sub_port: gpio_api.NIBBLE_VALUE := 2#0#;

    procedure Run is
        output : gpio_api.OUTPUT_NIBBLE;
        index: engine_array_index := 0;
        current_state: ENGINE_STATE := STATE_NULL;
    begin
        gpio_api.enable_gpio_port(test_port);
        gpio_api.set_gpio_as_output(test_port, 0);
        gpio_api.set_gpio_as_output(test_port, 1);
        gpio_api.set_gpio_as_output(test_port, 2);
        gpio_api.set_gpio_as_output(test_port, 3);
        loop
            current_state := get_engine_start;
            case current_state is
                when STATE_1 => 
                    return STATE_1;
                when STATE_2 => 
                    return STATE_2;
                when 3 => return STATE_3;
                when others => return STATE_NULL;
            end case;
            --gpio_api.reset_gpio_pin(test_port, test_pin);
            output := arr_3(index);
            gpio_api.set_nibble(test_port, sub_port, output);
            loop_delay_1;

            index := index + 1;
        end loop;
    end Run;

    procedure Unwind_Stub_0 is
    begin
        loop
            null;
        end loop;
    end Unwind_Stub_0;

    procedure Unwind_Stub_1 is
    begin
        loop
            null;
        end loop;
    end Unwind_Stub_1;
end program;
