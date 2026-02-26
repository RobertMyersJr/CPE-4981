/* 
 * This declares the endiness(elf file 32 bit little endian) 
 * and the output it.
 **/

OUTPUT_FORMAT("elf32-littlearm")

/* 
 * The architecture is arm
 **/
OUTPUT_ARCH("arm")

SECTIONS
{
    GPIOA_BASE  = 0x40020000;
    GPIOB_BASE  = 0x40020400;
    GPIOC_BASE  = 0x40020800;

    MODER_OFFSET = 0x0;
    IDR_OFFSET = 0x10;
    ODR_OFFSET = 0x14;
    BSRR_OFFSET = 0x18;

    RCC_AHB1ENR = 0x40023830;
    
    /* Define mode registers */
    GPIOA_MODER = GPIOA_BASE + MODER_OFFSET;
    GPIOB_MODER = GPIOB_BASE + MODER_OFFSET;
    GPIOC_MODER = GPIOC_BASE + MODER_OFFSET;

    /* Define bsrr registers */
    GPIOA_BSRR = GPIOA_BASE + BSRR_OFFSET;
    GPIOB_BSRR = GPIOB_BASE + BSRR_OFFSET;
    GPIOC_BSRR = GPIOC_BASE + BSRR_OFFSET;

    /* Define IDR registers */
    GPIOA_IDR = GPIOA_BASE + IDR_OFFSET;
    GPIOB_IDR = GPIOB_BASE + IDR_OFFSET;
    GPIOC_IDR = GPIOC_BASE + IDR_OFFSET;

    /* Define ODR registers */
    GPIOA_ODR = GPIOA_BASE + ODR_OFFSET;
    GPIOB_ODR = GPIOB_BASE + ODR_OFFSET;
    GPIOC_ODR = GPIOC_BASE + ODR_OFFSET;

    .vectors 0x08000000 :
    {
        LONG(0x20001000)
        LONG(run + 1)
        FILL(0)
    }

    .text 0x08000100 :
    {
        *(.text)
    }

}
