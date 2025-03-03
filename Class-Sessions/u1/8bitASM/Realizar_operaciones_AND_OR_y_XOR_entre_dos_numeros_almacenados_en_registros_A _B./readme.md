# 22211575-Cesar Gonzalez Salazar
# 🔢 Operaciones AND, OR y XOR en Ensamblador  

Este código en ensamblador realiza operaciones **AND**, **OR** y **XOR** entre dos registros (`Ra` y `Rb`).  
Cada operación se ejecuta en un bucle infinito, limpiando el acumulador (`A`) después de cada cálculo.  

## 📌 Código en Ensamblador  

```assembly
.begin:	
    clra            ; Limpia el acumulador A
    data Ra , 1     ; Asigna el valor 1 al registro Ra
    data Rb , 1     ; Asigna el valor 1 al registro Rb

.loop:
    and Ra , Rb     ; Operación AND entre Ra y Rb
    clra            ; Limpia el acumulador

    data Ra , 1     ; Reinicia Ra con 1
    data Rb , 0     ; Establece Rb en 0
    or Ra , Rb      ; Operación OR entre Ra y Rb
    clra            ; Limpia el acumulador

    data Ra , 1     ; Reinicia Ra con 1
    data Rb , 1     ; Establece Rb en 1
    xor Ra , Rb     ; Operación XOR entre Ra y Rb
    clra            ; Limpia el acumulador

    jmp .loop       ; Repite el ciclo indefinidamente
