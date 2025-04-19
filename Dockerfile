# Use OpenJDK base image
FROM openjdk:17-jdk-alpine

# Set working directory
WORKDIR /app

# Copy the Java application into the container
COPY HelloWorld.java .

# Compile the Java application
RUN javac HelloWorld.java

# Run the Java application
CMD ["java", "HelloWorld"]
