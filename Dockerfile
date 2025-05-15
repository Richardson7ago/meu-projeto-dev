# Imagem base
FROM python:3.11-slim

# Diretório de trabalho no container
WORKDIR /app

# Copiar arquivos necessários
COPY requirements.txt .
COPY __init__.py .
COPY app/ ./app

# Instalar dependências
RUN pip install --no-cache-dir -r requirements.txt

# Comando para iniciar o app Flask
CMD ["python", "run.py"]
