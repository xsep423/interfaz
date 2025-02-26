Me llamo Daniel Romero Bravo No.Control 22211650 y este es mi codigo.
    
    ; Cargar los tres números en registros
    mva #43  ; Primer número en Ra
    mvb #23  ; Segundo número en Rb
    mvc #67  ; Tercer número en Rc

    ; Comparar Ra con Rb
    cmp Ra    ; Compara Ra con Rb
    jnn SIGUIENTE  ; Si Ra >= Rb, seguir comparando con Rc
    mva Rb    ; Si Rb es mayor, moverlo a Ra

    SIGUIENTE:
        mvb Rc    ; Mover Rc a Rb para la comparación
        cmp Ra    ; Comparar Ra con Rc (ahora en Rb)
        jnn FIN   ; Si Ra >= Rc, terminar
        mva Rc    ; Si Rc es mayor, moverlo a Ra

    FIN:
        mov Rd, Ra  ; Mostrar el número mayor en el display
        hlt         ; Finalizar el programa
![image](https://github.com/user-attachments/assets/15e820dd-b340-4ccf-87ab-b343001ea5b0)

![image](https://github.com/user-attachments/assets/f7b4831e-f80d-4154-bdd7-211bc5e58d83)
