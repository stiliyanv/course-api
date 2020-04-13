# Simple spring boot application with Maven and Docker

## API
```
GET ==> http://localhost:8081/
GET ==> http://localhost:8081/topics
GET ==> http://localhost:8081/topics/{id}
POST ==> http://localhost:8081/topics
PUT ==> http://localhost:8081/topics/{id}
DELETE ==> http://localhost:8081/topics/{id}
```

## How to build

```
mvn clean install
```

## How to run with docker

DockerHub: [stiliyanvasilev/course-api](https://hub.docker.com/repository/docker/stiliyanvasilev/course-api)

```
docker run -d -p 8081:8081 stiliyanvasilev/course-api
```

The docker container is configured on port `8081`, so you need to call:
```
localhost:8081
```

## How to run without docker
> In order to run the below command, you need to build the project and have java installed.

```
java -jar target/course-api-0.0.1-SNAPSHOT.jar
```

The spring boot application is configured on port `8081` (in `src/main/resources/application.properties` file), so you need to call:
```
localhost:8081
```