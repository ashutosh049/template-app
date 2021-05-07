#For java 13
#FROM openjdk:13-jdk-alpine

#For java 8
FROM openjdk:8u111-jdk-alpine

VOLUME /tmp
RUN echo $JAVA_HOME

WORKDIR /home/doulevo/template-app

# template-app-0.0.1-SNAPSHOT
ARG EXE_FILE=target/template-app*.jar
ADD ${EXE_FILE} app.jar

ARG SPRING_PROFILES_ACTIVE

ENV SPRING_PROFILES_ACTIVE=${SPRING_PROFILES_ACTIVE}

ENTRYPOINT ["sh", "-c", "java -showversion -Djava.security.egd=file:/dev/./urandom -jar -Dspring.profiles.active=${SPRING_PROFILES_ACTIVE} app.jar"]