# Use Java 17 runtime
FROM eclipse-temurin:17-jdk

# Working directory
WORKDIR /app

# Copy the generated JAR
COPY target/StudentManagementApp-1.0.jar app.jar

# Run the application
ENTRYPOINT ["java","-jar","app.jar"]