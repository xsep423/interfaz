# Verificar overflow en una suma y mostrar alerta si ocurre

Este programa se ejecuta en la plataforma **Troy's Breadboard Computer (8 bits)**. Su función es sumar dos números y verificar si la operación produce un desbordamiento (overflow). En caso de que se detecte un overflow, se muestra un valor de error en el display.

---

## Código Fuente Documentado

```assembly
;------------------------------------------------
; Programa: Verificar overflow en una suma y mostrar alerta si ocurre
; Plataforma: Troy's Breadboard Computer (8 bits)
; Autor: [Jorge Alejandro Martinez Lopez]
;------------------------------------------------

    mva #127      ; Cargar 127 en Ra (valor máximo sin signo)
    mvb #1000        ; Cargar 5 en Rb (segundo operando)
    add Ra        ; Sumar Rb a Ra (Ra = Ra + Rb), FLAGS actualizados
    jo .overflow  ; Si ocurre overflow, saltar a la alerta

    ; Si no hay overflow, mostrar el resultado en Rd
    mov Rd, Ra    ; Mostrar resultado en display
    hlt           ; Terminar ejecución

.overflow:
    mva #255      ; Sobreescribir Ra con 255 (marcar error)
    mov Rd, Ra    ; Mostrar error en el display
    hlt           ; Detener ejecución
```

## Programa simulado
![image](https://github.com/user-attachments/assets/bdcb4e6f-40f0-4d1a-bae6-fc962a6f3d0f)

![image](https://github.com/user-attachments/assets/e35ffe8f-e444-4bd5-aa94-93908860ee5e)



## Lógica y Funcionamiento del programa

### Carga de Valores Iniciales
- **Se carga el valor `127` en el registro `Ra`**:  
  Representa el valor máximo sin signo permitido para la operación.
- **Se carga el valor `1000` en el registro `Rb`**:  
  Este valor será el segundo operando para la suma.

### Realización de la Suma
- **La instrucción `add Ra`**:  
  Suma el contenido de `Rb` al de `Ra`. Durante esta operación, se actualizan los indicadores (FLAGS) del procesador para detectar si se produce un desbordamiento (overflow).

### Verificación de Overflow
- **La instrucción `jo .overflow`**:  
  Evalúa el flag de overflow. Si se detecta que se produjo un overflow, la ejecución salta a la etiqueta `.overflow`.

### Manejo del Resultado sin Error
- En caso de que **no se produzca un overflow**:
  - El resultado de la suma se transfiere al registro `Rd` mediante la instrucción `mov Rd, Ra`, para que pueda mostrarse en el display.
  - La ejecución del programa se detiene con `hlt`.

### Manejo del Overflow
- **Si se detecta un overflow**:
  - Se carga el valor `255` en el registro `Ra` para indicar un error.
  - Este valor de error se mueve al registro `Rd` y se muestra en el display.
  - Finalmente, el programa se detiene con `hlt`.

## Conclusión

El programa es un ejemplo sencillo de cómo manejar operaciones aritméticas en sistemas de 8 bits, asegurando que se detecte y gestione correctamente un desbordamiento. La lógica implementada permite mostrar un valor de error (`255`) en caso de que se produzca un overflow, lo que facilita el diagnóstico en sistemas embebidos o de bajo nivel.



----

# EVALUACION

Aquí tienes una evaluación detallada del programa presentado para la plataforma **Troy's Breadboard Computer (8 bits)**:

---

## ✅ Objetivo del Programa:
> Sumar dos números de 8 bits y verificar si se produce overflow (desbordamiento), mostrando una alerta en pantalla si ocurre.

---

## 🔍 Análisis del Código Proporcionado:

Vamos revisando línea por línea tu programa original:

```assembly
;------------------------------------------------
; Programa: Verificar overflow en una suma y mostrar alerta si ocurre
; Plataforma: Troy's Breadboard Computer (8 bits)
; Autor: [Jorge Alejandro Martinez Lopez]
;------------------------------------------------

    mva #127      ; ✅ Cargar 127 (0x7F) en Ra (máximo valor en complemento a 2 positivo: +127)
    mvb #1000     ; 🚩 Problema aquí (ver análisis más abajo)
    add Ra        ; ⚠️ Sumar Rb a Ra (la sintaxis debe verificarse claramente)
    jo .overflow  ; ✅ Correcta comprobación del overflow con "jo"
    
    mov Rd, Ra    ; ✅ Mostrar resultado en Rd
    hlt           ; ✅ Terminar ejecución

.overflow:
    mva #255      ; ✅ Marcar error con valor especial (255)
    mov Rd, Ra    ; ✅ Mostrar error en el display
    hlt           ; ✅ Terminar ejecución
```

---

## 🚨 Problemas identificados en el código original:

### 🔴 **Problema #1: Instrucción "mvb #1000"**
- Estás tratando de cargar el número decimal **1000** en un registro de 8 bits (`Rb`), pero recuerda que un registro de **8 bits** tiene un rango limitado:
  - **Sin signo:** 0 a 255
  - **Con signo:** -128 a +127

- **1000** excede ampliamente este límite (0–255). **Esto generará un problema lógico y técnico**.

✅ **Corrección sugerida**:  
Debes elegir un valor que esté dentro del rango permitido. Por ejemplo, para provocar intencionalmente overflow, puedes sumar dos números como `127 + 1`, o `120 + 10` (algo que exceda claramente 127 si usas números con signo):

Ejemplo:

```assembly
mva #120   ; 120 en Ra
mvb #10    ; 10 en Rb
```

Esto generará claramente un overflow en complemento a dos al intentar sumar `120 + 10 = 130` (>127).

### 🔴 **Problema #2: Instrucción `add Ra` incompleta**
- La instrucción `add` típicamente requiere indicar claramente el registro fuente y el destino:
```assembly
add Ra, Rb ; Ra = Ra + Rb
```

✅ **Corrección sugerida**:

```assembly
add Ra, Rb
```

De esta forma, la instrucción está claramente especificada y se evitan ambigüedades.

---

## 🛠️ Versión Corregida y Optimizada del Programa:

Considerando estos puntos, aquí tienes el código corregido, bien documentado y claro para ejecutar en **Troy's Breadboard Computer**:

```assembly
;------------------------------------------------
; Programa: Verificar overflow en suma (8 bits)
; Plataforma: Troy's Breadboard Computer (8 bits)
; Autor: [Jorge Alejandro Martinez Lopez]
;------------------------------------------------

    mva #120       ; Cargar primer número (Ra=120)
    mvb #10        ; Cargar segundo número (Rb=10)
    add Ra, Rb     ; Realizar la suma: Ra = Ra + Rb
    jo .overflow   ; Si hay overflow, saltar a alerta

    mov Rd, Ra     ; Sin overflow, mostrar resultado en Rd
    hlt            ; Terminar ejecución normal

.overflow:
    mva #255       ; Valor especial para indicar error
    mov Rd, Ra     ; Mostrar alerta de overflow en Rd
    hlt            ; Terminar ejecución en error
```

---

## 🎯 ¿Qué hace ahora exactamente este programa corregido?

1. **Carga dos números válidos de 8 bits** (`120` y `10`).
2. **Realiza una suma** (`120 + 10`), lo cual intencionalmente provoca un overflow en complemento a dos (porque 130 > 127).
3. Verifica claramente **el bit de overflow** con `jo`:
   - Si se produce overflow:  
     `Rd` mostrará `255` (alerta de error en el display).
   - Si no hay overflow (si se sumaran números sin overflow):  
     `Rd` muestra el resultado correcto.

---

## 📌 Simulación recomendada en Troy’s Breadboard Computer:

- **Al ejecutar `120 + 10` en la simulación**:
  - Ocurre overflow (130 excede el límite superior `127` para números con signo 8 bits).
  - El programa mostrará en el display claramente el valor `255`, indicando que el overflow se detectó correctamente.

- **Al ejecutar una suma sin overflow** (por ejemplo `50 + 20`):
  - Modifica los valores iniciales para probar que el resultado correcto (`70`) aparece en el display.

---

## 📖 Conclusión Final y recomendaciones:

- El programa original estaba casi correcto en lógica general, pero tenía errores técnicos importantes sobre el manejo de los valores permitidos en registros de 8 bits y la sintaxis incompleta del `add`.
- **Ahora, corregido**, tu programa funciona claramente como ejemplo educativo sobre detección de overflow en operaciones aritméticas en computadoras de 8 bits.  
- Además, es fácil de entender, depurar, simular y usar para propósitos educativos o prácticas en Troy’s Breadboard Computer.

---

¡Espero que esta evaluación detallada te sea de mucha utilidad para seguir aprendiendo y mejorando tus programas en Assembly 8 bits! 🚀✨😊
