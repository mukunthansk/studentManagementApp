pipeline {

    agent any

    tools {
        jdk 'JDK-24'
        maven 'Maven'
    }

    environment {
        IMAGE_NAME = "studentapp"
        CONTAINER_NAME = "studentapp-container"
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

        stage('Build Docker Image') {
            steps {
                bat 'docker build -t %IMAGE_NAME% .'
            }
        }

        stage('Remove Old Container') {
            steps {
                bat 'docker rm -f %CONTAINER_NAME%'
            }
        }

        stage('Run Docker Container') {
            steps {
                bat 'docker run -d --name %CONTAINER_NAME% %IMAGE_NAME%'
            }
        }
    }

    post {
        success {
            echo 'Build Successful!'
        }

        failure {
            echo 'Build Failed!'
        }

        always {
            echo 'Pipeline Finished.'
        }
    }
}