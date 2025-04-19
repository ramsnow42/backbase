# Use OpenJDK base image (this supports multiple platforms)
FROM openjdk:17

# Set working directory
WORKDIR /app

# Copy source code to the container
COPY HelloWorld.java .

# Compile the Java application
RUN javac HelloWorld.java

# Run the Java application when the container starts
CMD ["java", "HelloWorld"]

