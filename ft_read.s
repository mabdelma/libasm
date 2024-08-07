			section	.text
			global	ft_read
			extern 	error

ft_read:								; fd = rdi, buffer = rsi, bytes = rdx
			mov		rax, 0x2000003
			syscall
			jc falta
			ret
falta:
    		push rax
			call	error
			pop qword[rax]
			mov rax, -1
			ret
