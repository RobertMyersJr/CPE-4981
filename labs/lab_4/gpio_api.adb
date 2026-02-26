package body GPIO_API is

    RCC_AHB1ENR : Word;
    pragma Volatile (RCC_AHB1ENR);
    pragma Import (C, RCC_AHB1ENR, "RCC_AHB1ENR");

    GPIOA_IDR : Word;
    GPIOB_IDR : Word;
    GPIOC_IDR : Word;
    pragma Volatile (GPIOA_IDR);
    pragma Volatile (GPIOB_IDR);
    pragma Volatile (GPIOC_IDR);
    pragma Import (C, GPIOA_IDR, "GPIOA_IDR");
    pragma Import (C, GPIOB_IDR, "GPIOB_IDR");
    pragma Import (C, GPIOC_IDR, "GPIOC_IDR");

    GPIOA_ODR : Word;
    GPIOB_ODR : Word;
    GPIOC_ODR : Word;
    pragma Volatile (GPIOA_ODR);
    pragma Volatile (GPIOB_ODR);
    pragma Volatile (GPIOC_ODR);
    pragma Import (C, GPIOA_ODR, "GPIOA_ODR");
    pragma Import (C, GPIOB_ODR, "GPIOB_ODR");
    pragma Import (C, GPIOC_ODR, "GPIOC_ODR");

    GPIOA_MODER : Word;
    GPIOB_MODER : Word;
    GPIOC_MODER : Word;
    pragma Volatile (GPIOA_MODER);
    pragma Volatile (GPIOB_MODER);
    pragma Volatile (GPIOC_MODER);
    pragma Import (C, GPIOA_MODER, "GPIOA_MODER");
    pragma Import (C, GPIOB_MODER, "GPIOB_MODER");
    pragma Import (C, GPIOC_MODER, "GPIOC_MODER");

    GPIOA_BSRR : Word;
    GPIOB_BSRR : Word;
    GPIOC_BSRR : Word;
    pragma Volatile (GPIOA_BSRR);
    pragma Volatile (GPIOB_BSRR);
    pragma Volatile (GPIOC_BSRR);
    pragma Import (C, GPIOA_BSRR, "GPIOA_BSRR");
    pragma Import (C, GPIOB_BSRR, "GPIOB_BSRR");
    pragma Import (C, GPIOC_BSRR, "GPIOC_BSRR");

    MODER_BIT_CLEAR: constant Word := 2#11#;
    MODER_OUTPUT: constant Word := 2#01#;
    MODER_INPUT: constant Word := 2#00#;

    procedure enable_gpio_port(port : GPIO_PORT) is
    begin
        case port is
            when GPIOA =>
                RCC_AHB1ENR := RCC_AHB1ENR or 2#0000_0000_0000_0000_0000_0000_0000_0001#;
            when GPIOB =>
                RCC_AHB1ENR := RCC_AHB1ENR or 2#0000_0000_0000_0000_0000_0000_0000_0010#;
            when GPIOC =>
                RCC_AHB1ENR := RCC_AHB1ENR or 2#0000_0000_0000_0000_0000_0000_0000_0100#;
        end case;
    end enable_gpio_port;

    -- Sets a given GPIO to output mode
    procedure set_gpio_as_output(port : GPIO_PORT; pin : GPIO_PIN) is
        bit_mask: constant Word := MODER_BIT_CLEAR * 2 **Natural(pin*2);
        bit_mask_negated: constant Word := not bit_mask;
        output_bit_mask: constant Word := MODER_OUTPUT * 2 **Natural(pin*2);
    begin
        case port is
            when GPIOA =>
                GPIOA_MODER := (GPIOA_MODER and bit_mask_negated) or output_bit_mask;
            when GPIOB =>
                GPIOB_MODER := (GPIOB_MODER and bit_mask_negated) or output_bit_mask;
            when GPIOC =>
                GPIOC_MODER := (GPIOC_MODER and bit_mask_negated) or output_bit_mask;
        end case;
    end set_gpio_as_output;

    procedure set_gpio_as_input(port : GPIO_PORT; pin : GPIO_PIN) is
        bit_mask: constant Word := MODER_BIT_CLEAR * 2 **Natural(pin*2);
        bit_mask_negated: constant Word := not bit_mask;
    begin
        case port is
            when GPIOA =>
                GPIOA_MODER := GPIOA_MODER and bit_mask_negated;
            when GPIOB =>
                GPIOB_MODER := GPIOB_MODER and bit_mask_negated;
            when GPIOC =>
                GPIOC_MODER := GPIOC_MODER and bit_mask_negated;
        end case;
    end set_gpio_as_input;

    procedure set_gpio_pin(port : GPIO_PORT; pin : GPIO_PIN) is
        bit_mask: constant Word := 2#1# * 2 ** Natural(pin);
    begin
        case port is
            when GPIOA =>
                GPIOA_BSRR := bit_mask;
            when GPIOB =>
                GPIOB_BSRR := bit_mask;
            when GPIOC =>
                GPIOC_BSRR := bit_mask;
        end case;
    end set_gpio_pin;

    procedure reset_gpio_pin(port : GPIO_PORT; pin : GPIO_PIN) is
        -- We need to add sixteen to reach the reset bits of the BSRR
        bit_mask: constant Word := 2#1# * 2 ** Natural(pin+16);
    begin
        case port is
            when GPIOA =>
                GPIOA_BSRR := bit_mask;
            when GPIOB =>
                GPIOB_BSRR := bit_mask;
            when GPIOC =>
                GPIOC_BSRR := bit_mask;
        end case;
    end reset_gpio_pin;

    function read_port(port : GPIO_PORT) return Word is
    begin
        case port is
            when GPIOA =>
                return GPIOA_IDR;
            when GPIOB =>
                return GPIOB_IDR;
            when GPIOC =>
                return GPIOC_IDR;
        end case;
    end read_port;

    procedure set_nibble(port : GPIO_PORT; nibble: NIBBLE_VALUE; output: OUTPUT_NIBBLE) is
        bit_mask: Word := 2#1111#;
        write_value: OUTPUT_NIBBLE := output;
    begin
        bit_mask := not (bit_mask * 2 ** (Natural(nibble)*4));
        write_value := write_value * 2 ** (Natural(nibble)*4);

        case port is
            when GPIOA =>
                GPIOA_ODR := (bit_mask and GPIOA_ODR) or Word(write_value);
            when GPIOB =>
                GPIOB_ODR := (bit_mask and GPIOB_ODR) or Word(write_value);
            when GPIOC =>
                GPIOC_ODR := (bit_mask and GPIOC_ODR) or Word(write_value);
        end case;


        return;
    end set_nibble;
end GPIO_API;
