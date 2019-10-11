FROM openjdk:8-jdk-alpine

RUN mkdir /home/app
WORKDIR /home/app

COPY .mvn ./.mvn
COPY mvnw ./mvnw
COPY mvnw.cmd ./mvnw.cmd

COPY pom.xml .
RUN ./mvnw package
COPY src ./src

CMD ["java", "-version"]
