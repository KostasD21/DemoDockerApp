# Build stage
FROM maven:3.9-eclipse-temurin-21 AS build
WORKDIR /app
# Copy pom.xml first to leverage Docker cache
COPY pom.xml .
# Copy source code
COPY src ./src
# Run Maven build
RUN mvn clean package -DskipTests


# Use official Java runtime as a parent image
FROM eclipse-temurin:21.0.2_13-jdk-alpine

# Set the working directory in the container
WORKDIR /app

# Copy the JAR file into the container
COPY --from=build /app/target/DemoDockerApp-0.0.1-SNAPSHOT.jar .

# Run the Java application
CMD ["java", "-jar", "DemoDockerApp-0.0.1-SNAPSHOT.jar"]