# Use an OpenJDK base image to run the Java application
FROM openjdk:11-jre-slim
# Set the working directory inside the container
WORKDIR /app
# Copy the compiled Java application into the container
COPY HelloWorld.java /app/
# Compile the Java application
RUN javac HelloWorld.java
# Run the Java application when the container starts
CMD ["java", "HelloWorld"]

