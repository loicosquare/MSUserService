# Utiliser une image JDK 17
FROM amazoncorretto:17-alpine-jdk

ARG JAR_FILE=target/*.jar

# Copier le JAR de l'application dans le conteneur
COPY ${JAR_FILE} svc-user.jar

# Commande pour exécuter l'application Spring Boot
ENTRYPOINT ["java", "-jar", "/svc-user.jar"]

# Exposer le port 8081
EXPOSE 8081

#Build the image
# docker build -t loicsanou/svc-user:0.0.1 .

#Run the container using imageId
# docker run -d -p8081:8081 -e CONFIG_SERVER_URL=host.docker.internal -e EUREKA_SERVER_ADDRESS=http://host.docker.internal:8761/eureka --name svc-user <imageId>
# docker run -d -p8081:8081 -e CONFIG_SERVER_URL=http://host.docker.internal:8085/ -e EUREKA_SERVER_ADDRESS=http://host.docker.internal:8761/eureka --name svc-user <imageId>