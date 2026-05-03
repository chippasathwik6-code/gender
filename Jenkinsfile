pipeline {
    agent any

    stages {

        stage('Clone Repo') {
            steps {
                git 'https://github.com/chippasathwik6-code/gender.git'
            }
        }

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
                    docker run -d -p 8080:80 --name gender-app gender-app
                '''
            }
        }
    }
}