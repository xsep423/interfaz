![image](https://github.com/user-attachments/assets/0cfad902-9f1f-4191-b826-fb941cbb1d9e)


Una explicación paso a paso para crear un programa en ensamblador ARM64 que captura el nombre de un estudiante, lo muestra en pantalla y calcula la cantidad de caracteres que contiene. 

---
```mermaid
flowchart TD
    A[Inicio] --> B[Mostrar mensaje "Ingrese su nombre"]
    B --> C[Leer nombre del usuario]
    C --> D[Inicializar contador a 0]
    D --> E{¿Caracter actual es \\n o \\0?}
    E -- Sí --> F[Finalizar conteo]
    E -- No --> G[Incrementar contador]
    G --> H[Avanzar al siguiente caracter]
    H --> E
    F --> I[Mostrar mensaje con nombre y cantidad de caracteres]
    I --> J[Finalizar programa]
```


---
### Explicación:

1. **Definir secciones de datos**:
   - Crear un espacio para almacenar la entrada del usuario (nombre del estudiante).
   - Definir mensajes para mostrar al usuario.

2. **Capturar entrada**:
   - Usar una llamada al sistema (`sys_read`) para leer el nombre desde el teclado y almacenarlo en un buffer.

3. **Contar caracteres**:
   - Iterar sobre el buffer carácter por carácter hasta encontrar el carácter nulo (`\0`) o el salto de línea (`\n`).

4. **Mostrar el nombre y la longitud**:
   - Usar llamadas al sistema (`sys_write`) para mostrar el nombre del estudiante y la cantidad de caracteres calculados.

5. **Finalizar el programa**:
   - Usar la llamada al sistema para salir (`sys_exit`).

---

### Código ARM64:

```assembly
Aquí tienes el código con el encabezado y un comentario que muestra cómo sería este programa en C#:

```asm
/***********************************************************************
 * Autor: Rene Solis
 * Programa: Contador de caracteres de un nombre ingresado
 * Descripción: Este programa solicita al usuario que ingrese su nombre,
 *              cuenta el número de caracteres y muestra el resultado.
 * Fecha: 09 de Febrero de 2025
 * Plataforma: ARM64 Assembly en Raspberry Pi OS
 *
 * Versión en C#:
 * using System;
 * class Program
 * {
 *     static void Main(string[] args)
 *     {
 *         Console.Write("Ingrese su nombre: ");
 *         string nombre = Console.ReadLine();
 *         int longitud = nombre.Length;
 *         Console.WriteLine($"Su nombre es: {nombre} y tiene {longitud} caracteres");
 *     }
 * }
 ***********************************************************************/

.section .data
    prompt:     .asciz "Ingrese su nombre: \n"
    result:     .asciz "Su nombre es: %s y tiene %d caracteres\n"
    buffer:     .space 100   // Espacio para el nombre del estudiante (máximo 100 caracteres)

.section .text
.global _start

_start:
    // Mostrar el mensaje "Ingrese su nombre"
    mov x0, 1                  // File descriptor para stdout
    ldr x1, =prompt            // Dirección del mensaje
    mov x2, 20                 // Tamaño del mensaje
    mov x8, 64                 // syscall write
    svc #0

    // Leer el nombre del usuario
    mov x0, 0                  // File descriptor para stdin
    ldr x1, =buffer            // Dirección del buffer
    mov x2, 100                // Tamaño máximo del buffer
    mov x8, 63                 // syscall read
    svc #0

    // Contar la cantidad de caracteres
    mov x0, 0                  // Inicializar contador
    ldr x1, =buffer            // Dirección del buffer
count_loop:
    ldrb w2, [x1], #1          // Leer un byte y avanzar el puntero
    cmp w2, #10                // Comparar con salto de línea (\n)
    b.eq end_count             // Si es \n, finalizar
    cmp w2, #0                 // Comparar con carácter nulo (\0)
    b.eq end_count             // Si es \0, finalizar
    add x0, x0, #1             // Incrementar el contador
    b count_loop

end_count:
    // Mostrar el resultado
    mov x2, x0                 // Pasar la longitud a x2
    ldr x1, =buffer            // Dirección del buffer
    ldr x0, =result            // Dirección del mensaje del resultado
    mov x8, 64                 // syscall write
    svc #0

    // Salir del programa
    mov x8, 93                 // syscall exit
    mov x0, 0                  // Código de salida
    svc #0
```


---

### Puntos importantes:
1. **Buffer**: El espacio asignado en `.data` debe ser suficiente para capturar el nombre.
2. **Ciclo de conteo**: Lee carácter por carácter hasta encontrar un salto de línea (`\n`) o un carácter nulo (`\0`).
3. **Llamadas al sistema**: `sys_write` y `sys_read` se utilizan para interactuar con la entrada y salida estándar.
4. **Formato del mensaje**: Usa `result` para dar formato al nombre y la longitud calculada.

## Elabora el asciinema de estas practicas cada uno o todo en una sola corrida, no olvide de poner su nombre embebido y aceptar el enlace para que no se borre en 7 dias.
