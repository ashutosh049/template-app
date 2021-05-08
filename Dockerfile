FROM maven:3.5.2-jdk-8-alpine AS MAVEN_BUILD

MAINTAINER Doulevo

COPY pom.xml /build/
COPY src /build/src/

WORKDIR /build/
RUN mvn package


FROM openjdk:8-jre-alpine

#WORKDIR /app
WORKDIR /home/doulevo/template-app
RUN pwd
RUN ls -ltr

COPY --from=MAVEN_BUILD /build/target/template-app*.jar app.jar

RUN pwd
RUN ls -ltr

ARG SPRING_PROFILES_ACTIVE
ENV SPRING_PROFILES_ACTIVE=${SPRING_PROFILES_ACTIVE}

ENTRYPOINT ["sh", "-c", "java -showversion -Djava.security.egd=file:/dev/./urandom -jar -Dspring.profiles.active=${SPRING_PROFILES_ACTIVE} app.jar"]