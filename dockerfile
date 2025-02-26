FROM openjdk:17

WORKDIR /app

COPY . .

RUN ./mvnw package -DskipTests

EXPOSE 8080

CMD ["java", "-jar", "target/spring-petclinic-3.4.0-SNAPSHOT.jar"]

# CMD ["sh", "-c", "ls -la target/ && sleep infinity"]
# docker exec -it my-java-app bash 02686ecaa683
# docker stop $(docker ps -q)
# docker build -t my-java-app .
# docker run -p 8080:8080 my-java-app
# aws ecr get-login-password --region us-west-2 | docker login --username AWS --password-stdin 046316229341.dkr.ecr.us-west-2.amazonaws.com