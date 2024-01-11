# Use an official OpenJDK runtime as a parent image
FROM openjdk:8

# Expose port 8080
EXPOSE 8080

# Set the working directory to /app
WORKDIR /app

# Copy the JAR file into the container at /app
COPY target/devops-integration.jar /app/devops-integration.jar

# Specify the command to run on container start
CMD ["java", "-jar", "/app/devops-integration.jar"]
