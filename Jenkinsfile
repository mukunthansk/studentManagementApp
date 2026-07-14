pipeline {
    agent any

    tools {
        jdk 'JDK-24'
        maven 'Maven'
    }

    environment {
        IMAGE_NAME = "studentapp"
        CONTAINER_NAME = "studentapp-container"
        HOST_PORT = "8085"
        CONTAINER_PORT = "8085"
    }

    stages {

        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Clean') {
            steps {
                bat 'mvn clean'
            }
        }

        stage('Compile') {
            steps {
                bat 'mvn compile'
            }
        }

        stage('Test') {
            steps {
                bat 'mvn test'
            }
        }

        stage('Package') {
            steps {
                bat 'mvn package'
            }
        }

        stage('Check Docker') {
            steps {
                bat 'docker version'
                bat 'docker images'
            }
        }

        stage('Build Docker Image') {
            steps {
                bat 'docker build -t %IMAGE_NAME% .'
            }
        }

        stage('Remove Old Container') {
            steps {
                bat '''
                docker rm -f %CONTAINER_NAME%
                exit /b 0
                '''
            }
        }

        stage('Run Docker Container') {
            steps {
                bat 'docker run -d -p %HOST_PORT%:%CONTAINER_PORT% --name %CONTAINER_NAME% %IMAGE_NAME%'
            }
        }

        stage('Show Running Containers') {
            steps {
                bat 'docker ps -a'
            }
        }

        stage('Show Application Logs') {
            steps {
                bat 'docker logs %CONTAINER_NAME%'
            }
        }
    }

    post {
        success {
            echo '========================================'
            echo ' BUILD SUCCESSFUL '
            echo '========================================'
            echo 'Docker Image : studentapp'
            echo 'Container    : studentapp-container'
            echo 'Host Port    : 8085'
        }

        failure {
            echo '========================================'
            echo ' BUILD FAILED '
            echo '========================================'
        }

        always {
            echo 'Pipeline execution completed.'
        }
    }
}