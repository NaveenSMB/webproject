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
                sh 'docker stop webcont || true'
                sh 'docker rm webcont || true'
            }
        }
        stage('Run new container'){
          steps{
            sh 'docker run -d -p 8081:80 --name webcont my-website'
          }
        }
    }
}
