[# BLOQUE 2](https://p84.cooltext.com/Download?File=Cool+Text+-+Bloque+2+478452141267304.png)![image](https://github.com/user-attachments/assets/0b8349da-3bce-4d35-8813-c10eed2618f8)



## FigJam del la unidad

https://www.figma.com/board/wymy14UHuIrxCcS2r2rJJd/ARM-32-Assembly?node-id=0-1&t=l9LQOhOQtWWfxdiR-1


![Screenshot 2025-03-13 at 10 44 42 p m](https://github.com/user-attachments/assets/815cdb0b-f23d-407f-84b3-78d86a11a39f)
# 1.- CONOCIENDO EL HARDWARE ARM CON RPI

# 📚 **Videos Raspberry Pi Compute Module 4 (Interfaz y configuración)**

## ▶️ **Parte 1:**
- [🔗 Ver video](https://www.loom.com/share/0f7c1fbd4e3b4602b631bd0c9002bb24?sid=b83e5c89-d7b3-4a1a-89e5-c89d7b34a1a8)

  ## ▶️ **Parte 2:**
- [🔗 Ver video](https://www.loom.com/share/4537c852e0114611b05b8da4a7b01bbb?sid=eeca147d-4906-4334-932d-5f896a9f2167))


## ▶️ **Parte 3:**
- [🔗 Ver video](https://www.loom.com/share/85098f4425514f1cb14ec20147d58619?sid=fb40e16f-9530-41fc-802a-e81c56b2b376)


---

## 🔌 **Cable Consola (Serial):**
- Asegúrate de conectar correctamente los pines del cable de consola (TX, RX, GND).
- **NO** conectar el cable de alimentación de 5V al Raspberry Pi.

---
## Tarjetas SD y RaspberryPI 4 
https://www.loom.com/share/bba1e08357784e5cb48e8a7ab2fb0931?sid=d80c0e43-34e6-441a-b2a6-cd1571efab12

✨ ¡Éxito en tus prácticas con Raspberry Pi!

---
# 2.- SETUP RaspberryPi 5 de 8Gb RAM, 512 M.2

```bash
#!/bin/bash

###############################################################
# Script: Configuración rápida entorno desarrollo ARM64
# Propósito: Instala herramientas esenciales de desarrollo,
#            GEF y Oh My Zsh en sistemas ARM64 (Raspberry Pi).
# Autor: Rene Solis @IoTeacher
# Fecha: 17-marzo-2025
###############################################################

# Anuncia visualmente inicio de la actualización usando figlet
figlet "Actualizando"

# Actualización del sistema operativo y todos los paquetes instalados
sudo apt update && sudo apt full-upgrade -y

# Anuncia visualmente la instalación de paquetes
figlet "Instalando"

# Instalación masiva de herramientas esenciales para desarrollo en ARM64
sudo apt install -y \
  build-essential \          # Herramientas básicas de compilación
  gcc g++ \                  # Compiladores C y C++
  binutils-aarch64-linux-gnu \ # Binutils para ARM64
  gcc-aarch64-linux-gnu \    # Cross-compilador gcc ARM64
  g++-aarch64-linux-gnu \    # Cross-compilador g++ ARM64
  binutils \                 # Herramientas GNU para manejo de binarios
  gdb-multiarch \            # Debugger multi-arquitectura
  lldb \                     # Debugger LLVM
  cmake \                    # Herramienta para generación de proyectos multiplataforma
  git \                      # Control de versiones
  curl wget \                # Descarga de archivos vía web
  clang \                    # Compilador LLVM
  clang-format \             # Formateador de código
  valgrind \                 # Herramienta para análisis de memoria
  strace \                   # Seguimiento de llamadas al sistema
  vim nano \                 # Editores de texto
  tmux screen \              # Multiplexores de terminal
  htop \                     # Monitor del sistema
  jq \                       # Command-line JSON processor
  tree file \                # Listado visual de directorios y detección de tipos de archivo
  unzip zip \                # Compresión y descompresión de archivos
  asciinema \                # Grabación de sesiones de terminal
  python3 python3-pip python3-dev \ # Herramientas Python
  software-properties-common \ # Administración de repositorios adicionales
  zsh                        # Shell avanzada, personalizable con estilo y color

# Anuncia visualmente la instalación de GEF
figlet "Instalando GEF"

# Instalación automatizada de GEF (GDB Enhanced Features) desde repositorio oficial
bash -c "$(curl -fsSL https://gef.blah.cat/sh)"

# Anuncia visualmente la instalación de Oh My Zsh
figlet "Instalando Oh My Zsh"

# Instalación automatizada de Oh My Zsh (framework para Zsh)
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Anuncia visualmente la verificación de GEF
figlet "Verificando GEF"

# Verifica que GEF se instaló correctamente y muestra ayuda inicial
gdb -ex "gef help" -ex quit

###############################################################
# Fin del script
###############################################################

```
3.- POR CUENTA INSTALAR COMPLEMENTO "GDB" CON GEF PARA EXTENDERLO

_GEF (GDB Enhanced Features) es un complemento para GDB (GNU Debugger) que proporciona características avanzadas para depuración, especialmente en análisis de programas binarios, seguridad informática y desarrollo en ensamblador. Es una alternativa más ligera a herramientas como PEDA o Pwndbg._

### 📌 **Características principales de GEF**
- 🔍 **Mejora la interfaz de GDB** con comandos más intuitivos.
- 🛠️ **Extensiones para análisis de exploits**, como stack canaries, ASLR y protección RELRO.
- 🔢 **Visualización mejorada de registros, pila y memoria** en debugging de binarios.
- 📊 **Soporte para debugging en arquitecturas x86, x86-64, ARM, MIPS y otras**.
- 🔄 **Integración con otras herramientas de reversing**, como ROPgadget y Capstone.

### ✅ **¿Cómo instalar GEF?**
Para instalar GEF en Linux, usa:
```sh
wget -O ~/.gdbinit -q https://gef.blah.cat/py
```
Luego, abre GDB y GEF se activará automáticamente.

Si necesitas usarlo en depuración de código en **ensamblador ARM64**, GEF es útil para analizar registros y la ejecución de instrucciones en arquitecturas embebidas.

¿Quieres saber cómo usar GEF para debugging de código en ensamblador ARM? 🚀

## ▶️ **ENLACE E INSTALACION GEF:**
- https://www.loom.com/share/f44d5e8b85f84d2784e3c2855823b8c2?sid=37a865ae-f5d0-44af-860f-089d8e97d128


# Siguiente el uso del templete

[Siguiente, TEMPLETE](templete/readme.md)
