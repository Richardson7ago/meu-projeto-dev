pipeline {
    agent any

    stages {
        stage('Clonar código') {
            steps {
                git branch: 'main',
                    url: 'https://github.com/Richardson7ago/meu-projeto-dev.git'
            }
        }

        stage('Build da imagem Docker') {
            steps {
                sh 'docker build -t flask-devops .'
            }
        }

        stage('Testes (simulados)') {
            steps {
                sh 'echo "Testes passando (simulados)"'
            }
        }

        stage('Deploy local') {
            steps {
                sh 'docker run -d -p 5000:5000 flask-devops'
            }
        }
    }
}
