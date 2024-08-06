			section	.text
			global	_ft_strcmp

_ft_strcmp:									; s1 = rdi, s2 = rsi
			and		rcx, 0					; i = 0
			and		rdx, 0					; cmp = 0
			cmp		rdi, 0					; !s1
			jz		nada_chequeo
			cmp		rsi, 0					; !s2
			jz		nada_chequeo
			jmp		chequando
nada_chequeo:
			cmp		rdi, rsi
			jz		egaules					; s1 == s2 (NULL)
			jg		mas				; s1 == NULL
			jmp		menos				; s2 == NULL
comparar:
			mov		dl, BYTE [rsi + rcx]	; tmp = s2[i]
			cmp		BYTE [rdi + rcx], dl	; s1[i] == tmp
			jne		elultimo
incrementar:
			inc		rcx
chequando:
			cmp		BYTE [rdi + rcx], 0		; !s1[i]
			je		elultimo
			cmp		BYTE [rsi + rcx], 0		; !s2[i]
			je		elultimo
			jmp		comparar
elultimo:
			mov		dl, BYTE [rdi + rcx]	; cmp = s1[i]
			sub		dl, BYTE [rsi + rcx]	; cmp -= s2[i]
			cmp		dl, 0					; cmp == 0
			jz		egaules
			jl		menos
mas:
			mov		rax, 1
			ret
menos:
			mov		rax, -1					; ret < 0
			ret
egaules:
			mov		rax, 0					; ret > 0
			ret