# Usa una imagen base de Python
FROM python:3.8

# Establece el directorio de trabajo en /app
WORKDIR /app

# Copia los archivos de tu proyecto al contenedor
COPY . .

# Instala las dependencias
RUN pip install -r requirements.txt

# Ejecuta las pruebas con pytest
CMD ["pytest", "test_ops.py"]

# # # Nueva línea para ejecutar y redirigir la salida a un archivo en el escritorio
# # CMD ["python", "ops.py", ">>", "/output.txt"]

CMD ["sh", "-c", "pytest /app/host/test_ops.py && python ops.py > /output.txt"]

# docker run -v /Users/usuario/Desktop:/app/host pruebatest3 > salida.txt

