			section	.text
			global	ft_strlen


ft_strlen:
			mov		rax, 0			; count = 0
			jmp		comparar
incrementar:
			inc		rax					; count++
comparar:
			cmp		BYTE [rdi + rax], 0	; if(str[count] != 0)
			jne		incrementar
hecho:
			ret							; count i
