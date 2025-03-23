; Crisostomo Enciso Francisco Javier 22211546
; Programa: Generar tabla de multiplicar de un número guardado en memoria
; Tabla de multiplicar de un número almacenado en memoria
; Se asume que el número a multiplicar está guardado en la dirección NUM_ADDR

NUM_ADDR = 0x10

.begin:
    lod Rb, NUM_ADDR    ; Cargar el multiplicando desde memoria en Rb
    data Ra, 1           ; Inicializar el multiplicador en 1
    push Ra              ; Empujar el multiplicador para usarlo en el bucle

.loop:
    data Rd, 0           ; Inicializar el acumulador (producto) en 0
    pop Rc               ; Sacar el contador (valor del multiplicador) de la pila

.add_loop:
    tst Rc               ; Probar el contador; se activa Z si Rc es 0
    jnz .add_loop_body   ; Si Rc no es 0, continuar la suma
    jmp .display         ; Si Rc es 0, ya se completó la suma

.add_loop_body:
    add Rd             ; Sumar el multiplicando (contenido en Rb) al acumulador Rd
    dec Rc             ; Decrementar el contador
    jmp .add_loop      ; Repetir hasta que Rc llegue a 0

.display:
    nop                ; Resultado de la multiplicación se encuentra en Rd (se asume que Rd está conectado al display)
    
.next:
    inc Ra             ; Incrementar el multiplicador (Ra = Ra + 1)
    push Ra            ; Empujar el nuevo multiplicador para la siguiente iteración
    data Rc, 11        ; Cargar 11 en Rc (valor de terminación: 11 significa que ya se han hecho 10 productos)
    mov Rb, Ra         ; Copiar el multiplicador actual a Rb para la comparación
    cmp Rc             ; Comparar 11 con el multiplicador (Rb)
    jnz .loop          ; Si Ra (multiplicador) es distinto de 11, repetir el bucle

.end:
    hlt                ; Finalizar la ejecución

----

Aquí tienes una revisión detallada del código proporcionado, considerando el objetivo del programa (generar la tabla de multiplicar de un número almacenado en memoria):

### 📝 **Objetivo del programa:**
Generar y mostrar la tabla de multiplicar (del 1 al 10) para un número que está almacenado previamente en memoria en la dirección `NUM_ADDR`.

---

## 🚩 Problemas en el programa actual:

El programa que compartiste presenta algunos problemas de lógica y uso de registros que harán que no genere correctamente la tabla de multiplicar. Veamos punto por punto qué sucede y cómo solucionarlo:

---

## 📌 Análisis línea por línea:

### ✅ **Inicio correcto**:

```assembly
NUM_ADDR = 0x10

.begin:
lod Rb, NUM_ADDR ; ✅ Cargar multiplicando en Rb
data Ra, 1       ; ✅ Multiplicador empieza en 1
push Ra          ; ✅ Guardar multiplicador inicial
```

### ⚠️ **Problemas en el bucle principal**:

Tu lógica es usar registros y una pila para llevar la cuenta del multiplicador. Aquí empiezan los problemas:

- **Uso incorrecto del `pop Rc`**:  
  ```assembly
  pop Rc ; ⚠️ Aquí estás sacando el multiplicador actual a Rc (contador)
  ```
  Es posible usarlo así, pero actualmente el programa lo hace complicado. La pila se vuelve innecesaria y complica la lógica innecesariamente.

- **Error en la instrucción `add Rd`**:  
  ```assembly
  add Rd ; ⚠️ Esta instrucción está incompleta.
  ```
  `add` normalmente necesita dos registros, algo como `add Rd, Rb`. Tal cual aparece está incompleta para Protobard Emulator (8-bit Troy).

- **Uso de `mov` incorrecto**:  
  ```assembly
  mov Rb, Ra ; ⚠️ Estás sobreescribiendo el multiplicando original en Rb
  ```
  Esto destruye el valor original que querías multiplicar.

- **Comparación incorrecta (`cmp Rc`)**:  
  ```assembly
  cmp Rc ; ⚠️ Falta un segundo registro o valor para comparar.
  ```
  Debería ser algo como:  
  ```assembly
  cmp Ra, Rc ; Comparar multiplicador con valor máximo (11)
  ```

---

## 🛠️ **Versión corregida y simplificada del programa**:

Aquí te doy un ejemplo **simplificado y funcional** en Assembly Troy Protobard Emulator, manteniendo tus etiquetas y comentarios:

```assembly
; Crisostomo Enciso Francisco Javier 22211546
; Programa: Generar tabla de multiplicar de número en memoria (NUM_ADDR)

NUM_ADDR = 0x10 ; Dirección del número guardado en memoria

.begin:
    lod Rb, NUM_ADDR ; Rb tiene el multiplicando original
    data Ra, 1       ; Ra es multiplicador, inicializado en 1

.loop:
    data Rd, 0       ; Rd es acumulador (producto = 0)
    mov Rc, Ra       ; Copia multiplicador actual a Rc (contador)

.add_loop:
    tst Rc           ; Rc = 0?
    jz .display      ; Si contador=0, ir a mostrar resultado
    add Rd, Rb       ; Rd = Rd + multiplicando original (Rb)
    dec Rc           ; contador--
    jmp .add_loop    ; Repetir suma

.display:
    nop              ; ✅ Resultado está en Rd (asumido display)
    
.next:
    inc Ra           ; multiplicador++
    data Rc, 11      ; Valor máximo = 11 para salir (tabla hasta 10)
    cmp Ra, Rc       ; Comparar multiplicador con 11
    jnz .loop        ; Si no es 11, continuar ciclo
    
.end:
    hlt              ; Fin del programa
```

---

## 📚 **¿Qué hace esta versión corregida?**

- Carga el multiplicando original en `Rb` y jamás lo modifica nuevamente.
- Usa claramente:
  - `Ra` para el multiplicador.
  - `Rb` para el multiplicando.
  - `Rc` como contador temporal para sumar.
  - `Rd` como acumulador del resultado (producto).
- No utiliza la pila innecesariamente.
- El bucle repite claramente de 1 hasta 10.
- La comparación final asegura que se realicen exactamente 10 multiplicaciones.

---

## ⚙️ **Cómo probarlo en Troy Protobard Emulator Online:**

1. Guarda un número en la memoria (en dirección `0x10`). Por ejemplo, `0x03` (multiplicando=3).
2. Ejecuta el programa en el emulador.
3. Observa cómo en cada iteración, el registro `Rd` contiene: 3, 6, 9, ..., 30 (tabla del 3).

---

## 🚀 **Conclusión y recomendación final:**

El código original tenía buenas intenciones, pero complicaba innecesariamente el proceso y contenía varios errores sintácticos y lógicos. Esta versión corregida es clara, eficiente, y cumple exactamente el objetivo solicitado:

> Generar una tabla de multiplicar (1 al 10) de un número almacenado previamente en memoria.
