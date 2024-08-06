			section	.text
			global	_ft_strdup
			extern	_malloc

_ft_strdup:									; rdi = src starting address
			cmp		rdi, 0
			jz		error					; conditional jump if(src == 0)
inicio:
			and		rcx, 0				; count = 0
			jmp		tamano
incrementar:
			inc		rcx						; count++
tamano:
			cmp		BYTE [rdi + rcx], 0		; if(str[count] != 0)
			jne		incrementar
			
comienzo_malloc:
			inc		rcx						; length++
			push	rdi						; save src
			mov		rdi, rcx
			call	_malloc					; rax = _malloc(length)
			pop		rdi						; restore src
			cmp		rax, 0
			jz		error					; malloc vuelta NULL
comienzo_a_copiar:
			and		rcx, 0				; i = 0
			and		rdx, 0				; tmp = 0
			jmp		copiando
incrementando:
			inc		rcx
copiando:
			mov		dl, BYTE [rdi + rcx]
			mov		BYTE [rax + rcx], dl
			cmp		dl, 0
			jnz		incrementando
			jmp		vuelta
error:
			and		rax, 0
vuelta:
			ret