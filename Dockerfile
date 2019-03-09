# version 1.0.0
FROM openjdk:8-jdk-alpine

MAINTAINER chilam

WORKDIR /opt/app/demo

RUN mkdir -p /opt/app/demmo

ADD ./target/demo-0.0.1-SNAPSHOT.jar /opt/app/demo

RUN mv /opt/app/demo/demo-0.0.1-SNAPSHOT.jar demo.jar

ENTRYPOINT ["java","-jar","demo.jar"]

EXPOSE 8080
