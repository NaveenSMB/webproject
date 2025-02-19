pipeline {
    agent any

    stages {
        stage('Clone Repository') {
            steps {
                git branch: 'main', url: 'https://github.com/NaveenSMB/webproject.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t my-website .'
            }
        }

        stage('Stop & Remove Old Container') {
            steps {
                echo 'Stopping and removing old container if it exists...'
                sh 'docker-compose down || true'
            }
        }

        stage('Start New Container with Compose') {
            steps {
                echo 'Starting container using Docker Compose...'
                sh 'docker-compose up -d'
            }
        }
    }
}
