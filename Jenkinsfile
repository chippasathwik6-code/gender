pipeline {
    agent any

    stages {

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t gender-app .'
            }
        }

        stage('Run Container') {
            steps {
                sh '''
                    docker stop gender-app || true
                    docker rm gender-app || true
                    docker run -d -p 8081:80 --name gender-app gender-app
                '''
            }
        }
    }
}