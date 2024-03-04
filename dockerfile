# Usa una imagen base de Python
FROM python:3.8

# Establece el directorio de trabajo en /app
WORKDIR /app

# Copia los archivos de tu proyecto al contenedor
COPY . .

# Instala las dependencias
RUN pip install -r requirements.txt

# Ejecuta las pruebas con pytest
# CMD ["pytest", "test_ops.py"]
CMD ["sh", "-c", "pytest test_ops.py && tail -f /dev/null"]