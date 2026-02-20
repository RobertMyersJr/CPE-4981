# Use -S to see assembly, but stops build
arm-gnat -c -S -O0 -gnatp -mcpu=cortex-m4 -mthumb *.adb 
arm-gnat -c -O0 -gnatp -mcpu=cortex-m4 -mthumb *.adb 
arm-ld -T flash.ld -o program.elf *.o
arm-objcopy -O binary program.elf program.bin
