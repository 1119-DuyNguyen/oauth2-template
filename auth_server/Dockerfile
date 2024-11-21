## Build stage ##
FROM maven:3.8.3-openjdk-17 as build
WORKDIR /app
COPY . .
RUN mvn clean install -DskipTests=true

## Run stage ##
FROM amazoncorretto:17-alpine3.19 as run
WORKDIR /app

#  run the application as a non-root user
RUN addgroup -S spring && adduser -S spring -G spring

ARG FILE_JAR="auth_server-0.0.1-SNAPSHOT.jar"
COPY --from=build /app/target/$FILE_JAR app.jar

RUN chown spring:spring /app
USER spring:spring

EXPOSE 8080

ARG JAVA_OPTIONS="-Xmx512m -Xms64m"

# CMD ["java", "-jar", "app.jar"]
# Test CD with env file

ENTRYPOINT java -jar $JAVA_OPTIONS "app.jar"
