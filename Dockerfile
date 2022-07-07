FROM openjdk:17.0.2 AS build

WORKDIR /userdept

COPY . .

RUN sh ./mvnw clean package


FROM openjdk:17.0.2

COPY --from=build /userdept/target/userdept-0.0.1-SNAPSHOT.jar /userdept.jar

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "/userdept.jar"]
