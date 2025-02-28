# 22211575-Cesar Gonzalez Salazar
Realizar operaciones AND, OR y XOR entre dos números almacenados en registros A y B.

```assambly

.begin:	
	clra
	data Ra , 1 
	data Rb , 1
	
.loop:
	and Ra , Rb
	clra
	data Ra , 1 
	data Rb , 0
	or Ra ,Rb
	clra
	data Ra , 1 
	data Rb , 1
	xor Ra,Rb
	clra
	jmp .loop


```
