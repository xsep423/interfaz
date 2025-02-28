
# Uso de la pila para almacenar y recuperar valores con operaciones PUSH y POP.
**Opcion #1**
```.asm 

pila: 
    clra
;ALMACENAR VALORES
    mov Ra,10
    push Ra;
    mov Ra,50
    push Ra;
    mov Ra,30
    push Ra;
; RECUPERAR VALORES
    Pop Rd 
      nop
      nop
      nop ;
    Pop Rd 
      nop
      nop
      nop;
    Pop Rd 
      nop
      nop
      nop;
jmp pila;

```
**Opcion #2**
```.asm
pila: 
    clra
;ALMACENAR VALORES
    push 10
    push 50
    push 30
; RECUPERAR VALORES
    Pop Rd 
      nop
      nop
      nop
      nop
      nop ;
    Pop Rd 
      nop
      nop
      nop
      nop
      nop;
Pop Rd 
      nop
      nop
      nop
      nop
      nop;
jmp pila;
```
## Comandos a Utilizar 

### Push  
Empuja un valor a la pila.
```.asm
Push 30 ; Valor a empujar en la pila es 30 
```
Empujar un valor de un registro a la pila.
```.asm
Mov Ra, 30 
Push Ra ; Registro a emujar dentro de la Pila 
```
### Pop
