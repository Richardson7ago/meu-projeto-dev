# Imagem base leve com Python 3.11
FROM python:3.11-slim

# Define o diretório de trabalho dentro do container
WORKDIR /app

# Copia todos os arquivos da pasta app/ para /app no container
COPY app/ /app

# Copia o requirements.txt da raiz para dentro do container
COPY requirements.txt .

# Instala as dependências listadas no requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Define o comando de inicialização do container
CMD ["python", "app.py"]
