#!/bin/bash

###############################################################
# Script: Configuración rápida entorno desarrollo ARM64
# Propósito: Instala herramientas esenciales de desarrollo,
#            GEF y Oh My Zsh en sistemas ARM64 (Raspberry Pi).
# Autor: [Tu nombre aquí]
# Fecha: [Fecha de creación]
###############################################################

# Anuncia visualmente inicio de la actualización usando figlet
# Corrida:
#    $ chmod +x setup64bit.sh
#    $ ./setup64bit.sh
# 
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
  tree file \                # Listado visual de directorios y detección de tipos de archivo
  unzip zip \                # Compresión y descompresión de archivos
  asciinema \                # Grabación de sesiones de terminal
  python3 python3-pip python3-dev \ # Herramientas Python
  software-properties-common \ # Administración de repositorios adicionales
  zsh                        # Shell avanzada

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
