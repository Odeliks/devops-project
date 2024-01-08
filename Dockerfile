FROM openjdk:17-alpine

WORKDIR /app

COPY . /app

RUN apk add dos2unix

RUN dos2unix gradlew

RUN chmod +x gradlew

RUN ./gradlew build

CMD ["java", "-jar", "build/libs/devops-0.0.1-SNAPSHOT.jar"]
