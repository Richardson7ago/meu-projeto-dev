# Dockerfile atualizado e simplificado
FROM python:3.11-slim

WORKDIR /app

COPY requirements.txt .
COPY __init__.py .
COPY app/ ./app

RUN pip install --no-cache-dir -r requirements.txt

CMD ["python", "app/main.py"]
