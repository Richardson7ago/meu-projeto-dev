# 🛠️ Simulação de Esteira DevOps com Jenkins, Docker e Flask

Este projeto demonstra uma esteira DevOps completa utilizando Jenkins como orquestrador de CI/CD, Docker para empacotamento da aplicação e Docker Compose para orquestrar os serviços. A aplicação utilizada é uma API simples em Flask.

---

## 📦 Tecnologias Utilizadas

- Python 3.11
- Flask 2.3
- Docker
- Docker Compose
- Jenkins (LTS)
- Git

---

## 🚀 Estrutura do Projeto

meu-projeto-devops/
├── app/
│ ├── app.py # API Flask
│ └── requirements.txt # Dependências Python
├── Dockerfile # Build da imagem da aplicação
├── Jenkinsfile # Pipeline CI/CD com Jenkins
├── docker-compose.yml # Jenkins container
└── README.md