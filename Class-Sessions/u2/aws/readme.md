
## AWS Academy EC2 Ubuntu como Nodo ARM64 para Prácticas de Ensamblador

La plataforma **AWS Academy** permite a estudiantes y docentes acceder a instancias de cómputo en la nube. Una opción ideal para prácticas de lenguaje ensamblador es utilizar una **instancia EC2 con arquitectura ARM64**, basada en los procesadores **Graviton** de Amazon.

### Características principales:

- **Sistema operativo**: Ubuntu Server (ARM64)
- **Arquitectura de CPU**: ARMv8 (64 bits), compatible con prácticas de ensamblador moderno
- **Procesador**: Amazon Graviton2 o Graviton3 (dependiendo del tipo de instancia)
- **Casos de uso**: Ejecución y depuración de programas en lenguaje ensamblador para ARM64, experimentación con instrucciones SIMD, manejo de registros y memoria

### Requisitos básicos:

- Crear una instancia EC2 tipo `t4g.micro` o superior con Ubuntu ARM64
- Conectarse vía SSH para acceso al entorno de línea de comandos
- Instalar herramientas como `gcc-aarch64-linux-gnu`, `gdb-multiarch`, y `make` para desarrollo y pruebas

Este entorno ofrece un laboratorio escalable, económico y seguro para el aprendizaje de bajo nivel en arquitecturas ARM modernas.


https://www.loom.com/share/ced8fdfc762c40fbae6c165a6ff9b0d1?sid=f496b33d-b7fc-4ed1-9393-c10d0535a537


´´´bash
# Para descargar y aplicarlo a el entorno
curl -O https://github.com/tectijuana/interfaz/blob/65091b9dbf44d61a4561f0e4d6c371ab98e9bdf9/Class-Sessions/u2/setup64bit.sh
sudo chmod +x  setup64bit.sh
sudo ./setup64bit.sh
´´´
