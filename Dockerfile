FROM openjdk:8-alpine
LABEL maintainer="stiliyan.vasilev@gmail.com"
ARG JAR_FILE=target/course-api-0.0.1-SNAPSHOT.jar
WORKDIR /app
COPY ${JAR_FILE} /app/course-api.jar
ENTRYPOINT ["java", "-jar", "/app/course-api.jar"]