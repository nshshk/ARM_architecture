#!/bin/sh

qemu-system-arm -M versatilepb -m 128M -nographic -kernel assembly.bin \
    -gdb tcp::1234 -S

