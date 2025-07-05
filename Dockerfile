# Use the official OpenJDK 11 image as the base image
FROM openjdk:11

# Define a build argument 'JAR_FILE' which defaults to 'target/*.jar'
# This allows you to specify which jar file to copy during build time
ARG JAR_FILE=target/*.jar

# Copy the JAR file from the build context (usually the 'target' directory) into the container as 'app.jar'
COPY ${JAR_FILE} app.jar

# Set the default command to run the JAR using java -jar
ENTRYPOINT ["java", "-jar", "/app.jar"]
