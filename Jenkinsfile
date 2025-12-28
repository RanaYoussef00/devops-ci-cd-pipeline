pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                git 'https://github.com/RanaYoussef00/devops-ci-cd-pipeline.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    docker.build("devops-web:latest")
                }
            }
        }

        stage('Run Docker Container') {
            steps {
                script {
                    // Stop and remove previous container if exists
                    sh 'docker rm -f web-app || true'
                    // Run new container
                    sh 'docker run -d -p 9090:80 --name web-app devops-web:latest'
                }
            }
        }
    }
}
