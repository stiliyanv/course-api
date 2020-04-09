FROM openjdk:11

ARG JAR_FILE=target/course-api-0.0.1-SNAPSHOT.jar

WORKDIR /course-api

COPY ${JAR_FILE} course-api.jar

ENTRYPOINT ["java", "-jar", "course-api.jar"]