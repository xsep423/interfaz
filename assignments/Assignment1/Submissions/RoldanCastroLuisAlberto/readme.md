# TECNOLÓGICO NACIONAL DE MÉXICO INSTITUTO TECNOLÓGICO DE TIJUANA
## Subdirección académica departamento de sistemas y computación

**Semestre:** Enero - Junio

**Carrera:** Sistemas computacionales
**Materia:** Lenguajes de interfaz SCC-1014
**Titulo:** Ordenamiento de 3 numeros con metodo burbuja
 
**Unidad:** 1
**Equipo:** 6

**Alumno:** 
 - Roldan Castro Luis Alberto

**Docente:**
  Rene Solis Reyes


## Codigo de ensamblador

### Ordenamiento de 3 numeros metodo burbuja

```assembly
; Definir las direcciones de memoria donde están almacenados los números
NUM1 = 0x10      ; Dirección del primer número
NUM2 = 0x11      ; Dirección del segundo número
NUM3 = 0x12      ; Dirección del tercer número

; Cargar los valores de memoria en los registros
lod Ra, NUM1     ; Cargar el primer número en Ra
lod Rb, NUM2     ; Cargar el segundo número en Rb
lod Rc, NUM3     ; Cargar el tercer número en Rc

.bubble_sort:
; Variable para verificar si hubo un intercambio
clr Rd           ; Establecer Rd a cero, se usará para detectar si hubo intercambio

; Comparar Ra y Rb
cmp Ra, Rb       ; Comparar Ra con Rb
jnc .skip_swap1  ; Si Ra no es menor que Rb, saltar el intercambio
mov Ra, Rb       ; Intercambiar Ra con Rb
mov Rb, Rd       ; Copiar el valor de Rd en Rb

.skip_swap1:
; Comparar Rb y Rc
cmp Rb, Rc       ; Comparar Rb con Rc
jnc .skip_swap2  ; Si Rb no es menor que Rc, saltar el intercambio
mov Rb, Rc       ; Intercambiar Rb con Rc
mov Rc, Rd       ; Copiar el valor de Rd en Rc

.skip_swap2:
; Comparar Ra y Rb nuevamente
cmp Ra, Rb       ; Comparar Ra con Rb
jnc .end_sort    ; Si Ra no es menor que Rb, terminar el ciclo
mov Ra, Rb       ; Intercambiar Ra con Rb
mov Rb, Rd       ; Copiar el valor de Rd en Rb

; Si no hubo intercambio, salir del ciclo
lod Rd, Ra       ; Cargar Ra en Rd (para verificar si hubo cambio)
cmp Rd, Rb       ; Comparar Rd y Rb
jz .end_sort     ; Si Rd es igual a Rb, no hubo intercambio, terminar el ciclo

; Repetir hasta que los números estén ordenados
jmp .bubble_sort

.end_sort:
; Almacenamos los números ordenados de nuevo en memoria (direcciones explícitas)
sto Ra, NUM1     ; Guardar el valor de Ra (el más pequeño) en la dirección NUM1
sto Rb, NUM2     ; Guardar el valor de Rb (el segundo más pequeño) en la dirección NUM2
sto Rc, NUM3     ; Guardar el valor de Rc (el más grande) en la dirección NUM3

; Mostrar los números en la LCD (si la instrucción lcd es válida en tu sistema)
lcd Ra           ; Mostrar el valor de Ra (más pequeño) en la LCD
lcd Rb           ; Mostrar el valor de Rb (segundo más pequeño) en la LCD
lcd Rc           ; Mostrar el valor de Rc (más grande) en la LCD

hlt              ; Terminar la ejecución
```

