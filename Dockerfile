# Use official Java runtime as a parent image
FROM eclipse-temurin:21.0.2_13-jdk-alpine

# Set the working directory in the container
WORKDIR /app

# Copy the JAR file into the container
COPY /target/DemoDockerApp-0.0.1-SNAPSHOT.jar .

# Run the Java application
CMD ["java", "-jar", "DemoDockerApp-0.0.1-SNAPSHOT.jar"]