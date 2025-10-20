# Use an official JDK runtime as a parent image
FROM openjdk:17-jdk-slim

# Set the working directory
WORKDIR /app

# Copy the jar file from the target folder to the container
COPY target/student-management-0.0.1-SNAPSHOT.jar app.jar

# Expose the application port
EXPOSE 8089

# Run the jar file
ENTRYPOINT ["java", "-jar", "app.jar"]