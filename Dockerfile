# Build Stage
FROM openjdk:17-jdk-alpine AS builder

WORKDIR /app
COPY HelloWorld.java .
RUN javac HelloWorld.java

# Run Stage
FROM openjdk:17-jre-alpine

WORKDIR /app
COPY --from=builder /app/HelloWorld.class .

CMD ["java", "HelloWorld"]

