

### Pasos para "Hello, World!" en ARM64

1. **Uso de llamadas al sistema (syscalls)**:  
   Linux utiliza llamadas al sistema para realizar operaciones básicas, como escribir en la salida estándar. En este caso, usaremos la llamada al sistema `write`.  
   Los registros para configurar `write` son:
   - `x8`: Número de la llamada al sistema (`1` para `write`).
   - `x0`: Descriptor de archivo (`1` para la salida estándar, stdout).
   - `x1`: Dirección de la cadena (el mensaje que queremos mostrar).
   - `x2`: Longitud de la cadena.

2. **Instrucciones ARM64 básicas**:
   - `mov`: Mueve un valor a un registro.
   - `ldr`: Carga un valor desde la memoria a un registro.
   - `svc 0`: Ejecuta la llamada al sistema.

3. **Flujo del programa**:
   - Colocar el mensaje en la memoria.
   - Configurar los registros para la llamada al sistema `write`.
   - Ejecutar la llamada al sistema con `svc 0`.
   - Salir del programa con la llamada al sistema `exit`.

---

### Código en ARM64

```asm
.section .data
message:
    .asciz "Hello, World!\n"   // Cadena terminada en nulo

.section .text
.global _start                // Punto de entrada del programa
_start:
    // Llamada al sistema write (sys_write)
    mov x8, 1                 // Número de syscall para write
    mov x0, 1                 // Descriptor de archivo (stdout)
    ldr x1, =message          // Dirección del mensaje
    mov x2, 14                // Longitud del mensaje
    svc 0                     // Ejecutar la syscall

    // Llamada al sistema exit (sys_exit)
    mov x8, 60                // Número de syscall para exit
    mov x0, 0                 // Código de salida (0 = éxito)
    svc 0                     // Ejecutar la syscall
```

---

### Cómo funciona
1. La sección **`.data`** guarda el mensaje `"Hello, World!\n"`.
2. La sección **`.text`** contiene la lógica del programa:
   - Configuramos los registros para la llamada al sistema `write`.
   - Cargamos la dirección del mensaje con `ldr x1`.
   - Terminamos el programa limpiamente usando la llamada al sistema `exit`.

3. La instrucción `svc 0` cambia al modo kernel para que el sistema operativo ejecute la operación solicitada.

---

### Compilación y Ejecución
1. Guarda el programa como `hello_world.s`.
2. Compila y enlaza:
   ```bash
   as -o hello_world.o hello_world.s
   ld -o hello_world hello_world.o
   ```
3. Ejecuta el programa:
   ```bash
   ./hello_world
   ```

Verás la salida:
```
Hello, World!
```
lo! 😊
