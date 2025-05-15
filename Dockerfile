# Usa imagem base enxuta do Python
FROM python:3.11-slim

# Define o diretório de trabalho dentro do container
WORKDIR /app

# Copia os arquivos da raiz do projeto (inclusive requirements.txt)
COPY requirements.txt .
COPY app/ ./app
COPY __init__.py .
COPY main.py .
COPY senha.py .

# Instala as dependências da aplicação
RUN pip install --no-cache-dir -r requirements.txt

# Comando para iniciar a aplicação Flask
CMD ["python", "app/main.py"]
