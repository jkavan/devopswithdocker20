FROM openjdk:8

EXPOSE 8080

WORKDIR /usr/local/spring-example

RUN apt-get update -qq && apt-get install git -y

RUN git clone https://github.com/docker-hy/spring-example-project.git .

RUN ./mvnw package
ENTRYPOINT java -jar ./target/docker-example-1.1.3.jar

