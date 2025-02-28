.mover:		; El desplazo a la izquieda de los bits en el Registro A
	clra  	; Limpia todos los registros
	mva #6  ; Asigna el valor de 6 al registro A 00000110
	mvc ra  ; Mueve el valor del Registro A al Registro C para luego
	mvb ra  ; Mueve el valor del Registro A al Registro B, porque 
			; lsr solo funciona en el Registro B
	lsr		; Desplaza los bits del Registro B a la izquierda
			; es decir, 00001100, oséase 12
	mvd rb	; Mueve el valor del Registro B al Registro D
			; para verlo en el LED del emulador

.deplazarDerecha: ; El desplazo a la derecha de los bits en el Registro A
	mvc ra	; Asigna el valor del Registro A, 6, al Registro C
	mvb ra	; Asigna el valor del Registro A, 6, al Registro B
.loopDivision: ; Divide en 2 el valor de B, es decir a 3, ya que esto 
			   ; funciona como un desplazmiento de un bit a la derecha
	dec rb	; Decrementa el valor de B
	dec rc	; Decrementa el valor de C
	dec rc	; Decrementa el valor de C
	jnz .loopDivision ; Regresa al ciclo de división hasta que se haya
					  ; dividido en 2 el número original
	mvd rb	; Mueve el valor del Registro B al Registro D
			; para verlo en el LED del emulador
	nop		; para gastar tiempo para poder ver el resultado
	nop
	nop
	nop
	nop

	jmp .mover	; regresa al inicio
