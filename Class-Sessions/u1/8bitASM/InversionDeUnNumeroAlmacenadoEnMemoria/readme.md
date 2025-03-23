# 🖥️ Inversión de Bits en un Computador de 8 Bits

## 📌 Descripción

Rivera Garcia Rodrigo - 22211642

Este proyecto implementa un programa en ensamblador para el **emulador de Troy’s Breadboard Computer**, que invierte los bits de un número almacenado en memoria y muestra el resultado en la salida (LCD, LEDs o display de 7 segmentos).  

---

## 🛠️ Requisitos

- **Emulador:** Troy’s Breadboard Computer  
- **Lenguaje:** Ensamblador del emulador  
- **Entrada:** Número almacenado en memoria  
- **Salida:** Número con los bits invertidos, mostrado en la pantalla o LEDs  

---

## 📜 Código Fuente

```assembly
; INVERSIÓN DE BITS DE UN NÚMERO EN MEMORIA
; ----------------------------------------
; Este programa toma un número almacenado en memoria,
; invierte todos sus bits y muestra el resultado en la salida.

NUM = 0b11010010  ; Número de prueba (puedes cambiarlo)

start:
    data Ra, NUM   ; Cargar el número original en Ra

    not Ra         ; Invertir los bits de Ra

    mov Rd, Ra     ; Mover el resultado a la salida (LCD, LEDs o display)

.loop:
    jmp .loop      ; Bucle infinito para mantener el resultado en pantalla



----

Buena observación. Vamos a revisar con precisión si realmente está invirtiendo bits de un número en **memoria**, o solo invierte bits de una constante definida en código.

---

## 🔍 **Análisis del código actual:**

```assembly
NUM = 0b11010010   ; Define una constante en código

start:
    data Ra, NUM   ; Carga NUM directamente en el registro Ra (no desde memoria)
    not Ra         ; Invierte los bits del número en Ra
    mov Rd, Ra     ; Muestra el resultado en la salida
.loop:
    jmp .loop      ; Bucle infinito
```

# EVALUACION

**Observación:**  
Actualmente, el programa **NO** está cargando el número desde una posición en memoria, sino directamente desde una constante definida en el código.

- La instrucción:
```assembly
data Ra, NUM
```
no lee una posición de memoria, sino que toma directamente el valor constante.

---

## 🚩 **Corrección (si deseas leer realmente de memoria):**

Si deseas cargar realmente desde **una dirección en memoria**, deberías modificar el código para especificar una dirección explícita en memoria. Por ejemplo:

### **✅ Código corregido para cargar desde memoria:**

```assembly
; Ejemplo mejorado: INVERSIÓN DE BITS DESDE UNA POSICIÓN DE MEMORIA
; ---------------------------------------------------------------
NUMERO: 0b11010010  ; El número guardado en la posición de memoria etiquetada NUMERO

start:
    data Ra, [NUMERO] ; Ahora sí carga desde la posición NUMERO en memoria
    not Ra            ; Invierte los bits de Ra
    mov Rd, Ra        ; Muestra el resultado en la salida
.loop:
    jmp .loop         ; Mantiene visible el resultado
```

---

## ⚠️ **¿Qué diferencia hay entre ambas versiones?**

- **Tu versión original:**  
  - Usa directamente una constante, no una posición real en memoria.
  - Sirve para demostraciones simples o pruebas rápidas.

- **Versión corregida:**  
  - **Sí** carga desde una posición en memoria real (`[NUMERO]`), permitiendo que sea dinámico o modificable en tiempo de ejecución.

---

## 🔖 **Conclusión:**

- **Tu código original funciona**, pero no cumple exactamente la descripción que diste: **"Invertir bits de un número almacenado en memoria"**.
- Si quieres cumplir al pie de la letra tu propia descripción, debes usar la versión corregida mostrada arriba.

Te recomiendo usar la versión corregida si tu intención pedagógica es mostrar claramente cómo manipular datos desde memoria en el emulador de Troy.

✅ **Recomendación final:**  
- Usa la versión con dirección en memoria (`data Ra, [NUMERO]`) para mayor precisión respecto a tu propia descripción.
