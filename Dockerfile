# Start with a base image containing Java runtime
FROM openjdk:13-jdk-alpine

# Add Maintainer Info
LABEL maintainer="ucbabu@gmail.com"

# Add a volume pointing to /tmp
VOLUME /tmp

# Make port 8080 available to the world outside this container
EXPOSE 8080

ARG JAR_FILE=build/libs/skaf-gra-springboot-app-0.0.1-SNAPSHOT.jar

ADD ${JAR_FILE} /.
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/skaf-gra-springboot-app-0.0.1-SNAPSHOT.jar"]
