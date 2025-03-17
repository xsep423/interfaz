![asciinema](https://github.com/user-attachments/assets/cefe7f1d-ea8c-4e85-81f5-b13902319c4f)

## 1.- Grabacion:
   Toda practica en esta unidad es evidenciada con Asciinema, que permite recolectar memoria de la corrida de su programa

### 📌 **¿Qué es Asciinema?**
**Asciinema** es una herramienta que permite grabar y compartir sesiones de terminal en **formato de texto**, en lugar de video. Esto hace que las grabaciones sean ligeras, fáciles de compartir y perfectas para documentación técnica.

### 🚀 **Importancia de Recuperar la Grabación Antes de 7 Días**
- Asciinema **almacena temporalmente** las grabaciones en sus servidores.
- **Si no se recupera la grabación en 7 días**, se eliminará automáticamente.
- Para evitar la pérdida de información, es importante **descargar o almacenar la grabación localmente**.

### 📝 **Exportación en Markdown**
- Cada grabación en **Asciinema** puede documentarse en **Markdown**.
- Esto permite incluir código embebido y facilitar la documentación técnica.

🔹 **Ejemplo en Markdown**:

### Grabación de Terminal con Asciinema
Aquí está la sesión de terminal grabada:
```bash
[![Ver grabación](https://asciinema.org/a/ID-DE-LA-GRABACIÓN.svg)](https://asciinema.org/a/ID-DE-LA-GRABACIÓN)
```

📌 **Recomendación**: Siempre  Grabar la terminal y subirla a asciinema.org, especificando un título, támbien documentarlo una vez resguardado en markdown:

 Grabar la terminal y subirla a asciinema.org, especificando un título:
```bash
  $  asciinema rec -t "Mi tutorial de git"
```

---
# 2.- TEMPLETE

   _Como docente es de gran oportuniad trabajar con alto nivel la solucion el comentario abajo del encabezado, puede ser Python3, go, Prolog, CSharp, Java, etc. aqui lo importante es ver la prespectiva de como las "pimitivas" de ensamblador se proyectar ante Ud._

```bash
/*
 * ---------------------------------------------------------------------------------
 *  Lenguajes de Interfaz en TECNM Campus ITT
 *  Autor: [Tu Nombre]
 *  Fecha: [YYYY-MM-DD]
 *  Descripción: Esta plantilla proporciona una estructura profesional para el desarrollo
 *               embebido, incluyendo C# y Assembly ARM64 para RaspbianOS.
 *  Demostración:  [ ASCIINEMA.ORG/.....]
 * ---------------------------------------------------------------------------------
 */

/*
 * ----------------------------------------------
 * C# "Hola, Mundo!" para Desarrolladores Embebidos (Referencia)
 * ----------------------------------------------
 * using System;
 *
 * class Program {
 *     static void Main() {
 *         Console.WriteLine("Hola, Mundo!");
 *     }
 * }
 */

.global _start
.section .data
mensaje: .ascii "Hola, Mundo!\n"
len = . - mensaje

.section .text
_start:
    // Llamada al sistema para escribir (sys_write)
    mov x0, #1          // Descriptor de archivo para stdout
    ldr x1, =mensaje    // Puntero al mensaje
    mov x2, len         // Longitud del mensaje
    mov x8, #64         // Syscall: write
    svc #0              // Invocar syscall

    // Llamada al sistema para salir (sys_exit)
    mov x0, #0          // Estado 0
    mov x8, #93         // Syscall: exit
    svc #0              // Invocar syscall

```

----

# 3.-  🚀 **Importancia de Make y CMake en Desarrollo Embebido**  

En el desarrollo embebido, la gestión eficiente del código y la compilación es clave para proyectos optimizados y escalables. **Make y CMake** son herramientas esenciales en este proceso:

#### ✅ **Make: Simplicidad y Control Manual**
- Permite **automatizar la compilación** de programas embebidos con **Makefiles**.
- Ofrece **control granular** sobre cada paso del proceso.
- Ideal para **proyectos pequeños** y desarrollo en plataformas con recursos limitados (como Raspberry Pi).

#### ✅ **CMake: Escalabilidad y Portabilidad**
- Funciona como un **generador de Makefiles**, facilitando la compatibilidad con múltiples arquitecturas.
- Es **más flexible** y se usa en **proyectos grandes** donde la compilación debe adaptarse a diferentes entornos.
- Permite **gestión avanzada** de bibliotecas y dependencias.

En sistemas embebidos como **RaspbianOS en ARM64**, `Make` es preferido por su **ligereza**, pero `CMake` es una opción avanzada cuando se requiere **portabilidad**

### ✅ **Generales de nuestro Makefile**
- **Compila y enlaza `hola.s` automáticamente.**
- **Limpia archivos generados (`make clean`).**
- **Depura con `gdb` (`make debug`).**
- **Sube `hola.s` a Gist con `make upload_gist`**:
  - Usa `curl` para enviar el código a GitHub.
  - Guarda el enlace del Gist en `gist_url.txt`.
  - **Necesitas agregar tu token de GitHub en la variable `TOKEN`.**

### 📌 **Cómo Usarlo**
1️⃣ **Compilar:**
```bash
$ make
```
2️⃣ **Limpiar:**
```bash
$ make clean
```
3️⃣ **Subir a Gist:**
```bash
$ make upload_gist
```
---

### 📌 **Templete de Makefile**
```bash
# Makefile para compilar, limpiar y subir el programa hola.s a Gist en ARM64

# Nombre del ejecutable
TARGET = hola

# Archivos fuente
ASM_SRC = hola.s
OBJ = hola.o

# Compiladores
AS = as
LD = ld

# Token de GitHub para subir a Gist (cambiar por el tuyo)
TOKEN = TU_TOKEN_AQUI
GIST_DESC = "Código Assembly ARM64 Hola Mundo para RaspbianOS"

# Reglas de compilación
default: $(TARGET)

$(TARGET): $(OBJ)
	$(LD) -o $(TARGET) $(OBJ)

$(OBJ): $(ASM_SRC)
	$(AS) -o $(OBJ) $(ASM_SRC)

# Regla para limpiar los archivos generados
clean:
	rm -f $(OBJ) $(TARGET)

# Regla de depuración
debug: $(TARGET)
	gdb $(TARGET)

# Regla para subir hola.s a Gist
upload_gist:
	@curl -s -X POST https://api.github.com/gists \
		-H "Authorization: token $(TOKEN)" \
		-H "Content-Type: application/json" \
		-d '{ 
		  "description": "$(GIST_DESC)", 
		  "public": true, 
		  "files": { 
		    "$(ASM_SRC)": { 
		      "content": "'"'"$(shell cat $(ASM_SRC))"'"'" 
		    } 
		  } 
		}' | jq -r '.html_url' | tee gist_url.txt
	@echo "📌 Gist creado y guardado en gist_url.txt"
```
---

