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

[![Ver grabación](https://asciinema.org/a/ID-DE-LA-GRABACIÓN.svg)](https://asciinema.org/a/ID-DE-LA-GRABACIÓN)


📌 **Recomendación**: Siempre  Grabar la terminal y subirla a asciinema.org, especificando un título::
```bash
 Grabar la terminal y subirla a asciinema.org, especificando un título:
    asciinema rec -t "Mi tutorial de git"
```
---

```bash

➜  ~ asciinema
uso: asciinema [-h] [--version] {rec,play,cat,upload,auth} ...

Graba y comparte tus sesiones de terminal, de la manera correcta.

argumentos posicionales:
  {rec,play,cat,upload,auth}
    rec                 Grabar sesión de terminal
    play                Reproducir sesión de terminal
    cat                 Imprimir la salida completa de la sesión de terminal
    upload              Subir la sesión de terminal guardada localmente a asciinema.org
    auth                Gestionar grabaciones en la cuenta de asciinema.org

opciones:
  -h, --help            mostrar este mensaje de ayuda y salir
  --version             mostrar el número de versión del programa y salir

ejemplos de uso:
  Grabar la terminal y subirla a asciinema.org:
    asciinema rec
  Grabar la terminal en un archivo local:
    asciinema rec demo.cast
  Grabar la terminal y subirla a asciinema.org, especificando un título:
    asciinema rec -t "Mi tutorial de git"
  Grabar la terminal en un archivo local, limitando el tiempo de inactividad a un máximo de 2.5 segundos:
    asciinema rec -i 2.5 demo.cast
  Reproducir una grabación de terminal desde un archivo local:
    asciinema play demo.cast
  Reproducir una grabación de terminal alojada en asciinema.org:
    asciinema play https://asciinema.org/a/difqlgx86ym6emrmd8u62yqu8
  Imprimir la salida completa de una sesión grabada:
    asciinema cat demo.cast
´´´
