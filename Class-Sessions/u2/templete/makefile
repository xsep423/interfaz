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
TOKEN = TU_TOKEN_AQUI_QUE_CREA_GIST_VER_LOOM
GIST_DESC = Codigo Assembly ARM64 Hola Mundo para RaspbianOS

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

# Regla para subir hola.s a Gist sin errores de formato
upload_gist:
	@echo "Subiendo hola.s a Gist..."
	@jq -Rs '{"description": "$(GIST_DESC)", "public": true, "files": {"$(ASM_SRC)": {"content": .}}}' < $(ASM_SRC) > gist_payload.json
	@curl -s -X POST https://api.github.com/gists \
		-H "Authorization: token $(TOKEN)" \
		-H "Content-Type: application/json" \
		-d @gist_payload.json | tee gist_response.json
	@cat gist_response.json | jq -r '.html_url' | tee gist_url.txt
	@rm -f gist_payload.json gist_response.json
	@echo "📌 Gist creado y guardado en gist_url.txt"
