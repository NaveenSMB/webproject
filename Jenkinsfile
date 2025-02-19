pipeline {
    agent any

    stages {
        stage('Clone Repository') {
            steps {
                git 'https://github.com/your-username/my-website.git'
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
