FROM openjdk:17.0.2
ENV TZ America/Sao_Paulo
WORKDIR /userdept
COPY . .
RUN sh ./mvnw clean package
