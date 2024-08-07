			section	.text
			global	ft_write
			extern 	error

;for write call (file descriptor = rdi, Buffer Pointer = rsi,
				;Number of Bytes = rdx, System Call Number = rax)

;for the return incase of any error or simply the number of characters
;what was successfully written it got stored in "rax" register

ft_write:
			mov		rax, 0x2000004
			syscall
			jc falta
			ret
falta:
			push rax
			call error
			pop qword[rax]
			mov rax, -1
			ret
