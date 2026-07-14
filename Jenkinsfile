pipeline {

    agent any

    tools {
        jdk 'JDK17'
        maven 'Maven3'
    }

    environment {
        IMAGE_NAME = "studentapp"
        CONTAINER_NAME = "studentapp-container"
    }

    stages {

        stage('Checkout') {
            steps {
                echo "Checking out source code..."
                checkout scm
            }
        }

        stage('Clean') {
            steps {
                echo "Cleaning project..."
                bat 'mvn clean'
            }
        }

        stage('Compile') {
            steps {
                echo "Compiling project..."
                bat 'mvn compile'
            }
        }

        stage('Test') {
            steps {
                echo "Running Unit Tests..."
                bat 'mvn test'
            }
        }

        stage('Package') {
            steps {
                echo "Creating JAR file..."
                bat 'mvn package'
            }
        }

        stage('Build Docker Image') {
            steps {
                echo "Building Docker Image..."
                bat 'docker build -t %IMAGE_NAME% .'
            }
        }

        stage('Remove Old Container') {
            steps {
                bat 'docker rm -f %CONTAINER_NAME% || exit 0'
            }
        }

        stage('Run Docker Container') {
            steps {
                echo "Running Docker Container..."
                bat 'docker run -d --name %CONTAINER_NAME% %IMAGE_NAME%'
            }
        }
    }

    post {

        success {
            echo "Build Successful!"
        }

        failure {
            echo "Build Failed!"
        }

        always {
            echo "Pipeline Finished."
        }
    }
}