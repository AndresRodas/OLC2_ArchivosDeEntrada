.global _start

_start:
    //  initilization
    mov x0, 0
    mov x1, 9
    mov x2, 3

    // for x1>=0
for: 
    cmp x1, 0
    ble end
    add x0, x0, 1
    sub x1, x1, x2
    b for
end:
    mov x8, 93
    svc 0
