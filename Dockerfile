FROM openjdk:17
EXPOSE 9001
COPY target/g1-config-server-0.0.1-SNAPSHOT.jar g1-config-server-0.0.1-SNAPSHOT.jar
CMD ["java","-jar","g1-allergy-service-0.0.1-SNAPSHOT.jar"]