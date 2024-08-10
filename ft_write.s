section .text
global ft_write
extern __errno_location

ft_write:
    ; Preserve registers
    push rbp
    mov rbp, rsp

    ; Syscall number for write
    mov rax, 1  ; write syscall number for Linux

    ; Parameters are already in the correct registers:
    ; rdi = file descriptor
    ; rsi = buffer pointer
    ; rdx = number of bytes

    syscall

    ; Check for error
    test rax, rax
    js .error
    
    ; No error, return the number of bytes written
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
