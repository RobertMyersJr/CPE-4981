with gpio_api;
package body program is
    procedure loop_delay is
    begin
        for i in 1..4_000 loop
            Counter := Counter + 1;
        end loop;
    end loop_delay;

    -- Local variables
    flip: Boolean := True;
    test_pin: gpio_api.GPIO_PIN := 5;
    test_port: gpio_api.GPIO_PORT := gpio_api.GPIOB;

    procedure Run is
    begin
        gpio_api.enable_gpio_port(test_port);
        gpio_api.set_gpio_as_output(test_port, test_pin);
        loop
            case flip is
                when True =>
                    gpio_api.reset_gpio_pin(test_port, test_pin);
                    flip := False;
                when False =>
                    gpio_api.set_gpio_pin(test_port, test_pin);
                    flip := True;
            end case;
            loop_delay;
        end loop;
    end Run;

    procedure Unwind_Stub is
    begin
        loop
            null;
        end loop;
    end Unwind_Stub;

end program;
