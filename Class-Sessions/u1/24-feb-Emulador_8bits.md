<img width="1308" alt="Screenshot 2025-02-24 at 4 37 55 p m" src="https://github.com/user-attachments/assets/51656170-3a5f-4015-a15f-a31547303fe4" />


Introducción al Computador de 8 bits y al Ensamblador


 # Enlace al Emulador

   Emulador: https://cpu.visualrealmsoftware.com/emu/ 
   
   Repo del proyecto: https://github.com/visrealm/vrcpu
# Introducción a los Computadores de 8 Bits y el Ensamblador  

## ¿Qué es un Computador de 8 Bits?  

Los computadores de 8 bits fueron muy populares en la década de 1980, en gran parte por su simplicidad y por ser la plataforma de entrada para muchos programadores. Estos sistemas operan con datos de **8 bits** a la vez y permiten comprender los fundamentos del procesamiento, la manipulación de datos y la arquitectura de la computadora.

### **Arquitectura Básica**  
- **CPU:** Procesador con instrucciones básicas y operaciones en 8 bits.  
- **Registros:** Un conjunto limitado de registros internos para almacenamiento temporal.  
- **Memoria RAM:** Pequeña capacidad de almacenamiento para datos y programas.  
- **Dispositivos de Entrada/Salida:** Generalmente, LEDs, displays de 7 segmentos y switches DIP.  

### **Aplicación en la Enseñanza**  
Debido a su simplicidad, los sistemas de 8 bits se utilizan para aprender conceptos de programación a bajo nivel, tales como:  
✅ Manipulación de registros.  
✅ Dirección y acceso a memoria.  
✅ Control de flujo a nivel de máquina.  

---

## **Hardware de la Ben Eater 8-bit Computer**  

| **Componente** | **Descripción** |
|--------------|----------------|
| **CPU** | ALU básica con operaciones de suma, resta y lógicas. |
| **Registros** | 4 registros de propósito general (**A, B, C, D**). |
| **Memoria** | ROM y RAM limitada (generalmente **16 bytes** en la implementación básica). |
| **Entrada/Salida** | No tiene teclado; usa **DIP switches** como entrada y **LEDs/display de 7 segmentos** como salida. |
| **Control de Flujo** | Soporta **saltos condicionales básicos** y manejo manual del flujo del programa. |

---

## **¿Qué es el Lenguaje Ensamblador?**  

El **lenguaje ensamblador** es una representación simbólica del código máquina, lo que permite escribir instrucciones comprensibles para el programador. Cada instrucción se traduce directamente a operaciones que el procesador puede ejecutar.

### **Ventajas**  
✔️ Permite un control **preciso** del hardware.  
✔️ Facilita la **optimización** y el entendimiento del funcionamiento del procesador.  

### **Desventajas**  
❌ Es más laborioso y propenso a errores comparado con lenguajes de alto nivel.  
❌ **Portabilidad limitada**, ya que el código depende del hardware específico.  

---

## **Uso del Emulador “Troy’s Breadboard Computer”**  

El emulador de [Troy’s Breadboard Computer](https://cpu.visualrealmsoftware.com/emu/) permite experimentar de forma interactiva con un **computador de 8 bits**, simulando hardware real.  

### **Características Clave**  

🔹 **Interfaz Visual:**  
Permite observar en tiempo real el estado de los registros, la memoria y las operaciones que se están ejecutando, facilitando el seguimiento del flujo de un programa en ensamblador.  

🔹 **Ejemplos y Documentación:**  
Incluye documentación y ejemplos de código en ensamblador, lo cual es muy útil para aprender la **sintaxis** y la **semántica** del lenguaje.  

🔹 **Simulación de Hardware:**  
Al emular un computador de 8 bits, se puede experimentar con aspectos prácticos como:  
✅ Carga de instrucciones.  
✅ Ejecución de ciclos de reloj.  
✅ Interacción con dispositivos de entrada/salida.  

---

## **Conceptos Básicos que se Abordarán en el Curso**  

🔹 **Registros y Memoria:**  
Cómo se utilizan los registros para almacenar datos temporales y cómo se direcciona la memoria.  

🔹 **Instrucciones Básicas:**  
Aprenderás a utilizar instrucciones **aritméticas, lógicas, de salto y de control de flujo**.  

🔹 **Depuración y Análisis de Código:**  
El emulador permite la depuración visual del código, facilitando:  
✔️ Pausar la ejecución.  
✔️ Examinar el contenido de la memoria.  
✔️ Rastrear el comportamiento del programa.  

🔹 **Optimización y Eficiencia:**  
Dado que los sistemas de 8 bits tienen **recursos limitados**, es fundamental escribir código optimizado que aproveche **cada ciclo de reloj**.  

---

## **Primeros Pasos en el Emulador**  

🟢 **1. Carga del Código:**  
Puedes introducir tus programas en ensamblador en el editor del emulador y observar cómo se cargan en la memoria.  

🟢 **2. Ejecución Paso a Paso:**  
Utiliza la opción de **ejecución paso a paso** para ver cómo cada instrucción modifica el estado del sistema.  

🟢 **3. Experimentación:**  
La práctica es clave:  
✔️ Modifica ejemplos existentes.  
✔️ Prueba nuevas instrucciones.  
✔️ Observa los resultados para entender mejor el funcionamiento interno.  

🚀 ¡Listo para aprender ensamblador en la Ben Eater 8-bit Computer!  


# COMPROMISO PROGRAMAS PARA 3PM


| #  | Estudiante  | Programa |
|----|------------|----------|
| 1  | 22211514   | Suma de dos números almacenados en memoria y mostrar el resultado en el display de 7 segmentos. |
| 2  | 22211519   | Resta de dos números almacenados en memoria, asegurando que el resultado no sea negativo. |
| 3  | C22211889  | Multiplicación por sumas sucesivas con valores en registros A y B. |
| 4  | 20211759   | Contador de 0 a 255, mostrando los valores en LEDs y reiniciando al llegar al máximo. |
| 5  | 22211544   | Mostrar patrón de bits alternantes (`10101010` y `01010101`) en LEDs en un bucle. |
| 6  | 19211619   | Cálculo del factorial de un número pequeño (1-5) almacenado en memoria. |
| 7  | 22211548   | Generar la secuencia de Fibonacci hasta un número límite definido en memoria. |
| 8  | 20211765   | Determinar si un número almacenado en memoria es par o impar y encender un LED según el caso. |
| 9  | 22211555   | Suma de una serie aritmética almacenada en memoria y mostrar el resultado. |
| 10 | 22211562   | Rotación de bits de un número en el registro A, desplazando en bucle hacia la izquierda y derecha. |
| 11 | 22211567   | Generar la tabla de multiplicar de un número almacenado en memoria (1-5) utilizando sumas sucesivas. |
| 12 | 22211575   | Realizar operaciones AND, OR y XOR entre dos números almacenados en registros A y B. |
| 13 | 22211582   | Uso de subrutinas para realizar suma y resta con valores almacenados en registros. |
| 14 | 22211598   | Desplazamientos de bits a la izquierda y derecha en un número almacenado en el registro A. |
| 15 | 22211599   | Temporizador simulado con ciclos de retardo usando instrucciones NOP. |
| 16 | 22211600   | Comparar dos números de memoria y encender LEDs si son iguales o diferentes. |
| 17 | 22211602   | Suma acumulativa de una lista de números almacenados en memoria. |
| 18 | 22211621   | Bucle infinito que puede ser detenido manualmente con una condición almacenada en memoria. |
| 19 | 22211624   | Convertir un número en binario a decimal y mostrarlo en el display de 7 segmentos. |
| 20 | 22211630   | Multiplicación binaria de dos números utilizando desplazamientos y sumas en registros. |
| 21 | 22210332   | Detectar overflow en una operación de suma y encender un LED si ocurre. |
| 22 | 22211639   | Comparar dos números y encender un LED si uno es mayor que el otro. |
| 23 | 22211648   | Ordenar tres números almacenados en memoria usando el método de burbuja. |
| 24 | 22211650   | Leer tres números de memoria y determinar cuál es el mayor, mostrando el resultado en LEDs. |
| 25 | 21211065   | Calcular la media (promedio) de tres números almacenados en memoria. |
| 26 | 22211660   | Generar un número aleatorio mediante una combinación de operaciones en registros. |
| 27 | 24210765   | Simular encendido y apagado de un LED a intervalos regulares con retardos. |
| 28 | C20211465  | Invertir los bits de un número almacenado en memoria y mostrarlo en el display. |
| 29 | 21212056   | Listar los números primos entre 1 y 20 en el display de 7 segmentos. |
| 30 | 22211663   | Comparar dos números de memoria y encender LED si son iguales. |
| 31 | 22211664   | Sumar los dígitos de un número almacenado en memoria y mostrar el resultado. |
| 32 | C21211400  | Convertir un número en memoria de Celsius a Fahrenheit y mostrarlo en el display. |
| 33 | 22211665   | Determinar si un número es negativo, cero o positivo y encender un LED correspondiente. |
| 34 | C22211401  | Sumar los elementos de una lista en memoria y mostrar la suma en el display. |
| 35 | 22211669   | Implementar una rutina de retardo ajustable utilizando ciclos de instrucciones NOP. |
| 36 | 22211671   | Uso de la pila para almacenar y recuperar valores con operaciones PUSH y POP. |
| 37 | 22210364   | Implementar un generador de números pseudoaleatorios con operaciones aritméticas. |
| 38 | 22211667   | Crear una mini calculadora para suma y resta con valores almacenados en memoria. |

---

# Programas para Estudaites 4pm de LDI (Adaptados a la Computadora 8 Bits sin Teclado)

| #  | Estudiante  | Programa |
|----|------------|----------|
| 1  | C20210713  | Suma de dos números almacenados en memoria y mostrar el resultado. |
| 2  | 23210545   | Resta de dos números, evitar valores negativos y mostrar el resultado. |
| 3  | 23210547   | Multiplicación por sumas sucesivas con valores de memoria. |
| 4  | 22211529   | DECREMENTA de 255 a 0, reinicio automático y visualización en LEDs. |
| 5  | 22211531   | Mostrar patrón de bits alternantes (`10101010`) en bucle. |
| 6  | 22211533   | Cálculo del factorial de un número (1-8) y mostrar resultado. |
| 7  | 22211534   | Generar la serie de Fibonacci hasta un límite y mostrar valores. |
| 8  | 23211005   | Determinar si un número en memoria es par o impar y mostrar mensaje. |
| 9  | 22211539   | Suma de una serie aritmética almacenada en memoria. |
| 10 | 23210571   | Invertir el orden de una cadena de caracteres almacenada en memoria. |
| 11 | 22211546   | Generar tabla de multiplicar de un número guardado en memoria. |
| 12 | 22210302   | Operaciones AND, OR, XOR entre dos valores almacenados. |
| 13 | 21210372   | Uso de subrutinas para suma y resta con valores en memoria. |
| 14 | 22210768   | Desplazamientos de bits a la izquierda y derecha sobre un número. |
| 15 | 22211580   | Temporizador simulado con ciclos de retardo. |
| 16 | 22211588   | Comparación de dos números de memoria y mostrar el mayor. |
| 17 | 22211589   | Suma acumulativa de elementos en un arreglo en memoria. |
| 18 | 21211975   | Bucle infinito con condición de salida mediante una bandera en memoria. |
| 19 | C21212706  | Conversión de un número binario a decimal con visualización en LCD. |
| 20 | 21212576   | Multiplicación binaria usando desplazamientos y sumas. |
| 21 | 22211610   | Verificar overflow en una suma y mostrar alerta si ocurre. |
| 22 | 22211611   | Comparación de dos números e indicar cuál es mayor o si son iguales. |
| 23 | 21211995   | Ordenar una lista de números en memoria con el algoritmo de burbuja. |
| 24 | 21211997   | Leer tres números en memoria y determinar el mayor. |
| 25 | l21211050  | Calcular la media (promedio) de un conjunto de números en memoria. |
| 26 | 21212024   | Juego de adivinar un número almacenado en memoria. |
| 27 | 21212579   | Simular encendido y apagado de un LED con intervalos regulares. |
| 28 | 22211642   | Inversión de bits de un número almacenado en memoria. |
| 29 | C20211652  | Listar los números primos entre 1 y 100 en pantalla. |
| 30 | 22211646   | Comparación de dos números y mostrar si son iguales o cuál es mayor. |
| 31 | 21212046   | Sumar los dígitos de un número en memoria y mostrar el resultado. |
| 32 | 22210786   | Conversión de temperatura de Celsius a Fahrenheit. |
| 33 | 21210431   | Determinar si un número es negativo, cero o positivo y mostrar resultado. |
| 34 | 21212057   | Sumar los elementos de un arreglo en memoria y mostrar la suma. |
| 35 | 23210672   | Rutina de retardo (delay loop) ajustable basado en memoria. |
| 36 | 21212655   | Uso de la pila para almacenar y recuperar valores con PUSH y POP. |
| 37 | 22211667   | Mini-proyecto combinando operaciones aritméticas y lógicas. |
| 38 | 22211670   | Calculadora simple con operaciones de suma, resta, multiplicación y división. |

**Notas Generales:**
- Se utilizarán valores almacenados en memoria en lugar de teclado.
- La salida se visualizará en la pantalla LCD, LEDs o display de 7 segmentos.
- Los estudiantes deben entregar:
  1. Código fuente documentado.
  2. Breve informe explicando la lógica y el funcionamiento.
  3. Demostración en la computadora de 8 bits o en el emulador.
 
# DEPOSITO SERA VIA **Contribucion**
```bash
Directorio http://github.com/tectijuana/Class-Sessions/u1/8bitASM/_____nombre programa____/readme.md
```
Ejemplo de uso FORK: https://www.loom.com/share/6835069706494761a6828d4c3b053a21?sid=4f221c0a-8dae-450f-8ab0-6b3bc56db653

Ejemplo contrib: https://www.loom.com/share/8f26a0e6203d4be68ce65b07c5b5a077?sid=daae4789-0ebb-42c4-a0a8-987e8aeacb1f





   
