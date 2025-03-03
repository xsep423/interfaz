/***********************************************************************************************************************

Autor: CEBALLOS RESENDIZ VERONICA SARAHI
Programa: Contador de 0 a 255, mostrando los valores en LEDs y reiniciando al llegar al máximo
Descripción: Este programa cuenta de 0 a 255 y muestra los valores en el LEDs y se reinicia una vez que llega al máximo
Fecha: 27 de febrero de 2025
versión: Assembly

/************************************************************************************************************************
.start:
clr Ra ; Inicializa Ra en 0
clr Rd ; Inicializa Rd (display de LEDs) en 0

.loop:
mov Rd, Ra ; Mueve el valor de Ra al registro Rd para mostrarlo
inc Ra ; Incrementa Ra en 1
cmp Ra ; Compara Ra con 255
jz .reset ; Si Ra es 0 (después de 255), reinicia el contador

jmp .loop     ; Continúa el bucle
.reset:
clr Ra ; Reinicia Ra a 0
jmp .loop ; Vuelve al bucle
