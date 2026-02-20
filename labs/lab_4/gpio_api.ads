package GPIO_API is
    type Word is mod 2**32;

    type GPIO_PORT is (GPIOA, GPIOB, GPIOC);
    type GPIO_PIN is range 0..15;
    type NIBBLE_VALUE is range 0..4;
    type OUTPUT_NIBBLE is range 0..15;

    procedure enable_gpio_port(port : GPIO_PORT);
    procedure set_gpio_as_output(port : GPIO_PORT; pin : GPIO_PIN);
    procedure set_gpio_as_input(port : GPIO_PORT; pin : GPIO_PIN);

    procedure set_gpio_pin(port : GPIO_PORT; pin : GPIO_PIN);
    procedure reset_gpio_pin(port : GPIO_PORT; pin : GPIO_PIN);

    function read_port(port : GPIO_PORT) return Word;
    procedure set_nibble(port : GPIO_PORT; nibble: NIBBLE_VALUE; output: OUTPUT_NIBBLE);
end GPIO_API;
