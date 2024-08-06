			section	.text
			global	_ft_strcpy

_ft_strcpy:									; dst starting address = rdi, src starting address = rsi
			and		rcx, 0					; count = 0
			and		rdx, 0					; tmp = 0
			cmp		rsi, 0					; if(src == 0)
			jz		vuelta
			jmp		copiando
incrementar:
			inc		rcx
copiando:
			mov		dl, BYTE [rsi + rcx]
			mov		BYTE [rdi + rcx], dl
			cmp		dl, 0
			jnz		incrementar
vuelta:
			mov		rax, rdi				; return the address of the dsc
			ret
