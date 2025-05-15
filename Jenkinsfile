pipeline {
    agent any

    stages {
        stage('Clonar código') {
            steps {
                // Clona sempre a branch ativa no GitHub (por webhook ou trigger manual)
                checkout scm
            }
        }

        stage('Build da imagem Docker') {
            steps {
                // Compila a imagem Docker com base no Dockerfile da raiz
                sh 'docker build -t flask-devops .'
            }
        }

        stage('Testes (simulados)') {
            steps {
                // Execução de testes simulados ou scripts futuros
                sh 'echo "Testes passando (simulados)"'
            }
        }

        stage('Deploy local') {
            // Esta etapa será executada apenas se a branch for 'main'
            when {
                branch 'main'
            }
            steps {
                // Executa o container localmente com a imagem recém-criada
                sh 'docker run -d -p 5000:5000 flask-devops'
            }
        }
    }
}
