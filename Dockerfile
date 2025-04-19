# Build Stage: Use JDK to compile the Java application
FROM openjdk:17-jdk-alpine AS builder

WORKDIR /app
COPY HelloWorld.java .
RUN javac HelloWorld.java

# Run Stage: Use JRE to run the Java application
FROM openjdk:17-jdk-alpine

WORKDIR /app
COPY --from=builder /app/HelloWorld.class .

CMD ["java", "HelloWorld"]
