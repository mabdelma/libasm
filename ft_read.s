section .text
global ft_read
extern __errno_location

ft_read:
    ; Preserve base pointer
    push rbp
    mov rbp, rsp

    ; syscall number for read
    mov rax, 0  ; 0 is the syscall number for read on Linux

    ; Parameters are already in the correct registers:
    ; rdi = file descriptor
    ; rsi = buffer
    ; rdx = number of bytes to read

    syscall

    ; Check for error
    test rax, rax
    js .error
    
    ; No error, return the number of bytes read
    pop rbp
    ret

.error:
    ; Negate rax to get the positive error code
    neg rax
    
    ; Get errno location
    call __errno_location WRT ..plt
    ; Set return value to -1
    mov rax, -1

    ; Restore stack and return
    pop rbp
    ret