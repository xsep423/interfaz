# Generador de números pseudoaleatorios

## Código sin comentarios
```asm
section .data
    seed dd 12345678
    a dd 1664525
    c dd 1013904223
    m dd 4294967296
    newline db 10, 0

section .bss
    num resb 10

section .text
    global _start
    extern printf

_start:
    mov eax, [seed]
    imul eax, [a]
    add eax, [c]
    mov [seed], eax
    call print_number
    mov eax, 1
    xor ebx, ebx
    int 0x80

print_number:
    mov ecx, num + 9
    mov byte [ecx], 0
    dec ecx

convert_loop:
    mov edx, 0
    mov ebx, 10
    div ebx
    add dl, '0'
    mov [ecx], dl
    dec ecx
    test eax, eax
    jnz convert_loop

    inc ecx
    mov eax, 4
    mov ebx, 1
    mov edx, num + 9
    sub edx, ecx
    int 0x80

    mov eax, 4
    mov ebx, 1
    mov ecx, newline
    mov edx, 1
    int 0x80

    ret

section .data       ; Sección de datos con valores iniciales
    seed dd 12345678      ; Semilla inicial
    a dd 1664525         ; Constante multiplicativa
    c dd 1013904223      ; Constante aditiva
    m dd 4294967296      ; Módulo para el rango
    newline db 10, 0     ; Salto de línea

section .bss        ; Sección de variables no inicializadas
    num resb 10     ; Espacio reservado para la conversión numérica

section .text       ; Sección de código
    global _start   ; Punto de inicio
    extern printf   ; Llamada externa a printf

_start:
    mov eax, [seed]    ; Cargar la semilla
    imul eax, [a]      ; Multiplicar por la constante a
    add eax, [c]       ; Sumar la constante c
    mov [seed], eax    ; Guardar el nuevo valor de la semilla
    call print_number  ; Llamar a la función para imprimir el número
    mov eax, 1         ; Llamada para salir del programa
    xor ebx, ebx       
    int 0x80           ; Interrupción para salir

print_number:
    mov ecx, num + 9   ; Apuntar al final del buffer
    mov byte [ecx], 0  ; Añadir terminador nulo
    dec ecx            ; Moverse hacia atrás

convert_loop:
    mov edx, 0         ; Limpiar edx para la división
    mov ebx, 10        ; Base decimal
    div ebx            ; Dividir eax entre 10
    add dl, '0'        ; Convertir el residuo en carácter
    mov [ecx], dl      ; Guardar el carácter en el buffer
    dec ecx            ; Mover el puntero
    test eax, eax      ; Verificar si eax es 0
    jnz convert_loop   ; Si no es 0, repetir

    inc ecx            ; Moverse una posición hacia adelante
    mov eax, 4         ; Llamada a la función write
    mov ebx, 1         ; Descriptor de archivo (stdout)
    mov edx, num + 9   ; Longitud del número
    sub edx, ecx       ; Calcular la cantidad de caracteres
    int 0x80           ; Interrupción para escribir

    mov eax, 4         ; Llamada para imprimir nueva línea
    mov ebx, 1         
    mov ecx, newline   
    mov edx, 1         
    int 0x80           ; Interrupción para escribir

    ret                ; Retornar a la ejecución


# Generador de números pseudoaleatorios con operaciones aritméticas

## Descripción
Este programa implementa un **Generador de números pseudoaleatorios** basado en el método congruencial lineal, utilizando operaciones aritméticas simples. Este algoritmo genera una secuencia de números que parecen aleatorios, pero que en realidad son determinísticos.

---

## ¿Cómo funciona?
El método congruencial lineal utiliza la siguiente fórmula matemática para generar números pseudoaleatorios:

\[
X(n+1) = (a * X(n) + c) \% m
\]

Donde:
- **X(n)**: Valor actual (semilla).
- **a**: Constante multiplicativa.
- **c**: Constante aditiva.
- **m**: Módulo (limita el rango del número generado).

Cada número generado depende directamente del número anterior, lo que garantiza que la secuencia sea repetible si se utiliza la misma semilla.

---

## Explicación del código

1. **Inicialización de variables:**
   - La semilla inicial es **12345678**.
   - Las constantes **a**, **c** y **m** se utilizan para aplicar la fórmula congruencial.
   
2. **Generación del número:**
   - Se multiplica la semilla por la constante **a**.
   - Luego se suma la constante **c**.
   - El resultado se almacena nuevamente como la nueva semilla.

3. **Conversión a cadena:**
   - El número se convierte en una secuencia de dígitos ASCII para su impresión.
   - Se almacena en el búfer **num**.

4. **Impresión:**
   - Se imprime el número seguido de un salto de línea.

---

## Tabla de Variables

| Nombre | Descripción           | Valor           |
|--------|---------------------|---------------|
| `seed` | Semilla inicial     | 12345678      |
| `a`    | Constante multiplicativa | 1664525      |
| `c`    | Constante aditiva   | 1013904223    |
| `m`    | Módulo             | 4294967296    |

---

## ¿Por qué es pseudoaleatorio?
El algoritmo es **pseudoaleatorio** porque, aunque parece generar números al azar, siempre devuelve la misma secuencia si se usa la misma semilla inicial. Esto lo hace útil para simulaciones o pruebas donde se necesite reproducir los mismos resultados.

---

## Conclusión
Este programa es un ejemplo simple de cómo se pueden generar números pseudoaleatorios con operaciones aritméticas. Aunque no es adecuado para criptografía o aplicaciones de alta seguridad, sí sirve para simulaciones o pruebas básicas.


