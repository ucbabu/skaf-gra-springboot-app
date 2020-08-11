# Start with a base image containing Java runtime
FROM gradle:jdk14 as builder
WORKDIR /app
COPY ./ /app/
RUN ./gradlew clean build

FROM openjdk:13-jdk-alpine
EXPOSE 8080
WORKDIR /app
COPY --from=builder /app/build/libs/skaf-gra-springboot-app-*.jar /app/app.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app/app.jar"]
