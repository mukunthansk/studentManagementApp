# Student Management Application

## Project Overview

This project demonstrates a complete DevOps CI/CD pipeline using:

- Java
- Maven
- Git
- GitHub
- Jenkins
- Docker

The application creates and displays student details through a Java console application.

---

## Technologies Used

- Java 17
- Maven
- Git
- GitHub
- Jenkins
- Docker

---

## Project Structure

StudentManagementApp

```
├── src
│ ├── main
│ │ └── java
│ │ └── com/example
│ │ ├── App.java
│ │ └── Student.java
│ └── test
│ └── java
│ └── com/example
│ └── AppTest.java
│
├── Dockerfile
├── Jenkinsfile
├── pom.xml
└── README.md
```

---

## Build Project

```
mvn clean package
```

---

## Run Application

```
java -jar target/StudentManagementApp-1.0.jar
```

Output

```
101 John
102 David
```

---

## Docker Build

```
docker build -t studentapp .
```

---

## Docker Run

```
docker run --name studentapp-container studentapp
```

---

## Git Commands

Initialize Repository

```
git init
```

Add Files

```
git add .
```

Commit

```
git commit -m "Initial Commit"
```

Push to GitHub

```
git push origin main
```

Create Feature Branch

```
git checkout -b feature/student
```

Push Branch

```
git push origin feature/student
```

---

## Jenkins Pipeline Stages

1. Checkout Source Code
2. Clean Project
3. Compile Project
4. Run Unit Tests
5. Package JAR
6. Build Docker Image
7. Remove Existing Container
8. Run Docker Container

---

## CI/CD Workflow

Developer

↓

GitHub Repository

↓

Feature Branch

↓

Pull Request

↓

Merge to Main

↓

Jenkins Pipeline

↓

Compile

↓

Test

↓

Package JAR

↓

Docker Build

↓

Docker Run

↓

Application Running

---

## Author

Student Management Application

Developed for DevOps CI/CD practice using GitHub, Jenkins, Maven, and Docker.