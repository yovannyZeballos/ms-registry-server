FROM gradle:7.6.1-jdk17 AS builder
COPY build.gradle .
COPY src ./src
RUN gradle build -x test

FROM eclipse-temurin:17-jdk-alpine
WORKDIR /app
COPY --from=builder /home/gradle/build/libs/ms-registry-server-*SNAPSHOT.jar ms-registry-server.jar
EXPOSE 8761
ENTRYPOINT ["sh", "-c", "cd /app && java -Djava.file.encoding=UTF-8 -jar ms-registry-server.jar"]