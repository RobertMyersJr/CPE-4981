# Use -S to see assembly, but stops build
source ./alias.sh
arm-gnat -c -S -O0 -gnatp -mcpu=cortex-m4 -mthumb *.adb 
arm-gnat -c -g -O0 -gnatp -mcpu=cortex-m4 -mthumb *.adb 
arm-ld -T flash.ld -o program.elf *.o
arm-objcopy -O binary program.elf program.bin
