.globl _start
_start:
    ldr r0,=0x101f1000
    mov r1,#0

mov:
    mov r5, #5
    mov r7, #8

    mov r7, r5

barrel_shifter:
    mov r5, #5
    mov r7, #8

    mov r7, r5, LSL #2 @ r7 = r5 * 4 = (r5  << 2)

movs:
    mov r0, #0x00000000
    mov r1, #0x00000004

    movs r0, r1, LSL #1

sub:
    mov r0, #0x00000000
    mov r1, #0x00000002
    mov r2, #0x00000001

    sub r0, r1, r2

rsb:
    mov r0, #0x00000000
    mov r1, #0x00000077

    rsb r0, r1, #0 @ Rd = 0x0 - r1

subs:
    mov r1, #0x00000001

    subs r1, r1, #1

add_lsl:
    mov r0, #0x00000000
    mov r1, #0x00000005

    add r0, r1, r1, LSL #1

orr:
    mov r0, #0x00000000
    ldr r1, = 0x02040608
    ldr r2, = 0x10305070

    orr r0, r1, r2

bic:
    mov r0, #0b0000
    mov r1, #0b1111
    mov r2, #0b0101

    bic r0, r1, r2

cmp:
    mov r0, #4
    mov r9, #4

    cmp r0, r9

mul:
    mov r0, #0x00000000
    mov r1, #0x00000002
    mov r2, #0x00000002

    mul r0, r1, r2

umull:
    mov r0, #0x00000000
    mov r1, #0x00000000
    mov r2, #0x00000002
    mov r3, #0x00000002

    umull r0, r1, r2, r3 @ [r1, r0] = r2 * r3

