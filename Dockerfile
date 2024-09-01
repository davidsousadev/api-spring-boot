FROM ubuntu:latest AS build
RUN apt-get update && \
    apt-get install openjdk-17-jdk -y && \
    apt-get install maven -y
COPY . .
# RUN mvn clean install -X
FROM  openjdk:17-jdk-slim
EXPOSE 8080
WORKDIR /app
COPY --from=build /app/target/demo-0.0.1-SNAPSHOT.jar app.jar
ENTRYPOINT [ "java", "-jar", "app.jar" ]