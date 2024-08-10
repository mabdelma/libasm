global ft_strdup
extern malloc
extern ft_strlen
extern ft_strcpy

section .text

ft_strdup:
    ; Preserve base pointer
    push rbp
    mov rbp, rsp

    ; Preserve non-volatile registers
    push rbx
    push r12

    ; Save the input string pointer
    mov r12, rdi

    ; Call ft_strlen
    call ft_strlen WRT ..plt

    ; Increment length for null terminator
    inc rax

    ; Prepare to call malloc
    mov rdi, rax
    call malloc WRT ..plt

    ; Check if malloc returned NULL
    test rax, rax
    jz .malloc_fail

    ; Prepare for ft_strcpy
    mov rdi, rax  ; destination (newly allocated memory)
    mov rsi, r12  ; source (original string)

    ; Save return value (allocated memory pointer)
    mov rbx, rax

    ; Call ft_strcpy
    call ft_strcpy WRT ..plt

    ; Restore return value to rax
    mov rax, rbx

    ; Epilogue
    pop r12
    pop rbx
    pop rbp
    ret

.malloc_fail:
    ; malloc failed, return NULL
    xor rax, rax
    pop r12
    pop rbx
    pop rbp
    ret