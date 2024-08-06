			section	.text
			global	_ft_write

;for write call (file descriptor = rdi, Buffer Pointer = rsi,
				;Number of Bytes = rdx, System Call Number = rax)

;for the return incase of any error or simply the number of characters
;what was successfully written it got stored in "rax" register

_ft_write:
			mov		rax, 0x2000004
			syscall
			ret
