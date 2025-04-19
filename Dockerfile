FROM openjdk:11-jre-slim
COPY HelloWorld.class /app/
WORKDIR /app
CMD ["java", "HelloWorld"] && tail -f /dev/null

