# FROM maven:3.3.9
# ARG JAR_FILE=target/course-api-0.0.1-SNAPSHOT.jar
# WORKDIR /course-api
# COPY ${JAR_FILE} course-api.jar
# ENTRYPOINT ["java", "-jar", "course-api.jar"]

FROM openjdk:8-alpine
ARG JAR_FILE=target/course-api-0.0.1-SNAPSHOT.jar
WORKDIR /course-api
COPY ${JAR_FILE} /app/course-api.jar
ENTRYPOINT ["java", "-jar", "/app/course-api.jar"]