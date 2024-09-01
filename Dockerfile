# FROM ubuntu:latest AS build

# RUN apt-get update
# RUN apt-get install openjdk-17-jdk -y
# COPY . .
# RUN apt-get install maven -y
# RUN mvn clean install

# FROM  openjdk:17-jdk-slim

# EXPOSE 8080

# COPY --from=build /target/demo-0.0.1-SNAPSHOT.jar app.jar

# ENTRYPOINT [ "java", "-jar", "app.jar" ]

FROM maven:3.8.6-openjdk-17 AS build
WORKDIR /app
COPY . .
RUN mvn clean install
FROM openjdk:17-jdk-slim
EXPOSE 8080
COPY --from=build /app/target/demo-0.0.1-SNAPSHOT.jar /app/app.jar
ENTRYPOINT ["java", "-jar", "/app/app.jar"]
