# Java 17 Base Image
FROM eclipse-temurin:17-jdk

# Working directory
WORKDIR /app

# Copy JAR file
COPY target/StudentManagementApp-1.0.jar app.jar

# Expose port (optional)
EXPOSE 8080

# Run application
ENTRYPOINT ["java","-jar","app.jar"]