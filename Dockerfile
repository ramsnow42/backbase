# Use an official OpenJDK image with JDK (which includes javac)
FROM openjdk:17-jdk

# Set working directory
WORKDIR /app

# Copy the Java source file
COPY HelloWorld.java /app/

# Compile the Java application
RUN javac HelloWorld.java

# Run the Java application when the container starts
CMD ["java", "HelloWorld"]

